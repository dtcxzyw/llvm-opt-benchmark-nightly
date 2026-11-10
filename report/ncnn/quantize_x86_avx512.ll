Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/quantize_x86_avx512?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK4ncnn19Quantize_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6:bb.a
  %i.gw = shufflevector <16 x i8> %i.gv, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.gw, ptr %.25338.i, align 1, !tbaa !65
  %i.gx = getelementptr inbounds nuw i8, ptr %.239.i, i64 16 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.25338.i, i64 4 ; 2 uses
  %i.gz = add nuw nsw i32 %.25737.i, 4            ; 3 uses
  %i.ha = or disjoint i32 %i.gz, 3
  %i.hb = icmp slt i32 %i.ha, %i.bd
  br i1 %i.hb, label %.lr.ph40.i, label %.preheader.i, !llvm.loop !3

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.prol.loopexit, %.lr.ph47.i
  %.346.i = phi ptr [ %i.hm, %.lr.ph47.i ], [ %.346.i.unr, %.lr.ph47.i.prol.loopexit ] ; 3 uses
  %.35445.i = phi ptr [ %i.hn, %.lr.ph47.i ], [ %.35445.i.unr, %.lr.ph47.i.prol.loopexit ] ; 3 uses
  %.35844.i = phi i32 [ %i.ho, %.lr.ph47.i ], [ %.35844.i.unr, %.lr.ph47.i.prol.loopexit ]
  %i.hc = load float, ptr %.346.i, align 4, !tbaa !64
  %i.hd = fmul fast float %i.hc, %i.be
  %i.he = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.hd)
  %i.hf = fptosi float %i.he to i32
  %spec.select.i21.i = call i32 @llvm.smax.i32(i32 %i.hf, i32 -127)
  %.0.i22.i = call i32 @llvm.smin.i32(i32 %spec.select.i21.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i22.i to i8
  store i8 %.0.i.i, ptr %.35445.i, align 1, !tbaa !65
  %i.hg = getelementptr inbounds nuw i8, ptr %.346.i, i64 4
  %i.hh = getelementptr inbounds nuw i8, ptr %.35445.i, i64 1
  %i.hi = load float, ptr %i.hg, align 4, !tbaa !64
  %i.hj = fmul fast float %i.hi, %i.be
  %i.hk = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.hj)
  %i.hl = fptosi float %i.hk to i32
  %spec.select.i21.i.1 = call i32 @llvm.smax.i32(i32 %i.hl, i32 -127)
  %.0.i22.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i21.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i22.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.hh, align 1, !tbaa !65
  %i.hm = getelementptr inbounds nuw i8, ptr %.346.i, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.35445.i, i64 2
  %i.ho = add nuw nsw i32 %.35844.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.ho, %i.bd
  br i1 %exitcond.not.i.1, label %_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit, label %.lr.ph47.i, !llvm.loop !133

_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit:        ; preds = %.lr.ph47.i.prol.loopexit, %.lr.ph47.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.not.i31 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i31, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit
  %i.hp = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.not3.i32 = icmp eq ptr %.sroa.2144.0, null
  br i1 %.not3.i32, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hr = load ptr, ptr %.sroa.2144.0, align 8, !tbaa !23
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  invoke void %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2144.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.i
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.h, %_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.hw = load i32, ptr %i.b, align 4, !tbaa !41
  %i.hx = sext i32 %i.hw to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hx
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit25, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32>, <16 x i8>, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32>, <16 x i8>, i8) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn33quantize_forward_bf16s_avx512bf16ERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.thread23.i

.thread23.i:                                      ; preds = %bb.b, %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit
  %.036 = phi i32 [ %i.fj, %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !41     ; 2 uses
  %i.m = mul nsw i32 %i.l, %.036                  ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !31
  %i.o = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  %i.p = mul nsw i32 %i.o, %i.m
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !31
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.q ; 2 uses
  %i.u = load i32, ptr %7, align 4, !tbaa !41
  %i.v = sub nsw i32 %i.u, %i.m
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.v)
  %i.w = mul nsw i32 %.sroa.speculated, %i.o      ; 13 uses
  %.val = load ptr, ptr %8, align 8, !tbaa !31
  %i.x = load float, ptr %.val, align 4, !tbaa !64 ; 8 uses
  %i.y = insertelement <4 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = insertelement <8 x float> poison, float %i.x, i64 0
  %i.ab = shufflevector <8 x float> %i.aa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ac = insertelement <16 x float> poison, float %i.x, i64 0
  %i.ad = shufflevector <16 x float> %i.ac, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ae = icmp sgt i32 %i.w, 15
  br i1 %i.ae, label %.lr.ph.i, label %.preheader29.i

.preheader29.loopexit.i:                          ; preds = %.lr.ph.i
  %i.af = and i32 %i.w, 2147483632
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.loopexit.i, %.thread23.i
  %.055.lcssa.i = phi i32 [ 0, %.thread23.i ], [ %i.af, %.preheader29.loopexit.i ] ; 3 uses
  %.051.lcssa.i = phi ptr [ %i.t, %.thread23.i ], [ %i.aw, %.preheader29.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.r, %.thread23.i ], [ %i.av, %.preheader29.loopexit.i ] ; 2 uses
  %i.ag = or disjoint i32 %.055.lcssa.i, 7
  %i.ah = icmp slt i32 %i.ag, %i.w
  br i1 %i.ah, label %.lr.ph38.i, label %.preheader28.i

.lr.ph.i:                                         ; preds = %.thread23.i, %.lr.ph.i
  %.032.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.r, %.thread23.i ] ; 2 uses
  %.05131.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.t, %.thread23.i ] ; 2 uses
  %.05530.i = phi i32 [ %i.ax, %.lr.ph.i ], [ 0, %.thread23.i ]
  %i.ai = load <16 x i16>, ptr %.032.i, align 1, !tbaa !65 ; 2 uses
  %9 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %10 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ai, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aj = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ak = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.al = bitcast <16 x i16> %i.aj to <8 x i32>
  %i.am = bitcast <16 x i16> %i.ak to <8 x i32>
  %i.an = shufflevector <8 x i32> %i.al, <8 x i32> %i.am, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ao = bitcast <16 x i32> %i.an to <16 x float>
  %i.ap = fmul fast <16 x float> %i.ad, %i.ao     ; 2 uses
  %i.aq = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ap)
  %i.ar = fadd fast <16 x float> %i.aq, %i.ap
  %i.as = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ar, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.at = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.as, <16 x i8> zeroinitializer, i16 -1)
  %i.au = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.at, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.au, ptr %.05131.i, align 1, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %.032.i, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05131.i, i64 16 ; 2 uses
  %i.ax = add nuw nsw i32 %.05530.i, 16           ; 2 uses
  %i.ay = or disjoint i32 %i.ax, 15
  %i.az = icmp slt i32 %i.ay, %i.w
  br i1 %i.az, label %.lr.ph.i, label %.preheader29.loopexit.i, !llvm.loop !7

.preheader28.i:                                   ; preds = %.lr.ph38.i, %.preheader29.i
  %.156.lcssa.i = phi i32 [ %.055.lcssa.i, %.preheader29.i ], [ %i.bp, %.lr.ph38.i ] ; 3 uses
  %.152.lcssa.i = phi ptr [ %.051.lcssa.i, %.preheader29.i ], [ %i.bo, %.lr.ph38.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader29.i ], [ %i.bn, %.lr.ph38.i ] ; 2 uses
  %i.ba = or disjoint i32 %.156.lcssa.i, 3
  %i.bb = icmp slt i32 %i.ba, %i.w
  br i1 %i.bb, label %.lr.ph45.i, label %.preheader.i

.lr.ph38.i:                                       ; preds = %.preheader29.i, %.lr.ph38.i
  %.137.i = phi ptr [ %i.bn, %.lr.ph38.i ], [ %.0.lcssa.i, %.preheader29.i ] ; 2 uses
  %.15236.i = phi ptr [ %i.bo, %.lr.ph38.i ], [ %.051.lcssa.i, %.preheader29.i ] ; 2 uses
  %.15635.i = phi i32 [ %i.bp, %.lr.ph38.i ], [ %.055.lcssa.i, %.preheader29.i ]
  %i.bc = load <8 x i16>, ptr %.137.i, align 1, !tbaa !65 ; 2 uses
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %12 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bd = shufflevector <8 x i16> %11, <8 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.be = bitcast <16 x i16> %i.bd to <8 x float>
  %i.bf = fmul fast <8 x float> %i.ab, %i.be      ; 2 uses
  %i.bg = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bf)
  %i.bh = fadd fast <8 x float> %i.bg, %i.bf
  %i.bi = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bh)
  %i.bj = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bi, <16 x i8> zeroinitializer, i8 -1)
  %i.bk = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bj, <16 x i8> <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.bl = bitcast <16 x i8> %i.bk to <2 x i64>
  %i.bm = extractelement <2 x i64> %i.bl, i64 0
  store i64 %i.bm, ptr %.15236.i, align 8, !tbaa !67
  %i.bn = getelementptr inbounds nuw i8, ptr %.137.i, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.15236.i, i64 8 ; 2 uses
  %i.bp = add nuw nsw i32 %.15635.i, 8            ; 3 uses
  %i.bq = or disjoint i32 %i.bp, 7
  %i.br = icmp slt i32 %i.bq, %i.w
  br i1 %i.br, label %.lr.ph38.i, label %.preheader28.i, !llvm.loop !8

.preheader.i:                                     ; preds = %.lr.ph45.i, %.preheader28.i
  %.257.lcssa.i = phi i32 [ %.156.lcssa.i, %.preheader28.i ], [ %i.en, %.lr.ph45.i ] ; 7 uses
  %.253.lcssa.i = phi ptr [ %.152.lcssa.i, %.preheader28.i ], [ %i.em, %.lr.ph45.i ] ; 8 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader28.i ], [ %i.el, %.lr.ph45.i ] ; 8 uses
  %i.bs = icmp slt i32 %.257.lcssa.i, %i.w
  br i1 %i.bs, label %iter.check, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.bt = xor i32 %.257.lcssa.i, -1
  %i.bu = add i32 %i.w, %i.bt                     ; 3 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bu, 7
  br i1 %min.iters.check, label %.lr.ph52.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bx = xor i32 %.257.lcssa.i, -1
  %i.by = add i32 %i.w, %i.bx
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr i8, ptr %.253.lcssa.i, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 1
  %i.cc = shl nuw nsw i64 %i.bz, 1
  %i.cd = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 2
  %bound0 = icmp ult ptr %.253.lcssa.i, %i.ce
  %bound1 = icmp ult ptr %.2.lcssa.i, %i.cb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph52.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check63 = icmp ult i32 %i.bu, 31
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cf = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, 8589934560              ; 6 uses
  %i.cg = shl nuw nsw i64 %n.vec, 1
  %i.ch = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec
  %i.cj = trunc i64 %n.vec to i32
  %i.ck = add i32 %.257.lcssa.i, %i.cj
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.x, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cl
  %next.gep64 = getelementptr i8, ptr %.253.lcssa.i, i64 %index
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !74, !alias.scope !145
  %i.cm = zext <32 x i16> %wide.load to <32 x i32>
  %i.cn = shl nuw <32 x i32> %i.cm, splat (i32 16)
  %i.co = bitcast <32 x i32> %i.cn to <32 x float>
  %i.cp = fmul fast <32 x float> %broadcast.splat, %i.co
  %i.cq = call fast <32 x float> @llvm.round.v32f32(<32 x float> %i.cp)
  %i.cr = fptosi <32 x float> %i.cq to <32 x i32>
  %i.cs = call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.cr, <32 x i32> splat (i32 -127))
  %i.ct = call <32 x i32> @llvm.smin.v32i32(<32 x i32> %i.cs, <32 x i32> splat (i32 127))
  %i.cu = trunc nsw <32 x i32> %i.ct to <32 x i8>
  store <32 x i8> %i.cu, ptr %next.gep64, align 1, !tbaa !65, !alias.scope !146, !noalias !145
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph52.i.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.bw, 8589934584            ; 5 uses
  %i.cw = shl nuw nsw i64 %n.vec65, 1
  %i.cx = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cw
  %i.cy = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec65
  %i.cz = trunc i64 %n.vec65 to i32
  %i.da = add i32 %.257.lcssa.i, %i.cz
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.x, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %i.db = shl i64 %index68, 1
  %next.gep69 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.db
  %next.gep70 = getelementptr i8, ptr %.253.lcssa.i, i64 %index68
  %wide.load71 = load <8 x i16>, ptr %next.gep69, align 2, !tbaa !74, !alias.scope !145
  %i.dc = zext <8 x i16> %wide.load71 to <8 x i32>
  %i.dd = shl nuw <8 x i32> %i.dc, splat (i32 16)
  %i.de = bitcast <8 x i32> %i.dd to <8 x float>
  %i.df = fmul fast <8 x float> %broadcast.splat67, %i.de
  %i.dg = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.df)
  %i.dh = fptosi <8 x float> %i.dg to <8 x i32>
  %i.di = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dh, <8 x i32> splat (i32 -127))
  %i.dj = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.di, <8 x i32> splat (i32 127))
  %i.dk = trunc nsw <8 x i32> %i.dj to <8 x i8>
  store <8 x i8> %i.dk, ptr %next.gep70, align 1, !tbaa !65, !alias.scope !146, !noalias !145
  %index.next72 = add nuw i64 %index68, 8         ; 2 uses
  %i.dl = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !143

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n73 = icmp eq i64 %i.bw, %n.vec65
  br i1 %cmp.n73, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.351.i.ph = phi ptr [ %.2.lcssa.i, %iter.check ], [ %.2.lcssa.i, %vector.memcheck ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ] ; 3 uses
  %.35450.i.ph = phi ptr [ %.253.lcssa.i, %iter.check ], [ %.253.lcssa.i, %vector.memcheck ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ] ; 3 uses
  %.35849.i.ph = phi i32 [ %.257.lcssa.i, %iter.check ], [ %.257.lcssa.i, %vector.memcheck ], [ %i.ck, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ] ; 4 uses
  %i.dm = sub i32 %i.w, %.35849.i.ph
  %.neg = add i32 %.35849.i.ph, 1
  %xtraiter = and i32 %i.dm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.i.prol.loopexit, label %.lr.ph52.i.prol

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.dn = load i16, ptr %.351.i.ph, align 2, !tbaa !74
  %i.do = zext i16 %i.dn to i32
  %i.dp = shl nuw i32 %i.do, 16
  %i.dq = bitcast i32 %i.dp to float
  %i.dr = fmul fast float %i.x, %i.dq
  %i.ds = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.dr)
  %i.dt = fptosi float %i.ds to i32
  %spec.select.i26.i.prol = call i32 @llvm.smax.i32(i32 %i.dt, i32 -127)
  %.0.i27.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i26.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i27.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.35450.i.ph, align 1, !tbaa !65
  %i.du = getelementptr inbounds nuw i8, ptr %.351.i.ph, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.35450.i.ph, i64 1
  %i.dw = add nuw nsw i32 %.35849.i.ph, 1
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.351.i.unr = phi ptr [ %.351.i.ph, %.lr.ph52.i.preheader ], [ %i.du, %.lr.ph52.i.prol ]
  %.35450.i.unr = phi ptr [ %.35450.i.ph, %.lr.ph52.i.preheader ], [ %i.dv, %.lr.ph52.i.prol ]
  %.35849.i.unr = phi i32 [ %.35849.i.ph, %.lr.ph52.i.preheader ], [ %i.dw, %.lr.ph52.i.prol ]
  %i.dx = icmp eq i32 %i.w, %.neg
  br i1 %i.dx, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph52.i

.lr.ph45.i:                                       ; preds = %.preheader28.i, %.lr.ph45.i
  %.244.i = phi ptr [ %i.el, %.lr.ph45.i ], [ %.1.lcssa.i, %.preheader28.i ] ; 2 uses
  %.25343.i = phi ptr [ %i.em, %.lr.ph45.i ], [ %.152.lcssa.i, %.preheader28.i ] ; 2 uses
  %.25742.i = phi i32 [ %i.en, %.lr.ph45.i ], [ %.156.lcssa.i, %.preheader28.i ]
  %i.dy = load i64, ptr %.244.i, align 1, !tbaa !65
  %i.dz = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %i.ea = bitcast <2 x i64> %i.dz to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eb = bitcast <8 x i16> %13 to <4 x float>
  %i.ec = fmul fast <4 x float> %i.z, %i.eb       ; 2 uses
  %i.ed = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ec)
  %i.ee = fadd fast <4 x float> %i.ed, %i.ec
  %i.ef = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ee)
  %i.eg = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ef, <4 x i32> poison)
  %i.eh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.eg, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ei = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eh, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ej = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ei, <8 x i16> poison)
  %i.ek = shufflevector <16 x i8> %i.ej, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.ek, ptr %.25343.i, align 1, !tbaa !65
  %i.el = getelementptr inbounds nuw i8, ptr %.244.i, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.25343.i, i64 4 ; 2 uses
  %i.en = add nuw nsw i32 %.25742.i, 4            ; 3 uses
  %i.eo = or disjoint i32 %i.en, 3
  %i.ep = icmp slt i32 %i.eo, %i.w
  br i1 %i.ep, label %.lr.ph45.i, label %.preheader.i, !llvm.loop !9

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.351.i = phi ptr [ %i.fg, %.lr.ph52.i ], [ %.351.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.35450.i = phi ptr [ %i.fh, %.lr.ph52.i ], [ %.35450.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.35849.i = phi i32 [ %i.fi, %.lr.ph52.i ], [ %.35849.i.unr, %.lr.ph52.i.prol.loopexit ]
  %i.eq = load i16, ptr %.351.i, align 2, !tbaa !74
  %i.er = zext i16 %i.eq to i32
  %i.es = shl nuw i32 %i.er, 16
  %i.et = bitcast i32 %i.es to float
  %i.eu = fmul fast float %i.x, %i.et
  %i.ev = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.eu)
  %i.ew = fptosi float %i.ev to i32
  %spec.select.i26.i = call i32 @llvm.smax.i32(i32 %i.ew, i32 -127)
  %.0.i27.i = call i32 @llvm.smin.i32(i32 %spec.select.i26.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i27.i to i8
  store i8 %.0.i.i, ptr %.35450.i, align 1, !tbaa !65
  %i.ex = getelementptr inbounds nuw i8, ptr %.351.i, i64 2
  %i.ey = getelementptr inbounds nuw i8, ptr %.35450.i, i64 1
  %i.ez = load i16, ptr %i.ex, align 2, !tbaa !74
  %i.fa = zext i16 %i.ez to i32
  %i.fb = shl nuw i32 %i.fa, 16
  %i.fc = bitcast i32 %i.fb to float
  %i.fd = fmul fast float %i.x, %i.fc
  %i.fe = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fd)
  %i.ff = fptosi float %i.fe to i32
  %spec.select.i26.i.1 = call i32 @llvm.smax.i32(i32 %i.ff, i32 -127)
  %.0.i27.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i26.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i27.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.ey, align 1, !tbaa !65
  %i.fg = getelementptr inbounds nuw i8, ptr %.351.i, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.35450.i, i64 2
  %i.fi = add nuw nsw i32 %.35849.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.fi, %i.w
  br i1 %exitcond.not.i.1, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph52.i, !llvm.loop !144

_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit:  ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.fj = add nsw i32 %.036, 1
  %i.fk = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.not = icmp slt i32 %.036, %i.fk
  br i1 %.not.not, label %.thread23.i, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not37 = icmp sgt i32 %i.k, %i.j
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !31
  %i.v = load i32, ptr %i.l, align 4, !tbaa !40
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %indvars.iv, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !38
  %i.z = mul i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !40
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i64, ptr %i.o, align 8, !tbaa !38
  %i.ag = mul i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = or disjoint i64 %i.ab, 1
  %i.ak = mul i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak
  %i.am = load i32, ptr %5, align 4, !tbaa !41
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.d

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %bb.c
  %i.ao = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %indvars.iv, %i.ap
  %i.ar = load ptr, ptr %6, align 8, !tbaa !31, !noalias !149
  %i.as = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !149
  %i.at = mul i64 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !30, !noalias !149
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !30  ; 2 uses
  %i.az = load i32, ptr %i.r, align 4, !tbaa !40  ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = atomicrmw add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.e, %bb.d, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.ao, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.az, %bb.d ], [ %i.az, %bb.e ]
  %.sroa.2134.0 = phi ptr [ %i.av, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.ay, %bb.d ], [ %i.ay, %bb.e ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.d ], [ %i.ax, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.au, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.aw, %bb.d ], [ %i.aw, %bb.e ] ; 4 uses
  %i.bb = load i32, ptr %8, align 4, !tbaa !41    ; 2 uses
  %i.bc = load float, ptr %.sroa.0.0, align 4, !tbaa !64
  %i.bd = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <16 x float> %i.bd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bf = icmp sgt i32 %.sroa.27.0, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bg = load <16 x float>, ptr %.sroa.0.0, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4ncnn3Mat6addrefEv.exit
  %.017.i = phi nsz <16 x float> [ %i.bg, %bb.f ], [ %i.be, %_ZN4ncnn3Mat6addrefEv.exit ]
  %i.bh = icmp sgt i32 %i.bb, 0
  br i1 %i.bh, label %.lr.ph.i, label %_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.07.i = phi ptr [ %i.by, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 2 uses
  %.0166.i = phi i32 [ %i.cb, %.lr.ph.i ], [ 0, %bb.g ]
  %.0185.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.0194.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.al, %bb.g ] ; 2 uses
  %i.bi = load <16 x i16>, ptr %.07.i, align 1, !tbaa !65 ; 2 uses
  %9 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %10 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bi, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bj = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bk = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bl = bitcast <16 x i16> %i.bj to <8 x i32>
  %i.bm = bitcast <16 x i16> %i.bk to <8 x i32>
  %i.bn = shufflevector <8 x i32> %i.bl, <8 x i32> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = bitcast <16 x i32> %i.bn to <16 x float>
  %i.bp = fmul fast <16 x float> %.017.i, %i.bo   ; 2 uses
  %i.bq = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bp)
  %i.br = fadd fast <16 x float> %i.bq, %i.bp
  %i.bs = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.br, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bt = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bs, <16 x i8> zeroinitializer, i16 -1)
  %i.bu = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bt, <16 x i8> splat (i8 -127))
  %i.bv = bitcast <16 x i8> %i.bu to <2 x double> ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0
  store double %i.bw, ptr %.0185.i, align 1, !tbaa !65
  %i.bx = extractelement <2 x double> %i.bv, i64 1
  store double %i.bx, ptr %.0194.i, align 1, !tbaa !65
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.0185.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0194.i, i64 8
  %i.cb = add nuw nsw i32 %.0166.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cb, %i.bb
  br i1 %exitcond.not.i, label %_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit, label %.lr.ph.i, !llvm.loop !10

_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit: ; preds = %.lr.ph.i, %bb.g
  %.not.i28 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i28, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit
  %i.cc = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.not3.i = icmp eq ptr %.sroa.2134.0, null
  br i1 %.not3.i, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %.sroa.2134.0, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2134.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.i
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.h, %_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cj = load i32, ptr %i.b, align 4, !tbaa !41
  %i.ck = sext i32 %i.cj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ck
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not47 = icmp sgt i32 %i.k, %i.j
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !31
  %i.v = load i32, ptr %i.l, align 4, !tbaa !40
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %indvars.iv, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !38
  %i.z = mul i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z ; 2 uses
  %i.ab = shl nsw i64 %indvars.iv, 2              ; 4 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !31    ; 4 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !40
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i64, ptr %i.o, align 8, !tbaa !38
  %i.ag = mul i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.aj = or disjoint i64 %i.ab, 1
  %i.ak = mul i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak ; 2 uses
  %i.am = or disjoint i64 %i.ab, 2
  %i.an = mul i64 %i.ag, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an ; 2 uses
  %i.ap = or disjoint i64 %i.ab, 3
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %5, align 4, !tbaa !41
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.d

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %bb.c
  %i.au = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %indvars.iv, %i.av
  %i.ax = load ptr, ptr %6, align 8, !tbaa !31, !noalias !152
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !152
  %i.az = mul i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !30, !noalias !152
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.d:                                             ; preds = %bb.c
  %i.bc = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !30  ; 2 uses
  %i.bf = load i32, ptr %i.r, align 4, !tbaa !40  ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = atomicrmw add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.e, %bb.d, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.au, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bf, %bb.d ], [ %i.bf, %bb.e ]
  %.sroa.2140.0 = phi ptr [ %i.bb, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.be, %bb.d ], [ %i.be, %bb.e ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.d ], [ %i.bd, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.ba, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bc, %bb.d ], [ %i.bc, %bb.e ] ; 4 uses
  %i.bh = load i32, ptr %8, align 4, !tbaa !41    ; 5 uses
  %i.bi = load float, ptr %.sroa.0.0, align 4, !tbaa !64
  %i.bj = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = icmp sgt i32 %.sroa.27.0, 1
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bm = load <4 x float>, ptr %.sroa.0.0, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4ncnn3Mat6addrefEv.exit
  %.074.i = phi nsz <4 x float> [ %i.bm, %bb.f ], [ %i.bk, %_ZN4ncnn3Mat6addrefEv.exit ] ; 9 uses
  %i.bn = icmp sgt i32 %i.bh, 7
  br i1 %i.bn, label %.lr.ph.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.bo = and i32 %i.bh, 2147483640
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.g
  %.075.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.bo, %.preheader.loopexit.i ] ; 2 uses
  %.072.lcssa.i = phi ptr [ %i.ar, %bb.g ], [ %i.fr, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi ptr [ %i.ao, %bb.g ], [ %i.fq, %.preheader.loopexit.i ]
  %.068.lcssa.i = phi ptr [ %i.al, %bb.g ], [ %i.fp, %.preheader.loopexit.i ]
  %.066.lcssa.i = phi ptr [ %i.ai, %bb.g ], [ %i.fo, %.preheader.loopexit.i ]
  %.0.lcssa.i = phi ptr [ %i.aa, %bb.g ], [ %i.fn, %.preheader.loopexit.i ]
  %i.bp = icmp slt i32 %.075.lcssa.i, %i.bh
  br i1 %i.bp, label %.lr.ph54.i, label %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.042.i = phi ptr [ %i.fn, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 9 uses
  %.06641.i = phi ptr [ %i.fo, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.06840.i = phi ptr [ %i.fp, %.lr.ph.i ], [ %i.al, %bb.g ] ; 2 uses
  %.07039.i = phi ptr [ %i.fq, %.lr.ph.i ], [ %i.ao, %bb.g ] ; 2 uses
  %.07238.i = phi ptr [ %i.fr, %.lr.ph.i ], [ %i.ar, %bb.g ] ; 2 uses
  %.07537.i = phi i32 [ %i.fs, %.lr.ph.i ], [ 0, %bb.g ]
  %i.bq = load i64, ptr %.042.i, align 1, !tbaa !65
  %i.br = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %i.bs = bitcast <2 x i64> %i.br to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bt = bitcast <8 x i16> %9 to <4 x float>
  %i.bu = getelementptr inbounds nuw i8, ptr %.042.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 1, !tbaa !65
  %i.bw = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %i.bx = bitcast <2 x i64> %i.bw to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.by = bitcast <8 x i16> %10 to <4 x float>
  %i.bz = getelementptr inbounds nuw i8, ptr %.042.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 1, !tbaa !65
  %i.cb = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.cc = bitcast <2 x i64> %i.cb to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %11 to <4 x float>
  %i.ce = getelementptr inbounds nuw i8, ptr %.042.i, i64 24
  %i.cf = load i64, ptr %i.ce, align 1, !tbaa !65
  %i.cg = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.ch = bitcast <2 x i64> %i.cg to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ci = bitcast <8 x i16> %12 to <4 x float>
  %i.cj = getelementptr inbounds nuw i8, ptr %.042.i, i64 32
  %i.ck = load i64, ptr %i.cj, align 1, !tbaa !65
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cn = bitcast <8 x i16> %13 to <4 x float>
  %i.co = getelementptr inbounds nuw i8, ptr %.042.i, i64 40
  %i.cp = load i64, ptr %i.co, align 1, !tbaa !65
  %i.cq = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.cr = bitcast <2 x i64> %i.cq to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cs = bitcast <8 x i16> %14 to <4 x float>
  %i.ct = getelementptr inbounds nuw i8, ptr %.042.i, i64 48
  %i.cu = load i64, ptr %i.ct, align 1, !tbaa !65
  %i.cv = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %i.cw = bitcast <2 x i64> %i.cv to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cx = bitcast <8 x i16> %15 to <4 x float>
  %i.cy = getelementptr inbounds nuw i8, ptr %.042.i, i64 56
  %i.cz = load i64, ptr %i.cy, align 1, !tbaa !65
  %i.da = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.db = bitcast <2 x i64> %i.da to <8 x i16>
  %16 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.db, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dc = bitcast <8 x i16> %16 to <4 x float>
  %i.dd = fmul fast <4 x float> %.074.i, %i.bt    ; 2 uses
  %i.de = fmul fast <4 x float> %.074.i, %i.by    ; 2 uses
  %i.df = fmul fast <4 x float> %.074.i, %i.cd    ; 2 uses
  %i.dg = fmul fast <4 x float> %.074.i, %i.ci    ; 2 uses
  %i.dh = fmul fast <4 x float> %.074.i, %i.cn    ; 2 uses
  %i.di = fmul fast <4 x float> %.074.i, %i.cs    ; 2 uses
  %i.dj = fmul fast <4 x float> %.074.i, %i.cx    ; 2 uses
  %i.dk = fmul fast <4 x float> %.074.i, %i.dc    ; 2 uses
  %i.dl = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dd)
  %i.dm = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dh)
  %i.dn = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.df)
  %i.do = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dj)
  %i.dp = fadd fast <4 x float> %i.dl, %i.dd
  %i.dq = fadd fast <4 x float> %i.dm, %i.dh
  %i.dr = fadd fast <4 x float> %i.dn, %i.df
  %i.ds = fadd fast <4 x float> %i.do, %i.dj
  %i.dt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dp)
  %i.du = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dq)
  %i.dv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dr)
  %i.dw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ds)
  %i.dx = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dt, <4 x i32> %i.du)
  %i.dy = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dv, <4 x i32> %i.dw)
  %i.dz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dx, <8 x i16> splat (i16 -127))
  %i.ea = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dz, <8 x i16> splat (i16 127))
  %i.eb = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dy, <8 x i16> splat (i16 -127))
  %i.ec = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eb, <8 x i16> splat (i16 127))
  %i.ed = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ea, <8 x i16> %i.ec) ; 2 uses
  %i.ee = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.de)
  %i.ef = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.di)
  %i.eg = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dg)
  %i.eh = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dk)
  %i.ei = fadd fast <4 x float> %i.ee, %i.de
  %i.ej = fadd fast <4 x float> %i.ef, %i.di
  %i.ek = fadd fast <4 x float> %i.eg, %i.dg
  %i.el = fadd fast <4 x float> %i.eh, %i.dk
  %i.em = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ei)
  %i.en = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ej)
  %i.eo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ek)
  %i.ep = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.el)
  %i.eq = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.em, <4 x i32> %i.en)
  %i.er = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.eo, <4 x i32> %i.ep)
  %i.es = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.eq, <8 x i16> splat (i16 -127))
  %i.et = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.es, <8 x i16> splat (i16 127))
  %i.eu = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.er, <8 x i16> splat (i16 -127))
  %i.ev = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eu, <8 x i16> splat (i16 127))
  %i.ew = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.et, <8 x i16> %i.ev) ; 2 uses
  %i.ex = shufflevector <16 x i8> %i.ed, <16 x i8> %i.ew, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ey = shufflevector <16 x i8> %i.ed, <16 x i8> %i.ew, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ez = bitcast <16 x i8> %i.ex to <8 x i16>    ; 2 uses
  %i.fa = bitcast <16 x i8> %i.ey to <8 x i16>    ; 2 uses
  %i.fb = shufflevector <8 x i16> %i.ez, <8 x i16> %i.fa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fc = shufflevector <8 x i16> %i.ez, <8 x i16> %i.fa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fd = bitcast <8 x i16> %i.fb to <4 x i32>    ; 2 uses
  %i.fe = bitcast <8 x i16> %i.fc to <4 x i32>    ; 2 uses
  %i.ff = shufflevector <4 x i32> %i.fd, <4 x i32> %i.fe, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.fg = shufflevector <4 x i32> %i.fd, <4 x i32> %i.fe, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.fh = bitcast <4 x i32> %i.ff to <2 x double> ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0
  store double %i.fi, ptr %.06641.i, align 1, !tbaa !65
  %i.fj = extractelement <2 x double> %i.fh, i64 1
  store double %i.fj, ptr %.06840.i, align 1, !tbaa !65
  %i.fk = bitcast <4 x i32> %i.fg to <2 x double> ; 2 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 0
  store double %i.fl, ptr %.07039.i, align 1, !tbaa !65
  %i.fm = extractelement <2 x double> %i.fk, i64 1
  store double %i.fm, ptr %.07238.i, align 1, !tbaa !65
  %i.fn = getelementptr inbounds nuw i8, ptr %.042.i, i64 64 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.06641.i, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.06840.i, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.07039.i, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.07238.i, i64 8 ; 2 uses
  %i.fs = add nuw nsw i32 %.07537.i, 8            ; 2 uses
  %i.ft = or disjoint i32 %i.fs, 7
  %i.fu = icmp slt i32 %i.ft, %i.bh
  br i1 %i.fu, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !11

.lr.ph54.i:                                       ; preds = %.preheader.i, %.lr.ph54.i
  %.153.i = phi ptr [ %i.gl, %.lr.ph54.i ], [ %.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.16752.i = phi ptr [ %i.gm, %.lr.ph54.i ], [ %.066.lcssa.i, %.preheader.i ] ; 2 uses
  %.16951.i = phi ptr [ %i.gn, %.lr.ph54.i ], [ %.068.lcssa.i, %.preheader.i ] ; 2 uses
  %.17150.i = phi ptr [ %i.go, %.lr.ph54.i ], [ %.070.lcssa.i, %.preheader.i ] ; 2 uses
  %.17349.i = phi ptr [ %i.gp, %.lr.ph54.i ], [ %.072.lcssa.i, %.preheader.i ] ; 2 uses
  %.17648.i = phi i32 [ %i.gq, %.lr.ph54.i ], [ %.075.lcssa.i, %.preheader.i ]
  %i.fv = load i64, ptr %.153.i, align 1, !tbaa !65
  %i.fw = insertelement <2 x i64> poison, i64 %i.fv, i64 0
  %i.fx = bitcast <2 x i64> %i.fw to <8 x i16>
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fy = bitcast <8 x i16> %17 to <4 x float>
  %i.fz = fmul fast <4 x float> %.074.i, %i.fy    ; 2 uses
  %i.ga = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fz)
  %i.gb = fadd fast <4 x float> %i.ga, %i.fz
  %i.gc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gb)
  %i.gd = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> poison, <4 x i32> %i.gc)
  %i.ge = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.gd, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -127, i16 -127, i16 -127, i16 -127>)
  %i.gf = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ge, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 127, i16 127, i16 127, i16 127>)
  %i.gg = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gf, <8 x i16> poison) ; 4 uses
  %i.gh = extractelement <16 x i8> %i.gg, i64 4
  store i8 %i.gh, ptr %.16752.i, align 1, !tbaa !65
  %i.gi = extractelement <16 x i8> %i.gg, i64 5
  store i8 %i.gi, ptr %.16951.i, align 1, !tbaa !65
  %i.gj = extractelement <16 x i8> %i.gg, i64 6
  store i8 %i.gj, ptr %.17150.i, align 1, !tbaa !65
  %i.gk = extractelement <16 x i8> %i.gg, i64 7
  store i8 %i.gk, ptr %.17349.i, align 1, !tbaa !65
  %i.gl = getelementptr inbounds nuw i8, ptr %.153.i, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.16752.i, i64 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.16951.i, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %.17150.i, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.17349.i, i64 1
  %i.gq = add nuw nsw i32 %.17648.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gq, %i.bh
  br i1 %exitcond.not.i, label %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit, label %.lr.ph54.i, !llvm.loop !12

_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit: ; preds = %.lr.ph54.i, %.preheader.i
  %.not.i34 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i34, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit
  %i.gr = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.gs = icmp eq i32 %i.gr, 1
  br i1 %i.gs, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.not3.i = icmp eq ptr %.sroa.2140.0, null
  br i1 %.not3.i, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gt = load ptr, ptr %.sroa.2140.0, align 8, !tbaa !23
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  invoke void %i.gv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2140.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.i
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.h, %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gy = load i32, ptr %i.b, align 4, !tbaa !41
  %i.gz = sext i32 %i.gy to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gz
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not41 = icmp sgt i32 %i.k, %i.j
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !31
  %i.v = load i32, ptr %i.l, align 4, !tbaa !40
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %indvars.iv, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !38
  %i.z = mul i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !31
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !40
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv, %i.ad
  %i.af = load i64, ptr %i.o, align 8, !tbaa !38
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %5, align 4, !tbaa !41
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.d

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %bb.c
  %i.ak = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %indvars.iv, %i.al
  %i.an = load ptr, ptr %6, align 8, !tbaa !31, !noalias !161
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !161
  %i.ap = mul i64 %i.ao, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !30, !noalias !161
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !30  ; 2 uses
  %i.av = load i32, ptr %i.r, align 4, !tbaa !40  ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = atomicrmw add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.e, %bb.d, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.ak, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.av, %bb.d ], [ %i.av, %bb.e ]
  %.sroa.2131.0 = phi ptr [ %i.ar, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.au, %bb.d ], [ %i.au, %bb.e ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.d ], [ %i.at, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.as, %bb.d ], [ %i.as, %bb.e ] ; 6 uses
  %i.ax = load i32, ptr %8, align 4, !tbaa !41
  %i.ay = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %i.az = mul i32 %i.ay, %i.ax                    ; 13 uses
  %i.ba = load float, ptr %.sroa.0.0, align 4, !tbaa !64 ; 8 uses
  %i.bb = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bd = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.be = shufflevector <8 x float> %i.bd, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bf = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bg = shufflevector <16 x float> %i.bf, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bh = icmp sgt i32 %.sroa.27.0, 1
  br i1 %i.bh, label %bb.f, label %.thread23.i

bb.f:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  switch i32 %i.ay, label %.thread23.i [
    i32 16, label %.thread.i
    i32 8, label %bb.g
    i32 4, label %bb.h
  ]

.thread.i:                                        ; preds = %bb.f
  %i.bi = load <16 x float>, ptr %.sroa.0.0, align 4, !tbaa !65
  br label %.thread23.i

bb.g:                                             ; preds = %bb.f
  %i.bj = load <8 x float>, ptr %.sroa.0.0, align 4, !tbaa !65 ; 2 uses
  %i.bk = shufflevector <8 x float> %i.bj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.thread23.i

bb.h:                                             ; preds = %bb.f
  %i.bl = load <4 x float>, ptr %.sroa.0.0, align 4, !tbaa !65 ; 3 uses
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %.thread23.i

.thread23.i:                                      ; preds = %bb.h, %bb.g, %.thread.i, %bb.f, %_ZN4ncnn3Mat6addrefEv.exit
  %.121.i = phi nsz <8 x float> [ %i.bm, %bb.h ], [ %i.be, %bb.f ], [ %i.be, %_ZN4ncnn3Mat6addrefEv.exit ], [ %i.be, %.thread.i ], [ %i.bj, %bb.g ]
  %.019.i = phi nsz <4 x float> [ %i.bl, %bb.h ], [ %i.bc, %bb.f ], [ %i.bc, %_ZN4ncnn3Mat6addrefEv.exit ], [ %i.bc, %.thread.i ], [ %i.bc, %bb.g ]
  %.261.i = phi nsz <16 x float> [ %i.bn, %bb.h ], [ %i.bg, %bb.f ], [ %i.bg, %_ZN4ncnn3Mat6addrefEv.exit ], [ %i.bi, %.thread.i ], [ %i.bk, %bb.g ]
  %i.bo = icmp sgt i32 %i.az, 15
  br i1 %i.bo, label %.lr.ph.i, label %.preheader29.i

.preheader29.loopexit.i:                          ; preds = %.lr.ph.i
  %i.bp = and i32 %i.az, 2147483632
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.loopexit.i, %.thread23.i
  %.055.lcssa.i = phi i32 [ 0, %.thread23.i ], [ %i.bp, %.preheader29.loopexit.i ] ; 3 uses
  %.051.lcssa.i = phi ptr [ %i.ah, %.thread23.i ], [ %i.cg, %.preheader29.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.aa, %.thread23.i ], [ %i.cf, %.preheader29.loopexit.i ] ; 2 uses
  %i.bq = or disjoint i32 %.055.lcssa.i, 7
  %i.br = icmp slt i32 %i.bq, %i.az
  br i1 %i.br, label %.lr.ph38.i, label %.preheader28.i

.lr.ph.i:                                         ; preds = %.thread23.i, %.lr.ph.i
  %.032.i = phi ptr [ %i.cf, %.lr.ph.i ], [ %i.aa, %.thread23.i ] ; 2 uses
  %.05131.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.ah, %.thread23.i ] ; 2 uses
  %.05530.i = phi i32 [ %i.ch, %.lr.ph.i ], [ 0, %.thread23.i ]
  %i.bs = load <16 x i16>, ptr %.032.i, align 1, !tbaa !65 ; 2 uses
  %9 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %10 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bs, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bt = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bu = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bv = bitcast <16 x i16> %i.bt to <8 x i32>
  %i.bw = bitcast <16 x i16> %i.bu to <8 x i32>
  %i.bx = shufflevector <8 x i32> %i.bv, <8 x i32> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.by = bitcast <16 x i32> %i.bx to <16 x float>
  %i.bz = fmul fast <16 x float> %.261.i, %i.by   ; 2 uses
  %i.ca = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bz)
  %i.cb = fadd fast <16 x float> %i.ca, %i.bz
  %i.cc = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cd = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.cc, <16 x i8> zeroinitializer, i16 -1)
  %i.ce = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cd, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.ce, ptr %.05131.i, align 1, !tbaa !65
  %i.cf = getelementptr inbounds nuw i8, ptr %.032.i, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05131.i, i64 16 ; 2 uses
  %i.ch = add nuw nsw i32 %.05530.i, 16           ; 2 uses
  %i.ci = or disjoint i32 %i.ch, 15
  %i.cj = icmp slt i32 %i.ci, %i.az
  br i1 %i.cj, label %.lr.ph.i, label %.preheader29.loopexit.i, !llvm.loop !7

.preheader28.i:                                   ; preds = %.lr.ph38.i, %.preheader29.i
  %.156.lcssa.i = phi i32 [ %.055.lcssa.i, %.preheader29.i ], [ %i.cz, %.lr.ph38.i ] ; 3 uses
  %.152.lcssa.i = phi ptr [ %.051.lcssa.i, %.preheader29.i ], [ %i.cy, %.lr.ph38.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader29.i ], [ %i.cx, %.lr.ph38.i ] ; 2 uses
  %i.ck = or disjoint i32 %.156.lcssa.i, 3
  %i.cl = icmp slt i32 %i.ck, %i.az
  br i1 %i.cl, label %.lr.ph45.i, label %.preheader.i

.lr.ph38.i:                                       ; preds = %.preheader29.i, %.lr.ph38.i
  %.137.i = phi ptr [ %i.cx, %.lr.ph38.i ], [ %.0.lcssa.i, %.preheader29.i ] ; 2 uses
  %.15236.i = phi ptr [ %i.cy, %.lr.ph38.i ], [ %.051.lcssa.i, %.preheader29.i ] ; 2 uses
  %.15635.i = phi i32 [ %i.cz, %.lr.ph38.i ], [ %.055.lcssa.i, %.preheader29.i ]
  %i.cm = load <8 x i16>, ptr %.137.i, align 1, !tbaa !65 ; 2 uses
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %12 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cn = shufflevector <8 x i16> %11, <8 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.co = bitcast <16 x i16> %i.cn to <8 x float>
  %i.cp = fmul fast <8 x float> %.121.i, %i.co    ; 2 uses
  %i.cq = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cp)
  %i.cr = fadd fast <8 x float> %i.cq, %i.cp
  %i.cs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cr)
  %i.ct = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.cs, <16 x i8> zeroinitializer, i8 -1)
  %i.cu = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ct, <16 x i8> <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.cv = bitcast <16 x i8> %i.cu to <2 x i64>
  %i.cw = extractelement <2 x i64> %i.cv, i64 0
  store i64 %i.cw, ptr %.15236.i, align 8, !tbaa !67
  %i.cx = getelementptr inbounds nuw i8, ptr %.137.i, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.15236.i, i64 8 ; 2 uses
  %i.cz = add nuw nsw i32 %.15635.i, 8            ; 3 uses
  %i.da = or disjoint i32 %i.cz, 7
  %i.db = icmp slt i32 %i.da, %i.az
  br i1 %i.db, label %.lr.ph38.i, label %.preheader28.i, !llvm.loop !8

.preheader.i:                                     ; preds = %.lr.ph45.i, %.preheader28.i
  %.257.lcssa.i = phi i32 [ %.156.lcssa.i, %.preheader28.i ], [ %i.fx, %.lr.ph45.i ] ; 7 uses
  %.253.lcssa.i = phi ptr [ %.152.lcssa.i, %.preheader28.i ], [ %i.fw, %.lr.ph45.i ] ; 8 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader28.i ], [ %i.fv, %.lr.ph45.i ] ; 8 uses
  %i.dc = icmp slt i32 %.257.lcssa.i, %i.az
  br i1 %i.dc, label %iter.check, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.dd = xor i32 %.257.lcssa.i, -1
  %i.de = add i32 %i.az, %i.dd                    ; 3 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw nsw i64 %i.df, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.de, 7
  br i1 %min.iters.check, label %.lr.ph52.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dh = xor i32 %.257.lcssa.i, -1
  %i.di = add i32 %i.az, %i.dh
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = getelementptr i8, ptr %.253.lcssa.i, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 1
  %i.dm = shl nuw nsw i64 %i.dj, 1
  %i.dn = getelementptr i8, ptr %.2.lcssa.i, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 2
  %bound0 = icmp ult ptr %.253.lcssa.i, %i.do
  %bound1 = icmp ult ptr %.2.lcssa.i, %i.dl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph52.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i32 %i.de, 31
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dp = and i64 %i.dg, 24
  %n.vec = and i64 %i.dg, 8589934560              ; 6 uses
  %i.dq = shl nuw nsw i64 %n.vec, 1
  %i.dr = getelementptr i8, ptr %.2.lcssa.i, i64 %i.dq
  %i.ds = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec
  %i.dt = trunc i64 %n.vec to i32
  %i.du = add i32 %.257.lcssa.i, %i.dt
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.ba, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dv = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2.lcssa.i, i64 %i.dv
  %next.gep72 = getelementptr i8, ptr %.253.lcssa.i, i64 %index
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !74, !alias.scope !162
  %i.dw = zext <32 x i16> %wide.load to <32 x i32>
  %i.dx = shl nuw <32 x i32> %i.dw, splat (i32 16)
  %i.dy = bitcast <32 x i32> %i.dx to <32 x float>
  %i.dz = fmul fast <32 x float> %broadcast.splat, %i.dy
  %i.ea = call fast <32 x float> @llvm.round.v32f32(<32 x float> %i.dz)
  %i.eb = fptosi <32 x float> %i.ea to <32 x i32>
  %i.ec = call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.eb, <32 x i32> splat (i32 -127))
  %i.ed = call <32 x i32> @llvm.smin.v32i32(<32 x i32> %i.ec, <32 x i32> splat (i32 127))
  %i.ee = trunc nsw <32 x i32> %i.ed to <32 x i8>
  store <32 x i8> %i.ee, ptr %next.gep72, align 1, !tbaa !65, !alias.scope !163, !noalias !162
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph52.i.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.dg, 8589934584            ; 5 uses
  %i.eg = shl nuw nsw i64 %n.vec73, 1
  %i.eh = getelementptr i8, ptr %.2.lcssa.i, i64 %i.eg
  %i.ei = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec73
  %i.ej = trunc i64 %n.vec73 to i32
  %i.ek = add i32 %.257.lcssa.i, %i.ej
  %broadcast.splatinsert74 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat75 = shufflevector <8 x float> %broadcast.splatinsert74, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 3 uses
  %i.el = shl i64 %index76, 1
  %next.gep77 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.el
  %next.gep78 = getelementptr i8, ptr %.253.lcssa.i, i64 %index76
  %wide.load79 = load <8 x i16>, ptr %next.gep77, align 2, !tbaa !74, !alias.scope !162
  %i.em = zext <8 x i16> %wide.load79 to <8 x i32>
  %i.en = shl nuw <8 x i32> %i.em, splat (i32 16)
  %i.eo = bitcast <8 x i32> %i.en to <8 x float>
  %i.ep = fmul fast <8 x float> %broadcast.splat75, %i.eo
  %i.eq = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.ep)
  %i.er = fptosi <8 x float> %i.eq to <8 x i32>
  %i.es = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.er, <8 x i32> splat (i32 -127))
  %i.et = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.es, <8 x i32> splat (i32 127))
  %i.eu = trunc nsw <8 x i32> %i.et to <8 x i8>
  store <8 x i8> %i.eu, ptr %next.gep78, align 1, !tbaa !65, !alias.scope !163, !noalias !162
  %index.next80 = add nuw i64 %index76, 8         ; 2 uses
  %i.ev = icmp eq i64 %index.next80, %n.vec73
  br i1 %i.ev, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n81 = icmp eq i64 %i.dg, %n.vec73
  br i1 %cmp.n81, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.351.i.ph = phi ptr [ %.2.lcssa.i, %iter.check ], [ %.2.lcssa.i, %vector.memcheck ], [ %i.dr, %vec.epilog.iter.check ], [ %i.eh, %vec.epilog.middle.block ] ; 3 uses
  %.35450.i.ph = phi ptr [ %.253.lcssa.i, %iter.check ], [ %.253.lcssa.i, %vector.memcheck ], [ %i.ds, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ] ; 3 uses
  %.35849.i.ph = phi i32 [ %.257.lcssa.i, %iter.check ], [ %.257.lcssa.i, %vector.memcheck ], [ %i.du, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ] ; 4 uses
  %i.ew = sub i32 %i.az, %.35849.i.ph
  %.neg = add i32 %.35849.i.ph, 1
  %xtraiter = and i32 %i.ew, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.i.prol.loopexit, label %.lr.ph52.i.prol

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.ex = load i16, ptr %.351.i.ph, align 2, !tbaa !74
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = bitcast i32 %i.ez to float
  %i.fb = fmul fast float %i.ba, %i.fa
  %i.fc = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fb)
  %i.fd = fptosi float %i.fc to i32
  %spec.select.i26.i.prol = call i32 @llvm.smax.i32(i32 %i.fd, i32 -127)
  %.0.i27.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i26.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i27.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.35450.i.ph, align 1, !tbaa !65
  %i.fe = getelementptr inbounds nuw i8, ptr %.351.i.ph, i64 2
  %i.ff = getelementptr inbounds nuw i8, ptr %.35450.i.ph, i64 1
  %i.fg = add nuw nsw i32 %.35849.i.ph, 1
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.351.i.unr = phi ptr [ %.351.i.ph, %.lr.ph52.i.preheader ], [ %i.fe, %.lr.ph52.i.prol ]
  %.35450.i.unr = phi ptr [ %.35450.i.ph, %.lr.ph52.i.preheader ], [ %i.ff, %.lr.ph52.i.prol ]
  %.35849.i.unr = phi i32 [ %.35849.i.ph, %.lr.ph52.i.preheader ], [ %i.fg, %.lr.ph52.i.prol ]
  %i.fh = icmp eq i32 %i.az, %.neg
  br i1 %i.fh, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph52.i

.lr.ph45.i:                                       ; preds = %.preheader28.i, %.lr.ph45.i
  %.244.i = phi ptr [ %i.fv, %.lr.ph45.i ], [ %.1.lcssa.i, %.preheader28.i ] ; 2 uses
  %.25343.i = phi ptr [ %i.fw, %.lr.ph45.i ], [ %.152.lcssa.i, %.preheader28.i ] ; 2 uses
  %.25742.i = phi i32 [ %i.fx, %.lr.ph45.i ], [ %.156.lcssa.i, %.preheader28.i ]
  %i.fi = load i64, ptr %.244.i, align 1, !tbaa !65
  %i.fj = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fk = bitcast <2 x i64> %i.fj to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fl = bitcast <8 x i16> %13 to <4 x float>
  %i.fm = fmul fast <4 x float> %.019.i, %i.fl    ; 2 uses
  %i.fn = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fm)
  %i.fo = fadd fast <4 x float> %i.fn, %i.fm
  %i.fp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fo)
  %i.fq = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fp, <4 x i32> poison)
  %i.fr = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fq, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.fs = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.fr, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ft = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.fs, <8 x i16> poison)
  %i.fu = shufflevector <16 x i8> %i.ft, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.fu, ptr %.25343.i, align 1, !tbaa !65
  %i.fv = getelementptr inbounds nuw i8, ptr %.244.i, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.25343.i, i64 4 ; 2 uses
  %i.fx = add nuw nsw i32 %.25742.i, 4            ; 3 uses
  %i.fy = or disjoint i32 %i.fx, 3
  %i.fz = icmp slt i32 %i.fy, %i.az
  br i1 %i.fz, label %.lr.ph45.i, label %.preheader.i, !llvm.loop !9

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.351.i = phi ptr [ %i.gq, %.lr.ph52.i ], [ %.351.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.35450.i = phi ptr [ %i.gr, %.lr.ph52.i ], [ %.35450.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.35849.i = phi i32 [ %i.gs, %.lr.ph52.i ], [ %.35849.i.unr, %.lr.ph52.i.prol.loopexit ]
  %i.ga = load i16, ptr %.351.i, align 2, !tbaa !74
  %i.gb = zext i16 %i.ga to i32
  %i.gc = shl nuw i32 %i.gb, 16
  %i.gd = bitcast i32 %i.gc to float
  %i.ge = fmul fast float %i.ba, %i.gd
  %i.gf = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ge)
  %i.gg = fptosi float %i.gf to i32
  %spec.select.i26.i = call i32 @llvm.smax.i32(i32 %i.gg, i32 -127)
  %.0.i27.i = call i32 @llvm.smin.i32(i32 %spec.select.i26.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i27.i to i8
  store i8 %.0.i.i, ptr %.35450.i, align 1, !tbaa !65
  %i.gh = getelementptr inbounds nuw i8, ptr %.351.i, i64 2
  %i.gi = getelementptr inbounds nuw i8, ptr %.35450.i, i64 1
  %i.gj = load i16, ptr %i.gh, align 2, !tbaa !74
  %i.gk = zext i16 %i.gj to i32
  %i.gl = shl nuw i32 %i.gk, 16
  %i.gm = bitcast i32 %i.gl to float
  %i.gn = fmul fast float %i.ba, %i.gm
  %i.go = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.gn)
  %i.gp = fptosi float %i.go to i32
  %spec.select.i26.i.1 = call i32 @llvm.smax.i32(i32 %i.gp, i32 -127)
  %.0.i27.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i26.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i27.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.gi, align 1, !tbaa !65
  %i.gq = getelementptr inbounds nuw i8, ptr %.351.i, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.35450.i, i64 2
  %i.gs = add nuw nsw i32 %.35849.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.gs, %i.az
  br i1 %exitcond.not.i.1, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph52.i, !llvm.loop !160

_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit:  ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.not.i25 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i25, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit
  %i.gt = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %.not3.i = icmp eq ptr %.sroa.2131.0, null
  br i1 %.not3.i, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gv = load ptr, ptr %.sroa.2131.0, align 8, !tbaa !23
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  invoke void %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2131.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.l, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.j
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.i, %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ha = load i32, ptr %i.b, align 4, !tbaa !41
  %i.hb = sext i32 %i.ha to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hb
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not103 = icmp sgt i32 %i.k, %i.j
  br i1 %.not103, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit32.lr.ph

_ZN4ncnn3MatD2Ev.exit32.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %_ZN4ncnn3MatD2Ev.exit32

_ZN4ncnn3MatD2Ev.exit32:                          ; preds = %_ZN4ncnn3MatD2Ev.exit32.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %_ZN4ncnn3MatD2Ev.exit32.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !31, !noalias !170
  %i.v = load i64, ptr %i.l, align 8, !tbaa !32, !noalias !170
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !170
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !31, !noalias !171 ; 2 uses
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !171 ; 2 uses
  %i.ad = mul i64 %i.ac, %i.aa
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !38, !noalias !171 ; 2 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = or disjoint i64 %i.aa, 1
  %i.ai = mul i64 %i.ac, %i.ah
  %i.aj = mul i64 %i.ai, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aj
  %i.al = load i32, ptr %5, align 4, !tbaa !41
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.c

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %_ZN4ncnn3MatD2Ev.exit32
  %i.an = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %indvars.iv, %i.ao
  %i.aq = load ptr, ptr %6, align 8, !tbaa !31, !noalias !172
  %i.ar = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !172
  %i.as = mul i64 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !30, !noalias !172
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit32
  %i.av = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !30  ; 2 uses
  %i.ay = load i32, ptr %i.r, align 4, !tbaa !40  ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = atomicrmw add ptr %i.aw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.d, %bb.c, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.an, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.ay, %bb.c ], [ %i.ay, %bb.d ]
  %.sroa.2158.0 = phi ptr [ %i.au, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.ax, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.c ], [ %i.aw, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.at, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.av, %bb.c ], [ %i.av, %bb.d ] ; 4 uses
  %i.ba = load i32, ptr %8, align 4, !tbaa !41
  %i.bb = load i32, ptr %9, align 4, !tbaa !41
  %i.bc = mul nsw i32 %i.bb, %i.ba
  %i.bd = load i32, ptr %10, align 4, !tbaa !41
  %i.be = mul nsw i32 %i.bc, %i.bd                ; 2 uses
  %i.bf = load float, ptr %.sroa.0.0, align 4, !tbaa !64
  %i.bg = insertelement <16 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <16 x float> %i.bg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bi = icmp sgt i32 %.sroa.27.0, 1
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bj = load <16 x float>, ptr %.sroa.0.0, align 4, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4ncnn3Mat6addrefEv.exit
  %.017.i = phi nsz <16 x float> [ %i.bj, %bb.e ], [ %i.bh, %_ZN4ncnn3Mat6addrefEv.exit ]
  %i.bk = icmp sgt i32 %i.be, 0
  br i1 %i.bk, label %.lr.ph.i, label %_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.07.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %i.z, %bb.f ] ; 2 uses
  %.0166.i = phi i32 [ %i.ce, %.lr.ph.i ], [ 0, %bb.f ]
  %.0185.i = phi ptr [ %i.cc, %.lr.ph.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.0194.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %i.ak, %bb.f ] ; 2 uses
  %i.bl = load <16 x i16>, ptr %.07.i, align 1, !tbaa !65 ; 2 uses
  %11 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %12 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bl, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bm = shufflevector <16 x i16> %11, <16 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bn = shufflevector <16 x i16> %11, <16 x i16> %12, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bo = bitcast <16 x i16> %i.bm to <8 x i32>
  %i.bp = bitcast <16 x i16> %i.bn to <8 x i32>
  %i.bq = shufflevector <8 x i32> %i.bo, <8 x i32> %i.bp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.br = bitcast <16 x i32> %i.bq to <16 x float>
  %i.bs = fmul fast <16 x float> %.017.i, %i.br   ; 2 uses
  %i.bt = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bs)
  %i.bu = fadd fast <16 x float> %i.bt, %i.bs
  %i.bv = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bw = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bv, <16 x i8> zeroinitializer, i16 -1)
  %i.bx = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bw, <16 x i8> splat (i8 -127))
  %i.by = bitcast <16 x i8> %i.bx to <2 x double> ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  store double %i.bz, ptr %.0185.i, align 1, !tbaa !65
  %i.ca = extractelement <2 x double> %i.by, i64 1
  store double %i.ca, ptr %.0194.i, align 1, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0185.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0194.i, i64 8
  %i.ce = add nuw nsw i32 %.0166.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ce, %i.be
  br i1 %exitcond.not.i, label %_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit, label %.lr.ph.i, !llvm.loop !10

_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit: ; preds = %.lr.ph.i, %bb.f
  %.not.i43 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit
  %i.cf = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %.not3.i44 = icmp eq ptr %.sroa.2158.0, null
  br i1 %.not3.i44, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %.sroa.2158.0, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2158.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.j, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.h
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.g, %_ZN4ncnnL23quantize_bf16_pack16to8EPKtPaS2_RKNS_3MatEi.exit, %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cm = load i32, ptr %i.b, align 4, !tbaa !41
  %i.cn = sext i32 %i.cm to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cn
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit32, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not161 = icmp sgt i32 %i.k, %i.j
  br i1 %.not161, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit40.lr.ph

_ZN4ncnn3MatD2Ev.exit40.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %_ZN4ncnn3MatD2Ev.exit40

_ZN4ncnn3MatD2Ev.exit40:                          ; preds = %_ZN4ncnn3MatD2Ev.exit40.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %_ZN4ncnn3MatD2Ev.exit40.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !31, !noalias !179
  %i.v = load i64, ptr %i.l, align 8, !tbaa !32, !noalias !179
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !179
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = shl nsw i64 %indvars.iv, 2              ; 4 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !31, !noalias !180 ; 4 uses
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !180 ; 4 uses
  %i.ad = mul i64 %i.ac, %i.aa
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !38, !noalias !180 ; 4 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af ; 2 uses
  %i.ah = or disjoint i64 %i.aa, 1
  %i.ai = mul i64 %i.ac, %i.ah
  %i.aj = mul i64 %i.ai, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aj ; 2 uses
  %i.al = or disjoint i64 %i.aa, 2
  %i.am = mul i64 %i.ac, %i.al
  %i.an = mul i64 %i.am, %i.ae
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.an ; 2 uses
  %i.ap = or disjoint i64 %i.aa, 3
  %i.aq = mul i64 %i.ac, %i.ap
  %i.ar = mul i64 %i.aq, %i.ae
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %5, align 4, !tbaa !41
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.c

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %_ZN4ncnn3MatD2Ev.exit40
  %i.av = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %indvars.iv, %i.aw
  %i.ay = load ptr, ptr %6, align 8, !tbaa !31, !noalias !181
  %i.az = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !181
  %i.ba = mul i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !30, !noalias !181
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit40
  %i.bd = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !30  ; 2 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !40  ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = atomicrmw add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.d, %bb.c, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.av, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bg, %bb.c ], [ %i.bg, %bb.d ]
  %.sroa.2180.0 = phi ptr [ %i.bc, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bf, %bb.c ], [ %i.bf, %bb.d ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.c ], [ %i.be, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.bb, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bd, %bb.c ], [ %i.bd, %bb.d ] ; 4 uses
  %i.bi = load i32, ptr %8, align 4, !tbaa !41
  %i.bj = load i32, ptr %9, align 4, !tbaa !41
  %i.bk = mul nsw i32 %i.bj, %i.bi
  %i.bl = load i32, ptr %10, align 4, !tbaa !41
  %i.bm = mul nsw i32 %i.bk, %i.bl                ; 5 uses
  %i.bn = load float, ptr %.sroa.0.0, align 4, !tbaa !64
  %i.bo = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = icmp sgt i32 %.sroa.27.0, 1
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.br = load <4 x float>, ptr %.sroa.0.0, align 4, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4ncnn3Mat6addrefEv.exit
  %.074.i = phi nsz <4 x float> [ %i.br, %bb.e ], [ %i.bp, %_ZN4ncnn3Mat6addrefEv.exit ] ; 9 uses
  %i.bs = icmp sgt i32 %i.bm, 7
  br i1 %i.bs, label %.lr.ph.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.bt = and i32 %i.bm, 2147483640
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.f
  %.075.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bt, %.preheader.loopexit.i ] ; 2 uses
  %.072.lcssa.i = phi ptr [ %i.as, %bb.f ], [ %i.fw, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi ptr [ %i.ao, %bb.f ], [ %i.fv, %.preheader.loopexit.i ]
  %.068.lcssa.i = phi ptr [ %i.ak, %bb.f ], [ %i.fu, %.preheader.loopexit.i ]
  %.066.lcssa.i = phi ptr [ %i.ag, %bb.f ], [ %i.ft, %.preheader.loopexit.i ]
  %.0.lcssa.i = phi ptr [ %i.z, %bb.f ], [ %i.fs, %.preheader.loopexit.i ]
  %i.bu = icmp slt i32 %.075.lcssa.i, %i.bm
  br i1 %i.bu, label %.lr.ph54.i, label %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.042.i = phi ptr [ %i.fs, %.lr.ph.i ], [ %i.z, %bb.f ] ; 9 uses
  %.06641.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.06840.i = phi ptr [ %i.fu, %.lr.ph.i ], [ %i.ak, %bb.f ] ; 2 uses
  %.07039.i = phi ptr [ %i.fv, %.lr.ph.i ], [ %i.ao, %bb.f ] ; 2 uses
  %.07238.i = phi ptr [ %i.fw, %.lr.ph.i ], [ %i.as, %bb.f ] ; 2 uses
  %.07537.i = phi i32 [ %i.fx, %.lr.ph.i ], [ 0, %bb.f ]
  %i.bv = load i64, ptr %.042.i, align 1, !tbaa !65
  %i.bw = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %i.bx = bitcast <2 x i64> %i.bw to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.by = bitcast <8 x i16> %11 to <4 x float>
  %i.bz = getelementptr inbounds nuw i8, ptr %.042.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 1, !tbaa !65
  %i.cb = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.cc = bitcast <2 x i64> %i.cb to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %12 to <4 x float>
  %i.ce = getelementptr inbounds nuw i8, ptr %.042.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 1, !tbaa !65
  %i.cg = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.ch = bitcast <2 x i64> %i.cg to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ci = bitcast <8 x i16> %13 to <4 x float>
  %i.cj = getelementptr inbounds nuw i8, ptr %.042.i, i64 24
  %i.ck = load i64, ptr %i.cj, align 1, !tbaa !65
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cn = bitcast <8 x i16> %14 to <4 x float>
  %i.co = getelementptr inbounds nuw i8, ptr %.042.i, i64 32
  %i.cp = load i64, ptr %i.co, align 1, !tbaa !65
  %i.cq = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.cr = bitcast <2 x i64> %i.cq to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cs = bitcast <8 x i16> %15 to <4 x float>
  %i.ct = getelementptr inbounds nuw i8, ptr %.042.i, i64 40
  %i.cu = load i64, ptr %i.ct, align 1, !tbaa !65
  %i.cv = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %i.cw = bitcast <2 x i64> %i.cv to <8 x i16>
  %16 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cx = bitcast <8 x i16> %16 to <4 x float>
  %i.cy = getelementptr inbounds nuw i8, ptr %.042.i, i64 48
  %i.cz = load i64, ptr %i.cy, align 1, !tbaa !65
  %i.da = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.db = bitcast <2 x i64> %i.da to <8 x i16>
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.db, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dc = bitcast <8 x i16> %17 to <4 x float>
  %i.dd = getelementptr inbounds nuw i8, ptr %.042.i, i64 56
  %i.de = load i64, ptr %i.dd, align 1, !tbaa !65
  %i.df = insertelement <2 x i64> poison, i64 %i.de, i64 0
  %i.dg = bitcast <2 x i64> %i.df to <8 x i16>
  %18 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dh = bitcast <8 x i16> %18 to <4 x float>
  %i.di = fmul fast <4 x float> %.074.i, %i.by    ; 2 uses
  %i.dj = fmul fast <4 x float> %.074.i, %i.cd    ; 2 uses
  %i.dk = fmul fast <4 x float> %.074.i, %i.ci    ; 2 uses
  %i.dl = fmul fast <4 x float> %.074.i, %i.cn    ; 2 uses
  %i.dm = fmul fast <4 x float> %.074.i, %i.cs    ; 2 uses
  %i.dn = fmul fast <4 x float> %.074.i, %i.cx    ; 2 uses
  %i.do = fmul fast <4 x float> %.074.i, %i.dc    ; 2 uses
  %i.dp = fmul fast <4 x float> %.074.i, %i.dh    ; 2 uses
  %i.dq = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.di)
  %i.dr = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dm)
  %i.ds = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dk)
  %i.dt = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.do)
  %i.du = fadd fast <4 x float> %i.dq, %i.di
  %i.dv = fadd fast <4 x float> %i.dr, %i.dm
  %i.dw = fadd fast <4 x float> %i.ds, %i.dk
  %i.dx = fadd fast <4 x float> %i.dt, %i.do
  %i.dy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.du)
  %i.dz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dv)
  %i.ea = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dw)
  %i.eb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dx)
  %i.ec = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dy, <4 x i32> %i.dz)
  %i.ed = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ea, <4 x i32> %i.eb)
  %i.ee = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ec, <8 x i16> splat (i16 -127))
  %i.ef = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ee, <8 x i16> splat (i16 127))
  %i.eg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ed, <8 x i16> splat (i16 -127))
  %i.eh = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eg, <8 x i16> splat (i16 127))
  %i.ei = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ef, <8 x i16> %i.eh) ; 2 uses
  %i.ej = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dj)
  %i.ek = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dn)
  %i.el = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dl)
  %i.em = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dp)
  %i.en = fadd fast <4 x float> %i.ej, %i.dj
  %i.eo = fadd fast <4 x float> %i.ek, %i.dn
  %i.ep = fadd fast <4 x float> %i.el, %i.dl
  %i.eq = fadd fast <4 x float> %i.em, %i.dp
  %i.er = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.en)
  %i.es = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eo)
  %i.et = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ep)
  %i.eu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eq)
  %i.ev = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.er, <4 x i32> %i.es)
  %i.ew = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.et, <4 x i32> %i.eu)
  %i.ex = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ev, <8 x i16> splat (i16 -127))
  %i.ey = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ex, <8 x i16> splat (i16 127))
  %i.ez = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ew, <8 x i16> splat (i16 -127))
  %i.fa = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ez, <8 x i16> splat (i16 127))
  %i.fb = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ey, <8 x i16> %i.fa) ; 2 uses
  %i.fc = shufflevector <16 x i8> %i.ei, <16 x i8> %i.fb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fd = shufflevector <16 x i8> %i.ei, <16 x i8> %i.fb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fe = bitcast <16 x i8> %i.fc to <8 x i16>    ; 2 uses
  %i.ff = bitcast <16 x i8> %i.fd to <8 x i16>    ; 2 uses
  %i.fg = shufflevector <8 x i16> %i.fe, <8 x i16> %i.ff, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fh = shufflevector <8 x i16> %i.fe, <8 x i16> %i.ff, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fi = bitcast <8 x i16> %i.fg to <4 x i32>    ; 2 uses
  %i.fj = bitcast <8 x i16> %i.fh to <4 x i32>    ; 2 uses
  %i.fk = shufflevector <4 x i32> %i.fi, <4 x i32> %i.fj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.fl = shufflevector <4 x i32> %i.fi, <4 x i32> %i.fj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.fm = bitcast <4 x i32> %i.fk to <2 x double> ; 2 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 0
  store double %i.fn, ptr %.06641.i, align 1, !tbaa !65
  %i.fo = extractelement <2 x double> %i.fm, i64 1
  store double %i.fo, ptr %.06840.i, align 1, !tbaa !65
  %i.fp = bitcast <4 x i32> %i.fl to <2 x double> ; 2 uses
  %i.fq = extractelement <2 x double> %i.fp, i64 0
  store double %i.fq, ptr %.07039.i, align 1, !tbaa !65
  %i.fr = extractelement <2 x double> %i.fp, i64 1
  store double %i.fr, ptr %.07238.i, align 1, !tbaa !65
  %i.fs = getelementptr inbounds nuw i8, ptr %.042.i, i64 64 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.06641.i, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.06840.i, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.07039.i, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.07238.i, i64 8 ; 2 uses
  %i.fx = add nuw nsw i32 %.07537.i, 8            ; 2 uses
  %i.fy = or disjoint i32 %i.fx, 7
  %i.fz = icmp slt i32 %i.fy, %i.bm
  br i1 %i.fz, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !11

.lr.ph54.i:                                       ; preds = %.preheader.i, %.lr.ph54.i
  %.153.i = phi ptr [ %i.gq, %.lr.ph54.i ], [ %.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.16752.i = phi ptr [ %i.gr, %.lr.ph54.i ], [ %.066.lcssa.i, %.preheader.i ] ; 2 uses
  %.16951.i = phi ptr [ %i.gs, %.lr.ph54.i ], [ %.068.lcssa.i, %.preheader.i ] ; 2 uses
  %.17150.i = phi ptr [ %i.gt, %.lr.ph54.i ], [ %.070.lcssa.i, %.preheader.i ] ; 2 uses
  %.17349.i = phi ptr [ %i.gu, %.lr.ph54.i ], [ %.072.lcssa.i, %.preheader.i ] ; 2 uses
  %.17648.i = phi i32 [ %i.gv, %.lr.ph54.i ], [ %.075.lcssa.i, %.preheader.i ]
  %i.ga = load i64, ptr %.153.i, align 1, !tbaa !65
  %i.gb = insertelement <2 x i64> poison, i64 %i.ga, i64 0
  %i.gc = bitcast <2 x i64> %i.gb to <8 x i16>
  %19 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gd = bitcast <8 x i16> %19 to <4 x float>
  %i.ge = fmul fast <4 x float> %.074.i, %i.gd    ; 2 uses
  %i.gf = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ge)
  %i.gg = fadd fast <4 x float> %i.gf, %i.ge
  %i.gh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gg)
  %i.gi = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> poison, <4 x i32> %i.gh)
  %i.gj = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.gi, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -127, i16 -127, i16 -127, i16 -127>)
  %i.gk = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.gj, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 127, i16 127, i16 127, i16 127>)
  %i.gl = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gk, <8 x i16> poison) ; 4 uses
  %i.gm = extractelement <16 x i8> %i.gl, i64 4
  store i8 %i.gm, ptr %.16752.i, align 1, !tbaa !65
  %i.gn = extractelement <16 x i8> %i.gl, i64 5
  store i8 %i.gn, ptr %.16951.i, align 1, !tbaa !65
  %i.go = extractelement <16 x i8> %i.gl, i64 6
  store i8 %i.go, ptr %.17150.i, align 1, !tbaa !65
  %i.gp = extractelement <16 x i8> %i.gl, i64 7
  store i8 %i.gp, ptr %.17349.i, align 1, !tbaa !65
  %i.gq = getelementptr inbounds nuw i8, ptr %.153.i, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.16752.i, i64 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.16951.i, i64 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.17150.i, i64 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.17349.i, i64 1
  %i.gv = add nuw nsw i32 %.17648.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gv, %i.bm
  br i1 %exitcond.not.i, label %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit, label %.lr.ph54.i, !llvm.loop !12

_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit: ; preds = %.lr.ph54.i, %.preheader.i
  %.not.i61 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i61, label %_ZN4ncnn3MatD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit
  %i.gw = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.gx = icmp eq i32 %i.gw, 1
  br i1 %i.gx, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %.not3.i62 = icmp eq ptr %.sroa.2180.0, null
  br i1 %.not3.i62, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gy = load ptr, ptr %.sroa.2180.0, align 8, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2180.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.j, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.h
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.g, %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit, %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.hd = load i32, ptr %i.b, align 4, !tbaa !41
  %i.he = sext i32 %i.hd to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.he
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit40, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not83 = icmp sgt i32 %i.k, %i.j
  br i1 %.not83, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit28.lr.ph

_ZN4ncnn3MatD2Ev.exit28.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %_ZN4ncnn3MatD2Ev.exit28

_ZN4ncnn3MatD2Ev.exit28:                          ; preds = %_ZN4ncnn3MatD2Ev.exit28.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %_ZN4ncnn3MatD2Ev.exit28.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !31, !noalias !194
  %i.v = load i64, ptr %i.l, align 8, !tbaa !32, !noalias !194
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !194
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !31, !noalias !195
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !195
  %i.ac = mul i64 %i.ab, %indvars.iv
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !38, !noalias !195
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %5, align 4, !tbaa !41
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.c

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %_ZN4ncnn3MatD2Ev.exit28
  %i.ai = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %indvars.iv, %i.aj
  %i.al = load ptr, ptr %6, align 8, !tbaa !31, !noalias !196
  %i.am = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !196
  %i.an = mul i64 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !30, !noalias !196
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit28
  %i.aq = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !30  ; 2 uses
  %i.at = load i32, ptr %i.r, align 4, !tbaa !40  ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = atomicrmw add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.d, %bb.c, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.ai, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.at, %bb.c ], [ %i.at, %bb.d ]
  %.sroa.2147.0 = phi ptr [ %i.ap, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.as, %bb.c ], [ %i.as, %bb.d ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.c ], [ %i.ar, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.ao, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.aq, %bb.c ], [ %i.aq, %bb.d ] ; 6 uses
  %i.av = load i32, ptr %8, align 4, !tbaa !41
  %i.aw = load i32, ptr %9, align 4, !tbaa !41
  %i.ax = mul i32 %i.aw, %i.av
  %i.ay = load i32, ptr %10, align 4, !tbaa !41
  %i.az = mul i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %i.bb = mul i32 %i.az, %i.ba                    ; 13 uses
  %i.bc = load float, ptr %.sroa.0.0, align 4, !tbaa !64 ; 8 uses
  %i.bd = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bf = insertelement <8 x float> poison, float %i.bc, i64 0
  %i.bg = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bh = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.bi = shufflevector <16 x float> %i.bh, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bj = icmp sgt i32 %.sroa.27.0, 1
  br i1 %i.bj, label %bb.e, label %.thread23.i

bb.e:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  switch i32 %i.ba, label %.thread23.i [
    i32 16, label %.thread.i
    i32 8, label %bb.f
    i32 4, label %bb.g
  ]

.thread.i:                                        ; preds = %bb.e
  %i.bk = load <16 x float>, ptr %.sroa.0.0, align 4, !tbaa !65
  br label %.thread23.i

bb.f:                                             ; preds = %bb.e
  %i.bl = load <8 x float>, ptr %.sroa.0.0, align 4, !tbaa !65 ; 2 uses
  %i.bm = shufflevector <8 x float> %i.bl, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.thread23.i

bb.g:                                             ; preds = %bb.e
  %i.bn = load <4 x float>, ptr %.sroa.0.0, align 4, !tbaa !65 ; 3 uses
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %.thread23.i

.thread23.i:                                      ; preds = %bb.g, %bb.f, %.thread.i, %bb.e, %_ZN4ncnn3Mat6addrefEv.exit
  %.121.i = phi nsz <8 x float> [ %i.bo, %bb.g ], [ %i.bg, %bb.e ], [ %i.bg, %_ZN4ncnn3Mat6addrefEv.exit ], [ %i.bg, %.thread.i ], [ %i.bl, %bb.f ]
  %.019.i = phi nsz <4 x float> [ %i.bn, %bb.g ], [ %i.be, %bb.e ], [ %i.be, %_ZN4ncnn3Mat6addrefEv.exit ], [ %i.be, %.thread.i ], [ %i.be, %bb.f ]
  %.261.i = phi nsz <16 x float> [ %i.bp, %bb.g ], [ %i.bi, %bb.e ], [ %i.bi, %_ZN4ncnn3Mat6addrefEv.exit ], [ %i.bk, %.thread.i ], [ %i.bm, %bb.f ]
  %i.bq = icmp sgt i32 %i.bb, 15
  br i1 %i.bq, label %.lr.ph.i, label %.preheader29.i

.preheader29.loopexit.i:                          ; preds = %.lr.ph.i
  %i.br = and i32 %i.bb, 2147483632
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.loopexit.i, %.thread23.i
  %.055.lcssa.i = phi i32 [ 0, %.thread23.i ], [ %i.br, %.preheader29.loopexit.i ] ; 3 uses
  %.051.lcssa.i = phi ptr [ %i.af, %.thread23.i ], [ %i.ci, %.preheader29.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.z, %.thread23.i ], [ %i.ch, %.preheader29.loopexit.i ] ; 2 uses
  %i.bs = or disjoint i32 %.055.lcssa.i, 7
  %i.bt = icmp slt i32 %i.bs, %i.bb
  br i1 %i.bt, label %.lr.ph38.i, label %.preheader28.i

.lr.ph.i:                                         ; preds = %.thread23.i, %.lr.ph.i
  %.032.i = phi ptr [ %i.ch, %.lr.ph.i ], [ %i.z, %.thread23.i ] ; 2 uses
  %.05131.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %i.af, %.thread23.i ] ; 2 uses
  %.05530.i = phi i32 [ %i.cj, %.lr.ph.i ], [ 0, %.thread23.i ]
  %i.bu = load <16 x i16>, ptr %.032.i, align 1, !tbaa !65 ; 2 uses
  %11 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %12 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bu, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bv = shufflevector <16 x i16> %11, <16 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bw = shufflevector <16 x i16> %11, <16 x i16> %12, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bx = bitcast <16 x i16> %i.bv to <8 x i32>
  %i.by = bitcast <16 x i16> %i.bw to <8 x i32>
  %i.bz = shufflevector <8 x i32> %i.bx, <8 x i32> %i.by, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = bitcast <16 x i32> %i.bz to <16 x float>
  %i.cb = fmul fast <16 x float> %.261.i, %i.ca   ; 2 uses
  %i.cc = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cb)
  %i.cd = fadd fast <16 x float> %i.cc, %i.cb
  %i.ce = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cf = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ce, <16 x i8> zeroinitializer, i16 -1)
  %i.cg = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cf, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.cg, ptr %.05131.i, align 1, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %.032.i, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05131.i, i64 16 ; 2 uses
  %i.cj = add nuw nsw i32 %.05530.i, 16           ; 2 uses
  %i.ck = or disjoint i32 %i.cj, 15
  %i.cl = icmp slt i32 %i.ck, %i.bb
  br i1 %i.cl, label %.lr.ph.i, label %.preheader29.loopexit.i, !llvm.loop !7

.preheader28.i:                                   ; preds = %.lr.ph38.i, %.preheader29.i
  %.156.lcssa.i = phi i32 [ %.055.lcssa.i, %.preheader29.i ], [ %i.db, %.lr.ph38.i ] ; 3 uses
  %.152.lcssa.i = phi ptr [ %.051.lcssa.i, %.preheader29.i ], [ %i.da, %.lr.ph38.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader29.i ], [ %i.cz, %.lr.ph38.i ] ; 2 uses
  %i.cm = or disjoint i32 %.156.lcssa.i, 3
  %i.cn = icmp slt i32 %i.cm, %i.bb
  br i1 %i.cn, label %.lr.ph45.i, label %.preheader.i

.lr.ph38.i:                                       ; preds = %.preheader29.i, %.lr.ph38.i
  %.137.i = phi ptr [ %i.cz, %.lr.ph38.i ], [ %.0.lcssa.i, %.preheader29.i ] ; 2 uses
  %.15236.i = phi ptr [ %i.da, %.lr.ph38.i ], [ %.051.lcssa.i, %.preheader29.i ] ; 2 uses
  %.15635.i = phi i32 [ %i.db, %.lr.ph38.i ], [ %.055.lcssa.i, %.preheader29.i ]
  %i.co = load <8 x i16>, ptr %.137.i, align 1, !tbaa !65 ; 2 uses
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.co, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %14 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.co, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cp = shufflevector <8 x i16> %13, <8 x i16> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cq = bitcast <16 x i16> %i.cp to <8 x float>
  %i.cr = fmul fast <8 x float> %.121.i, %i.cq    ; 2 uses
  %i.cs = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cr)
  %i.ct = fadd fast <8 x float> %i.cs, %i.cr
  %i.cu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ct)
  %i.cv = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.cu, <16 x i8> zeroinitializer, i8 -1)
  %i.cw = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cv, <16 x i8> <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.cx = bitcast <16 x i8> %i.cw to <2 x i64>
  %i.cy = extractelement <2 x i64> %i.cx, i64 0
  store i64 %i.cy, ptr %.15236.i, align 8, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %.137.i, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.15236.i, i64 8 ; 2 uses
  %i.db = add nuw nsw i32 %.15635.i, 8            ; 3 uses
  %i.dc = or disjoint i32 %i.db, 7
  %i.dd = icmp slt i32 %i.dc, %i.bb
  br i1 %i.dd, label %.lr.ph38.i, label %.preheader28.i, !llvm.loop !8

.preheader.i:                                     ; preds = %.lr.ph45.i, %.preheader28.i
  %.257.lcssa.i = phi i32 [ %.156.lcssa.i, %.preheader28.i ], [ %i.fz, %.lr.ph45.i ] ; 7 uses
  %.253.lcssa.i = phi ptr [ %.152.lcssa.i, %.preheader28.i ], [ %i.fy, %.lr.ph45.i ] ; 8 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader28.i ], [ %i.fx, %.lr.ph45.i ] ; 8 uses
  %i.de = icmp slt i32 %.257.lcssa.i, %i.bb
  br i1 %i.de, label %iter.check, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.df = xor i32 %.257.lcssa.i, -1
  %i.dg = add i32 %i.bb, %i.df                    ; 3 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %i.dh, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dg, 7
  br i1 %min.iters.check, label %.lr.ph52.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dj = xor i32 %.257.lcssa.i, -1
  %i.dk = add i32 %i.bb, %i.dj
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr i8, ptr %.253.lcssa.i, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %i.do = shl nuw nsw i64 %i.dl, 1
  %i.dp = getelementptr i8, ptr %.2.lcssa.i, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 2
  %bound0 = icmp ult ptr %.253.lcssa.i, %i.dq
  %bound1 = icmp ult ptr %.2.lcssa.i, %i.dn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph52.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check113 = icmp ult i32 %i.dg, 31
  br i1 %min.iters.check113, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dr = and i64 %i.di, 24
  %n.vec = and i64 %i.di, 8589934560              ; 6 uses
  %i.ds = shl nuw nsw i64 %n.vec, 1
  %i.dt = getelementptr i8, ptr %.2.lcssa.i, i64 %i.ds
  %i.du = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec
  %i.dv = trunc i64 %n.vec to i32
  %i.dw = add i32 %.257.lcssa.i, %i.dv
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.bc, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2.lcssa.i, i64 %i.dx
  %next.gep114 = getelementptr i8, ptr %.253.lcssa.i, i64 %index
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !74, !alias.scope !197
  %i.dy = zext <32 x i16> %wide.load to <32 x i32>
  %i.dz = shl nuw <32 x i32> %i.dy, splat (i32 16)
  %i.ea = bitcast <32 x i32> %i.dz to <32 x float>
  %i.eb = fmul fast <32 x float> %broadcast.splat, %i.ea
  %i.ec = call fast <32 x float> @llvm.round.v32f32(<32 x float> %i.eb)
  %i.ed = fptosi <32 x float> %i.ec to <32 x i32>
  %i.ee = call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.ed, <32 x i32> splat (i32 -127))
  %i.ef = call <32 x i32> @llvm.smin.v32i32(<32 x i32> %i.ee, <32 x i32> splat (i32 127))
  %i.eg = trunc nsw <32 x i32> %i.ef to <32 x i8>
  store <32 x i8> %i.eg, ptr %next.gep114, align 1, !tbaa !65, !alias.scope !198, !noalias !197
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph52.i.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.di, 8589934584           ; 5 uses
  %i.ei = shl nuw nsw i64 %n.vec115, 1
  %i.ej = getelementptr i8, ptr %.2.lcssa.i, i64 %i.ei
  %i.ek = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec115
  %i.el = trunc i64 %n.vec115 to i32
  %i.em = add i32 %.257.lcssa.i, %i.el
  %broadcast.splatinsert116 = insertelement <8 x float> poison, float %i.bc, i64 0
  %broadcast.splat117 = shufflevector <8 x float> %broadcast.splatinsert116, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 3 uses
  %i.en = shl i64 %index118, 1
  %next.gep119 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.en
  %next.gep120 = getelementptr i8, ptr %.253.lcssa.i, i64 %index118
  %wide.load121 = load <8 x i16>, ptr %next.gep119, align 2, !tbaa !74, !alias.scope !197
  %i.eo = zext <8 x i16> %wide.load121 to <8 x i32>
  %i.ep = shl nuw <8 x i32> %i.eo, splat (i32 16)
  %i.eq = bitcast <8 x i32> %i.ep to <8 x float>
  %i.er = fmul fast <8 x float> %broadcast.splat117, %i.eq
  %i.es = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.er)
  %i.et = fptosi <8 x float> %i.es to <8 x i32>
  %i.eu = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.et, <8 x i32> splat (i32 -127))
  %i.ev = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.eu, <8 x i32> splat (i32 127))
  %i.ew = trunc nsw <8 x i32> %i.ev to <8 x i8>
  store <8 x i8> %i.ew, ptr %next.gep120, align 1, !tbaa !65, !alias.scope !198, !noalias !197
  %index.next122 = add nuw i64 %index118, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.ex, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !192

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %i.di, %n.vec115
  br i1 %cmp.n123, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.351.i.ph = phi ptr [ %.2.lcssa.i, %iter.check ], [ %.2.lcssa.i, %vector.memcheck ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ej, %vec.epilog.middle.block ] ; 3 uses
  %.35450.i.ph = phi ptr [ %.253.lcssa.i, %iter.check ], [ %.253.lcssa.i, %vector.memcheck ], [ %i.du, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ] ; 3 uses
  %.35849.i.ph = phi i32 [ %.257.lcssa.i, %iter.check ], [ %.257.lcssa.i, %vector.memcheck ], [ %i.dw, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ] ; 4 uses
  %i.ey = sub i32 %i.bb, %.35849.i.ph
  %.neg = add i32 %.35849.i.ph, 1
  %xtraiter = and i32 %i.ey, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.i.prol.loopexit, label %.lr.ph52.i.prol

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.ez = load i16, ptr %.351.i.ph, align 2, !tbaa !74
  %i.fa = zext i16 %i.ez to i32
  %i.fb = shl nuw i32 %i.fa, 16
  %i.fc = bitcast i32 %i.fb to float
  %i.fd = fmul fast float %i.bc, %i.fc
  %i.fe = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fd)
  %i.ff = fptosi float %i.fe to i32
  %spec.select.i26.i.prol = call i32 @llvm.smax.i32(i32 %i.ff, i32 -127)
  %.0.i27.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i26.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i27.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.35450.i.ph, align 1, !tbaa !65
  %i.fg = getelementptr inbounds nuw i8, ptr %.351.i.ph, i64 2
  %i.fh = getelementptr inbounds nuw i8, ptr %.35450.i.ph, i64 1
  %i.fi = add nuw nsw i32 %.35849.i.ph, 1
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.351.i.unr = phi ptr [ %.351.i.ph, %.lr.ph52.i.preheader ], [ %i.fg, %.lr.ph52.i.prol ]
  %.35450.i.unr = phi ptr [ %.35450.i.ph, %.lr.ph52.i.preheader ], [ %i.fh, %.lr.ph52.i.prol ]
  %.35849.i.unr = phi i32 [ %.35849.i.ph, %.lr.ph52.i.preheader ], [ %i.fi, %.lr.ph52.i.prol ]
  %i.fj = icmp eq i32 %i.bb, %.neg
  br i1 %i.fj, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph52.i

.lr.ph45.i:                                       ; preds = %.preheader28.i, %.lr.ph45.i
  %.244.i = phi ptr [ %i.fx, %.lr.ph45.i ], [ %.1.lcssa.i, %.preheader28.i ] ; 2 uses
  %.25343.i = phi ptr [ %i.fy, %.lr.ph45.i ], [ %.152.lcssa.i, %.preheader28.i ] ; 2 uses
  %.25742.i = phi i32 [ %i.fz, %.lr.ph45.i ], [ %.156.lcssa.i, %.preheader28.i ]
  %i.fk = load i64, ptr %.244.i, align 1, !tbaa !65
  %i.fl = insertelement <2 x i64> poison, i64 %i.fk, i64 0
  %i.fm = bitcast <2 x i64> %i.fl to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fn = bitcast <8 x i16> %15 to <4 x float>
  %i.fo = fmul fast <4 x float> %.019.i, %i.fn    ; 2 uses
  %i.fp = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fo)
  %i.fq = fadd fast <4 x float> %i.fp, %i.fo
  %i.fr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fq)
  %i.fs = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fr, <4 x i32> poison)
  %i.ft = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fs, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.fu = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ft, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.fv = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.fu, <8 x i16> poison)
  %i.fw = shufflevector <16 x i8> %i.fv, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.fw, ptr %.25343.i, align 1, !tbaa !65
  %i.fx = getelementptr inbounds nuw i8, ptr %.244.i, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.25343.i, i64 4 ; 2 uses
  %i.fz = add nuw nsw i32 %.25742.i, 4            ; 3 uses
  %i.ga = or disjoint i32 %i.fz, 3
  %i.gb = icmp slt i32 %i.ga, %i.bb
  br i1 %i.gb, label %.lr.ph45.i, label %.preheader.i, !llvm.loop !9

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.351.i = phi ptr [ %i.gs, %.lr.ph52.i ], [ %.351.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.35450.i = phi ptr [ %i.gt, %.lr.ph52.i ], [ %.35450.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.35849.i = phi i32 [ %i.gu, %.lr.ph52.i ], [ %.35849.i.unr, %.lr.ph52.i.prol.loopexit ]
  %i.gc = load i16, ptr %.351.i, align 2, !tbaa !74
  %i.gd = zext i16 %i.gc to i32
  %i.ge = shl nuw i32 %i.gd, 16
  %i.gf = bitcast i32 %i.ge to float
  %i.gg = fmul fast float %i.bc, %i.gf
  %i.gh = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.gg)
  %i.gi = fptosi float %i.gh to i32
  %spec.select.i26.i = call i32 @llvm.smax.i32(i32 %i.gi, i32 -127)
  %.0.i27.i = call i32 @llvm.smin.i32(i32 %spec.select.i26.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i27.i to i8
  store i8 %.0.i.i, ptr %.35450.i, align 1, !tbaa !65
  %i.gj = getelementptr inbounds nuw i8, ptr %.351.i, i64 2
  %i.gk = getelementptr inbounds nuw i8, ptr %.35450.i, i64 1
  %i.gl = load i16, ptr %i.gj, align 2, !tbaa !74
  %i.gm = zext i16 %i.gl to i32
  %i.gn = shl nuw i32 %i.gm, 16
  %i.go = bitcast i32 %i.gn to float
  %i.gp = fmul fast float %i.bc, %i.go
  %i.gq = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.gp)
  %i.gr = fptosi float %i.gq to i32
  %spec.select.i26.i.1 = call i32 @llvm.smax.i32(i32 %i.gr, i32 -127)
  %.0.i27.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i26.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i27.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.gk, align 1, !tbaa !65
  %i.gs = getelementptr inbounds nuw i8, ptr %.351.i, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %.35450.i, i64 2
  %i.gu = add nuw nsw i32 %.35849.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.gu, %i.bb
  br i1 %exitcond.not.i.1, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph52.i, !llvm.loop !193

_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit:  ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.not.i34 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i34, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit
  %i.gv = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.not3.i35 = icmp eq ptr %.sroa.2147.0, null
  br i1 %.not3.i35, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gx = load ptr, ptr %.sroa.2147.0, align 8, !tbaa !23
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2147.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.i
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.h, %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.hc = load i32, ptr %i.b, align 4, !tbaa !41
  %i.hd = sext i32 %i.hc to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hd
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit28, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.copysign.v16f32(<16 x float>, <16 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.round.v16f32(<16 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.round.v32f32(<32 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.smax.v32i32(<32 x i32>, <32 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.smin.v32i32(<32 x i32>, <32 x i32>) #10

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{null}
!1 = distinct !{!1, !66}
!2 = distinct !{!2, !66}
!3 = distinct !{!3, !66}
!4 = distinct !{!4, !66}
!5 = distinct !{!5, !66}
!6 = distinct !{!6, !66}
!7 = distinct !{!7, !66}
!8 = distinct !{!8, !66}
!9 = distinct !{!9, !66}
!10 = distinct !{!10, !66}
!11 = distinct !{!11, !66}
!12 = distinct !{!12, !66}
!13 = !{i32 7, !"openmp", i32 51}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
end_hunk_0
