Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512bf16?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  store i16 %i.bdf, ptr %i.bdh, align 2, !tbaa !28
  %i.bdi = extractelement <32 x i16> %i.bdd, i64 5
  %.idx853 = shl i64 %i.bdg, 2
  %i.bdj = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx853
  store i16 %i.bdi, ptr %i.bdj, align 2, !tbaa !28
  %i.bdk = extractelement <32 x i16> %i.bdd, i64 7
  %.idx854 = mul i64 %i.bdg, 6
  %i.bdl = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx854
  store i16 %i.bdk, ptr %i.bdl, align 2, !tbaa !28
  %i.bdm = extractelement <32 x i16> %i.bdd, i64 9
  %.idx855 = shl i64 %i.bdg, 3
  %i.bdn = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx855
  store i16 %i.bdm, ptr %i.bdn, align 2, !tbaa !28
  %i.bdo = extractelement <32 x i16> %i.bdd, i64 11
  %.idx856 = mul i64 %i.bdg, 10
  %i.bdp = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx856
  store i16 %i.bdo, ptr %i.bdp, align 2, !tbaa !28
  %i.bdq = extractelement <32 x i16> %i.bdd, i64 13
  %.idx857 = mul i64 %i.bdg, 12
  %i.bdr = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx857
  store i16 %i.bdq, ptr %i.bdr, align 2, !tbaa !28
  %i.bds = extractelement <32 x i16> %i.bdd, i64 15
  %.idx858 = mul i64 %i.bdg, 14
  %i.bdt = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx858
  store i16 %i.bds, ptr %i.bdt, align 2, !tbaa !28
  %i.bdu = extractelement <32 x i16> %i.bdd, i64 17
  %.idx859 = shl i64 %i.bdg, 4
  %i.bdv = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx859
  store i16 %i.bdu, ptr %i.bdv, align 2, !tbaa !28
  %i.bdw = extractelement <32 x i16> %i.bdd, i64 19
  %.idx860 = mul i64 %i.bdg, 18
  %i.bdx = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx860
  store i16 %i.bdw, ptr %i.bdx, align 2, !tbaa !28
  %i.bdy = extractelement <32 x i16> %i.bdd, i64 21
  %.idx861 = mul i64 %i.bdg, 20
  %i.bdz = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx861
  store i16 %i.bdy, ptr %i.bdz, align 2, !tbaa !28
  %i.bea = extractelement <32 x i16> %i.bdd, i64 23
  %.idx862 = mul i64 %i.bdg, 22
  %i.beb = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx862
  store i16 %i.bea, ptr %i.beb, align 2, !tbaa !28
  %i.bec = extractelement <32 x i16> %i.bdd, i64 25
  %.idx863 = mul i64 %i.bdg, 24
  %i.bed = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx863
  store i16 %i.bec, ptr %i.bed, align 2, !tbaa !28
  %i.bee = extractelement <32 x i16> %i.bdd, i64 27
  %.idx864 = mul i64 %i.bdg, 26
  %i.bef = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx864
  store i16 %i.bee, ptr %i.bef, align 2, !tbaa !28
  %i.beg = extractelement <32 x i16> %i.bdd, i64 29
  %.idx865 = mul i64 %i.bdg, 28
  %i.beh = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx865
  store i16 %i.beg, ptr %i.beh, align 2, !tbaa !28
  %i.bei = extractelement <32 x i16> %i.bdd, i64 31
  %.idx866 = mul i64 %i.bdg, 30
  %i.bej = getelementptr inbounds nuw i8, ptr %.18152525, i64 %.idx866
  store i16 %i.bei, ptr %i.bej, align 2, !tbaa !28
  %i.bek = getelementptr inbounds nuw i8, ptr %.18152525, i64 2
  br label %.thread2265

.thread2265:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, %bb.af, %.thread2259, %bb.ag, %bb.ah
  %.5819 = phi ptr [ %i.bek, %bb.ah ], [ %.18152525, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split ], [ %i.bdc, %bb.ag ], [ %i.bby, %.thread2259 ], [ %i.bcf, %bb.af ], [ %.18152525, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.bel = add nuw nsw i32 %.08122526, 1          ; 2 uses
  %exitcond2609.not = icmp eq i32 %i.bel, %i.ah
  br i1 %exitcond2609.not, label %._crit_edge, label %bb.c, !llvm.loop !315

._crit_edge2532:                                  ; preds = %._crit_edge2529.split, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge2532, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #4 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !32 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn54deconvolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 {
bb.a:
  tail call fastcc void @_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 50 uses
  %i.a = mul i32 %5, %4                           ; 84 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.f, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.c, i64 noundef 4, ptr noundef null)
  %i.g = mul nsw i32 %3, %2                       ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader1818.lr.ph, label %._crit_edge1823.split

.preheader1818.lr.ph:                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.a, 0
  %i.j = sext i32 %i.a to i64                     ; 6 uses
  br i1 %i.i, label %.preheader1818.preheader, label %._crit_edge1823.split

.preheader1818.preheader:                         ; preds = %.preheader1818.lr.ph
  %i.k = load ptr, ptr %6, align 8, !tbaa !19     ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 10 uses
  %8 = add nsw i32 %i.g, -1
  %9 = zext i32 %8 to i64                         ; 2 uses
  %10 = mul nuw nsw i64 %i.j, %9
  %11 = add nuw i64 %10, %wide.trip.count
  %i.m = shl i64 %11, 2
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.m
  %i.n = shl nuw nsw i64 %9, 2
  %12 = add nuw nsw i64 %i.n, 4
  %13 = mul i64 %12, %i.j
  %scevgep2932 = getelementptr i8, ptr %i.k, i64 %13
  %i.o = sub nsw i64 %i.j, %wide.trip.count
  %14 = shl nsw i64 %i.o, 2
  %scevgep2933 = getelementptr i8, ptr %i.k, i64 %14
  %min.iters.check = icmp ult i32 %i.a, 8
  %bound0 = icmp ult ptr %scevgep2933, %scevgep
  %bound1 = icmp ult ptr %i.l, %scevgep2932
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check2934 = icmp ult i32 %i.a, 64
  %i.p = and i64 %wide.trip.count, 56
  %n.vec = and i64 %wide.trip.count, 2147483584   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  %n.vec2941 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n2946 = icmp eq i64 %n.vec2941, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader1818.preheader, %._crit_edge
  %.08701822 = phi i32 [ %i.ap, %._crit_edge ], [ 0, %.preheader1818.preheader ]
  %.08711821 = phi ptr [ %i.an, %._crit_edge ], [ %i.l, %.preheader1818.preheader ] ; 8 uses
  %.08981820 = phi ptr [ %i.ao, %._crit_edge ], [ %i.k, %.preheader1818.preheader ] ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %.08981820, i64 %i.j ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check2934, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.08711821, i64 %index ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %wide.load = load <16 x float>, ptr %i.r, align 4, !tbaa !30, !alias.scope !427
  %wide.load2935 = load <16 x float>, ptr %i.s, align 4, !tbaa !30, !alias.scope !427
  %wide.load2936 = load <16 x float>, ptr %i.t, align 4, !tbaa !30, !alias.scope !427
  %wide.load2937 = load <16 x float>, ptr %i.u, align 4, !tbaa !30, !alias.scope !427
  %i.v = xor i64 %index, -1
  %i.w = getelementptr [4 x i8], ptr %i.q, i64 %i.v ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -60
  %i.y = getelementptr i8, ptr %i.w, i64 -124
  %i.z = getelementptr i8, ptr %i.w, i64 -188
  %i.aa = getelementptr i8, ptr %i.w, i64 -252
  %reverse = shufflevector <16 x float> %wide.load, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse2938 = shufflevector <16 x float> %wide.load2935, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse2939 = shufflevector <16 x float> %wide.load2936, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse2940 = shufflevector <16 x float> %wide.load2937, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x float> %reverse, ptr %i.x, align 4, !tbaa !30, !alias.scope !428, !noalias !427
  store <16 x float> %reverse2938, ptr %i.y, align 4, !tbaa !30, !alias.scope !428, !noalias !427
  store <16 x float> %reverse2939, ptr %i.z, align 4, !tbaa !30, !alias.scope !428, !noalias !427
  store <16 x float> %reverse2940, ptr %i.aa, align 4, !tbaa !30, !alias.scope !428, !noalias !427
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !334

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !431

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2942 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2945, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.08711821, i64 %index2942
  %wide.load2943 = load <8 x float>, ptr %i.ac, align 4, !tbaa !30, !alias.scope !427
  %i.ad = xor i64 %index2942, -1
  %i.ae = getelementptr [4 x i8], ptr %i.q, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -28
  %reverse2944 = shufflevector <8 x float> %wide.load2943, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x float> %reverse2944, ptr %i.af, align 4, !tbaa !30, !alias.scope !428, !noalias !427
  %index.next2945 = add nuw i64 %index2942, 8     ; 2 uses
  %i.ag = icmp eq i64 %index.next2945, %n.vec2941
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !335

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n2946, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec2941, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.08711821, i64 %indvars.iv.prol
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !30
  %i.aj = xor i64 %indvars.iv.prol, -1
  %i.ak = getelementptr [4 x i8], ptr %i.q, i64 %i.aj
  store float %i.ai, ptr %i.ak, align 4, !tbaa !30
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !336

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge1823.split:                            ; preds = %._crit_edge, %.preheader1818.lr.ph, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.a, i32 noundef %2, i32 noundef %3, ptr noundef null)
          to label %bb.b unwind label %bb.e

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.08711821, i64 %i.j
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.08981820, i64 %i.j
  %i.ap = add nuw nsw i32 %.08701822, 1           ; 2 uses
  %exitcond2430.not = icmp eq i32 %i.ap, %i.g
  br i1 %exitcond2430.not, label %._crit_edge1823.split, label %iter.check, !llvm.loop !337

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.08711821, i64 %indvars.iv
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !30
  %i.as = xor i64 %indvars.iv, -1
  %i.at = getelementptr [4 x i8], ptr %i.q, i64 %i.as
  store float %i.ar, ptr %i.at, align 4, !tbaa !30
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.08711821, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !30
  %i.ax = sub i64 -2, %indvars.iv
  %i.ay = getelementptr [4 x i8], ptr %i.q, i64 %i.ax
  store float %i.aw, ptr %i.ay, align 4, !tbaa !30
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.08711821, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !30
  %i.bc = sub i64 -3, %indvars.iv
  %i.bd = getelementptr [4 x i8], ptr %i.q, i64 %i.bc
  store float %i.bb, ptr %i.bd, align 4, !tbaa !30
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.08711821, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !30
  %i.bh = sub i64 -4, %indvars.iv
  %i.bi = getelementptr [4 x i8], ptr %i.q, i64 %i.bh
  store float %i.bg, ptr %i.bi, align 4, !tbaa !30
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !338

bb.b:                                             ; preds = %._crit_edge1823.split
  %i.bj = icmp sgt i32 %3, 15
  br i1 %i.bj, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.bk = icmp sgt i32 %2, 15
  br i1 %i.bk, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bl = shl nsw i32 %i.a, 8
  %i.bm = lshr i32 %2, 4
  %i.bn = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.bo = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bp = lshr <4 x i32> %i.bo, <i32 0, i32 3, i32 2, i32 1>
  %i.bq = and <4 x i32> %i.bp, splat (i32 1)
  %i.br = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bq)
  %op.rdx3362 = add nuw nsw i32 %i.br, %i.bm
  br label %.invoke2899

bb.e:                                             ; preds = %._crit_edge1823.split
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit984

bb.f:                                             ; preds = %.invoke2899, %.invoke
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !433 ; 2 uses
  %.not.i1142 = icmp eq ptr %i.bv, null
  br i1 %.not.i1142, label %_ZN4ncnn3MatD2Ev.exit984, label %bb.bl

bb.g:                                             ; preds = %bb.c
  %i.bw = icmp sgt i32 %2, 7
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bx = shl nsw i32 %i.a, 7
  %i.by = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %2, i64 0
  %i.bz = shufflevector <4 x i32> %i.by, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ca = lshr <4 x i32> %i.bz, <i32 0, i32 2, i32 1, i32 0>
  %i.cb = and <4 x i32> %i.ca, splat (i32 1)
  %i.cc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cb)
  br label %.invoke2899

bb.i:                                             ; preds = %bb.g
  %i.cd = icmp sgt i32 %2, 3
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ce = shl nsw i32 %i.a, 6
  %i.cf = lshr i32 %2, 1
  %i.cg = and i32 %i.cf, 1
  %i.ch = and i32 %2, 1
  %i.ci = add nuw nsw i32 %i.ch, 1
  %i.cj = add nuw nsw i32 %i.ci, %i.cg
end_hunk_0
