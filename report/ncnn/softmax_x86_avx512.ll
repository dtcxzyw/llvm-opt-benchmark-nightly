Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_avx512?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK4ncnn18Softmax_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.6:bb.a

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %4, align 4, !tbaa !21     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge40

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge37
  %i.q = phi i32 [ %i.j, %.noexc.preheader ], [ %i.af, %._crit_edge37 ] ; 2 uses
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ag, %._crit_edge37 ] ; 3 uses
  %i.s = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ah, %._crit_edge37 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge37 ] ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge37

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.u = load i32, ptr %5, align 4, !tbaa !21     ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader.preheader, label %._crit_edge37

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !231
  %i.x = load i64, ptr %i.l, align 8, !tbaa !44, !noalias !231
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !231
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.aj, %._crit_edge ], [ %i.r, %.preheader.preheader ]
  %i.ad = phi i32 [ %i.ak, %._crit_edge ], [ %i.u, %.preheader.preheader ] ; 2 uses
  %.02336 = phi i32 [ %i.al, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02435 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ab, %.preheader.preheader ] ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load i32, ptr %6, align 4, !tbaa !21
  %.pre44 = load i32, ptr %7, align 4, !tbaa !21
  br label %.lr.ph

._crit_edge37.loopexit:                           ; preds = %._crit_edge
  %.pre46 = load i32, ptr %i.b, align 4, !tbaa !21
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.preheader.lr.ph, %._crit_edge37.loopexit, %.noexc
  %i.af = phi i32 [ %i.q, %.noexc ], [ %.pre46, %._crit_edge37.loopexit ], [ %i.q, %.preheader.lr.ph ] ; 2 uses
  %i.ag = phi i32 [ %i.r, %.noexc ], [ %i.aj, %._crit_edge37.loopexit ], [ %i.r, %.preheader.lr.ph ]
  %i.ah = phi i32 [ %i.s, %.noexc ], [ %i.aj, %._crit_edge37.loopexit ], [ %i.s, %.preheader.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ai = sext i32 %i.af to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ai
  br i1 %.not.not, label %.noexc, label %._crit_edge40, !llvm.loop !228

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre45 = load i32, ptr %4, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aj = phi i32 [ %i.ac, %.preheader ], [ %.pre45, %._crit_edge.loopexit ] ; 4 uses
  %i.ak = phi i32 [ %i.ad, %.preheader ], [ %i.av, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.02435, %.preheader ], [ %i.at, %._crit_edge.loopexit ]
  %i.al = add nuw nsw i32 %.02336, 1              ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.aj
  br i1 %i.am, label %.preheader, label %._crit_edge37.loopexit, !llvm.loop !229

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.an = phi i32 [ %i.aq, %.lr.ph ], [ %.pre44, %.lr.ph.preheader ]
  %i.ao = phi i32 [ %i.ap, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.034 = phi i32 [ %i.au, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.133 = phi ptr [ %i.at, %.lr.ph ], [ %.02435, %.lr.ph.preheader ] ; 2 uses
  call fastcc void @_ZN4ncnnL7softmaxEPfii(ptr noundef %.133, i32 noundef %i.ao, i32 noundef %i.an)
  %i.ap = load i32, ptr %6, align 4, !tbaa !21    ; 2 uses
  %i.aq = load i32, ptr %7, align 4, !tbaa !21    ; 2 uses
  %i.ar = mul nsw i32 %i.aq, %i.ap
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.133, i64 %i.as ; 2 uses
  %i.au = add nuw nsw i32 %.034, 1                ; 2 uses
  %i.av = load i32, ptr %5, align 4, !tbaa !21    ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !230

._crit_edge40:                                    ; preds = %._crit_edge37, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge40, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ss(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float>, <16 x float>, i16) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #11

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL17softmax_bf16s_sseEPtii(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn28softmax_bf16s_sse_avx512bf16EPtii(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %2, %1                       ; 28 uses
  %i.c = icmp sgt i32 %i.b, 15                    ; 3 uses
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader328

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = add nsw i32 %i.b, -16                    ; 2 uses
  %i.e = lshr i32 %i.d, 4                         ; 2 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.f, 536870910
  br label %.lr.ph

.preheader328.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %i.h = and i32 %i.d, 16
  %lcmp.mod.not.not = icmp eq i32 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader328.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader328.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0109331.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.al, %.preheader328.loopexit.unr-lcssa ] ; 2 uses
  %.0289329.epil.init = phi <16 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader ], [ %i.ak, %.preheader328.loopexit.unr-lcssa ]
  %lcmp.mod603 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod603)
  %i.i = load <16 x i16>, ptr %.0109331.epil.init, align 1, !tbaa !49 ; 2 uses
  %3 = shufflevector <16 x i16> %i.i, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %4 = shufflevector <16 x i16> %i.i, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.j = shufflevector <16 x i16> %3, <16 x i16> %4, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.k = shufflevector <16 x i16> %3, <16 x i16> %4, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.l = bitcast <16 x i16> %i.j to <8 x i32>
  %i.m = bitcast <16 x i16> %i.k to <8 x i32>
  %i.n = shufflevector <8 x i32> %i.l, <8 x i32> %i.m, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.o = bitcast <16 x i32> %i.n to <16 x float>
  %i.p = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.0289329.epil.init, <16 x float> nofpclass(nan inf) %i.o, i32 4)
  %i.q = getelementptr inbounds nuw i8, ptr %.0109331.epil.init, i64 32
  br label %.preheader328.loopexit

.preheader328.loopexit:                           ; preds = %.preheader328.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa600 = phi <16 x float> [ %i.ak, %.preheader328.loopexit.unr-lcssa ], [ %i.p, %.lr.ph.epil.preheader ]
  %.lcssa599 = phi ptr [ %i.al, %.preheader328.loopexit.unr-lcssa ], [ %i.q, %.lr.ph.epil.preheader ]
  %i.r = and i32 %i.b, 2147483632
  br label %.preheader328

.preheader328:                                    ; preds = %.preheader328.loopexit, %bb.c
  %.0289.lcssa = phi <16 x float> [ splat (float f0xFF7FFFFF), %bb.c ], [ %.lcssa600, %.preheader328.loopexit ] ; 7 uses
  %.0113.lcssa = phi i32 [ 0, %bb.c ], [ %i.r, %.preheader328.loopexit ] ; 3 uses
  %.0109.lcssa = phi ptr [ %0, %bb.c ], [ %.lcssa599, %.preheader328.loopexit ] ; 2 uses
  %i.s = or disjoint i32 %.0113.lcssa, 7
  %i.t = icmp slt i32 %i.s, %i.b
  br i1 %i.t, label %.lr.ph337, label %.preheader327

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0109331 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 3 uses
  %.0289329 = phi <16 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.u = load <16 x i16>, ptr %.0109331, align 1, !tbaa !49 ; 2 uses
  %5 = shufflevector <16 x i16> %i.u, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %6 = shufflevector <16 x i16> %i.u, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.v = shufflevector <16 x i16> %5, <16 x i16> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.w = shufflevector <16 x i16> %5, <16 x i16> %6, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.x = bitcast <16 x i16> %i.v to <8 x i32>
  %i.y = bitcast <16 x i16> %i.w to <8 x i32>
  %i.z = shufflevector <8 x i32> %i.x, <8 x i32> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aa = bitcast <16 x i32> %i.z to <16 x float>
  %i.ab = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.0289329, <16 x float> nofpclass(nan inf) %i.aa, i32 4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0109331, i64 32
  %i.ad = load <16 x i16>, ptr %i.ac, align 1, !tbaa !49 ; 2 uses
  %7 = shufflevector <16 x i16> %i.ad, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %8 = shufflevector <16 x i16> %i.ad, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.ae = shufflevector <16 x i16> %7, <16 x i16> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.af = shufflevector <16 x i16> %7, <16 x i16> %8, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ag = bitcast <16 x i16> %i.ae to <8 x i32>
  %i.ah = bitcast <16 x i16> %i.af to <8 x i32>
  %i.ai = shufflevector <8 x i32> %i.ag, <8 x i32> %i.ah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aj = bitcast <16 x i32> %i.ai to <16 x float>
  %i.ak = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ab, <16 x float> nofpclass(nan inf) %i.aj, i32 4) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0109331, i64 64 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader328.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !232

.preheader327:                                    ; preds = %.lr.ph337, %.preheader328
  %.0293.lcssa = phi <8 x float> [ splat (float f0xFF7FFFFF), %.preheader328 ], [ %i.ar, %.lr.ph337 ] ; 5 uses
  %.1114.lcssa = phi i32 [ %.0113.lcssa, %.preheader328 ], [ %i.at, %.lr.ph337 ] ; 3 uses
  %.1110.lcssa = phi ptr [ %.0109.lcssa, %.preheader328 ], [ %i.as, %.lr.ph337 ] ; 2 uses
  %i.am = or disjoint i32 %.1114.lcssa, 3
  %i.an = icmp slt i32 %i.am, %i.b
  br i1 %i.an, label %.lr.ph344, label %.preheader326

.lr.ph337:                                        ; preds = %.preheader328, %.lr.ph337
  %.1110336 = phi ptr [ %i.as, %.lr.ph337 ], [ %.0109.lcssa, %.preheader328 ] ; 2 uses
  %.1114335 = phi i32 [ %i.at, %.lr.ph337 ], [ %.0113.lcssa, %.preheader328 ]
  %.0293334 = phi <8 x float> [ %i.ar, %.lr.ph337 ], [ splat (float f0xFF7FFFFF), %.preheader328 ]
  %i.ao = load <8 x i16>, ptr %.1110336, align 1, !tbaa !49 ; 2 uses
  %9 = shufflevector <8 x i16> %i.ao, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %10 = shufflevector <8 x i16> %i.ao, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ap = shufflevector <8 x i16> %9, <8 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aq = bitcast <16 x i16> %i.ap to <8 x float>
  %i.ar = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0293334, <8 x float> nofpclass(nan inf) %i.aq) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.1110336, i64 16 ; 2 uses
  %i.at = add nuw nsw i32 %.1114335, 8            ; 3 uses
  %i.au = or disjoint i32 %i.at, 7
  %i.av = icmp slt i32 %i.au, %i.b
  br i1 %i.av, label %.lr.ph337, label %.preheader327, !llvm.loop !233

.preheader326:                                    ; preds = %.lr.ph344, %.preheader327
  %.0297.lcssa = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader327 ], [ %i.cr, %.lr.ph344 ] ; 5 uses
  %.2115.lcssa = phi i32 [ %.1114.lcssa, %.preheader327 ], [ %i.ct, %.lr.ph344 ] ; 5 uses
  %.2111.lcssa = phi ptr [ %.1110.lcssa, %.preheader327 ], [ %i.cs, %.lr.ph344 ] ; 5 uses
  %i.aw = icmp slt i32 %.2115.lcssa, %i.b
  br i1 %i.aw, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader326
  %i.ax = xor i32 %.2115.lcssa, -1
  %i.ay = add i32 %i.b, %i.ax                     ; 3 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 7
  br i1 %min.iters.check, label %.lr.ph351.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check469 = icmp ult i32 %i.ay, 63
  br i1 %min.iters.check469, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.ba, 56
  %n.vec = and i64 %i.ba, 8589934528              ; 5 uses
  %i.bc = shl nuw nsw i64 %n.vec, 1
  %i.bd = getelementptr i8, ptr %.2111.lcssa, i64 %i.bc
  %i.be = trunc i64 %n.vec to i32
  %i.bf = add i32 %.2115.lcssa, %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi470 = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bx, %vector.body ]
  %vec.phi471 = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi472 = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bz, %vector.body ]
  %i.bg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2111.lcssa, i64 %i.bg ; 4 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 32
  %i.bi = getelementptr i8, ptr %next.gep, i64 64
  %i.bj = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !62
  %wide.load473 = load <16 x i16>, ptr %i.bh, align 2, !tbaa !62
  %wide.load474 = load <16 x i16>, ptr %i.bi, align 2, !tbaa !62
  %wide.load475 = load <16 x i16>, ptr %i.bj, align 2, !tbaa !62
  %i.bk = zext <16 x i16> %wide.load to <16 x i32>
  %i.bl = zext <16 x i16> %wide.load473 to <16 x i32>
  %i.bm = zext <16 x i16> %wide.load474 to <16 x i32>
  %i.bn = zext <16 x i16> %wide.load475 to <16 x i32>
  %i.bo = shl nuw <16 x i32> %i.bk, splat (i32 16)
  %i.bp = shl nuw <16 x i32> %i.bl, splat (i32 16)
  %i.bq = shl nuw <16 x i32> %i.bm, splat (i32 16)
  %i.br = shl nuw <16 x i32> %i.bn, splat (i32 16)
  %i.bs = bitcast <16 x i32> %i.bo to <16 x float>
  %i.bt = bitcast <16 x i32> %i.bp to <16 x float>
  %i.bu = bitcast <16 x i32> %i.bq to <16 x float>
  %i.bv = bitcast <16 x i32> %i.br to <16 x float>
  %i.bw = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %i.bs) ; 2 uses
  %i.bx = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi470, <16 x float> %i.bt) ; 2 uses
  %i.by = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi471, <16 x float> %i.bu) ; 2 uses
  %i.bz = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi472, <16 x float> %i.bv) ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bw, <16 x float> %i.bx)
  %rdx.minmax.select477 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select, <16 x float> %i.by)
  %rdx.minmax.select479 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select477, <16 x float> %i.bz)
  %i.cb = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select479) ; 3 uses
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph351.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cb, %vec.epilog.iter.check ], [ f0xFF7FFFFF, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec480 = and i64 %i.ba, 8589934584           ; 4 uses
  %i.cc = shl nuw nsw i64 %n.vec480, 1
  %i.cd = getelementptr i8, ptr %.2111.lcssa, i64 %i.cc
  %i.ce = trunc i64 %n.vec480 to i32
  %i.cf = add i32 %.2115.lcssa, %i.ce
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index481 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next485, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi482 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.ck, %vec.epilog.vector.body ]
  %i.cg = shl i64 %index481, 1
  %next.gep483 = getelementptr i8, ptr %.2111.lcssa, i64 %i.cg
  %wide.load484 = load <8 x i16>, ptr %next.gep483, align 2, !tbaa !62
  %i.ch = zext <8 x i16> %wide.load484 to <8 x i32>
  %i.ci = shl nuw <8 x i32> %i.ch, splat (i32 16)
  %i.cj = bitcast <8 x i32> %i.ci to <8 x float>
  %i.ck = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi482, <8 x float> %i.cj) ; 2 uses
  %index.next485 = add nuw i64 %index481, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next485, %n.vec480
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !235

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cm = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ck) ; 2 uses
  %cmp.n486 = icmp eq i64 %i.ba, %n.vec480
  br i1 %cmp.n486, label %._crit_edge, label %.lr.ph351.preheader

.lr.ph351.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3112350.ph = phi ptr [ %.2111.lcssa, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  %.3116349.ph = phi i32 [ %.2115.lcssa, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  %.0300348.ph = phi float [ f0xFF7FFFFF, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph351

.lr.ph344:                                        ; preds = %.preheader327, %.lr.ph344
  %.2111343 = phi ptr [ %i.cs, %.lr.ph344 ], [ %.1110.lcssa, %.preheader327 ] ; 2 uses
  %.2115342 = phi i32 [ %i.ct, %.lr.ph344 ], [ %.1114.lcssa, %.preheader327 ]
  %.0297341 = phi <4 x float> [ %i.cr, %.lr.ph344 ], [ splat (float f0xFF7FFFFF), %.preheader327 ]
  %i.cn = load i64, ptr %.2111343, align 1, !tbaa !49
  %i.co = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %i.cp = bitcast <2 x i64> %i.co to <8 x i16>
  %11 = shufflevector <8 x i16> %i.cp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cq = bitcast <8 x i16> %11 to <4 x float>
  %i.cr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0297341, <4 x float> nofpclass(nan inf) %i.cq) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.2111343, i64 8 ; 2 uses
  %i.ct = add nuw nsw i32 %.2115342, 4            ; 3 uses
  %i.cu = or disjoint i32 %i.ct, 3
  %i.cv = icmp slt i32 %i.cu, %i.b
  br i1 %i.cv, label %.lr.ph344, label %.preheader326, !llvm.loop !236

.lr.ph351:                                        ; preds = %.lr.ph351.preheader, %.lr.ph351
  %.3112350 = phi ptr [ %i.cw, %.lr.ph351 ], [ %.3112350.ph, %.lr.ph351.preheader ] ; 2 uses
  %.3116349 = phi i32 [ %i.db, %.lr.ph351 ], [ %.3116349.ph, %.lr.ph351.preheader ]
  %.0300348 = phi float [ %.sroa.speculated197, %.lr.ph351 ], [ %.0300348.ph, %.lr.ph351.preheader ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.3112350, i64 2
  %i.cx = load i16, ptr %.3112350, align 2, !tbaa !62
  %i.cy = zext i16 %i.cx to i32
  %i.cz = shl nuw i32 %i.cy, 16
  %i.da = bitcast i32 %i.cz to float
  %.sroa.speculated197 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0300348, float %i.da) ; 2 uses
  %i.db = add nuw nsw i32 %.3116349, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.db, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph351, !llvm.loop !237

._crit_edge:                                      ; preds = %.lr.ph351, %middle.block, %vec.epilog.middle.block, %.preheader326
  %.0300.lcssa = phi float [ f0xFF7FFFFF, %.preheader326 ], [ %i.cm, %vec.epilog.middle.block ], [ %i.cb, %middle.block ], [ %.sroa.speculated197, %.lr.ph351 ] ; 5 uses
  %i.dc = icmp eq i32 %2, 8                       ; 2 uses
  br i1 %i.dc, label %.thread, label %bb.d

.thread:                                          ; preds = %._crit_edge
  %i.dd = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.de = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.df = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0293.lcssa, <8 x float> nofpclass(nan inf) %i.dd)
  %i.dg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.de) ; 2 uses
  %i.dh = shufflevector <8 x float> %i.dg, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.thread315

bb.d:                                             ; preds = %._crit_edge
  switch i32 %2, label %.thread315 [
    i32 4, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.di = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0293.lcssa, <8 x float> nofpclass(nan inf) %i.di)
  %i.dl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dk, <8 x float> nofpclass(nan inf) %i.dj) ; 2 uses
  %i.dm = shufflevector <8 x float> %i.dl, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dn = shufflevector <8 x float> %i.dl, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.do = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0297.lcssa, <4 x float> nofpclass(nan inf) %i.dm)
  %i.dp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.do, <4 x float> nofpclass(nan inf) %i.dn) ; 3 uses
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %.thread315

bb.f:                                             ; preds = %bb.d
  %i.ds = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dt = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.du = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ds, <8 x float> nofpclass(nan inf) %i.dt) ; 2 uses
  %i.dv = shufflevector <8 x float> %i.du, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dw = shufflevector <8 x float> %i.du, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) %i.dw) ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> nofpclass(nan inf) %i.dy) ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.ea)
  %i.ec = extractelement <4 x float> %i.eb, i64 0 ; 2 uses
  %i.ed = fcmp fast olt float %.0300.lcssa, %i.ec
  %.sroa.speculated193 = select i1 %i.ed, float %i.ec, float %.0300.lcssa ; 2 uses
  %i.ee = shufflevector <8 x float> %.0293.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ef = shufflevector <8 x float> %.0293.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> nofpclass(nan inf) %i.ef) ; 2 uses
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ei = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.eh) ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ek = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.ej)
  %i.el = extractelement <4 x float> %i.ek, i64 0 ; 2 uses
  %i.em = fcmp fast olt float %.sroa.speculated193, %i.el
  %.sroa.speculated189 = select i1 %i.em, float %i.el, float %.sroa.speculated193 ; 2 uses
  %i.en = shufflevector <4 x float> %.0297.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.eo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0297.lcssa, <4 x float> nofpclass(nan inf) %i.en) ; 2 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.eo, <4 x float> nofpclass(nan inf) %i.ep)
  %i.er = extractelement <4 x float> %i.eq, i64 0 ; 2 uses
  %i.es = fcmp fast olt float %.sroa.speculated189, %i.er
  %.sroa.speculated = select i1 %i.es, float %i.er, float %.sroa.speculated189 ; 2 uses
  %i.et = insertelement <4 x float> poison, float %.sroa.speculated, i64 0 ; 3 uses
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = shufflevector <4 x float> %i.et, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ew = shufflevector <4 x float> %i.et, <4 x float> poison, <16 x i32> zeroinitializer
  br label %.thread315

.thread315:                                       ; preds = %bb.d, %bb.e, %.thread, %bb.f
  %i.ex = phi i1 [ true, %bb.f ], [ false, %bb.d ], [ false, %.thread ], [ false, %bb.e ]
  %i.ey = phi i1 [ false, %bb.f ], [ false, %bb.d ], [ false, %.thread ], [ true, %bb.e ]
  %.1301 = phi nsz float [ %.sroa.speculated, %bb.f ], [ %.0300.lcssa, %bb.d ], [ %.0300.lcssa, %.thread ], [ %.0300.lcssa, %bb.e ] ; 3 uses
  %.2299 = phi nsz <4 x float> [ %i.eu, %bb.f ], [ %.0297.lcssa, %bb.d ], [ %.0297.lcssa, %.thread ], [ %i.dp, %bb.e ]
  %.3296 = phi nsz <8 x float> [ %i.ev, %bb.f ], [ %.0293.lcssa, %bb.d ], [ %i.dg, %.thread ], [ %i.dq, %bb.e ]
  %.3292 = phi nsz <16 x float> [ %i.ew, %bb.f ], [ %.0289.lcssa, %bb.d ], [ %i.dh, %.thread ], [ %i.dr, %bb.e ]
  br i1 %i.c, label %.lr.ph356, label %.preheader325

.preheader325.loopexit:                           ; preds = %.lr.ph356
  %i.ez = and i32 %i.b, 2147483632
  br label %.preheader325

.preheader325:                                    ; preds = %.preheader325.loopexit, %.thread315
  %.0302.lcssa = phi <16 x float> [ zeroinitializer, %.thread315 ], [ %i.go, %.preheader325.loopexit ] ; 5 uses
  %.0123.lcssa = phi i32 [ 0, %.thread315 ], [ %i.ez, %.preheader325.loopexit ] ; 3 uses
  %.0119.lcssa = phi ptr [ %0, %.thread315 ], [ %i.gp, %.preheader325.loopexit ] ; 2 uses
  %i.fa = or disjoint i32 %.0123.lcssa, 7
  %i.fb = icmp slt i32 %i.fa, %i.b
  br i1 %i.fb, label %.lr.ph363, label %.preheader324

.lr.ph356:                                        ; preds = %.thread315, %.lr.ph356
  %.0119355 = phi ptr [ %i.gp, %.lr.ph356 ], [ %0, %.thread315 ] ; 3 uses
  %.0123354 = phi i32 [ %i.gq, %.lr.ph356 ], [ 0, %.thread315 ]
  %.0302353 = phi <16 x float> [ %i.go, %.lr.ph356 ], [ zeroinitializer, %.thread315 ]
  %i.fc = load <16 x i16>, ptr %.0119355, align 1, !tbaa !49 ; 2 uses
  %12 = shufflevector <16 x i16> %i.fc, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %13 = shufflevector <16 x i16> %i.fc, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.fd = shufflevector <16 x i16> %12, <16 x i16> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fe = shufflevector <16 x i16> %12, <16 x i16> %13, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ff = bitcast <16 x i16> %i.fd to <8 x i32>
  %i.fg = bitcast <16 x i16> %i.fe to <8 x i32>
  %i.fh = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fi = bitcast <16 x i32> %i.fh to <16 x float>
  %i.fj = fsub fast <16 x float> %i.fi, %.3292
  %i.fk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fk, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fl, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fn = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fm, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fo = fcmp fast ogt <16 x float> %i.fn, %i.fm
  %i.fp = fadd fast <16 x float> %i.fn, splat (float -1.000000e+00)
  %i.fq = select fast <16 x i1> %i.fo, <16 x float> %i.fp, <16 x float> %i.fn ; 2 uses
  %i.fr = fneg fast <16 x float> %i.fq            ; 2 uses
  %i.fs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fr, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fl)
  %i.ft = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fr, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fs) ; 8 uses
  %i.fu = fmul fast <16 x float> %i.ft, %i.ft
  %i.fv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ft, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.fw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fv, <16 x float> nofpclass(nan inf) %i.ft, <16 x float> splat (float f0x3C088908))
  %i.fx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> nofpclass(nan inf) %i.ft, <16 x float> splat (float f0x3D2AA9C1))
  %i.fy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fx, <16 x float> nofpclass(nan inf) %i.ft, <16 x float> splat (float f0x3E2AAAAA))
  %i.fz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fy, <16 x float> nofpclass(nan inf) %i.ft, <16 x float> splat (float 5.000000e-01))
  %i.ga = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fz, <16 x float> nofpclass(nan inf) %i.fu, <16 x float> nofpclass(nan inf) %i.ft)
  %i.gb = fadd fast <16 x float> %i.ga, splat (float 1.000000e+00)
  %i.gc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gd = shl <16 x i32> %i.gc, splat (i32 23)
  %i.ge = add <16 x i32> %i.gd, splat (i32 1065353216)
  %i.gf = bitcast <16 x i32> %i.ge to <16 x float>
  %i.gg = fmul fast <16 x float> %i.gb, %i.gf     ; 2 uses
  %i.gh = bitcast <16 x float> %i.gg to <16 x i32>
  %i.gi = lshr <16 x i32> %i.gh, splat (i32 16)   ; 2 uses
  %i.gj = shufflevector <16 x i32> %i.gi, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gk = shufflevector <16 x i32> %i.gi, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gl = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.gj, <8 x i32> %i.gk)
  %i.gm = bitcast <16 x i16> %i.gl to <4 x i64>
  %i.gn = shufflevector <4 x i64> %i.gm, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.gn, ptr %.0119355, align 1, !tbaa !49
  %i.go = fadd fast <16 x float> %i.gg, %.0302353 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0119355, i64 32 ; 2 uses
  %i.gq = add nuw nsw i32 %.0123354, 16           ; 2 uses
  %i.gr = or disjoint i32 %i.gq, 15
  %i.gs = icmp slt i32 %i.gr, %i.b
  br i1 %i.gs, label %.lr.ph356, label %.preheader325.loopexit, !llvm.loop !238

.preheader324:                                    ; preds = %.lr.ph363, %.preheader325
  %.0306.lcssa = phi <8 x float> [ zeroinitializer, %.preheader325 ], [ %i.ib, %.lr.ph363 ] ; 3 uses
  %.1124.lcssa = phi i32 [ %.0123.lcssa, %.preheader325 ], [ %i.id, %.lr.ph363 ] ; 3 uses
  %.1120.lcssa = phi ptr [ %.0119.lcssa, %.preheader325 ], [ %i.ic, %.lr.ph363 ] ; 2 uses
  %i.gt = or disjoint i32 %.1124.lcssa, 3
  %i.gu = icmp slt i32 %i.gt, %i.b
  br i1 %i.gu, label %.lr.ph370, label %.preheader323

.lr.ph363:                                        ; preds = %.preheader325, %.lr.ph363
  %.1120362 = phi ptr [ %i.ic, %.lr.ph363 ], [ %.0119.lcssa, %.preheader325 ] ; 3 uses
  %.1124361 = phi i32 [ %i.id, %.lr.ph363 ], [ %.0123.lcssa, %.preheader325 ]
  %.0306360 = phi <8 x float> [ %i.ib, %.lr.ph363 ], [ zeroinitializer, %.preheader325 ]
  %i.gv = load <8 x i16>, ptr %.1120362, align 1, !tbaa !49 ; 2 uses
  %14 = shufflevector <8 x i16> %i.gv, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %15 = shufflevector <8 x i16> %i.gv, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.gw = shufflevector <8 x i16> %14, <8 x i16> %15, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gx = bitcast <16 x i16> %i.gw to <8 x float>
  %i.gy = fsub fast <8 x float> %i.gx, %.3296
  %i.gz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gy, <8 x float> splat (float f0x42B0C0A5))
  %i.ha = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ha, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hb, i32 1) ; 2 uses
  %i.hd = fcmp fast ogt <8 x float> %i.hc, %i.hb
  %i.he = select <8 x i1> %i.hd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hf = fsub fast <8 x float> %i.hc, %i.he      ; 2 uses
  %i.hg = fneg fast <8 x float> %i.hf             ; 2 uses
  %i.hh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ha)
  %i.hi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hh) ; 8 uses
  %i.hj = fmul fast <8 x float> %i.hi, %i.hi
  %i.hk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hi, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hk, <8 x float> nofpclass(nan inf) %i.hi, <8 x float> splat (float f0x3C088908))
  %i.hm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hl, <8 x float> nofpclass(nan inf) %i.hi, <8 x float> splat (float f0x3D2AA9C1))
  %i.hn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hm, <8 x float> nofpclass(nan inf) %i.hi, <8 x float> splat (float f0x3E2AAAAA))
  %i.ho = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hn, <8 x float> nofpclass(nan inf) %i.hi, <8 x float> splat (float 5.000000e-01))
  %i.hp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ho, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> nofpclass(nan inf) %i.hi)
  %i.hq = fadd fast <8 x float> %i.hp, splat (float 1.000000e+00)
  %i.hr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hf)
  %i.hs = shl <8 x i32> %i.hr, splat (i32 23)
  %i.ht = add <8 x i32> %i.hs, splat (i32 1065353216)
  %i.hu = bitcast <8 x i32> %i.ht to <8 x float>
  %i.hv = fmul fast <8 x float> %i.hq, %i.hu      ; 2 uses
  %i.hw = bitcast <8 x float> %i.hv to <8 x i32>
  %i.hx = lshr <8 x i32> %i.hw, splat (i32 16)    ; 2 uses
  %i.hy = shufflevector <8 x i32> %i.hx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hz = shufflevector <8 x i32> %i.hx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ia = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hy, <4 x i32> %i.hz)
  store <8 x i16> %i.ia, ptr %.1120362, align 1, !tbaa !49
  %i.ib = fadd fast <8 x float> %i.hv, %.0306360  ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.1120362, i64 16 ; 2 uses
  %i.id = add nuw nsw i32 %.1124361, 8            ; 3 uses
  %i.ie = or disjoint i32 %i.id, 7
  %i.if = icmp slt i32 %i.ie, %i.b
  br i1 %i.if, label %.lr.ph363, label %.preheader324, !llvm.loop !239

.preheader323:                                    ; preds = %.lr.ph370, %.preheader324
  %.0310.lcssa = phi <4 x float> [ zeroinitializer, %.preheader324 ], [ %i.mg, %.lr.ph370 ] ; 2 uses
  %.2125.lcssa = phi i32 [ %.1124.lcssa, %.preheader324 ], [ %i.mi, %.lr.ph370 ] ; 5 uses
  %.2121.lcssa = phi ptr [ %.1120.lcssa, %.preheader324 ], [ %i.mh, %.lr.ph370 ] ; 5 uses
  %i.ig = icmp slt i32 %.2125.lcssa, %i.b
  br i1 %i.ig, label %iter.check512, label %._crit_edge378

iter.check512:                                    ; preds = %.preheader323
  %i.ih = xor i32 %.2125.lcssa, -1
  %i.ii = add i32 %i.b, %i.ih                     ; 3 uses
  %i.ij = zext i32 %i.ii to i64
  %i.ik = add nuw nsw i64 %i.ij, 1                ; 5 uses
  %min.iters.check489 = icmp ult i32 %i.ii, 7
  br i1 %min.iters.check489, label %.lr.ph377.preheader, label %vector.main.loop.iter.check490

vector.main.loop.iter.check490:                   ; preds = %iter.check512
  %min.iters.check491 = icmp ult i32 %i.ii, 63
  br i1 %min.iters.check491, label %vec.epilog.ph516, label %vector.ph492

vector.ph492:                                     ; preds = %vector.main.loop.iter.check490
  %i.il = and i64 %i.ik, 56
  %n.vec493 = and i64 %i.ik, 8589934528           ; 5 uses
  %i.im = shl nuw nsw i64 %n.vec493, 1
  %i.in = getelementptr i8, ptr %.2121.lcssa, i64 %i.im
  %i.io = trunc i64 %n.vec493 to i32
  %i.ip = add i32 %.2125.lcssa, %i.io
  %broadcast.splatinsert494 = insertelement <16 x float> poison, float %.1301, i64 0
  %broadcast.splat495 = shufflevector <16 x float> %broadcast.splatinsert494, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body496

vector.body496:                                   ; preds = %vector.ph492, %vector.body496
  %index497 = phi i64 [ 0, %vector.ph492 ], [ %index.next507, %vector.body496 ] ; 2 uses
  %vec.phi498 = phi <16 x float> [ zeroinitializer, %vector.ph492 ], [ %i.ka, %vector.body496 ]
  %vec.phi499 = phi <16 x float> [ zeroinitializer, %vector.ph492 ], [ %i.kb, %vector.body496 ]
  %vec.phi500 = phi <16 x float> [ zeroinitializer, %vector.ph492 ], [ %i.kc, %vector.body496 ]
  %vec.phi501 = phi <16 x float> [ zeroinitializer, %vector.ph492 ], [ %i.kd, %vector.body496 ]
  %i.iq = shl i64 %index497, 1
  %next.gep502 = getelementptr i8, ptr %.2121.lcssa, i64 %i.iq ; 5 uses
  %i.ir = getelementptr i8, ptr %next.gep502, i64 32 ; 2 uses
  %i.is = getelementptr i8, ptr %next.gep502, i64 64 ; 2 uses
  %i.it = getelementptr i8, ptr %next.gep502, i64 96 ; 2 uses
  %wide.load503 = load <16 x i16>, ptr %next.gep502, align 2, !tbaa !62
  %wide.load504 = load <16 x i16>, ptr %i.ir, align 2, !tbaa !62
  %wide.load505 = load <16 x i16>, ptr %i.is, align 2, !tbaa !62
  %wide.load506 = load <16 x i16>, ptr %i.it, align 2, !tbaa !62
  %i.iu = zext <16 x i16> %wide.load503 to <16 x i32>
  %i.iv = zext <16 x i16> %wide.load504 to <16 x i32>
  %i.iw = zext <16 x i16> %wide.load505 to <16 x i32>
  %i.ix = zext <16 x i16> %wide.load506 to <16 x i32>
  %i.iy = shl nuw <16 x i32> %i.iu, splat (i32 16)
  %i.iz = shl nuw <16 x i32> %i.iv, splat (i32 16)
  %i.ja = shl nuw <16 x i32> %i.iw, splat (i32 16)
  %i.jb = shl nuw <16 x i32> %i.ix, splat (i32 16)
  %i.jc = bitcast <16 x i32> %i.iy to <16 x float>
  %i.jd = bitcast <16 x i32> %i.iz to <16 x float>
  %i.je = bitcast <16 x i32> %i.ja to <16 x float>
  %i.jf = bitcast <16 x i32> %i.jb to <16 x float>
  %i.jg = fsub fast <16 x float> %i.jc, %broadcast.splat495
  %i.jh = fsub fast <16 x float> %i.jd, %broadcast.splat495
  %i.ji = fsub fast <16 x float> %i.je, %broadcast.splat495
  %i.jj = fsub fast <16 x float> %i.jf, %broadcast.splat495
  %i.jk = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.jg) ; 2 uses
  %i.jl = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.jh) ; 2 uses
  %i.jm = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.ji) ; 2 uses
  %i.jn = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.jj) ; 2 uses
  %i.jo = bitcast <16 x float> %i.jk to <16 x i32>
  %i.jp = bitcast <16 x float> %i.jl to <16 x i32>
  %i.jq = bitcast <16 x float> %i.jm to <16 x i32>
  %i.jr = bitcast <16 x float> %i.jn to <16 x i32>
  %i.js = lshr <16 x i32> %i.jo, splat (i32 16)
  %i.jt = lshr <16 x i32> %i.jp, splat (i32 16)
  %i.ju = lshr <16 x i32> %i.jq, splat (i32 16)
  %i.jv = lshr <16 x i32> %i.jr, splat (i32 16)
  %i.jw = trunc nuw nsw <16 x i32> %i.js to <16 x i16>
  %i.jx = trunc nuw nsw <16 x i32> %i.jt to <16 x i16>
  %i.jy = trunc nuw nsw <16 x i32> %i.ju to <16 x i16>
  %i.jz = trunc nuw nsw <16 x i32> %i.jv to <16 x i16>
  store <16 x i16> %i.jw, ptr %next.gep502, align 2, !tbaa !62
  store <16 x i16> %i.jx, ptr %i.ir, align 2, !tbaa !62
  store <16 x i16> %i.jy, ptr %i.is, align 2, !tbaa !62
  store <16 x i16> %i.jz, ptr %i.it, align 2, !tbaa !62
  %i.ka = fadd fast <16 x float> %i.jk, %vec.phi498 ; 2 uses
  %i.kb = fadd fast <16 x float> %i.jl, %vec.phi499 ; 2 uses
  %i.kc = fadd fast <16 x float> %i.jm, %vec.phi500 ; 2 uses
  %i.kd = fadd fast <16 x float> %i.jn, %vec.phi501 ; 2 uses
  %index.next507 = add nuw i64 %index497, 64      ; 2 uses
  %i.ke = icmp eq i64 %index.next507, %n.vec493
  br i1 %i.ke, label %middle.block508, label %vector.body496, !llvm.loop !240

middle.block508:                                  ; preds = %vector.body496
  %bin.rdx = fadd fast <16 x float> %i.kb, %i.ka
  %bin.rdx509 = fadd fast <16 x float> %i.kc, %bin.rdx
  %bin.rdx510 = fadd fast <16 x float> %i.kd, %bin.rdx509
  %i.kf = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx510) ; 3 uses
  %cmp.n511 = icmp eq i64 %i.ik, %n.vec493
  br i1 %cmp.n511, label %._crit_edge378, label %vec.epilog.iter.check513

vec.epilog.iter.check513:                         ; preds = %middle.block508
  %min.epilog.iters.check515 = icmp eq i64 %i.il, 0
  br i1 %min.epilog.iters.check515, label %.lr.ph377.preheader, label %vec.epilog.ph516, !prof !56

vec.epilog.ph516:                                 ; preds = %vector.main.loop.iter.check490, %vec.epilog.iter.check513
  %vec.epilog.resume.val517 = phi i64 [ %n.vec493, %vec.epilog.iter.check513 ], [ 0, %vector.main.loop.iter.check490 ]
  %bc.merge.rdx518 = phi float [ %i.kf, %vec.epilog.iter.check513 ], [ 0.000000e+00, %vector.main.loop.iter.check490 ]
  %n.vec519 = and i64 %i.ik, 8589934584           ; 4 uses
  %i.kg = shl nuw nsw i64 %n.vec519, 1
  %i.kh = getelementptr i8, ptr %.2121.lcssa, i64 %i.kg
  %i.ki = trunc i64 %n.vec519 to i32
  %i.kj = add i32 %.2125.lcssa, %i.ki
  %i.kk = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx518, i64 0
  %broadcast.splatinsert520 = insertelement <8 x float> poison, float %.1301, i64 0
  %broadcast.splat521 = shufflevector <8 x float> %broadcast.splatinsert520, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body522

vec.epilog.vector.body522:                        ; preds = %vec.epilog.vector.body522, %vec.epilog.ph516
  %index523 = phi i64 [ %vec.epilog.resume.val517, %vec.epilog.ph516 ], [ %index.next527, %vec.epilog.vector.body522 ] ; 2 uses
  %vec.phi524 = phi <8 x float> [ %i.kk, %vec.epilog.ph516 ], [ %i.ku, %vec.epilog.vector.body522 ]
  %i.kl = shl i64 %index523, 1
  %next.gep525 = getelementptr i8, ptr %.2121.lcssa, i64 %i.kl ; 2 uses
  %wide.load526 = load <8 x i16>, ptr %next.gep525, align 2, !tbaa !62
  %i.km = zext <8 x i16> %wide.load526 to <8 x i32>
  %i.kn = shl nuw <8 x i32> %i.km, splat (i32 16)
  %i.ko = bitcast <8 x i32> %i.kn to <8 x float>
  %i.kp = fsub fast <8 x float> %i.ko, %broadcast.splat521
  %i.kq = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.kp) ; 2 uses
  %i.kr = bitcast <8 x float> %i.kq to <8 x i32>
  %i.ks = lshr <8 x i32> %i.kr, splat (i32 16)
  %i.kt = trunc nuw nsw <8 x i32> %i.ks to <8 x i16>
  store <8 x i16> %i.kt, ptr %next.gep525, align 2, !tbaa !62
  %i.ku = fadd fast <8 x float> %i.kq, %vec.phi524 ; 2 uses
  %index.next527 = add nuw i64 %index523, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next527, %n.vec519
  br i1 %i.kv, label %vec.epilog.middle.block528, label %vec.epilog.vector.body522, !llvm.loop !241

vec.epilog.middle.block528:                       ; preds = %vec.epilog.vector.body522
  %i.kw = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ku) ; 2 uses
  %cmp.n529 = icmp eq i64 %i.ik, %n.vec519
  br i1 %cmp.n529, label %._crit_edge378, label %.lr.ph377.preheader

.lr.ph377.preheader:                              ; preds = %iter.check512, %vec.epilog.iter.check513, %vec.epilog.middle.block528
  %.0117376.ph = phi float [ 0.000000e+00, %iter.check512 ], [ %i.kf, %vec.epilog.iter.check513 ], [ %i.kw, %vec.epilog.middle.block528 ]
  %.3122375.ph = phi ptr [ %.2121.lcssa, %iter.check512 ], [ %i.in, %vec.epilog.iter.check513 ], [ %i.kh, %vec.epilog.middle.block528 ]
  %.3126374.ph = phi i32 [ %.2125.lcssa, %iter.check512 ], [ %i.ip, %vec.epilog.iter.check513 ], [ %i.kj, %vec.epilog.middle.block528 ]
  br label %.lr.ph377

.lr.ph370:                                        ; preds = %.preheader324, %.lr.ph370
  %.2121369 = phi ptr [ %i.mh, %.lr.ph370 ], [ %.1120.lcssa, %.preheader324 ] ; 3 uses
  %.2125368 = phi i32 [ %i.mi, %.lr.ph370 ], [ %.1124.lcssa, %.preheader324 ]
  %.0310367 = phi <4 x float> [ %i.mg, %.lr.ph370 ], [ zeroinitializer, %.preheader324 ]
  %i.kx = load i64, ptr %.2121369, align 1, !tbaa !49
  %i.ky = insertelement <2 x i64> poison, i64 %i.kx, i64 0
  %i.kz = bitcast <2 x i64> %i.ky to <8 x i16>
  %16 = shufflevector <8 x i16> %i.kz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.la = bitcast <8 x i16> %16 to <4 x float>
  %i.lb = fsub fast <4 x float> %i.la, %.2299
  %i.lc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lb, <4 x float> splat (float f0x42B0C0A5))
  %i.ld = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.le = fmul fast <4 x float> %i.ld, splat (float f0x3FB8AA3B)
  %i.lf = fadd fast <4 x float> %i.le, splat (float 5.000000e-01) ; 2 uses
  %i.lg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lf)
  %i.lh = sitofp fast <4 x i32> %i.lg to <4 x float> ; 2 uses
  %i.li = fcmp fast olt <4 x float> %i.lf, %i.lh
  %i.lj = select <4 x i1> %i.li, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lk = fsub fast <4 x float> %i.lh, %i.lj      ; 2 uses
  %i.ll = fneg fast <4 x float> %i.lk             ; 2 uses
  %i.lm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ll, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ld)
  %i.ln = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ll, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.lm) ; 8 uses
  %i.lo = fmul fast <4 x float> %i.ln, %i.ln
  %i.lp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ln, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.lq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lp, <4 x float> nofpclass(nan inf) %i.ln, <4 x float> splat (float f0x3C088908))
  %i.lr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lq, <4 x float> nofpclass(nan inf) %i.ln, <4 x float> splat (float f0x3D2AA9C1))
  %i.ls = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lr, <4 x float> nofpclass(nan inf) %i.ln, <4 x float> splat (float f0x3E2AAAAA))
  %i.lt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ls, <4 x float> nofpclass(nan inf) %i.ln, <4 x float> splat (float 5.000000e-01))
  %i.lu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lt, <4 x float> nofpclass(nan inf) %i.lo, <4 x float> nofpclass(nan inf) %i.ln)
  %i.lv = fadd fast <4 x float> %i.lu, splat (float 1.000000e+00)
  %i.lw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lk)
  %i.lx = shl <4 x i32> %i.lw, splat (i32 23)
  %i.ly = add <4 x i32> %i.lx, splat (i32 1065353216)
  %i.lz = bitcast <4 x i32> %i.ly to <4 x float>
  %i.ma = fmul fast <4 x float> %i.lv, %i.lz      ; 2 uses
  %i.mb = bitcast <4 x float> %i.ma to <4 x i32>
  %i.mc = lshr <4 x i32> %i.mb, splat (i32 16)
  %i.md = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mc, <4 x i32> poison)
  %i.me = bitcast <8 x i16> %i.md to <2 x i64>
  %i.mf = extractelement <2 x i64> %i.me, i64 0
  store i64 %i.mf, ptr %.2121369, align 1, !tbaa !49
  %i.mg = fadd fast <4 x float> %i.ma, %.0310367  ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.2121369, i64 8 ; 2 uses
  %i.mi = add nuw nsw i32 %.2125368, 4            ; 3 uses
  %i.mj = or disjoint i32 %i.mi, 3
  %i.mk = icmp slt i32 %i.mj, %i.b
  br i1 %i.mk, label %.lr.ph370, label %.preheader323, !llvm.loop !242

.lr.ph377:                                        ; preds = %.lr.ph377.preheader, %.lr.ph377
  %.0117376 = phi float [ %i.mu, %.lr.ph377 ], [ %.0117376.ph, %.lr.ph377.preheader ]
  %.3122375 = phi ptr [ %i.mv, %.lr.ph377 ], [ %.3122375.ph, %.lr.ph377.preheader ] ; 3 uses
  %.3126374 = phi i32 [ %i.mw, %.lr.ph377 ], [ %.3126374.ph, %.lr.ph377.preheader ]
  %i.ml = load i16, ptr %.3122375, align 2, !tbaa !62
  %i.mm = zext i16 %i.ml to i32
  %i.mn = shl nuw i32 %i.mm, 16
  %i.mo = bitcast i32 %i.mn to float
  %i.mp = fsub fast float %i.mo, %.1301
  %i.mq = tail call fast float @llvm.exp.f32(float %i.mp) ; 2 uses
  %i.mr = bitcast float %i.mq to i32
  %i.ms = lshr i32 %i.mr, 16
  %i.mt = trunc nuw nsw i32 %i.ms to i16
  store i16 %i.mt, ptr %.3122375, align 2, !tbaa !62
  %i.mu = fadd fast float %i.mq, %.0117376        ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.3122375, i64 2
  %i.mw = add nuw nsw i32 %.3126374, 1            ; 2 uses
  %exitcond423.not = icmp eq i32 %i.mw, %i.b
  br i1 %exitcond423.not, label %._crit_edge378, label %.lr.ph377, !llvm.loop !243

._crit_edge378:                                   ; preds = %.lr.ph377, %middle.block508, %vec.epilog.middle.block528, %.preheader323
  %.0117.lcssa = phi float [ 0.000000e+00, %.preheader323 ], [ %i.kw, %vec.epilog.middle.block528 ], [ %i.kf, %middle.block508 ], [ %i.mu, %.lr.ph377 ] ; 2 uses
  %i.mx = icmp eq i32 %2, 16
  br i1 %i.mx, label %.thread319, label %bb.g

.thread319:                                       ; preds = %._crit_edge378
  %i.my = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %.0302.lcssa, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.mz = fneg fast <16 x float> %.0302.lcssa
  %i.na = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mz, <16 x float> nofpclass(nan inf) %i.my, <16 x float> splat (float 2.000000e+00))
  %i.nb = fmul fast <16 x float> %i.na, %i.my
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge378
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.nc = shufflevector <16 x float> %.0302.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nd = shufflevector <16 x float> %.0302.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ne = fadd fast <8 x float> %i.nc, %i.nd
  %i.nf = fadd fast <8 x float> %i.ne, %.0306.lcssa ; 2 uses
  %i.ng = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.nf) ; 2 uses
  %i.nh = fneg fast <8 x float> %i.nf
  %i.ni = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nh, <8 x float> nofpclass(nan inf) %i.ng, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.nj = fmul fast <8 x float> %i.ni, %i.ng      ; 2 uses
  %i.nk = shufflevector <8 x float> %i.nj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.i

bb.i:                                             ; preds = %.thread319, %bb.h, %bb.g
  %.1307 = phi nsz <8 x float> [ %i.nj, %bb.h ], [ %.0306.lcssa, %bb.g ], [ %.0306.lcssa, %.thread319 ] ; 2 uses
  %.2304 = phi nsz <16 x float> [ %i.nk, %bb.h ], [ %.0302.lcssa, %bb.g ], [ %i.nb, %.thread319 ] ; 3 uses
  br i1 %i.ey, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.nl = shufflevector <16 x float> %.2304, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nm = shufflevector <16 x float> %.2304, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nn = fadd fast <8 x float> %i.nl, %.1307
  %i.no = fadd fast <8 x float> %i.nn, %i.nm      ; 2 uses
  %i.np = shufflevector <8 x float> %i.no, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nq = shufflevector <8 x float> %i.no, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nr = fadd fast <4 x float> %i.np, %.0310.lcssa
  %i.ns = fadd fast <4 x float> %i.nr, %i.nq      ; 2 uses
  %i.nt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.ns) ; 2 uses
  %i.nu = fneg fast <4 x float> %i.ns
  %i.nv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nu, <4 x float> nofpclass(nan inf) %i.nt, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.nw = fmul fast <4 x float> %i.nv, %i.nt      ; 3 uses
  %i.nx = shufflevector <4 x float> %i.nw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ny = shufflevector <4 x float> %i.nw, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1311 = phi nsz <4 x float> [ %i.nw, %bb.j ], [ %.0310.lcssa, %bb.i ] ; 3 uses
  %.2308 = phi nsz <8 x float> [ %i.nx, %bb.j ], [ %.1307, %bb.i ] ; 3 uses
  %.3305 = phi nsz <16 x float> [ %i.ny, %bb.j ], [ %.2304, %bb.i ] ; 3 uses
  br i1 %i.ex, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.nz = shufflevector <16 x float> %.3305, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oa = shufflevector <16 x float> %.3305, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ob = fadd fast <8 x float> %i.nz, %i.oa      ; 2 uses
  %i.oc = shufflevector <8 x float> %i.ob, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.od = shufflevector <8 x float> %i.ob, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.oe = fadd fast <4 x float> %i.oc, %i.od      ; 2 uses
  %i.of = shufflevector <8 x float> %.2308, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.og = shufflevector <8 x float> %.2308, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oh = fadd fast <4 x float> %i.of, %i.og      ; 2 uses
  %i.oi = shufflevector <4 x float> %.1311, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.oj = fadd fast <4 x float> %i.oi, %.1311     ; 2 uses
  %i.ok = extractelement <4 x float> %i.oj, i64 1
  %i.ol = extractelement <4 x float> %i.oj, i64 0
  %i.om = shufflevector <4 x float> %i.oe, <4 x float> %i.oh, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.on = shufflevector <4 x float> %i.oe, <4 x float> %i.oh, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.oo = fadd fast <4 x float> %i.om, %i.on
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %i.ok, <4 x float> %i.oo)
  %op.rdx568 = fadd fast float %i.ol, %.0117.lcssa
  %op.rdx569 = fadd fast float %op.rdx, %op.rdx568
  %i.op = fdiv fast float 1.000000e+00, %op.rdx569 ; 2 uses
  %i.oq = insertelement <4 x float> poison, float %i.op, i64 0 ; 3 uses
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.os = shufflevector <4 x float> %i.oq, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ot = shufflevector <4 x float> %i.oq, <4 x float> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2312 = phi nsz <4 x float> [ %i.or, %bb.l ], [ %.1311, %bb.k ]
  %.3309 = phi nsz <8 x float> [ %i.os, %bb.l ], [ %.2308, %bb.k ]
  %.4 = phi nsz <16 x float> [ %i.ot, %bb.l ], [ %.3305, %bb.k ]
  %.1118 = phi nsz float [ %i.op, %bb.l ], [ %.0117.lcssa, %bb.k ] ; 3 uses
  br i1 %i.c, label %.lr.ph383, label %.preheader322

.preheader322.loopexit:                           ; preds = %.lr.ph383
  %i.ou = and i32 %i.b, 2147483632
  br label %.preheader322

.preheader322:                                    ; preds = %.preheader322.loopexit, %bb.m
  %.0105.lcssa = phi ptr [ %0, %bb.m ], [ %i.pm, %.preheader322.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.m ], [ %i.ou, %.preheader322.loopexit ] ; 3 uses
  %i.ov = or disjoint i32 %.0.lcssa, 7
  %i.ow = icmp slt i32 %i.ov, %i.b
  br i1 %i.ow, label %.lr.ph388, label %.preheader321

.lr.ph383:                                        ; preds = %bb.m, %.lr.ph383
  %.0381 = phi i32 [ %i.pn, %.lr.ph383 ], [ 0, %bb.m ]
  %.0105380 = phi ptr [ %i.pm, %.lr.ph383 ], [ %0, %bb.m ] ; 3 uses
  %i.ox = load <16 x i16>, ptr %.0105380, align 1, !tbaa !49 ; 2 uses
  %17 = shufflevector <16 x i16> %i.ox, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %18 = shufflevector <16 x i16> %i.ox, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.oy = shufflevector <16 x i16> %17, <16 x i16> %18, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.oz = shufflevector <16 x i16> %17, <16 x i16> %18, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pa = bitcast <16 x i16> %i.oy to <8 x i32>
  %i.pb = bitcast <16 x i16> %i.oz to <8 x i32>
  %i.pc = shufflevector <8 x i32> %i.pa, <8 x i32> %i.pb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pd = bitcast <16 x i32> %i.pc to <16 x float>
  %i.pe = fmul fast <16 x float> %.4, %i.pd
  %i.pf = bitcast <16 x float> %i.pe to <16 x i32>
  %i.pg = lshr <16 x i32> %i.pf, splat (i32 16)   ; 2 uses
  %i.ph = shufflevector <16 x i32> %i.pg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pi = shufflevector <16 x i32> %i.pg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pj = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ph, <8 x i32> %i.pi)
  %i.pk = bitcast <16 x i16> %i.pj to <4 x i64>
  %i.pl = shufflevector <4 x i64> %i.pk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.pl, ptr %.0105380, align 1, !tbaa !49
  %i.pm = getelementptr inbounds nuw i8, ptr %.0105380, i64 32 ; 2 uses
  %i.pn = add nuw nsw i32 %.0381, 16              ; 2 uses
  %i.po = or disjoint i32 %i.pn, 15
  %i.pp = icmp slt i32 %i.po, %i.b
  br i1 %i.pp, label %.lr.ph383, label %.preheader322.loopexit, !llvm.loop !244

.preheader321:                                    ; preds = %.lr.ph388, %.preheader322
  %.1106.lcssa = phi ptr [ %.0105.lcssa, %.preheader322 ], [ %i.qb, %.lr.ph388 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader322 ], [ %i.qc, %.lr.ph388 ] ; 3 uses
  %i.pq = or disjoint i32 %.1.lcssa, 3
  %i.pr = icmp slt i32 %i.pq, %i.b
  br i1 %i.pr, label %.lr.ph393, label %.preheader

.lr.ph388:                                        ; preds = %.preheader322, %.lr.ph388
  %.1387 = phi i32 [ %i.qc, %.lr.ph388 ], [ %.0.lcssa, %.preheader322 ]
  %.1106386 = phi ptr [ %i.qb, %.lr.ph388 ], [ %.0105.lcssa, %.preheader322 ] ; 3 uses
  %i.ps = load <8 x i16>, ptr %.1106386, align 1, !tbaa !49 ; 2 uses
  %19 = shufflevector <8 x i16> %i.ps, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %20 = shufflevector <8 x i16> %i.ps, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.pt = shufflevector <8 x i16> %19, <8 x i16> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pu = bitcast <16 x i16> %i.pt to <8 x float>
  %i.pv = fmul fast <8 x float> %.3309, %i.pu
  %i.pw = bitcast <8 x float> %i.pv to <8 x i32>
  %i.px = lshr <8 x i32> %i.pw, splat (i32 16)    ; 2 uses
  %i.py = shufflevector <8 x i32> %i.px, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pz = shufflevector <8 x i32> %i.px, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.qa = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.py, <4 x i32> %i.pz)
  store <8 x i16> %i.qa, ptr %.1106386, align 1, !tbaa !49
  %i.qb = getelementptr inbounds nuw i8, ptr %.1106386, i64 16 ; 2 uses
  %i.qc = add nuw nsw i32 %.1387, 8               ; 3 uses
  %i.qd = or disjoint i32 %i.qc, 7
  %i.qe = icmp slt i32 %i.qd, %i.b
  br i1 %i.qe, label %.lr.ph388, label %.preheader321, !llvm.loop !245

.preheader:                                       ; preds = %.lr.ph393, %.preheader321
  %.2107.lcssa = phi ptr [ %.1106.lcssa, %.preheader321 ], [ %i.st, %.lr.ph393 ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader321 ], [ %i.su, %.lr.ph393 ] ; 5 uses
  %i.qf = icmp slt i32 %.2.lcssa, %i.b
  br i1 %i.qf, label %iter.check550, label %.loopexit

iter.check550:                                    ; preds = %.preheader
  %i.qg = xor i32 %.2.lcssa, -1
  %i.qh = add i32 %i.b, %i.qg                     ; 3 uses
  %i.qi = zext i32 %i.qh to i64
  %i.qj = add nuw nsw i64 %i.qi, 1                ; 5 uses
  %min.iters.check533 = icmp ult i32 %i.qh, 15
  br i1 %min.iters.check533, label %.lr.ph398.preheader, label %vector.main.loop.iter.check534

vector.main.loop.iter.check534:                   ; preds = %iter.check550
  %min.iters.check535 = icmp ult i32 %i.qh, 127
  br i1 %min.iters.check535, label %vec.epilog.ph554, label %vector.ph536

vector.ph536:                                     ; preds = %vector.main.loop.iter.check534
  %i.qk = and i64 %i.qj, 112
  %n.vec537 = and i64 %i.qj, 8589934464           ; 5 uses
  %i.ql = trunc i64 %n.vec537 to i32
  %i.qm = add i32 %.2.lcssa, %i.ql
  %i.qn = shl nuw nsw i64 %n.vec537, 1
  %i.qo = getelementptr i8, ptr %.2107.lcssa, i64 %i.qn
  %broadcast.splatinsert538 = insertelement <32 x float> poison, float %.1118, i64 0
  %broadcast.splat539 = shufflevector <32 x float> %broadcast.splatinsert538, <32 x float> poison, <32 x i32> zeroinitializer ; 4 uses
  br label %vector.body540

vector.body540:                                   ; preds = %vector.ph536, %vector.body540
  %index541 = phi i64 [ 0, %vector.ph536 ], [ %index.next547, %vector.body540 ] ; 2 uses
  %i.qp = shl i64 %index541, 1
  %next.gep542 = getelementptr i8, ptr %.2107.lcssa, i64 %i.qp ; 5 uses
  %i.qq = getelementptr i8, ptr %next.gep542, i64 64 ; 2 uses
  %i.qr = getelementptr i8, ptr %next.gep542, i64 128 ; 2 uses
  %i.qs = getelementptr i8, ptr %next.gep542, i64 192 ; 2 uses
  %wide.load543 = load <32 x i16>, ptr %next.gep542, align 2, !tbaa !62
  %wide.load544 = load <32 x i16>, ptr %i.qq, align 2, !tbaa !62
  %wide.load545 = load <32 x i16>, ptr %i.qr, align 2, !tbaa !62
  %wide.load546 = load <32 x i16>, ptr %i.qs, align 2, !tbaa !62
  %i.qt = zext <32 x i16> %wide.load543 to <32 x i32>
  %i.qu = zext <32 x i16> %wide.load544 to <32 x i32>
  %i.qv = zext <32 x i16> %wide.load545 to <32 x i32>
  %i.qw = zext <32 x i16> %wide.load546 to <32 x i32>
  %i.qx = shl nuw <32 x i32> %i.qt, splat (i32 16)
  %i.qy = shl nuw <32 x i32> %i.qu, splat (i32 16)
  %i.qz = shl nuw <32 x i32> %i.qv, splat (i32 16)
  %i.ra = shl nuw <32 x i32> %i.qw, splat (i32 16)
  %i.rb = bitcast <32 x i32> %i.qx to <32 x float>
  %i.rc = bitcast <32 x i32> %i.qy to <32 x float>
  %i.rd = bitcast <32 x i32> %i.qz to <32 x float>
  %i.re = bitcast <32 x i32> %i.ra to <32 x float>
  %i.rf = fmul fast <32 x float> %broadcast.splat539, %i.rb
  %i.rg = fmul fast <32 x float> %broadcast.splat539, %i.rc
  %i.rh = fmul fast <32 x float> %broadcast.splat539, %i.rd
  %i.ri = fmul fast <32 x float> %broadcast.splat539, %i.re
  %i.rj = bitcast <32 x float> %i.rf to <32 x i32>
  %i.rk = bitcast <32 x float> %i.rg to <32 x i32>
  %i.rl = bitcast <32 x float> %i.rh to <32 x i32>
  %i.rm = bitcast <32 x float> %i.ri to <32 x i32>
  %i.rn = lshr <32 x i32> %i.rj, splat (i32 16)
  %i.ro = lshr <32 x i32> %i.rk, splat (i32 16)
  %i.rp = lshr <32 x i32> %i.rl, splat (i32 16)
  %i.rq = lshr <32 x i32> %i.rm, splat (i32 16)
  %i.rr = trunc nuw <32 x i32> %i.rn to <32 x i16>
  %i.rs = trunc nuw <32 x i32> %i.ro to <32 x i16>
  %i.rt = trunc nuw <32 x i32> %i.rp to <32 x i16>
  %i.ru = trunc nuw <32 x i32> %i.rq to <32 x i16>
  store <32 x i16> %i.rr, ptr %next.gep542, align 2, !tbaa !62
  store <32 x i16> %i.rs, ptr %i.qq, align 2, !tbaa !62
  store <32 x i16> %i.rt, ptr %i.qr, align 2, !tbaa !62
  store <32 x i16> %i.ru, ptr %i.qs, align 2, !tbaa !62
  %index.next547 = add nuw i64 %index541, 128     ; 2 uses
  %i.rv = icmp eq i64 %index.next547, %n.vec537
  br i1 %i.rv, label %middle.block548, label %vector.body540, !llvm.loop !246

middle.block548:                                  ; preds = %vector.body540
  %cmp.n549 = icmp eq i64 %i.qj, %n.vec537
  br i1 %cmp.n549, label %.loopexit, label %vec.epilog.iter.check551

vec.epilog.iter.check551:                         ; preds = %middle.block548
  %min.epilog.iters.check553 = icmp eq i64 %i.qk, 0
  br i1 %min.epilog.iters.check553, label %.lr.ph398.preheader, label %vec.epilog.ph554, !prof !250

vec.epilog.ph554:                                 ; preds = %vector.main.loop.iter.check534, %vec.epilog.iter.check551
  %vec.epilog.resume.val555 = phi i64 [ %n.vec537, %vec.epilog.iter.check551 ], [ 0, %vector.main.loop.iter.check534 ]
  %n.vec556 = and i64 %i.qj, 8589934576           ; 4 uses
  %i.rw = trunc i64 %n.vec556 to i32
  %i.rx = add i32 %.2.lcssa, %i.rw
  %i.ry = shl nuw nsw i64 %n.vec556, 1
  %i.rz = getelementptr i8, ptr %.2107.lcssa, i64 %i.ry
  %broadcast.splatinsert557 = insertelement <16 x float> poison, float %.1118, i64 0
  %broadcast.splat558 = shufflevector <16 x float> %broadcast.splatinsert557, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vec.epilog.vector.body559

vec.epilog.vector.body559:                        ; preds = %vec.epilog.vector.body559, %vec.epilog.ph554
  %index560 = phi i64 [ %vec.epilog.resume.val555, %vec.epilog.ph554 ], [ %index.next563, %vec.epilog.vector.body559 ] ; 2 uses
  %i.sa = shl i64 %index560, 1
  %next.gep561 = getelementptr i8, ptr %.2107.lcssa, i64 %i.sa ; 2 uses
  %wide.load562 = load <16 x i16>, ptr %next.gep561, align 2, !tbaa !62
  %i.sb = zext <16 x i16> %wide.load562 to <16 x i32>
  %i.sc = shl nuw <16 x i32> %i.sb, splat (i32 16)
  %i.sd = bitcast <16 x i32> %i.sc to <16 x float>
  %i.se = fmul fast <16 x float> %broadcast.splat558, %i.sd
  %i.sf = bitcast <16 x float> %i.se to <16 x i32>
  %i.sg = lshr <16 x i32> %i.sf, splat (i32 16)
  %i.sh = trunc nuw <16 x i32> %i.sg to <16 x i16>
  store <16 x i16> %i.sh, ptr %next.gep561, align 2, !tbaa !62
  %index.next563 = add nuw i64 %index560, 16      ; 2 uses
  %i.si = icmp eq i64 %index.next563, %n.vec556
  br i1 %i.si, label %vec.epilog.middle.block564, label %vec.epilog.vector.body559, !llvm.loop !247

vec.epilog.middle.block564:                       ; preds = %vec.epilog.vector.body559
  %cmp.n565 = icmp eq i64 %i.qj, %n.vec556
  br i1 %cmp.n565, label %.loopexit, label %.lr.ph398.preheader

.lr.ph398.preheader:                              ; preds = %iter.check550, %vec.epilog.iter.check551, %vec.epilog.middle.block564
  %.3397.ph = phi i32 [ %.2.lcssa, %iter.check550 ], [ %i.qm, %vec.epilog.iter.check551 ], [ %i.rx, %vec.epilog.middle.block564 ]
  %.3108396.ph = phi ptr [ %.2107.lcssa, %iter.check550 ], [ %i.qo, %vec.epilog.iter.check551 ], [ %i.rz, %vec.epilog.middle.block564 ]
  br label %.lr.ph398

.lr.ph393:                                        ; preds = %.preheader321, %.lr.ph393
  %.2392 = phi i32 [ %i.su, %.lr.ph393 ], [ %.1.lcssa, %.preheader321 ]
  %.2107391 = phi ptr [ %i.st, %.lr.ph393 ], [ %.1106.lcssa, %.preheader321 ] ; 3 uses
  %i.sj = load i64, ptr %.2107391, align 1, !tbaa !49
  %i.sk = insertelement <2 x i64> poison, i64 %i.sj, i64 0
  %i.sl = bitcast <2 x i64> %i.sk to <8 x i16>
  %21 = shufflevector <8 x i16> %i.sl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.sm = bitcast <8 x i16> %21 to <4 x float>
  %i.sn = fmul fast <4 x float> %.2312, %i.sm
  %i.so = bitcast <4 x float> %i.sn to <4 x i32>
  %i.sp = lshr <4 x i32> %i.so, splat (i32 16)
  %i.sq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sp, <4 x i32> poison)
  %i.sr = bitcast <8 x i16> %i.sq to <2 x i64>
  %i.ss = extractelement <2 x i64> %i.sr, i64 0
  store i64 %i.ss, ptr %.2107391, align 1, !tbaa !49
  %i.st = getelementptr inbounds nuw i8, ptr %.2107391, i64 8 ; 2 uses
  %i.su = add nuw nsw i32 %.2392, 4               ; 3 uses
  %i.sv = or disjoint i32 %i.su, 3
  %i.sw = icmp slt i32 %i.sv, %i.b
  br i1 %i.sw, label %.lr.ph393, label %.preheader, !llvm.loop !248

.lr.ph398:                                        ; preds = %.lr.ph398.preheader, %.lr.ph398
  %.3397 = phi i32 [ %i.tg, %.lr.ph398 ], [ %.3397.ph, %.lr.ph398.preheader ]
  %.3108396 = phi ptr [ %i.tf, %.lr.ph398 ], [ %.3108396.ph, %.lr.ph398.preheader ] ; 3 uses
  %i.sx = load i16, ptr %.3108396, align 2, !tbaa !62
  %i.sy = zext i16 %i.sx to i32
  %i.sz = shl nuw i32 %i.sy, 16
  %i.ta = bitcast i32 %i.sz to float
  %i.tb = fmul fast float %.1118, %i.ta
  %i.tc = bitcast float %i.tb to i32
  %i.td = lshr i32 %i.tc, 16
  %i.te = trunc nuw i32 %i.td to i16
  store i16 %i.te, ptr %.3108396, align 2, !tbaa !62
  %i.tf = getelementptr inbounds nuw i8, ptr %.3108396, i64 2
  %i.tg = add nuw nsw i32 %.3397, 1               ; 2 uses
  %exitcond424.not = icmp eq i32 %i.tg, %i.b
  br i1 %exitcond424.not, label %.loopexit, label %.lr.ph398, !llvm.loop !249

.loopexit:                                        ; preds = %.lr.ph398, %middle.block548, %vec.epilog.middle.block564, %.preheader, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !21     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.h = load i32, ptr %0, align 4, !tbaa !21     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !21
  %i.k = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.036 = phi i32 [ %i.k, %.lr.ph ], [ %i.aj, %bb.d ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !21     ; 2 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !21
  %i.p = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.q = mul nsw i32 %i.n, %.036                  ; 2 uses
  %i.r = sub nsw i32 %i.o, %i.q
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.n)
  %i.s = load ptr, ptr %5, align 8, !tbaa !40, !noalias !253
  %i.t = load i64, ptr %i.l, align 8, !tbaa !44, !noalias !253
  %i.u = sext i32 %i.p to i64
  %i.v = mul i64 %i.t, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !253
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !21
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %6, align 8, !tbaa !40
  %i.ad = load i32, ptr %7, align 4, !tbaa !21    ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.q
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i32, ptr %8, align 4, !tbaa !21
  %i.ai = load i64, ptr %9, align 8, !tbaa !42
  invoke fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ad, i64 noundef %i.ai, i32 noundef %.sroa.speculated, ptr noundef %i.y, ptr noundef %i.ab)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.aj = add nsw i32 %.036, 1
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !21
  %.not.not = icmp slt i32 %.036, %i.ak
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.f:                                             ; preds = %.noexc, %bb.c
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #20
  unreachable
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %4, 15                      ; 9 uses
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader140

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %4, -16                      ; 2 uses
  %i.c = lshr i32 %i.b, 4
  %i.d = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %xtraiter = and i32 %i.d, 7                     ; 3 uses
  %i.e = icmp ult i32 %i.b, 112
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.d, 536870904
  br label %.lr.ph

.preheader140.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader140.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader140.loopexit.unr-lcssa, %.lr.ph.preheader
  %.081187.epil.init = phi ptr [ %5, %.lr.ph.preheader ], [ %i.q, %.preheader140.loopexit.unr-lcssa ]
  %lcmp.mod692 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod692)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.081187.epil = phi ptr [ %i.f, %.lr.ph.epil ], [ %.081187.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store <16 x float> splat (float f0xFF7FFFFF), ptr %.081187.epil, align 1, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %.081187.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader140.loopexit, label %.lr.ph.epil, !llvm.loop !254

.preheader140.loopexit:                           ; preds = %.lr.ph.epil, %.preheader140.loopexit.unr-lcssa
  %.lcssa690 = phi ptr [ %i.q, %.preheader140.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil ]
  %i.g = and i32 %4, 2147483632
  br label %.preheader140

.preheader140:                                    ; preds = %.preheader140.loopexit, %bb.a
  %.081.lcssa = phi ptr [ %5, %bb.a ], [ %.lcssa690, %.preheader140.loopexit ] ; 2 uses
  %.077.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %.preheader140.loopexit ] ; 3 uses
  %i.h = or disjoint i32 %.077.lcssa, 7
  %i.i = icmp slt i32 %i.h, %4
  br i1 %i.i, label %.lr.ph192, label %.preheader139

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.081187 = phi ptr [ %5, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store <16 x float> splat (float f0xFF7FFFFF), ptr %.081187, align 1, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %.081187, i64 64
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.j, align 1, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %.081187, i64 128
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.k, align 1, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %.081187, i64 192
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.l, align 1, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %.081187, i64 256
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.m, align 1, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %.081187, i64 320
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.n, align 1, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %.081187, i64 384
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.o, align 1, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %.081187, i64 448
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.p, align 1, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %.081187, i64 512 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.preheader140.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !255

.preheader139:                                    ; preds = %.lr.ph192, %.preheader140
  %.182.lcssa = phi ptr [ %.081.lcssa, %.preheader140 ], [ %i.t, %.lr.ph192 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  br i1 %min.iters.check, label %.lr.ph202.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check390 = icmp ult i32 %i.z, 63
  br i1 %min.iters.check390, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 56
  %n.vec = and i64 %i.ab, 8589934528              ; 5 uses
  %i.ad = trunc i64 %n.vec to i32
  %i.ae = add i32 %.279.lcssa, %i.ad
  %i.af = shl nuw nsw i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %.283.lcssa, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.283.lcssa, i64 %i.ah ; 4 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 64
  %i.aj = getelementptr i8, ptr %next.gep, i64 128
  %i.ak = getelementptr i8, ptr %next.gep, i64 192
  store <16 x float> splat (float f0xFF7FFFFF), ptr %next.gep, align 4, !tbaa !53
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.ai, align 4, !tbaa !53
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.aj, align 4, !tbaa !53
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.ak, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.preheader137, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph202.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec391 = and i64 %i.ab, 8589934584           ; 4 uses
  %i.am = trunc i64 %n.vec391 to i32
  %i.an = add i32 %.279.lcssa, %i.am
  %i.ao = shl nuw nsw i64 %n.vec391, 2
  %i.ap = getelementptr i8, ptr %.283.lcssa, i64 %i.ao
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index392 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next394, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index392, 2
  %next.gep393 = getelementptr i8, ptr %.283.lcssa, i64 %i.aq
  store <8 x float> splat (float f0xFF7FFFFF), ptr %next.gep393, align 4, !tbaa !53
  %index.next394 = add nuw i64 %index392, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next394, %n.vec391
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !258

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n395 = icmp eq i64 %i.ab, %n.vec391
  br i1 %cmp.n395, label %.preheader137, label %.lr.ph202.preheader

.lr.ph202.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.380201.ph = phi i32 [ %.279.lcssa, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.384200.ph = phi ptr [ %.283.lcssa, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph202

.lr.ph197:                                        ; preds = %.preheader139, %.lr.ph197
  %.279196 = phi i32 [ %i.at, %.lr.ph197 ], [ %.178.lcssa, %.preheader139 ]
  %.283195 = phi ptr [ %i.as, %.lr.ph197 ], [ %.182.lcssa, %.preheader139 ] ; 2 uses
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.283195, align 1, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %.283195, i64 16 ; 2 uses
  %i.at = add nuw nsw i32 %.279196, 4             ; 3 uses
  %i.au = or disjoint i32 %i.at, 3
  %i.av = icmp slt i32 %i.au, %4
  br i1 %i.av, label %.lr.ph197, label %.preheader138, !llvm.loop !259

.preheader137:                                    ; preds = %.lr.ph202, %middle.block, %vec.epilog.middle.block, %.preheader138
  br i1 %i.a, label %.lr.ph205.preheader, label %.preheader136

.lr.ph205.preheader:                              ; preds = %.preheader137
  %i.aw = add nsw i32 %4, -16                     ; 2 uses
  %i.ax = lshr i32 %i.aw, 4
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 6
  %i.ba = add nuw nsw i64 %i.az, 64               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, i8 0, i64 %i.ba, i1 false), !tbaa !49
  %scevgep = getelementptr i8, ptr %6, i64 %i.ba
  %i.bb = and i32 %i.aw, -16
  %i.bc = add nuw nsw i32 %i.bb, 16
  br label %.preheader136

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.lr.ph202
  %.380201 = phi i32 [ %i.be, %.lr.ph202 ], [ %.380201.ph, %.lr.ph202.preheader ]
  %.384200 = phi ptr [ %i.bd, %.lr.ph202 ], [ %.384200.ph, %.lr.ph202.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.384200, i64 4
  store float f0xFF7FFFFF, ptr %.384200, align 4, !tbaa !53
  %i.be = add nuw nsw i32 %.380201, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %4
  br i1 %exitcond.not, label %.preheader137, label %.lr.ph202, !llvm.loop !260

.preheader136:                                    ; preds = %.lr.ph205.preheader, %.preheader137
  %.073.lcssa = phi ptr [ %6, %.preheader137 ], [ %scevgep, %.lr.ph205.preheader ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.preheader137 ], [ %i.bc, %.lr.ph205.preheader ] ; 4 uses
  %i.bf = or disjoint i32 %.0.lcssa, 7
  %i.bg = icmp slt i32 %i.bf, %4
  br i1 %i.bg, label %.lr.ph210.preheader, label %.preheader135

.lr.ph210.preheader:                              ; preds = %.preheader136
  %i.bh = add nsw i32 %4, -8
  %i.bi = sub nsw i32 %i.bh, %.0.lcssa            ; 2 uses
  %i.bj = lshr i32 %i.bi, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 5
  %i.bm = add nuw nsw i64 %i.bl, 32               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.073.lcssa, i8 0, i64 %i.bm, i1 false), !tbaa !49
  %scevgep279 = getelementptr i8, ptr %.073.lcssa, i64 %i.bm
  %i.bn = and i32 %i.bi, -8
  %i.bo = add i32 %.0.lcssa, %i.bn
  %i.bp = add i32 %i.bo, 8
  br label %.preheader135

.preheader135:                                    ; preds = %.lr.ph210.preheader, %.preheader136
  %.174.lcssa = phi ptr [ %.073.lcssa, %.preheader136 ], [ %scevgep279, %.lr.ph210.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader136 ], [ %i.bp, %.lr.ph210.preheader ] ; 4 uses
  %i.bq = or disjoint i32 %.1.lcssa, 3
  %i.br = icmp slt i32 %i.bq, %4
  br i1 %i.br, label %.lr.ph215.preheader, label %.preheader

.lr.ph215.preheader:                              ; preds = %.preheader135
  %i.bs = add i32 %4, -4
  %i.bt = sub i32 %i.bs, %.1.lcssa                ; 2 uses
  %i.bu = lshr i32 %i.bt, 2
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = add nuw nsw i64 %i.bw, 16               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.174.lcssa, i8 0, i64 %i.bx, i1 false), !tbaa !49
  %scevgep280 = getelementptr i8, ptr %.174.lcssa, i64 %i.bx
  %i.by = and i32 %i.bt, -4
  %i.bz = add i32 %.1.lcssa, %i.by
  %i.ca = add i32 %i.bz, 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph215.preheader, %.preheader135
  %.275.lcssa = phi ptr [ %.174.lcssa, %.preheader135 ], [ %scevgep280, %.lr.ph215.preheader ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader135 ], [ %i.ca, %.lr.ph215.preheader ] ; 2 uses
  %i.cb = icmp slt i32 %.2.lcssa, %4
  br i1 %i.cb, label %.lr.ph220.preheader, label %._crit_edge

.lr.ph220.preheader:                              ; preds = %.preheader
  %i.cc = xor i32 %.2.lcssa, -1
  %i.cd = add i32 %4, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.275.lcssa, i8 0, i64 %i.cg, i1 false), !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph220.preheader, %.preheader
  %i.ch = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %.split, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit

.split:                                           ; preds = %._crit_edge
  %i.cj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.cj, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit [
    i32 4, label %bb.b
    i32 3, label %bb.g
    i32 2, label %bb.l
    i32 0, label %bb.o
  ]

bb.b:                                             ; preds = %.split
  %i.ck = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %.preheader130.i, label %bb.c

.preheader130.i:                                  ; preds = %bb.b
  %i.cl = icmp sgt i32 %1, 0
  %i.cm = icmp sgt i32 %4, 0
  %or.cond.i = and i1 %i.cl, %i.cm                ; 2 uses
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.preheader128.i

.lr.ph.preheader.i:                               ; preds = %.preheader130.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4ncnn35softmax_bf16s_pack16_sse_avx512bf16EPtimiPfS1_(ptr noundef %0, i32 noundef %1, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %_ZN4ncnnL24softmax_bf16s_pack16_sseEPtimiPfS1_.exit

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.cn = mul i64 %indvars.iv.i, %3
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cn
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.089133.i = phi ptr [ %i.co, %.lr.ph.i ], [ %i.dj, %bb.d ] ; 2 uses
  %.095132.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dl, %bb.d ]
  %.096131.i = phi ptr [ %5, %.lr.ph.i ], [ %i.dk, %bb.d ] ; 3 uses
  %i.cp = load <16 x i16>, ptr %.089133.i, align 1, !tbaa !49 ; 2 uses
  %7 = shufflevector <16 x i16> %i.cp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %8 = shufflevector <16 x i16> %i.cp, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.cq = shufflevector <16 x i16> %7, <16 x i16> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cr = shufflevector <16 x i16> %7, <16 x i16> %8, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cs = bitcast <16 x i16> %i.cq to <8 x i32>
  %i.ct = bitcast <16 x i16> %i.cr to <8 x i32>
  %i.cu = shufflevector <8 x i32> %i.cs, <8 x i32> %i.ct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cv = bitcast <16 x i32> %i.cu to <16 x float> ; 2 uses
  %i.cw = shufflevector <16 x float> %i.cv, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = shufflevector <16 x float> %i.cv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cw, <8 x float> nofpclass(nan inf) %i.cx) ; 2 uses
  %i.cz = shufflevector <8 x float> %i.cy, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.da = shufflevector <8 x float> %i.cy, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.db = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.da) ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.db, <4 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.df = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.de)
  %i.dg = extractelement <4 x float> %i.df, i64 0 ; 2 uses
  %i.dh = load float, ptr %.096131.i, align 4, !tbaa !53 ; 2 uses
  %i.di = fcmp fast olt float %i.dh, %i.dg
  %.sroa.speculated.i = select i1 %i.di, float %i.dg, float %i.dh
  store float %.sroa.speculated.i, ptr %.096131.i, align 4, !tbaa !53
  %i.dj = getelementptr inbounds nuw i8, ptr %.089133.i, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %.096131.i, i64 4
  %i.dl = add nuw nsw i32 %.095132.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dl, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !261

._crit_edge.i:                                    ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond178.not.i, label %.lr.ph141.i, label %.lr.ph.i, !llvm.loop !262

.preheader128.i:                                  ; preds = %._crit_edge142.i, %.preheader130.i
  br i1 %i.a, label %.lr.ph147.i.preheader, label %.preheader127.i

.lr.ph147.i.preheader:                            ; preds = %.preheader128.i
  %i.dm = add nsw i32 %4, -16                     ; 2 uses
  %i.dn = lshr i32 %i.dm, 4                       ; 2 uses
  %i.do = add nuw nsw i32 %i.dn, 1                ; 2 uses
  %i.dp = icmp eq i32 %i.dn, 0
  br i1 %i.dp, label %.lr.ph147.i.epil.preheader, label %.lr.ph147.i.preheader.new

.lr.ph147.i.preheader.new:                        ; preds = %.lr.ph147.i.preheader
  %unroll_iter698 = and i32 %i.do, 536870910
  br label %.lr.ph147.i

.lr.ph141.i:                                      ; preds = %._crit_edge.i, %._crit_edge142.i
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %._crit_edge142.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.dq = mul i64 %indvars.iv180.i, %3
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dq
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph141.i
  %.090139.i = phi i32 [ 0, %.lr.ph141.i ], [ %i.fx, %bb.e ]
  %.091138.i = phi ptr [ %6, %.lr.ph141.i ], [ %i.fw, %bb.e ] ; 3 uses
  %.092137.i = phi ptr [ %5, %.lr.ph141.i ], [ %i.fv, %bb.e ] ; 2 uses
  %.093136.i = phi ptr [ %i.dr, %.lr.ph141.i ], [ %i.fu, %bb.e ] ; 3 uses
  %i.ds = load <16 x i16>, ptr %.093136.i, align 1, !tbaa !49 ; 2 uses
  %9 = shufflevector <16 x i16> %i.ds, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %10 = shufflevector <16 x i16> %i.ds, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.dt = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.du = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dv = bitcast <16 x i16> %i.dt to <8 x i32>
  %i.dw = bitcast <16 x i16> %i.du to <8 x i32>
  %i.dx = shufflevector <8 x i32> %i.dv, <8 x i32> %i.dw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = bitcast <16 x i32> %i.dx to <16 x float>
  %i.dz = load float, ptr %.092137.i, align 4, !tbaa !53
  %i.ea = insertelement <16 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <16 x float> %i.ea, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ec = fsub fast <16 x float> %i.dy, %i.eb
  %i.ed = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ee = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ed, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ef = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.eg = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ef, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.eh = fcmp fast ogt <16 x float> %i.eg, %i.ef
  %i.ei = fadd fast <16 x float> %i.eg, splat (float -1.000000e+00)
  %i.ej = select fast <16 x i1> %i.eh, <16 x float> %i.ei, <16 x float> %i.eg ; 2 uses
  %i.ek = fneg fast <16 x float> %i.ej            ; 2 uses
  %i.el = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ek, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ee)
  %i.em = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ek, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.el) ; 8 uses
  %i.en = fmul fast <16 x float> %i.em, %i.em
  %i.eo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ep = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eo, <16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x3C088908))
  %i.eq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ep, <16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x3D2AA9C1))
  %i.er = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eq, <16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x3E2AAAAA))
  %i.es = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.er, <16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float 5.000000e-01))
  %i.et = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.es, <16 x float> nofpclass(nan inf) %i.en, <16 x float> nofpclass(nan inf) %i.em)
  %i.eu = fadd fast <16 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ej, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ew = shl <16 x i32> %i.ev, splat (i32 23)
  %i.ex = add <16 x i32> %i.ew, splat (i32 1065353216)
  %i.ey = bitcast <16 x i32> %i.ex to <16 x float>
  %i.ez = fmul fast <16 x float> %i.eu, %i.ey     ; 4 uses
  %i.fa = bitcast <16 x float> %i.ez to <16 x i32>
  %i.fb = lshr <16 x i32> %i.fa, splat (i32 16)   ; 2 uses
  %i.fc = shufflevector <16 x i32> %i.fb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fd = shufflevector <16 x i32> %i.fb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fe = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.fc, <8 x i32> %i.fd)
  %i.ff = bitcast <16 x i16> %i.fe to <4 x i64>
  %i.fg = shufflevector <4 x i64> %i.ff, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.fg, ptr %.093136.i, align 1, !tbaa !49
  %i.fh = shufflevector <16 x float> %i.ez, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fi = shufflevector <16 x float> %i.ez, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fj = fadd fast <8 x float> %i.fh, %i.fi      ; 2 uses
  %i.fk = shufflevector <8 x float> %i.fj, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fl = shufflevector <8 x float> %i.fj, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fm = fadd fast <4 x float> %i.fk, %i.fl      ; 2 uses
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.fo = fadd fast <4 x float> %i.fn, %i.fm
  %i.fp = extractelement <4 x float> %i.fo, i64 1
  %i.fq = shufflevector <16 x float> %i.ez, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.fr = load float, ptr %.091138.i, align 4, !tbaa !53
  %i.fs = fadd fast float %i.fp, %i.fr
  %i.ft = tail call fast float @llvm.vector.reduce.fadd.v8f32(float %i.fs, <8 x float> %i.fq)
  store float %i.ft, ptr %.091138.i, align 4, !tbaa !53
  %i.fu = getelementptr inbounds nuw i8, ptr %.093136.i, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %.092137.i, i64 4
  %i.fw = getelementptr inbounds nuw i8, ptr %.091138.i, i64 4
  %i.fx = add nuw nsw i32 %.090139.i, 1           ; 2 uses
  %exitcond179.not.i = icmp eq i32 %i.fx, %4
  br i1 %exitcond179.not.i, label %._crit_edge142.i, label %bb.e, !llvm.loop !263

._crit_edge142.i:                                 ; preds = %bb.e
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next181.i, %wide.trip.count.i
  br i1 %exitcond184.not.i, label %.preheader128.i, label %.lr.ph141.i, !llvm.loop !264

.preheader127.loopexit.i.unr-lcssa:               ; preds = %.lr.ph147.i
  %i.fy = and i32 %i.dm, 16
  %lcmp.mod695.not.not = icmp eq i32 %i.fy, 0
  br i1 %lcmp.mod695.not.not, label %.lr.ph147.i.epil.preheader, label %.preheader127.loopexit.i

.lr.ph147.i.epil.preheader:                       ; preds = %.preheader127.loopexit.i.unr-lcssa, %.lr.ph147.i.preheader
  %.085145.i.epil.init = phi ptr [ %6, %.lr.ph147.i.preheader ], [ %i.gt, %.preheader127.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod697 = trunc i32 %i.do to i1
  tail call void @llvm.assume(i1 %lcmp.mod697)
  %i.fz = load <16 x float>, ptr %.085145.i.epil.init, align 1, !tbaa !49 ; 2 uses
  %i.ga = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.fz, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.gb = fneg fast <16 x float> %i.fz
  %i.gc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gb, <16 x float> nofpclass(nan inf) %i.ga, <16 x float> splat (float 2.000000e+00))
  %i.gd = fmul fast <16 x float> %i.gc, %i.ga
  store <16 x float> %i.gd, ptr %.085145.i.epil.init, align 1, !tbaa !49
  %i.ge = getelementptr inbounds nuw i8, ptr %.085145.i.epil.init, i64 64
  br label %.preheader127.loopexit.i

.preheader127.loopexit.i:                         ; preds = %.preheader127.loopexit.i.unr-lcssa, %.lr.ph147.i.epil.preheader
  %.lcssa685 = phi ptr [ %i.gt, %.preheader127.loopexit.i.unr-lcssa ], [ %i.ge, %.lr.ph147.i.epil.preheader ]
  %i.gf = and i32 %4, 2147483632
  br label %.preheader127.i

.preheader127.i:                                  ; preds = %.preheader127.loopexit.i, %.preheader128.i
  %.085.lcssa.i = phi ptr [ %6, %.preheader128.i ], [ %.lcssa685, %.preheader127.loopexit.i ] ; 2 uses
  %.084.lcssa.i = phi i32 [ 0, %.preheader128.i ], [ %i.gf, %.preheader127.loopexit.i ] ; 3 uses
  %i.gg = or disjoint i32 %.084.lcssa.i, 7
  %i.gh = icmp slt i32 %i.gg, %4
  br i1 %i.gh, label %.lr.ph151.i, label %.preheader126.i

.lr.ph147.i:                                      ; preds = %.lr.ph147.i, %.lr.ph147.i.preheader.new
  %.085145.i = phi ptr [ %6, %.lr.ph147.i.preheader.new ], [ %i.gt, %.lr.ph147.i ] ; 4 uses
  %niter699 = phi i32 [ 0, %.lr.ph147.i.preheader.new ], [ %niter699.next.1, %.lr.ph147.i ]
  %i.gi = load <16 x float>, ptr %.085145.i, align 1, !tbaa !49 ; 2 uses
  %i.gj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.gi, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.gk = fneg fast <16 x float> %i.gi
  %i.gl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gk, <16 x float> nofpclass(nan inf) %i.gj, <16 x float> splat (float 2.000000e+00))
  %i.gm = fmul fast <16 x float> %i.gl, %i.gj
  store <16 x float> %i.gm, ptr %.085145.i, align 1, !tbaa !49
  %i.gn = getelementptr inbounds nuw i8, ptr %.085145.i, i64 64 ; 2 uses
  %i.go = load <16 x float>, ptr %i.gn, align 1, !tbaa !49 ; 2 uses
  %i.gp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.go, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.gq = fneg fast <16 x float> %i.go
  %i.gr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gq, <16 x float> nofpclass(nan inf) %i.gp, <16 x float> splat (float 2.000000e+00))
  %i.gs = fmul fast <16 x float> %i.gr, %i.gp
  store <16 x float> %i.gs, ptr %i.gn, align 1, !tbaa !49
  %i.gt = getelementptr inbounds nuw i8, ptr %.085145.i, i64 128 ; 3 uses
  %niter699.next.1 = add i32 %niter699, 2         ; 2 uses
  %niter699.ncmp.1.not = icmp eq i32 %niter699.next.1, %unroll_iter698
  br i1 %niter699.ncmp.1.not, label %.preheader127.loopexit.i.unr-lcssa, label %.lr.ph147.i, !llvm.loop !265

.preheader126.i:                                  ; preds = %.lr.ph151.i, %.preheader127.i
  %.186.lcssa.i = phi ptr [ %.085.lcssa.i, %.preheader127.i ], [ %i.hb, %.lr.ph151.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.084.lcssa.i, %.preheader127.i ], [ %i.hc, %.lr.ph151.i ] ; 3 uses
  %i.gu = or disjoint i32 %.1.lcssa.i, 3
  %i.gv = icmp slt i32 %i.gu, %4
  br i1 %i.gv, label %.lr.ph156.i, label %.preheader125.i

.lr.ph151.i:                                      ; preds = %.preheader127.i, %.lr.ph151.i
  %.1150.i = phi i32 [ %i.hc, %.lr.ph151.i ], [ %.084.lcssa.i, %.preheader127.i ]
  %.186149.i = phi ptr [ %i.hb, %.lr.ph151.i ], [ %.085.lcssa.i, %.preheader127.i ] ; 3 uses
  %i.gw = load <8 x float>, ptr %.186149.i, align 1, !tbaa !49 ; 2 uses
  %i.gx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.gw) ; 2 uses
  %i.gy = fneg fast <8 x float> %i.gw
  %i.gz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gy, <8 x float> nofpclass(nan inf) %i.gx, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.ha = fmul fast <8 x float> %i.gz, %i.gx
  store <8 x float> %i.ha, ptr %.186149.i, align 1, !tbaa !49
  %i.hb = getelementptr inbounds nuw i8, ptr %.186149.i, i64 32 ; 2 uses
  %i.hc = add nuw nsw i32 %.1150.i, 8             ; 3 uses
  %i.hd = or disjoint i32 %i.hc, 7
  %i.he = icmp slt i32 %i.hd, %4
  br i1 %i.he, label %.lr.ph151.i, label %.preheader126.i, !llvm.loop !266

.preheader125.i:                                  ; preds = %.lr.ph156.i, %.preheader126.i
  %.287.lcssa.i = phi ptr [ %.186.lcssa.i, %.preheader126.i ], [ %i.ik, %.lr.ph156.i ] ; 5 uses
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader126.i ], [ %i.il, %.lr.ph156.i ] ; 5 uses
  %i.hf = icmp slt i32 %.2.lcssa.i, %4
  br i1 %i.hf, label %iter.check411, label %.preheader.i

iter.check411:                                    ; preds = %.preheader125.i
  %i.hg = xor i32 %.2.lcssa.i, -1
  %i.hh = add i32 %4, %i.hg                       ; 3 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 5 uses
  %min.iters.check397 = icmp ult i32 %i.hh, 7
  br i1 %min.iters.check397, label %.lr.ph161.i.preheader, label %vector.main.loop.iter.check398

vector.main.loop.iter.check398:                   ; preds = %iter.check411
  %min.iters.check399 = icmp ult i32 %i.hh, 63
  br i1 %min.iters.check399, label %vec.epilog.ph415, label %vector.ph400

vector.ph400:                                     ; preds = %vector.main.loop.iter.check398
  %i.hk = and i64 %i.hj, 56
  %n.vec401 = and i64 %i.hj, 8589934528           ; 5 uses
  %i.hl = trunc i64 %n.vec401 to i32
  %i.hm = add i32 %.2.lcssa.i, %i.hl
  %i.hn = shl nuw nsw i64 %n.vec401, 2
  %i.ho = getelementptr i8, ptr %.287.lcssa.i, i64 %i.hn
  br label %vector.body402

vector.body402:                                   ; preds = %vector.ph400, %vector.body402
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next408, %vector.body402 ] ; 2 uses
  %i.hp = shl i64 %index403, 2
  %next.gep404 = getelementptr i8, ptr %.287.lcssa.i, i64 %i.hp ; 5 uses
  %i.hq = getelementptr i8, ptr %next.gep404, i64 64 ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep404, i64 128 ; 2 uses
  %i.hs = getelementptr i8, ptr %next.gep404, i64 192 ; 2 uses
  %wide.load = load <16 x float>, ptr %next.gep404, align 4, !tbaa !53
  %wide.load405 = load <16 x float>, ptr %i.hq, align 4, !tbaa !53
  %wide.load406 = load <16 x float>, ptr %i.hr, align 4, !tbaa !53
  %wide.load407 = load <16 x float>, ptr %i.hs, align 4, !tbaa !53
  %i.ht = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load
  %i.hu = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load405
  %i.hv = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load406
  %i.hw = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load407
  store <16 x float> %i.ht, ptr %next.gep404, align 4, !tbaa !53
  store <16 x float> %i.hu, ptr %i.hq, align 4, !tbaa !53
  store <16 x float> %i.hv, ptr %i.hr, align 4, !tbaa !53
  store <16 x float> %i.hw, ptr %i.hs, align 4, !tbaa !53
  %index.next408 = add nuw i64 %index403, 64      ; 2 uses
  %i.hx = icmp eq i64 %index.next408, %n.vec401
  br i1 %i.hx, label %middle.block409, label %vector.body402, !llvm.loop !267

middle.block409:                                  ; preds = %vector.body402
  %cmp.n410 = icmp eq i64 %i.hj, %n.vec401
  br i1 %cmp.n410, label %.preheader.i, label %vec.epilog.iter.check412

vec.epilog.iter.check412:                         ; preds = %middle.block409
  %min.epilog.iters.check414 = icmp eq i64 %i.hk, 0
  br i1 %min.epilog.iters.check414, label %.lr.ph161.i.preheader, label %vec.epilog.ph415, !prof !56

vec.epilog.ph415:                                 ; preds = %vector.main.loop.iter.check398, %vec.epilog.iter.check412
  %vec.epilog.resume.val416 = phi i64 [ %n.vec401, %vec.epilog.iter.check412 ], [ 0, %vector.main.loop.iter.check398 ]
  %n.vec417 = and i64 %i.hj, 8589934584           ; 4 uses
  %i.hy = trunc i64 %n.vec417 to i32
  %i.hz = add i32 %.2.lcssa.i, %i.hy
  %i.ia = shl nuw nsw i64 %n.vec417, 2
  %i.ib = getelementptr i8, ptr %.287.lcssa.i, i64 %i.ia
  br label %vec.epilog.vector.body418

vec.epilog.vector.body418:                        ; preds = %vec.epilog.vector.body418, %vec.epilog.ph415
  %index419 = phi i64 [ %vec.epilog.resume.val416, %vec.epilog.ph415 ], [ %index.next422, %vec.epilog.vector.body418 ] ; 2 uses
  %i.ic = shl i64 %index419, 2
  %next.gep420 = getelementptr i8, ptr %.287.lcssa.i, i64 %i.ic ; 2 uses
  %wide.load421 = load <8 x float>, ptr %next.gep420, align 4, !tbaa !53
  %i.id = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load421
  store <8 x float> %i.id, ptr %next.gep420, align 4, !tbaa !53
  %index.next422 = add nuw i64 %index419, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next422, %n.vec417
  br i1 %i.ie, label %vec.epilog.middle.block423, label %vec.epilog.vector.body418, !llvm.loop !268

vec.epilog.middle.block423:                       ; preds = %vec.epilog.vector.body418
  %cmp.n424 = icmp eq i64 %i.hj, %n.vec417
  br i1 %cmp.n424, label %.preheader.i, label %.lr.ph161.i.preheader

.lr.ph161.i.preheader:                            ; preds = %iter.check411, %vec.epilog.iter.check412, %vec.epilog.middle.block423
  %.3160.i.ph = phi i32 [ %.2.lcssa.i, %iter.check411 ], [ %i.hm, %vec.epilog.iter.check412 ], [ %i.hz, %vec.epilog.middle.block423 ]
  %.388159.i.ph = phi ptr [ %.287.lcssa.i, %iter.check411 ], [ %i.ho, %vec.epilog.iter.check412 ], [ %i.ib, %vec.epilog.middle.block423 ]
  br label %.lr.ph161.i

.lr.ph156.i:                                      ; preds = %.preheader126.i, %.lr.ph156.i
  %.2155.i = phi i32 [ %i.il, %.lr.ph156.i ], [ %.1.lcssa.i, %.preheader126.i ]
  %.287154.i = phi ptr [ %i.ik, %.lr.ph156.i ], [ %.186.lcssa.i, %.preheader126.i ] ; 3 uses
  %i.if = load <4 x float>, ptr %.287154.i, align 1, !tbaa !49 ; 2 uses
  %i.ig = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.if) ; 2 uses
  %i.ih = fneg fast <4 x float> %i.if
  %i.ii = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ih, <4 x float> nofpclass(nan inf) %i.ig, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.ij = fmul fast <4 x float> %i.ii, %i.ig
  store <4 x float> %i.ij, ptr %.287154.i, align 1, !tbaa !49
  %i.ik = getelementptr inbounds nuw i8, ptr %.287154.i, i64 16 ; 2 uses
  %i.il = add nuw nsw i32 %.2155.i, 4             ; 3 uses
  %i.im = or disjoint i32 %i.il, 3
  %i.in = icmp slt i32 %i.im, %4
  br i1 %i.in, label %.lr.ph156.i, label %.preheader125.i, !llvm.loop !269

.preheader.i:                                     ; preds = %.lr.ph161.i, %middle.block409, %vec.epilog.middle.block423, %.preheader125.i
  br i1 %or.cond.i, label %.lr.ph166.preheader.i, label %_ZN4ncnnL24softmax_bf16s_pack16_sseEPtimiPfS1_.exit

.lr.ph166.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count190.i = zext nneg i32 %1 to i64
  br label %.lr.ph166.i

.lr.ph161.i:                                      ; preds = %.lr.ph161.i.preheader, %.lr.ph161.i
  %.3160.i = phi i32 [ %i.ir, %.lr.ph161.i ], [ %.3160.i.ph, %.lr.ph161.i.preheader ]
  %.388159.i = phi ptr [ %i.iq, %.lr.ph161.i ], [ %.388159.i.ph, %.lr.ph161.i.preheader ] ; 3 uses
  %i.io = load float, ptr %.388159.i, align 4, !tbaa !53
  %i.ip = fdiv fast float 1.000000e+00, %i.io
  store float %i.ip, ptr %.388159.i, align 4, !tbaa !53
  %i.iq = getelementptr inbounds nuw i8, ptr %.388159.i, i64 4
  %i.ir = add nuw nsw i32 %.3160.i, 1             ; 2 uses
  %exitcond185.not.i = icmp eq i32 %i.ir, %4
  br i1 %exitcond185.not.i, label %.preheader.i, label %.lr.ph161.i, !llvm.loop !270

.lr.ph166.i:                                      ; preds = %._crit_edge167.i, %.lr.ph166.preheader.i
  %indvars.iv187.i = phi i64 [ 0, %.lr.ph166.preheader.i ], [ %indvars.iv.next188.i, %._crit_edge167.i ] ; 2 uses
  %i.is = mul i64 %indvars.iv187.i, %3
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.is
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph166.i
  %.080164.i = phi i32 [ 0, %.lr.ph166.i ], [ %i.jo, %bb.f ]
  %.081163.i = phi ptr [ %6, %.lr.ph166.i ], [ %i.jn, %bb.f ] ; 2 uses
  %.082162.i = phi ptr [ %i.it, %.lr.ph166.i ], [ %i.jm, %bb.f ] ; 3 uses
  %i.iu = load <16 x i16>, ptr %.082162.i, align 1, !tbaa !49 ; 2 uses
  %11 = shufflevector <16 x i16> %i.iu, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %12 = shufflevector <16 x i16> %i.iu, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.iv = shufflevector <16 x i16> %11, <16 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.iw = shufflevector <16 x i16> %11, <16 x i16> %12, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ix = bitcast <16 x i16> %i.iv to <8 x i32>
  %i.iy = bitcast <16 x i16> %i.iw to <8 x i32>
  %i.iz = shufflevector <8 x i32> %i.ix, <8 x i32> %i.iy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ja = bitcast <16 x i32> %i.iz to <16 x float>
  %i.jb = load float, ptr %.081163.i, align 4, !tbaa !53
  %i.jc = insertelement <16 x float> poison, float %i.jb, i64 0
  %i.jd = shufflevector <16 x float> %i.jc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.je = fmul fast <16 x float> %i.jd, %i.ja
  %i.jf = bitcast <16 x float> %i.je to <16 x i32>
  %i.jg = lshr <16 x i32> %i.jf, splat (i32 16)   ; 2 uses
  %i.jh = shufflevector <16 x i32> %i.jg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ji = shufflevector <16 x i32> %i.jg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jj = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.jh, <8 x i32> %i.ji)
  %i.jk = bitcast <16 x i16> %i.jj to <4 x i64>
  %i.jl = shufflevector <4 x i64> %i.jk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.jl, ptr %.082162.i, align 1, !tbaa !49
  %i.jm = getelementptr inbounds nuw i8, ptr %.082162.i, i64 32
  %i.jn = getelementptr inbounds nuw i8, ptr %.081163.i, i64 4
  %i.jo = add nuw nsw i32 %.080164.i, 1           ; 2 uses
  %exitcond186.not.i = icmp eq i32 %i.jo, %4
  br i1 %exitcond186.not.i, label %._crit_edge167.i, label %bb.f, !llvm.loop !271

._crit_edge167.i:                                 ; preds = %bb.f
  %indvars.iv.next188.i = add nuw nsw i64 %indvars.iv187.i, 1 ; 2 uses
  %exitcond191.not.i = icmp eq i64 %indvars.iv.next188.i, %wide.trip.count190.i
  br i1 %exitcond191.not.i, label %_ZN4ncnnL24softmax_bf16s_pack16_sseEPtimiPfS1_.exit, label %.lr.ph166.i, !llvm.loop !272

_ZN4ncnnL24softmax_bf16s_pack16_sseEPtimiPfS1_.exit: ; preds = %._crit_edge167.i, %bb.c, %.preheader.i
  switch i32 %2, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit [
    i32 8, label %bb.g
    i32 4, label %bb.l
    i32 1, label %bb.o
  ]

bb.g:                                             ; preds = %.split, %_ZN4ncnnL24softmax_bf16s_pack16_sseEPtimiPfS1_.exit
  %i.jp = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not.i86 = icmp eq i32 %i.jp, 0
  br i1 %.not.i86, label %.preheader152.i, label %bb.h

.preheader152.i:                                  ; preds = %bb.g
  %i.jq = icmp sgt i32 %1, 0
  %i.jr = icmp sgt i32 %4, 0
  %or.cond.i87 = and i1 %i.jq, %i.jr              ; 2 uses
  br i1 %or.cond.i87, label %.lr.ph.preheader.i95, label %.preheader150.i

.lr.ph.preheader.i95:                             ; preds = %.preheader152.i
  %wide.trip.count.i96 = zext nneg i32 %1 to i64  ; 2 uses
  br label %.lr.ph.i97

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4ncnn34softmax_bf16s_pack8_sse_avx512bf16EPtimiPfS1_(ptr noundef %0, i32 noundef %1, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph.i97:                                       ; preds = %._crit_edge.i101, %.lr.ph.preheader.i95
  %indvars.iv.i98 = phi i64 [ 0, %.lr.ph.preheader.i95 ], [ %indvars.iv.next.i102, %._crit_edge.i101 ] ; 2 uses
  %i.js = mul i64 %indvars.iv.i98, %3
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.js
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i97
  %.089155.i = phi ptr [ %i.jt, %.lr.ph.i97 ], [ %i.kh, %bb.i ] ; 2 uses
  %.095154.i = phi i32 [ 0, %.lr.ph.i97 ], [ %i.kj, %bb.i ]
  %.096153.i = phi ptr [ %5, %.lr.ph.i97 ], [ %i.ki, %bb.i ] ; 3 uses
  %i.ju = load <8 x i16>, ptr %.089155.i, align 1, !tbaa !49 ; 2 uses
  %13 = shufflevector <8 x i16> %i.ju, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %14 = shufflevector <8 x i16> %i.ju, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.jv = shufflevector <8 x i16> %13, <8 x i16> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jw = bitcast <16 x i16> %i.jv to <8 x float> ; 2 uses
  %i.jx = shufflevector <8 x float> %i.jw, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jy = shufflevector <8 x float> %i.jw, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jx, <4 x float> nofpclass(nan inf) %i.jy) ; 2 uses
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.kb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jz, <4 x float> nofpclass(nan inf) %i.ka) ; 2 uses
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.kb, <4 x float> nofpclass(nan inf) %i.kc)
  %i.ke = extractelement <4 x float> %i.kd, i64 0 ; 2 uses
  %i.kf = load float, ptr %.096153.i, align 4, !tbaa !53 ; 2 uses
  %i.kg = fcmp fast olt float %i.kf, %i.ke
  %.sroa.speculated.i99 = select i1 %i.kg, float %i.ke, float %i.kf
  store float %.sroa.speculated.i99, ptr %.096153.i, align 4, !tbaa !53
  %i.kh = getelementptr inbounds nuw i8, ptr %.089155.i, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %.096153.i, i64 4
  %i.kj = add nuw nsw i32 %.095154.i, 1           ; 2 uses
  %exitcond.not.i100 = icmp eq i32 %i.kj, %4
  br i1 %exitcond.not.i100, label %._crit_edge.i101, label %bb.i, !llvm.loop !273

._crit_edge.i101:                                 ; preds = %bb.i
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i98, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %indvars.iv.next.i102, %wide.trip.count.i96
  br i1 %exitcond200.not.i, label %.lr.ph163.i, label %.lr.ph.i97, !llvm.loop !274

.preheader150.i:                                  ; preds = %._crit_edge164.i, %.preheader152.i
  br i1 %i.a, label %.lr.ph169.i.preheader, label %.preheader149.i

.lr.ph169.i.preheader:                            ; preds = %.preheader150.i
  %i.kk = add nsw i32 %4, -16                     ; 2 uses
  %i.kl = lshr i32 %i.kk, 4                       ; 2 uses
  %i.km = add nuw nsw i32 %i.kl, 1                ; 2 uses
  %i.kn = icmp eq i32 %i.kl, 0
  br i1 %i.kn, label %.lr.ph169.i.epil.preheader, label %.lr.ph169.i.preheader.new

.lr.ph169.i.preheader.new:                        ; preds = %.lr.ph169.i.preheader
  %unroll_iter705 = and i32 %i.km, 536870910
  br label %.lr.ph169.i

.lr.ph163.i:                                      ; preds = %._crit_edge.i101, %._crit_edge164.i
  %indvars.iv202.i = phi i64 [ %indvars.iv.next203.i, %._crit_edge164.i ], [ 0, %._crit_edge.i101 ] ; 2 uses
  %i.ko = mul i64 %indvars.iv202.i, %3
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ko
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph163.i
  %.090161.i = phi i32 [ 0, %.lr.ph163.i ], [ %i.mm, %bb.j ]
  %.091160.i = phi ptr [ %6, %.lr.ph163.i ], [ %i.ml, %bb.j ] ; 3 uses
  %.092159.i = phi ptr [ %5, %.lr.ph163.i ], [ %i.mk, %bb.j ] ; 2 uses
  %.093158.i = phi ptr [ %i.kp, %.lr.ph163.i ], [ %i.mj, %bb.j ] ; 3 uses
  %i.kq = load <8 x i16>, ptr %.093158.i, align 1, !tbaa !49 ; 2 uses
  %15 = shufflevector <8 x i16> %i.kq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %16 = shufflevector <8 x i16> %i.kq, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.kr = shufflevector <8 x i16> %15, <8 x i16> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ks = bitcast <16 x i16> %i.kr to <8 x float>
  %i.kt = load float, ptr %.092159.i, align 4, !tbaa !53
  %i.ku = insertelement <8 x float> poison, float %i.kt, i64 0
  %i.kv = shufflevector <8 x float> %i.ku, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kw = fsub fast <8 x float> %i.ks, %i.kv
  %i.kx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kw, <8 x float> splat (float f0x42B0C0A5))
  %i.ky = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ky, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.la = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kz, i32 1) ; 2 uses
  %i.lb = fcmp fast ogt <8 x float> %i.la, %i.kz
  %i.lc = select <8 x i1> %i.lb, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ld = fsub fast <8 x float> %i.la, %i.lc      ; 2 uses
  %i.le = fneg fast <8 x float> %i.ld             ; 2 uses
  %i.lf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.le, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ky)
  %i.lg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.le, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lf) ; 8 uses
  %i.lh = fmul fast <8 x float> %i.lg, %i.lg
  %i.li = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lg, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.lj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.li, <8 x float> nofpclass(nan inf) %i.lg, <8 x float> splat (float f0x3C088908))
  %i.lk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lj, <8 x float> nofpclass(nan inf) %i.lg, <8 x float> splat (float f0x3D2AA9C1))
  %i.ll = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lk, <8 x float> nofpclass(nan inf) %i.lg, <8 x float> splat (float f0x3E2AAAAA))
  %i.lm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ll, <8 x float> nofpclass(nan inf) %i.lg, <8 x float> splat (float 5.000000e-01))
  %i.ln = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lm, <8 x float> nofpclass(nan inf) %i.lh, <8 x float> nofpclass(nan inf) %i.lg)
  %i.lo = fadd fast <8 x float> %i.ln, splat (float 1.000000e+00)
  %i.lp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ld)
  %i.lq = shl <8 x i32> %i.lp, splat (i32 23)
  %i.lr = add <8 x i32> %i.lq, splat (i32 1065353216)
  %i.ls = bitcast <8 x i32> %i.lr to <8 x float>
  %i.lt = fmul fast <8 x float> %i.lo, %i.ls      ; 3 uses
  %i.lu = bitcast <8 x float> %i.lt to <8 x i32>
  %i.lv = lshr <8 x i32> %i.lu, splat (i32 16)    ; 2 uses
  %i.lw = shufflevector <8 x i32> %i.lv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lx = shufflevector <8 x i32> %i.lv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ly = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lw, <4 x i32> %i.lx)
  store <8 x i16> %i.ly, ptr %.093158.i, align 1, !tbaa !49
  %i.lz = shufflevector <8 x float> %i.lt, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ma = shufflevector <8 x float> %i.lt, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mb = fadd fast <4 x float> %i.lz, %i.ma      ; 2 uses
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.md = fadd fast <4 x float> %i.mc, %i.mb      ; 2 uses
  %i.me = extractelement <4 x float> %i.md, i64 1
  %i.mf = extractelement <4 x float> %i.md, i64 0
  %i.mg = load float, ptr %.091160.i, align 4, !tbaa !53
  %i.mh = fadd fast float %i.me, %i.mg
  %i.mi = fadd fast float %i.mh, %i.mf
  store float %i.mi, ptr %.091160.i, align 4, !tbaa !53
  %i.mj = getelementptr inbounds nuw i8, ptr %.093158.i, i64 16
  %i.mk = getelementptr inbounds nuw i8, ptr %.092159.i, i64 4
  %i.ml = getelementptr inbounds nuw i8, ptr %.091160.i, i64 4
  %i.mm = add nuw nsw i32 %.090161.i, 1           ; 2 uses
  %exitcond201.not.i = icmp eq i32 %i.mm, %4
  br i1 %exitcond201.not.i, label %._crit_edge164.i, label %bb.j, !llvm.loop !275

._crit_edge164.i:                                 ; preds = %bb.j
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %exitcond206.not.i = icmp eq i64 %indvars.iv.next203.i, %wide.trip.count.i96
  br i1 %exitcond206.not.i, label %.preheader150.i, label %.lr.ph163.i, !llvm.loop !276

.preheader149.loopexit.i.unr-lcssa:               ; preds = %.lr.ph169.i
  %i.mn = and i32 %i.kk, 16
  %lcmp.mod702.not.not = icmp eq i32 %i.mn, 0
  br i1 %lcmp.mod702.not.not, label %.lr.ph169.i.epil.preheader, label %.preheader149.loopexit.i

.lr.ph169.i.epil.preheader:                       ; preds = %.preheader149.loopexit.i.unr-lcssa, %.lr.ph169.i.preheader
  %.085167.i.epil.init = phi ptr [ %6, %.lr.ph169.i.preheader ], [ %i.ni, %.preheader149.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod704 = trunc i32 %i.km to i1
  tail call void @llvm.assume(i1 %lcmp.mod704)
  %i.mo = load <16 x float>, ptr %.085167.i.epil.init, align 1, !tbaa !49 ; 2 uses
  %i.mp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.mo, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.mq = fneg fast <16 x float> %i.mo
  %i.mr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mq, <16 x float> nofpclass(nan inf) %i.mp, <16 x float> splat (float 2.000000e+00))
  %i.ms = fmul fast <16 x float> %i.mr, %i.mp
  store <16 x float> %i.ms, ptr %.085167.i.epil.init, align 1, !tbaa !49
  %i.mt = getelementptr inbounds nuw i8, ptr %.085167.i.epil.init, i64 64
  br label %.preheader149.loopexit.i

.preheader149.loopexit.i:                         ; preds = %.preheader149.loopexit.i.unr-lcssa, %.lr.ph169.i.epil.preheader
  %.lcssa680 = phi ptr [ %i.ni, %.preheader149.loopexit.i.unr-lcssa ], [ %i.mt, %.lr.ph169.i.epil.preheader ]
  %i.mu = and i32 %4, 2147483632
  br label %.preheader149.i

.preheader149.i:                                  ; preds = %.preheader149.loopexit.i, %.preheader150.i
  %.085.lcssa.i88 = phi ptr [ %6, %.preheader150.i ], [ %.lcssa680, %.preheader149.loopexit.i ] ; 2 uses
  %.084.lcssa.i89 = phi i32 [ 0, %.preheader150.i ], [ %i.mu, %.preheader149.loopexit.i ] ; 3 uses
  %i.mv = or disjoint i32 %.084.lcssa.i89, 7
  %i.mw = icmp slt i32 %i.mv, %4
  br i1 %i.mw, label %.lr.ph173.i, label %.preheader148.i

.lr.ph169.i:                                      ; preds = %.lr.ph169.i, %.lr.ph169.i.preheader.new
  %.085167.i = phi ptr [ %6, %.lr.ph169.i.preheader.new ], [ %i.ni, %.lr.ph169.i ] ; 4 uses
  %niter706 = phi i32 [ 0, %.lr.ph169.i.preheader.new ], [ %niter706.next.1, %.lr.ph169.i ]
  %i.mx = load <16 x float>, ptr %.085167.i, align 1, !tbaa !49 ; 2 uses
  %i.my = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.mx, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.mz = fneg fast <16 x float> %i.mx
  %i.na = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mz, <16 x float> nofpclass(nan inf) %i.my, <16 x float> splat (float 2.000000e+00))
  %i.nb = fmul fast <16 x float> %i.na, %i.my
  store <16 x float> %i.nb, ptr %.085167.i, align 1, !tbaa !49
  %i.nc = getelementptr inbounds nuw i8, ptr %.085167.i, i64 64 ; 2 uses
  %i.nd = load <16 x float>, ptr %i.nc, align 1, !tbaa !49 ; 2 uses
  %i.ne = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.nd, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.nf = fneg fast <16 x float> %i.nd
  %i.ng = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nf, <16 x float> nofpclass(nan inf) %i.ne, <16 x float> splat (float 2.000000e+00))
  %i.nh = fmul fast <16 x float> %i.ng, %i.ne
  store <16 x float> %i.nh, ptr %i.nc, align 1, !tbaa !49
  %i.ni = getelementptr inbounds nuw i8, ptr %.085167.i, i64 128 ; 3 uses
  %niter706.next.1 = add i32 %niter706, 2         ; 2 uses
  %niter706.ncmp.1.not = icmp eq i32 %niter706.next.1, %unroll_iter705
  br i1 %niter706.ncmp.1.not, label %.preheader149.loopexit.i.unr-lcssa, label %.lr.ph169.i, !llvm.loop !277

.preheader148.i:                                  ; preds = %.lr.ph173.i, %.preheader149.i
  %.186.lcssa.i90 = phi ptr [ %.085.lcssa.i88, %.preheader149.i ], [ %i.nq, %.lr.ph173.i ] ; 2 uses
  %.1.lcssa.i91 = phi i32 [ %.084.lcssa.i89, %.preheader149.i ], [ %i.nr, %.lr.ph173.i ] ; 3 uses
  %i.nj = or disjoint i32 %.1.lcssa.i91, 3
  %i.nk = icmp slt i32 %i.nj, %4
  br i1 %i.nk, label %.lr.ph178.i, label %.preheader147.i

.lr.ph173.i:                                      ; preds = %.preheader149.i, %.lr.ph173.i
  %.1172.i = phi i32 [ %i.nr, %.lr.ph173.i ], [ %.084.lcssa.i89, %.preheader149.i ]
  %.186171.i = phi ptr [ %i.nq, %.lr.ph173.i ], [ %.085.lcssa.i88, %.preheader149.i ] ; 3 uses
  %i.nl = load <8 x float>, ptr %.186171.i, align 1, !tbaa !49 ; 2 uses
  %i.nm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.nl) ; 2 uses
  %i.nn = fneg fast <8 x float> %i.nl
  %i.no = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nn, <8 x float> nofpclass(nan inf) %i.nm, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.np = fmul fast <8 x float> %i.no, %i.nm
  store <8 x float> %i.np, ptr %.186171.i, align 1, !tbaa !49
  %i.nq = getelementptr inbounds nuw i8, ptr %.186171.i, i64 32 ; 2 uses
  %i.nr = add nuw nsw i32 %.1172.i, 8             ; 3 uses
  %i.ns = or disjoint i32 %i.nr, 7
  %i.nt = icmp slt i32 %i.ns, %4
  br i1 %i.nt, label %.lr.ph173.i, label %.preheader148.i, !llvm.loop !278

.preheader147.i:                                  ; preds = %.lr.ph178.i, %.preheader148.i
  %.287.lcssa.i92 = phi ptr [ %.186.lcssa.i90, %.preheader148.i ], [ %i.oz, %.lr.ph178.i ] ; 5 uses
  %.2.lcssa.i93 = phi i32 [ %.1.lcssa.i91, %.preheader148.i ], [ %i.pa, %.lr.ph178.i ] ; 5 uses
  %i.nu = icmp slt i32 %.2.lcssa.i93, %4
  br i1 %i.nu, label %iter.check442, label %.preheader.i94

iter.check442:                                    ; preds = %.preheader147.i
  %i.nv = xor i32 %.2.lcssa.i93, -1
  %i.nw = add i32 %4, %i.nv                       ; 3 uses
  %i.nx = zext i32 %i.nw to i64
  %i.ny = add nuw nsw i64 %i.nx, 1                ; 5 uses
  %min.iters.check427 = icmp ult i32 %i.nw, 7
  br i1 %min.iters.check427, label %.lr.ph183.i.preheader, label %vector.main.loop.iter.check428

vector.main.loop.iter.check428:                   ; preds = %iter.check442
  %min.iters.check429 = icmp ult i32 %i.nw, 63
  br i1 %min.iters.check429, label %vec.epilog.ph446, label %vector.ph430

vector.ph430:                                     ; preds = %vector.main.loop.iter.check428
  %i.nz = and i64 %i.ny, 56
  %n.vec431 = and i64 %i.ny, 8589934528           ; 5 uses
  %i.oa = trunc i64 %n.vec431 to i32
  %i.ob = add i32 %.2.lcssa.i93, %i.oa
  %i.oc = shl nuw nsw i64 %n.vec431, 2
  %i.od = getelementptr i8, ptr %.287.lcssa.i92, i64 %i.oc
  br label %vector.body432

vector.body432:                                   ; preds = %vector.ph430, %vector.body432
  %index433 = phi i64 [ 0, %vector.ph430 ], [ %index.next439, %vector.body432 ] ; 2 uses
  %i.oe = shl i64 %index433, 2
  %next.gep434 = getelementptr i8, ptr %.287.lcssa.i92, i64 %i.oe ; 5 uses
  %i.of = getelementptr i8, ptr %next.gep434, i64 64 ; 2 uses
  %i.og = getelementptr i8, ptr %next.gep434, i64 128 ; 2 uses
  %i.oh = getelementptr i8, ptr %next.gep434, i64 192 ; 2 uses
  %wide.load435 = load <16 x float>, ptr %next.gep434, align 4, !tbaa !53
  %wide.load436 = load <16 x float>, ptr %i.of, align 4, !tbaa !53
  %wide.load437 = load <16 x float>, ptr %i.og, align 4, !tbaa !53
  %wide.load438 = load <16 x float>, ptr %i.oh, align 4, !tbaa !53
  %i.oi = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load435
  %i.oj = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load436
  %i.ok = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load437
  %i.ol = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load438
  store <16 x float> %i.oi, ptr %next.gep434, align 4, !tbaa !53
  store <16 x float> %i.oj, ptr %i.of, align 4, !tbaa !53
  store <16 x float> %i.ok, ptr %i.og, align 4, !tbaa !53
  store <16 x float> %i.ol, ptr %i.oh, align 4, !tbaa !53
  %index.next439 = add nuw i64 %index433, 64      ; 2 uses
  %i.om = icmp eq i64 %index.next439, %n.vec431
  br i1 %i.om, label %middle.block440, label %vector.body432, !llvm.loop !279

middle.block440:                                  ; preds = %vector.body432
  %cmp.n441 = icmp eq i64 %i.ny, %n.vec431
  br i1 %cmp.n441, label %.preheader.i94, label %vec.epilog.iter.check443

vec.epilog.iter.check443:                         ; preds = %middle.block440
  %min.epilog.iters.check445 = icmp eq i64 %i.nz, 0
  br i1 %min.epilog.iters.check445, label %.lr.ph183.i.preheader, label %vec.epilog.ph446, !prof !56

vec.epilog.ph446:                                 ; preds = %vector.main.loop.iter.check428, %vec.epilog.iter.check443
  %vec.epilog.resume.val447 = phi i64 [ %n.vec431, %vec.epilog.iter.check443 ], [ 0, %vector.main.loop.iter.check428 ]
  %n.vec448 = and i64 %i.ny, 8589934584           ; 4 uses
  %i.on = trunc i64 %n.vec448 to i32
  %i.oo = add i32 %.2.lcssa.i93, %i.on
  %i.op = shl nuw nsw i64 %n.vec448, 2
  %i.oq = getelementptr i8, ptr %.287.lcssa.i92, i64 %i.op
  br label %vec.epilog.vector.body449

vec.epilog.vector.body449:                        ; preds = %vec.epilog.vector.body449, %vec.epilog.ph446
  %index450 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph446 ], [ %index.next453, %vec.epilog.vector.body449 ] ; 2 uses
  %i.or = shl i64 %index450, 2
  %next.gep451 = getelementptr i8, ptr %.287.lcssa.i92, i64 %i.or ; 2 uses
  %wide.load452 = load <8 x float>, ptr %next.gep451, align 4, !tbaa !53
  %i.os = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load452
  store <8 x float> %i.os, ptr %next.gep451, align 4, !tbaa !53
  %index.next453 = add nuw i64 %index450, 8       ; 2 uses
  %i.ot = icmp eq i64 %index.next453, %n.vec448
  br i1 %i.ot, label %vec.epilog.middle.block454, label %vec.epilog.vector.body449, !llvm.loop !280

vec.epilog.middle.block454:                       ; preds = %vec.epilog.vector.body449
  %cmp.n455 = icmp eq i64 %i.ny, %n.vec448
  br i1 %cmp.n455, label %.preheader.i94, label %.lr.ph183.i.preheader

.lr.ph183.i.preheader:                            ; preds = %iter.check442, %vec.epilog.iter.check443, %vec.epilog.middle.block454
  %.3182.i.ph = phi i32 [ %.2.lcssa.i93, %iter.check442 ], [ %i.ob, %vec.epilog.iter.check443 ], [ %i.oo, %vec.epilog.middle.block454 ]
  %.388181.i.ph = phi ptr [ %.287.lcssa.i92, %iter.check442 ], [ %i.od, %vec.epilog.iter.check443 ], [ %i.oq, %vec.epilog.middle.block454 ]
  br label %.lr.ph183.i

.lr.ph178.i:                                      ; preds = %.preheader148.i, %.lr.ph178.i
  %.2177.i = phi i32 [ %i.pa, %.lr.ph178.i ], [ %.1.lcssa.i91, %.preheader148.i ]
  %.287176.i = phi ptr [ %i.oz, %.lr.ph178.i ], [ %.186.lcssa.i90, %.preheader148.i ] ; 3 uses
  %i.ou = load <4 x float>, ptr %.287176.i, align 1, !tbaa !49 ; 2 uses
  %i.ov = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.ou) ; 2 uses
  %i.ow = fneg fast <4 x float> %i.ou
  %i.ox = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ow, <4 x float> nofpclass(nan inf) %i.ov, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.oy = fmul fast <4 x float> %i.ox, %i.ov
  store <4 x float> %i.oy, ptr %.287176.i, align 1, !tbaa !49
  %i.oz = getelementptr inbounds nuw i8, ptr %.287176.i, i64 16 ; 2 uses
  %i.pa = add nuw nsw i32 %.2177.i, 4             ; 3 uses
  %i.pb = or disjoint i32 %i.pa, 3
  %i.pc = icmp slt i32 %i.pb, %4
  br i1 %i.pc, label %.lr.ph178.i, label %.preheader147.i, !llvm.loop !281

.preheader.i94:                                   ; preds = %.lr.ph183.i, %middle.block440, %vec.epilog.middle.block454, %.preheader147.i
  br i1 %or.cond.i87, label %.lr.ph188.preheader.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph188.preheader.i:                            ; preds = %.preheader.i94
  %wide.trip.count212.i = zext nneg i32 %1 to i64
  br label %.lr.ph188.i

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.preheader, %.lr.ph183.i
  %.3182.i = phi i32 [ %i.pg, %.lr.ph183.i ], [ %.3182.i.ph, %.lr.ph183.i.preheader ]
  %.388181.i = phi ptr [ %i.pf, %.lr.ph183.i ], [ %.388181.i.ph, %.lr.ph183.i.preheader ] ; 3 uses
  %i.pd = load float, ptr %.388181.i, align 4, !tbaa !53
  %i.pe = fdiv fast float 1.000000e+00, %i.pd
  store float %i.pe, ptr %.388181.i, align 4, !tbaa !53
  %i.pf = getelementptr inbounds nuw i8, ptr %.388181.i, i64 4
  %i.pg = add nuw nsw i32 %.3182.i, 1             ; 2 uses
  %exitcond207.not.i = icmp eq i32 %i.pg, %4
  br i1 %exitcond207.not.i, label %.preheader.i94, label %.lr.ph183.i, !llvm.loop !282

.lr.ph188.i:                                      ; preds = %._crit_edge189.i, %.lr.ph188.preheader.i
  %indvars.iv209.i = phi i64 [ 0, %.lr.ph188.preheader.i ], [ %indvars.iv.next210.i, %._crit_edge189.i ] ; 2 uses
  %i.ph = mul i64 %indvars.iv209.i, %3
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ph
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph188.i
  %.080186.i = phi i32 [ 0, %.lr.ph188.i ], [ %i.px, %bb.k ]
  %.081185.i = phi ptr [ %6, %.lr.ph188.i ], [ %i.pw, %bb.k ] ; 2 uses
  %.082184.i = phi ptr [ %i.pi, %.lr.ph188.i ], [ %i.pv, %bb.k ] ; 3 uses
  %i.pj = load <8 x i16>, ptr %.082184.i, align 1, !tbaa !49 ; 2 uses
  %17 = shufflevector <8 x i16> %i.pj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %18 = shufflevector <8 x i16> %i.pj, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.pk = shufflevector <8 x i16> %17, <8 x i16> %18, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pl = bitcast <16 x i16> %i.pk to <8 x float>
  %i.pm = load float, ptr %.081185.i, align 4, !tbaa !53
  %i.pn = insertelement <8 x float> poison, float %i.pm, i64 0
  %i.po = shufflevector <8 x float> %i.pn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pp = fmul fast <8 x float> %i.po, %i.pl
  %i.pq = bitcast <8 x float> %i.pp to <8 x i32>
  %i.pr = lshr <8 x i32> %i.pq, splat (i32 16)    ; 2 uses
  %i.ps = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pt = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.pu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ps, <4 x i32> %i.pt)
  store <8 x i16> %i.pu, ptr %.082184.i, align 1, !tbaa !49
  %i.pv = getelementptr inbounds nuw i8, ptr %.082184.i, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %.081185.i, i64 4
  %i.px = add nuw nsw i32 %.080186.i, 1           ; 2 uses
  %exitcond208.not.i = icmp eq i32 %i.px, %4
  br i1 %exitcond208.not.i, label %._crit_edge189.i, label %bb.k, !llvm.loop !283

._crit_edge189.i:                                 ; preds = %bb.k
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next210.i, %wide.trip.count212.i
  br i1 %exitcond213.not.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit, label %.lr.ph188.i, !llvm.loop !284

_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit: ; preds = %._crit_edge189.i, %bb.h, %.preheader.i94
  switch i32 %2, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit [
    i32 4, label %bb.l
    i32 1, label %bb.o
  ]

bb.l:                                             ; preds = %.split, %_ZN4ncnnL24softmax_bf16s_pack16_sseEPtimiPfS1_.exit, %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit
  %i.py = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not.i103 = icmp eq i32 %i.py, 0
  br i1 %.not.i103, label %.preheader149.i104, label %bb.m

.preheader149.i104:                               ; preds = %bb.l
  %i.pz = icmp sgt i32 %1, 0
  %i.qa = icmp sgt i32 %4, 0
  %or.cond.i105 = and i1 %i.pz, %i.qa             ; 2 uses
  br i1 %or.cond.i105, label %.lr.ph.preheader.i115, label %.preheader147.i106

.lr.ph.preheader.i115:                            ; preds = %.preheader149.i104
  %wide.trip.count.i116 = zext nneg i32 %1 to i64 ; 2 uses
  %xtraiter707 = and i32 %4, 1
  %i.qb = icmp eq i32 %4, 1
  %unroll_iter711 = and i32 %4, 2147483646
  %lcmp.mod709.not = icmp eq i32 %xtraiter707, 0
  %lcmp.mod710 = trunc i32 %4 to i1
  br label %.lr.ph.i117

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4ncnn34softmax_bf16s_pack4_sse_avx512bf16EPtimiPfS1_(ptr noundef %0, i32 noundef %1, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit

.lr.ph.i117:                                      ; preds = %._crit_edge.i121, %.lr.ph.preheader.i115
  %indvars.iv.i118 = phi i64 [ 0, %.lr.ph.preheader.i115 ], [ %indvars.iv.next.i122, %._crit_edge.i121 ] ; 2 uses
  %i.qc = mul i64 %indvars.iv.i118, %3
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.qc ; 2 uses
  br i1 %i.qb, label %.epil.preheader, label %.lr.ph.i117.new

.lr.ph.i117.new:                                  ; preds = %.lr.ph.i117, %.lr.ph.i117.new
  %.089152.i = phi ptr [ %i.rc, %.lr.ph.i117.new ], [ %i.qd, %.lr.ph.i117 ] ; 3 uses
  %.096150.i = phi ptr [ %i.rd, %.lr.ph.i117.new ], [ %5, %.lr.ph.i117 ] ; 4 uses
  %niter712 = phi i32 [ %niter712.next.1, %.lr.ph.i117.new ], [ 0, %.lr.ph.i117 ]
  %i.qe = load i64, ptr %.089152.i, align 1, !tbaa !49
  %i.qf = insertelement <2 x i64> poison, i64 %i.qe, i64 0
  %i.qg = bitcast <2 x i64> %i.qf to <8 x i16>
  %19 = shufflevector <8 x i16> %i.qg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.qh = bitcast <8 x i16> %19 to <4 x float>    ; 2 uses
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.qj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qh, <4 x float> nofpclass(nan inf) %i.qi) ; 2 uses
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ql = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.qj, <4 x float> nofpclass(nan inf) %i.qk)
  %i.qm = extractelement <4 x float> %i.ql, i64 0 ; 2 uses
  %i.qn = load float, ptr %.096150.i, align 4, !tbaa !53 ; 2 uses
  %i.qo = fcmp fast olt float %i.qn, %i.qm
  %.sroa.speculated.i119 = select i1 %i.qo, float %i.qm, float %i.qn
  store float %.sroa.speculated.i119, ptr %.096150.i, align 4, !tbaa !53
  %i.qp = getelementptr inbounds nuw i8, ptr %.089152.i, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %.096150.i, i64 4 ; 2 uses
  %i.qr = load i64, ptr %i.qp, align 1, !tbaa !49
  %i.qs = insertelement <2 x i64> poison, i64 %i.qr, i64 0
  %i.qt = bitcast <2 x i64> %i.qs to <8 x i16>
  %20 = shufflevector <8 x i16> %i.qt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.qu = bitcast <8 x i16> %20 to <4 x float>    ; 2 uses
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.qw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qu, <4 x float> nofpclass(nan inf) %i.qv) ; 2 uses
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.qy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.qw, <4 x float> nofpclass(nan inf) %i.qx)
  %i.qz = extractelement <4 x float> %i.qy, i64 0 ; 2 uses
  %i.ra = load float, ptr %i.qq, align 4, !tbaa !53 ; 2 uses
  %i.rb = fcmp fast olt float %i.ra, %i.qz
  %.sroa.speculated.i119.1 = select i1 %i.rb, float %i.qz, float %i.ra
  store float %.sroa.speculated.i119.1, ptr %i.qq, align 4, !tbaa !53
  %i.rc = getelementptr inbounds nuw i8, ptr %.089152.i, i64 16 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.096150.i, i64 8 ; 2 uses
  %niter712.next.1 = add nuw nsw i32 %niter712, 2 ; 2 uses
  %niter712.ncmp.1 = icmp eq i32 %niter712.next.1, %unroll_iter711
  br i1 %niter712.ncmp.1, label %._crit_edge.i121.unr-lcssa, label %.lr.ph.i117.new, !llvm.loop !285

._crit_edge.i121.unr-lcssa:                       ; preds = %.lr.ph.i117.new
  br i1 %lcmp.mod709.not, label %._crit_edge.i121, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i121.unr-lcssa, %.lr.ph.i117
  %.089152.i.epil.init = phi ptr [ %i.qd, %.lr.ph.i117 ], [ %i.rc, %._crit_edge.i121.unr-lcssa ]
  %.096150.i.epil.init = phi ptr [ %5, %.lr.ph.i117 ], [ %i.rd, %._crit_edge.i121.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod710)
  %i.re = load i64, ptr %.089152.i.epil.init, align 1, !tbaa !49
  %i.rf = insertelement <2 x i64> poison, i64 %i.re, i64 0
  %i.rg = bitcast <2 x i64> %i.rf to <8 x i16>
  %21 = shufflevector <8 x i16> %i.rg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.rh = bitcast <8 x i16> %21 to <4 x float>    ; 2 uses
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.rj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rh, <4 x float> nofpclass(nan inf) %i.ri) ; 2 uses
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.rl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.rj, <4 x float> nofpclass(nan inf) %i.rk)
  %i.rm = extractelement <4 x float> %i.rl, i64 0 ; 2 uses
  %i.rn = load float, ptr %.096150.i.epil.init, align 4, !tbaa !53 ; 2 uses
  %i.ro = fcmp fast olt float %i.rn, %i.rm
  %.sroa.speculated.i119.epil = select i1 %i.ro, float %i.rm, float %i.rn
  store float %.sroa.speculated.i119.epil, ptr %.096150.i.epil.init, align 4, !tbaa !53
  br label %._crit_edge.i121

._crit_edge.i121:                                 ; preds = %._crit_edge.i121.unr-lcssa, %.epil.preheader
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond197.not.i = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count.i116
  br i1 %exitcond197.not.i, label %.lr.ph160.i, label %.lr.ph.i117, !llvm.loop !286

.preheader147.i106:                               ; preds = %._crit_edge161.i, %.preheader149.i104
  br i1 %i.a, label %.lr.ph166.i114.preheader, label %.preheader146.i

.lr.ph166.i114.preheader:                         ; preds = %.preheader147.i106
  %i.rp = add nsw i32 %4, -16                     ; 2 uses
  %i.rq = lshr i32 %i.rp, 4                       ; 2 uses
  %i.rr = add nuw nsw i32 %i.rq, 1                ; 2 uses
  %i.rs = icmp eq i32 %i.rq, 0
  br i1 %i.rs, label %.lr.ph166.i114.epil.preheader, label %.lr.ph166.i114.preheader.new

.lr.ph166.i114.preheader.new:                     ; preds = %.lr.ph166.i114.preheader
  %unroll_iter718 = and i32 %i.rr, 536870910
  br label %.lr.ph166.i114

.lr.ph160.i:                                      ; preds = %._crit_edge.i121, %._crit_edge161.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %._crit_edge161.i ], [ 0, %._crit_edge.i121 ] ; 2 uses
  %i.rt = mul i64 %indvars.iv199.i, %3
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.rt
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph160.i
  %.090158.i = phi i32 [ 0, %.lr.ph160.i ], [ %i.tr, %bb.n ]
  %.091157.i = phi ptr [ %6, %.lr.ph160.i ], [ %i.tq, %bb.n ] ; 3 uses
  %.092156.i = phi ptr [ %5, %.lr.ph160.i ], [ %i.tp, %bb.n ] ; 2 uses
  %.093155.i = phi ptr [ %i.ru, %.lr.ph160.i ], [ %i.to, %bb.n ] ; 3 uses
  %i.rv = load i64, ptr %.093155.i, align 1, !tbaa !49
  %i.rw = insertelement <2 x i64> poison, i64 %i.rv, i64 0
  %i.rx = bitcast <2 x i64> %i.rw to <8 x i16>
  %22 = shufflevector <8 x i16> %i.rx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ry = bitcast <8 x i16> %22 to <4 x float>
  %i.rz = load float, ptr %.092156.i, align 4, !tbaa !53
  %i.sa = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sc = fsub fast <4 x float> %i.ry, %i.sb
  %i.sd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sc, <4 x float> splat (float f0x42B0C0A5))
  %i.se = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.sf = fmul fast <4 x float> %i.se, splat (float f0x3FB8AA3B)
  %i.sg = fadd fast <4 x float> %i.sf, splat (float 5.000000e-01) ; 2 uses
  %i.sh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sg)
  %i.si = sitofp fast <4 x i32> %i.sh to <4 x float> ; 2 uses
  %i.sj = fcmp fast olt <4 x float> %i.sg, %i.si
  %i.sk = select <4 x i1> %i.sj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.sl = fsub fast <4 x float> %i.si, %i.sk      ; 2 uses
  %i.sm = fneg fast <4 x float> %i.sl             ; 2 uses
  %i.sn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.sm, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.se)
  %i.so = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.sm, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.sn) ; 8 uses
  %i.sp = fmul fast <4 x float> %i.so, %i.so
  %i.sq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.so, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.sr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sq, <4 x float> nofpclass(nan inf) %i.so, <4 x float> splat (float f0x3C088908))
  %i.ss = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sr, <4 x float> nofpclass(nan inf) %i.so, <4 x float> splat (float f0x3D2AA9C1))
  %i.st = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ss, <4 x float> nofpclass(nan inf) %i.so, <4 x float> splat (float f0x3E2AAAAA))
  %i.su = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.st, <4 x float> nofpclass(nan inf) %i.so, <4 x float> splat (float 5.000000e-01))
  %i.sv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.su, <4 x float> nofpclass(nan inf) %i.sp, <4 x float> nofpclass(nan inf) %i.so)
  %i.sw = fadd fast <4 x float> %i.sv, splat (float 1.000000e+00)
  %i.sx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sl)
  %i.sy = shl <4 x i32> %i.sx, splat (i32 23)
  %i.sz = add <4 x i32> %i.sy, splat (i32 1065353216)
  %i.ta = bitcast <4 x i32> %i.sz to <4 x float>
  %i.tb = fmul fast <4 x float> %i.sw, %i.ta      ; 3 uses
  %i.tc = bitcast <4 x float> %i.tb to <4 x i32>
  %i.td = lshr <4 x i32> %i.tc, splat (i32 16)
  %i.te = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.td, <4 x i32> poison)
  %i.tf = bitcast <8 x i16> %i.te to <2 x i64>
  %i.tg = extractelement <2 x i64> %i.tf, i64 0
  store i64 %i.tg, ptr %.093155.i, align 1, !tbaa !49
  %i.th = shufflevector <4 x float> %i.tb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ti = fadd fast <4 x float> %i.th, %i.tb      ; 2 uses
  %i.tj = extractelement <4 x float> %i.ti, i64 1
  %i.tk = extractelement <4 x float> %i.ti, i64 0
  %i.tl = load float, ptr %.091157.i, align 4, !tbaa !53
  %i.tm = fadd fast float %i.tj, %i.tl
  %i.tn = fadd fast float %i.tm, %i.tk
  store float %i.tn, ptr %.091157.i, align 4, !tbaa !53
  %i.to = getelementptr inbounds nuw i8, ptr %.093155.i, i64 8
  %i.tp = getelementptr inbounds nuw i8, ptr %.092156.i, i64 4
  %i.tq = getelementptr inbounds nuw i8, ptr %.091157.i, i64 4
  %i.tr = add nuw nsw i32 %.090158.i, 1           ; 2 uses
  %exitcond198.not.i = icmp eq i32 %i.tr, %4
  br i1 %exitcond198.not.i, label %._crit_edge161.i, label %bb.n, !llvm.loop !287

._crit_edge161.i:                                 ; preds = %bb.n
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %exitcond203.not.i = icmp eq i64 %indvars.iv.next200.i, %wide.trip.count.i116
  br i1 %exitcond203.not.i, label %.preheader147.i106, label %.lr.ph160.i, !llvm.loop !288

.preheader146.loopexit.i.unr-lcssa:               ; preds = %.lr.ph166.i114
  %i.ts = and i32 %i.rp, 16
  %lcmp.mod715.not.not = icmp eq i32 %i.ts, 0
  br i1 %lcmp.mod715.not.not, label %.lr.ph166.i114.epil.preheader, label %.preheader146.loopexit.i

.lr.ph166.i114.epil.preheader:                    ; preds = %.preheader146.loopexit.i.unr-lcssa, %.lr.ph166.i114.preheader
  %.085164.i.epil.init = phi ptr [ %6, %.lr.ph166.i114.preheader ], [ %i.un, %.preheader146.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod717 = trunc i32 %i.rr to i1
  tail call void @llvm.assume(i1 %lcmp.mod717)
  %i.tt = load <16 x float>, ptr %.085164.i.epil.init, align 1, !tbaa !49 ; 2 uses
  %i.tu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.tt, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.tv = fneg fast <16 x float> %i.tt
  %i.tw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.tv, <16 x float> nofpclass(nan inf) %i.tu, <16 x float> splat (float 2.000000e+00))
  %i.tx = fmul fast <16 x float> %i.tw, %i.tu
  store <16 x float> %i.tx, ptr %.085164.i.epil.init, align 1, !tbaa !49
  %i.ty = getelementptr inbounds nuw i8, ptr %.085164.i.epil.init, i64 64
  br label %.preheader146.loopexit.i

.preheader146.loopexit.i:                         ; preds = %.preheader146.loopexit.i.unr-lcssa, %.lr.ph166.i114.epil.preheader
  %.lcssa675 = phi ptr [ %i.un, %.preheader146.loopexit.i.unr-lcssa ], [ %i.ty, %.lr.ph166.i114.epil.preheader ]
  %i.tz = and i32 %4, 2147483632
  br label %.preheader146.i

.preheader146.i:                                  ; preds = %.preheader146.loopexit.i, %.preheader147.i106
  %.085.lcssa.i107 = phi ptr [ %6, %.preheader147.i106 ], [ %.lcssa675, %.preheader146.loopexit.i ] ; 2 uses
  %.084.lcssa.i108 = phi i32 [ 0, %.preheader147.i106 ], [ %i.tz, %.preheader146.loopexit.i ] ; 3 uses
  %i.ua = or disjoint i32 %.084.lcssa.i108, 7
  %i.ub = icmp slt i32 %i.ua, %4
  br i1 %i.ub, label %.lr.ph170.i, label %.preheader145.i

.lr.ph166.i114:                                   ; preds = %.lr.ph166.i114, %.lr.ph166.i114.preheader.new
  %.085164.i = phi ptr [ %6, %.lr.ph166.i114.preheader.new ], [ %i.un, %.lr.ph166.i114 ] ; 4 uses
  %niter719 = phi i32 [ 0, %.lr.ph166.i114.preheader.new ], [ %niter719.next.1, %.lr.ph166.i114 ]
  %i.uc = load <16 x float>, ptr %.085164.i, align 1, !tbaa !49 ; 2 uses
  %i.ud = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.uc, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ue = fneg fast <16 x float> %i.uc
  %i.uf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ue, <16 x float> nofpclass(nan inf) %i.ud, <16 x float> splat (float 2.000000e+00))
  %i.ug = fmul fast <16 x float> %i.uf, %i.ud
  store <16 x float> %i.ug, ptr %.085164.i, align 1, !tbaa !49
  %i.uh = getelementptr inbounds nuw i8, ptr %.085164.i, i64 64 ; 2 uses
  %i.ui = load <16 x float>, ptr %i.uh, align 1, !tbaa !49 ; 2 uses
  %i.uj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.ui, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.uk = fneg fast <16 x float> %i.ui
  %i.ul = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.uk, <16 x float> nofpclass(nan inf) %i.uj, <16 x float> splat (float 2.000000e+00))
  %i.um = fmul fast <16 x float> %i.ul, %i.uj
  store <16 x float> %i.um, ptr %i.uh, align 1, !tbaa !49
  %i.un = getelementptr inbounds nuw i8, ptr %.085164.i, i64 128 ; 3 uses
  %niter719.next.1 = add i32 %niter719, 2         ; 2 uses
  %niter719.ncmp.1.not = icmp eq i32 %niter719.next.1, %unroll_iter718
  br i1 %niter719.ncmp.1.not, label %.preheader146.loopexit.i.unr-lcssa, label %.lr.ph166.i114, !llvm.loop !289

.preheader145.i:                                  ; preds = %.lr.ph170.i, %.preheader146.i
  %.186.lcssa.i109 = phi ptr [ %.085.lcssa.i107, %.preheader146.i ], [ %i.uv, %.lr.ph170.i ] ; 2 uses
  %.1.lcssa.i110 = phi i32 [ %.084.lcssa.i108, %.preheader146.i ], [ %i.uw, %.lr.ph170.i ] ; 3 uses
  %i.uo = or disjoint i32 %.1.lcssa.i110, 3
  %i.up = icmp slt i32 %i.uo, %4
  br i1 %i.up, label %.lr.ph175.i, label %.preheader144.i

.lr.ph170.i:                                      ; preds = %.preheader146.i, %.lr.ph170.i
  %.1169.i = phi i32 [ %i.uw, %.lr.ph170.i ], [ %.084.lcssa.i108, %.preheader146.i ]
  %.186168.i = phi ptr [ %i.uv, %.lr.ph170.i ], [ %.085.lcssa.i107, %.preheader146.i ] ; 3 uses
  %i.uq = load <8 x float>, ptr %.186168.i, align 1, !tbaa !49 ; 2 uses
  %i.ur = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.uq) ; 2 uses
  %i.us = fneg fast <8 x float> %i.uq
  %i.ut = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.us, <8 x float> nofpclass(nan inf) %i.ur, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.uu = fmul fast <8 x float> %i.ut, %i.ur
  store <8 x float> %i.uu, ptr %.186168.i, align 1, !tbaa !49
  %i.uv = getelementptr inbounds nuw i8, ptr %.186168.i, i64 32 ; 2 uses
  %i.uw = add nuw nsw i32 %.1169.i, 8             ; 3 uses
  %i.ux = or disjoint i32 %i.uw, 7
  %i.uy = icmp slt i32 %i.ux, %4
  br i1 %i.uy, label %.lr.ph170.i, label %.preheader145.i, !llvm.loop !290

.preheader144.i:                                  ; preds = %.lr.ph175.i, %.preheader145.i
  %.287.lcssa.i111 = phi ptr [ %.186.lcssa.i109, %.preheader145.i ], [ %i.we, %.lr.ph175.i ] ; 5 uses
  %.2.lcssa.i112 = phi i32 [ %.1.lcssa.i110, %.preheader145.i ], [ %i.wf, %.lr.ph175.i ] ; 5 uses
  %i.uz = icmp slt i32 %.2.lcssa.i112, %4
  br i1 %i.uz, label %iter.check473, label %.preheader.i113

iter.check473:                                    ; preds = %.preheader144.i
  %i.va = xor i32 %.2.lcssa.i112, -1
  %i.vb = add i32 %4, %i.va                       ; 3 uses
  %i.vc = zext i32 %i.vb to i64
  %i.vd = add nuw nsw i64 %i.vc, 1                ; 5 uses
  %min.iters.check458 = icmp ult i32 %i.vb, 7
  br i1 %min.iters.check458, label %.lr.ph180.i.preheader, label %vector.main.loop.iter.check459

vector.main.loop.iter.check459:                   ; preds = %iter.check473
  %min.iters.check460 = icmp ult i32 %i.vb, 63
  br i1 %min.iters.check460, label %vec.epilog.ph477, label %vector.ph461

vector.ph461:                                     ; preds = %vector.main.loop.iter.check459
  %i.ve = and i64 %i.vd, 56
  %n.vec462 = and i64 %i.vd, 8589934528           ; 5 uses
  %i.vf = trunc i64 %n.vec462 to i32
  %i.vg = add i32 %.2.lcssa.i112, %i.vf
  %i.vh = shl nuw nsw i64 %n.vec462, 2
  %i.vi = getelementptr i8, ptr %.287.lcssa.i111, i64 %i.vh
  br label %vector.body463

vector.body463:                                   ; preds = %vector.ph461, %vector.body463
  %index464 = phi i64 [ 0, %vector.ph461 ], [ %index.next470, %vector.body463 ] ; 2 uses
  %i.vj = shl i64 %index464, 2
  %next.gep465 = getelementptr i8, ptr %.287.lcssa.i111, i64 %i.vj ; 5 uses
  %i.vk = getelementptr i8, ptr %next.gep465, i64 64 ; 2 uses
  %i.vl = getelementptr i8, ptr %next.gep465, i64 128 ; 2 uses
  %i.vm = getelementptr i8, ptr %next.gep465, i64 192 ; 2 uses
  %wide.load466 = load <16 x float>, ptr %next.gep465, align 4, !tbaa !53
  %wide.load467 = load <16 x float>, ptr %i.vk, align 4, !tbaa !53
  %wide.load468 = load <16 x float>, ptr %i.vl, align 4, !tbaa !53
  %wide.load469 = load <16 x float>, ptr %i.vm, align 4, !tbaa !53
  %i.vn = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load466
  %i.vo = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load467
  %i.vp = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load468
  %i.vq = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load469
  store <16 x float> %i.vn, ptr %next.gep465, align 4, !tbaa !53
  store <16 x float> %i.vo, ptr %i.vk, align 4, !tbaa !53
  store <16 x float> %i.vp, ptr %i.vl, align 4, !tbaa !53
  store <16 x float> %i.vq, ptr %i.vm, align 4, !tbaa !53
  %index.next470 = add nuw i64 %index464, 64      ; 2 uses
  %i.vr = icmp eq i64 %index.next470, %n.vec462
  br i1 %i.vr, label %middle.block471, label %vector.body463, !llvm.loop !291

middle.block471:                                  ; preds = %vector.body463
  %cmp.n472 = icmp eq i64 %i.vd, %n.vec462
  br i1 %cmp.n472, label %.preheader.i113, label %vec.epilog.iter.check474

vec.epilog.iter.check474:                         ; preds = %middle.block471
  %min.epilog.iters.check476 = icmp eq i64 %i.ve, 0
  br i1 %min.epilog.iters.check476, label %.lr.ph180.i.preheader, label %vec.epilog.ph477, !prof !56

vec.epilog.ph477:                                 ; preds = %vector.main.loop.iter.check459, %vec.epilog.iter.check474
  %vec.epilog.resume.val478 = phi i64 [ %n.vec462, %vec.epilog.iter.check474 ], [ 0, %vector.main.loop.iter.check459 ]
  %n.vec479 = and i64 %i.vd, 8589934584           ; 4 uses
  %i.vs = trunc i64 %n.vec479 to i32
  %i.vt = add i32 %.2.lcssa.i112, %i.vs
  %i.vu = shl nuw nsw i64 %n.vec479, 2
  %i.vv = getelementptr i8, ptr %.287.lcssa.i111, i64 %i.vu
  br label %vec.epilog.vector.body480

vec.epilog.vector.body480:                        ; preds = %vec.epilog.vector.body480, %vec.epilog.ph477
  %index481 = phi i64 [ %vec.epilog.resume.val478, %vec.epilog.ph477 ], [ %index.next484, %vec.epilog.vector.body480 ] ; 2 uses
  %i.vw = shl i64 %index481, 2
  %next.gep482 = getelementptr i8, ptr %.287.lcssa.i111, i64 %i.vw ; 2 uses
  %wide.load483 = load <8 x float>, ptr %next.gep482, align 4, !tbaa !53
  %i.vx = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load483
  store <8 x float> %i.vx, ptr %next.gep482, align 4, !tbaa !53
  %index.next484 = add nuw i64 %index481, 8       ; 2 uses
  %i.vy = icmp eq i64 %index.next484, %n.vec479
  br i1 %i.vy, label %vec.epilog.middle.block485, label %vec.epilog.vector.body480, !llvm.loop !292

vec.epilog.middle.block485:                       ; preds = %vec.epilog.vector.body480
  %cmp.n486 = icmp eq i64 %i.vd, %n.vec479
  br i1 %cmp.n486, label %.preheader.i113, label %.lr.ph180.i.preheader

.lr.ph180.i.preheader:                            ; preds = %iter.check473, %vec.epilog.iter.check474, %vec.epilog.middle.block485
  %.3179.i.ph = phi i32 [ %.2.lcssa.i112, %iter.check473 ], [ %i.vg, %vec.epilog.iter.check474 ], [ %i.vt, %vec.epilog.middle.block485 ]
  %.388178.i.ph = phi ptr [ %.287.lcssa.i111, %iter.check473 ], [ %i.vi, %vec.epilog.iter.check474 ], [ %i.vv, %vec.epilog.middle.block485 ]
  br label %.lr.ph180.i

.lr.ph175.i:                                      ; preds = %.preheader145.i, %.lr.ph175.i
  %.2174.i = phi i32 [ %i.wf, %.lr.ph175.i ], [ %.1.lcssa.i110, %.preheader145.i ]
  %.287173.i = phi ptr [ %i.we, %.lr.ph175.i ], [ %.186.lcssa.i109, %.preheader145.i ] ; 3 uses
  %i.vz = load <4 x float>, ptr %.287173.i, align 1, !tbaa !49 ; 2 uses
  %i.wa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.vz) ; 2 uses
  %i.wb = fneg fast <4 x float> %i.vz
  %i.wc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.wb, <4 x float> nofpclass(nan inf) %i.wa, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.wd = fmul fast <4 x float> %i.wc, %i.wa
  store <4 x float> %i.wd, ptr %.287173.i, align 1, !tbaa !49
  %i.we = getelementptr inbounds nuw i8, ptr %.287173.i, i64 16 ; 2 uses
  %i.wf = add nuw nsw i32 %.2174.i, 4             ; 3 uses
  %i.wg = or disjoint i32 %i.wf, 3
  %i.wh = icmp slt i32 %i.wg, %4
  br i1 %i.wh, label %.lr.ph175.i, label %.preheader144.i, !llvm.loop !293

.preheader.i113:                                  ; preds = %.lr.ph180.i, %middle.block471, %vec.epilog.middle.block485, %.preheader144.i
  br i1 %or.cond.i105, label %.lr.ph185.preheader.i, label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit

.lr.ph185.preheader.i:                            ; preds = %.preheader.i113
  %wide.trip.count209.i = zext nneg i32 %1 to i64
  %xtraiter721 = and i32 %4, 1
  %i.wi = icmp eq i32 %4, 1
  %unroll_iter725 = and i32 %4, 2147483646
  %lcmp.mod723.not = icmp eq i32 %xtraiter721, 0
  %lcmp.mod724 = trunc i32 %4 to i1
  br label %.lr.ph185.i

.lr.ph180.i:                                      ; preds = %.lr.ph180.i.preheader, %.lr.ph180.i
  %.3179.i = phi i32 [ %i.wm, %.lr.ph180.i ], [ %.3179.i.ph, %.lr.ph180.i.preheader ]
  %.388178.i = phi ptr [ %i.wl, %.lr.ph180.i ], [ %.388178.i.ph, %.lr.ph180.i.preheader ] ; 3 uses
  %i.wj = load float, ptr %.388178.i, align 4, !tbaa !53
  %i.wk = fdiv fast float 1.000000e+00, %i.wj
  store float %i.wk, ptr %.388178.i, align 4, !tbaa !53
  %i.wl = getelementptr inbounds nuw i8, ptr %.388178.i, i64 4
  %i.wm = add nuw nsw i32 %.3179.i, 1             ; 2 uses
  %exitcond204.not.i = icmp eq i32 %i.wm, %4
  br i1 %exitcond204.not.i, label %.preheader.i113, label %.lr.ph180.i, !llvm.loop !294

.lr.ph185.i:                                      ; preds = %._crit_edge186.i, %.lr.ph185.preheader.i
  %indvars.iv206.i = phi i64 [ 0, %.lr.ph185.preheader.i ], [ %indvars.iv.next207.i, %._crit_edge186.i ] ; 2 uses
  %i.wn = mul i64 %indvars.iv206.i, %3
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.wn ; 2 uses
  br i1 %i.wi, label %.epil.preheader720, label %.lr.ph185.i.new

.lr.ph185.i.new:                                  ; preds = %.lr.ph185.i, %.lr.ph185.i.new
  %.081182.i = phi ptr [ %i.xs, %.lr.ph185.i.new ], [ %6, %.lr.ph185.i ] ; 3 uses
  %.082181.i = phi ptr [ %i.xr, %.lr.ph185.i.new ], [ %i.wo, %.lr.ph185.i ] ; 4 uses
  %niter726 = phi i32 [ %niter726.next.1, %.lr.ph185.i.new ], [ 0, %.lr.ph185.i ]
  %i.wp = load i64, ptr %.082181.i, align 1, !tbaa !49
  %i.wq = insertelement <2 x i64> poison, i64 %i.wp, i64 0
  %i.wr = bitcast <2 x i64> %i.wq to <8 x i16>
  %23 = shufflevector <8 x i16> %i.wr, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ws = bitcast <8 x i16> %23 to <4 x float>
  %i.wt = load float, ptr %.081182.i, align 4, !tbaa !53
  %i.wu = insertelement <4 x float> poison, float %i.wt, i64 0
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ww = fmul fast <4 x float> %i.wv, %i.ws
  %i.wx = bitcast <4 x float> %i.ww to <4 x i32>
  %i.wy = lshr <4 x i32> %i.wx, splat (i32 16)
  %i.wz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.wy, <4 x i32> poison)
  %i.xa = bitcast <8 x i16> %i.wz to <2 x i64>
  %i.xb = extractelement <2 x i64> %i.xa, i64 0
  store i64 %i.xb, ptr %.082181.i, align 1, !tbaa !49
  %i.xc = getelementptr inbounds nuw i8, ptr %.082181.i, i64 8 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.081182.i, i64 4
  %i.xe = load i64, ptr %i.xc, align 1, !tbaa !49
  %i.xf = insertelement <2 x i64> poison, i64 %i.xe, i64 0
  %i.xg = bitcast <2 x i64> %i.xf to <8 x i16>
  %24 = shufflevector <8 x i16> %i.xg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.xh = bitcast <8 x i16> %24 to <4 x float>
  %i.xi = load float, ptr %i.xd, align 4, !tbaa !53
  %i.xj = insertelement <4 x float> poison, float %i.xi, i64 0
  %i.xk = shufflevector <4 x float> %i.xj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xl = fmul fast <4 x float> %i.xk, %i.xh
  %i.xm = bitcast <4 x float> %i.xl to <4 x i32>
  %i.xn = lshr <4 x i32> %i.xm, splat (i32 16)
  %i.xo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.xn, <4 x i32> poison)
  %i.xp = bitcast <8 x i16> %i.xo to <2 x i64>
  %i.xq = extractelement <2 x i64> %i.xp, i64 0
  store i64 %i.xq, ptr %i.xc, align 1, !tbaa !49
  %i.xr = getelementptr inbounds nuw i8, ptr %.082181.i, i64 16 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.081182.i, i64 8 ; 2 uses
  %niter726.next.1 = add nuw nsw i32 %niter726, 2 ; 2 uses
  %niter726.ncmp.1 = icmp eq i32 %niter726.next.1, %unroll_iter725
  br i1 %niter726.ncmp.1, label %._crit_edge186.i.unr-lcssa, label %.lr.ph185.i.new, !llvm.loop !295

._crit_edge186.i.unr-lcssa:                       ; preds = %.lr.ph185.i.new
  br i1 %lcmp.mod723.not, label %._crit_edge186.i, label %.epil.preheader720

.epil.preheader720:                               ; preds = %._crit_edge186.i.unr-lcssa, %.lr.ph185.i
  %.081182.i.epil.init = phi ptr [ %6, %.lr.ph185.i ], [ %i.xs, %._crit_edge186.i.unr-lcssa ]
  %.082181.i.epil.init = phi ptr [ %i.wo, %.lr.ph185.i ], [ %i.xr, %._crit_edge186.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod724)
  %i.xt = load i64, ptr %.082181.i.epil.init, align 1, !tbaa !49
  %i.xu = insertelement <2 x i64> poison, i64 %i.xt, i64 0
  %i.xv = bitcast <2 x i64> %i.xu to <8 x i16>
  %25 = shufflevector <8 x i16> %i.xv, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.xw = bitcast <8 x i16> %25 to <4 x float>
  %i.xx = load float, ptr %.081182.i.epil.init, align 4, !tbaa !53
  %i.xy = insertelement <4 x float> poison, float %i.xx, i64 0
  %i.xz = shufflevector <4 x float> %i.xy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ya = fmul fast <4 x float> %i.xz, %i.xw
  %i.yb = bitcast <4 x float> %i.ya to <4 x i32>
  %i.yc = lshr <4 x i32> %i.yb, splat (i32 16)
  %i.yd = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.yc, <4 x i32> poison)
  %i.ye = bitcast <8 x i16> %i.yd to <2 x i64>
  %i.yf = extractelement <2 x i64> %i.ye, i64 0
  store i64 %i.yf, ptr %.082181.i.epil.init, align 1, !tbaa !49
  br label %._crit_edge186.i

._crit_edge186.i:                                 ; preds = %._crit_edge186.i.unr-lcssa, %.epil.preheader720
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %exitcond210.not.i = icmp eq i64 %indvars.iv.next207.i, %wide.trip.count209.i
  br i1 %exitcond210.not.i, label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit, label %.lr.ph185.i, !llvm.loop !296

_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit: ; preds = %._crit_edge186.i, %bb.m, %.preheader.i113
  %i.yg = icmp eq i32 %2, 1
  br i1 %i.yg, label %bb.o, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit

bb.o:                                             ; preds = %.split, %_ZN4ncnnL24softmax_bf16s_pack16_sseEPtimiPfS1_.exit, %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit, %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit
  %i.yh = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not.i124 = icmp eq i32 %i.yh, 0
  br i1 %.not.i124, label %.preheader337.i, label %bb.p

.preheader337.i:                                  ; preds = %bb.o
  %i.yi = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %i.yi, label %.lr.ph362.i, label %.preheader329.i

.lr.ph362.i:                                      ; preds = %.preheader337.i
  %i.yj = and i32 %4, -16                         ; 2 uses
  %wide.trip.count.i126 = zext nneg i32 %1 to i64 ; 2 uses
  %i.yk = add i32 %4, -1                          ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4ncnn34softmax_bf16s_pack1_sse_avx512bf16EPtimiPfS1_(ptr noundef %0, i32 noundef %1, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit

bb.q:                                             ; preds = %._crit_edge.i130, %.lr.ph362.i
  %indvars.iv.i127 = phi i64 [ 0, %.lr.ph362.i ], [ %indvars.iv.next.i131, %._crit_edge.i130 ] ; 2 uses
  %i.yl = mul i64 %indvars.iv.i127, %3
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.yl ; 2 uses
  br i1 %i.a, label %.lr.ph.i134, label %.preheader336.i

.preheader336.i:                                  ; preds = %.lr.ph.i134, %bb.q
  %.0208.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.yj, %.lr.ph.i134 ] ; 3 uses
  %.0183.lcssa.i = phi ptr [ %5, %bb.q ], [ %i.yz, %.lr.ph.i134 ] ; 2 uses
  %.0182.lcssa.i = phi ptr [ %i.ym, %bb.q ], [ %i.yy, %.lr.ph.i134 ] ; 2 uses
  %i.yn = or disjoint i32 %.0208.lcssa.i, 7
  %i.yo = icmp slt i32 %i.yn, %4
  br i1 %i.yo, label %.lr.ph346.i, label %.preheader335.i

.lr.ph.i134:                                      ; preds = %bb.q, %.lr.ph.i134
  %.0182340.i = phi ptr [ %i.yy, %.lr.ph.i134 ], [ %i.ym, %bb.q ] ; 2 uses
  %.0183339.i = phi ptr [ %i.yz, %.lr.ph.i134 ], [ %5, %bb.q ] ; 3 uses
  %.0208338.i = phi i32 [ %i.za, %.lr.ph.i134 ], [ 0, %bb.q ]
  %i.yp = load <16 x i16>, ptr %.0182340.i, align 1, !tbaa !49 ; 2 uses
  %26 = shufflevector <16 x i16> %i.yp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %27 = shufflevector <16 x i16> %i.yp, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.yq = shufflevector <16 x i16> %26, <16 x i16> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.yr = shufflevector <16 x i16> %26, <16 x i16> %27, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ys = bitcast <16 x i16> %i.yq to <8 x i32>
  %i.yt = bitcast <16 x i16> %i.yr to <8 x i32>
  %i.yu = shufflevector <8 x i32> %i.ys, <8 x i32> %i.yt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yv = bitcast <16 x i32> %i.yu to <16 x float>
  %i.yw = load <16 x float>, ptr %.0183339.i, align 1, !tbaa !49
  %i.yx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.yw, <16 x float> nofpclass(nan inf) %i.yv, i32 4)
  store <16 x float> %i.yx, ptr %.0183339.i, align 1, !tbaa !49
  %i.yy = getelementptr inbounds nuw i8, ptr %.0182340.i, i64 32 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.0183339.i, i64 64 ; 2 uses
  %i.za = add nuw nsw i32 %.0208338.i, 16         ; 2 uses
  %i.zb = or disjoint i32 %i.za, 15
  %i.zc = icmp slt i32 %i.zb, %4
  br i1 %i.zc, label %.lr.ph.i134, label %.preheader336.i, !llvm.loop !297

.preheader335.i:                                  ; preds = %.lr.ph346.i, %.preheader336.i
  %.1209.lcssa.i = phi i32 [ %.0208.lcssa.i, %.preheader336.i ], [ %i.zm, %.lr.ph346.i ] ; 3 uses
  %.1184.lcssa.i = phi ptr [ %.0183.lcssa.i, %.preheader336.i ], [ %i.zl, %.lr.ph346.i ] ; 2 uses
  %.1.lcssa.i128 = phi ptr [ %.0182.lcssa.i, %.preheader336.i ], [ %i.zk, %.lr.ph346.i ] ; 2 uses
  %i.zd = or disjoint i32 %.1209.lcssa.i, 3
  %i.ze = icmp slt i32 %i.zd, %4
  br i1 %i.ze, label %.lr.ph353.i, label %.preheader334.i

.lr.ph346.i:                                      ; preds = %.preheader336.i, %.lr.ph346.i
  %.1345.i = phi ptr [ %i.zk, %.lr.ph346.i ], [ %.0182.lcssa.i, %.preheader336.i ] ; 2 uses
  %.1184344.i = phi ptr [ %i.zl, %.lr.ph346.i ], [ %.0183.lcssa.i, %.preheader336.i ] ; 3 uses
  %.1209343.i = phi i32 [ %i.zm, %.lr.ph346.i ], [ %.0208.lcssa.i, %.preheader336.i ]
  %i.zf = load <8 x i16>, ptr %.1345.i, align 1, !tbaa !49 ; 2 uses
  %28 = shufflevector <8 x i16> %i.zf, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %29 = shufflevector <8 x i16> %i.zf, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.zg = shufflevector <8 x i16> %28, <8 x i16> %29, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zh = bitcast <16 x i16> %i.zg to <8 x float>
  %i.zi = load <8 x float>, ptr %.1184344.i, align 1, !tbaa !49
  %i.zj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.zi, <8 x float> nofpclass(nan inf) %i.zh)
  store <8 x float> %i.zj, ptr %.1184344.i, align 1, !tbaa !49
  %i.zk = getelementptr inbounds nuw i8, ptr %.1345.i, i64 16 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.1184344.i, i64 32 ; 2 uses
  %i.zm = add nuw nsw i32 %.1209343.i, 8          ; 3 uses
  %i.zn = or disjoint i32 %i.zm, 7
  %i.zo = icmp slt i32 %i.zn, %4
  br i1 %i.zo, label %.lr.ph346.i, label %.preheader335.i, !llvm.loop !298

.preheader334.i:                                  ; preds = %.lr.ph353.i, %.preheader335.i
  %.2210.lcssa.i = phi i32 [ %.1209.lcssa.i, %.preheader335.i ], [ %i.abz, %.lr.ph353.i ] ; 5 uses
  %.2185.lcssa.i = phi ptr [ %.1184.lcssa.i, %.preheader335.i ], [ %i.aby, %.lr.ph353.i ] ; 5 uses
  %.2.lcssa.i129 = phi ptr [ %.1.lcssa.i128, %.preheader335.i ], [ %i.abx, %.lr.ph353.i ] ; 5 uses
  %i.zp = icmp slt i32 %.2210.lcssa.i, %4
  br i1 %i.zp, label %iter.check509, label %._crit_edge.i130

iter.check509:                                    ; preds = %.preheader334.i
  %i.zq = sub i32 %i.yk, %.2210.lcssa.i           ; 3 uses
  %i.zr = zext i32 %i.zq to i64
  %i.zs = add nuw nsw i64 %i.zr, 1                ; 5 uses
  %min.iters.check489 = icmp ult i32 %i.zq, 7
  br i1 %min.iters.check489, label %.lr.ph360.i.preheader, label %vector.main.loop.iter.check490

vector.main.loop.iter.check490:                   ; preds = %iter.check509
  %min.iters.check491 = icmp ult i32 %i.zq, 63
  br i1 %min.iters.check491, label %vec.epilog.ph513, label %vector.ph492

vector.ph492:                                     ; preds = %vector.main.loop.iter.check490
  %i.zt = and i64 %i.zs, 56
  %n.vec493 = and i64 %i.zs, 8589934528           ; 6 uses
  %i.zu = shl nuw nsw i64 %n.vec493, 1
  %i.zv = getelementptr i8, ptr %.2.lcssa.i129, i64 %i.zu
  %i.zw = shl nuw nsw i64 %n.vec493, 2
  %i.zx = getelementptr i8, ptr %.2185.lcssa.i, i64 %i.zw
  %i.zy = trunc i64 %n.vec493 to i32
  %i.zz = add i32 %.2210.lcssa.i, %i.zy
  br label %vector.body494

vector.body494:                                   ; preds = %vector.ph492, %vector.body494
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next506, %vector.body494 ] ; 3 uses
  %i.aaa = shl i64 %index495, 1
  %next.gep496 = getelementptr i8, ptr %.2.lcssa.i129, i64 %i.aaa ; 4 uses
  %i.aab = shl i64 %index495, 2
  %next.gep497 = getelementptr i8, ptr %.2185.lcssa.i, i64 %i.aab ; 5 uses
  %i.aac = getelementptr i8, ptr %next.gep496, i64 32
  %i.aad = getelementptr i8, ptr %next.gep496, i64 64
  %i.aae = getelementptr i8, ptr %next.gep496, i64 96
  %wide.load498 = load <16 x i16>, ptr %next.gep496, align 2, !tbaa !62
  %wide.load499 = load <16 x i16>, ptr %i.aac, align 2, !tbaa !62
  %wide.load500 = load <16 x i16>, ptr %i.aad, align 2, !tbaa !62
  %wide.load501 = load <16 x i16>, ptr %i.aae, align 2, !tbaa !62
  %i.aaf = zext <16 x i16> %wide.load498 to <16 x i32>
  %i.aag = zext <16 x i16> %wide.load499 to <16 x i32>
  %i.aah = zext <16 x i16> %wide.load500 to <16 x i32>
  %i.aai = zext <16 x i16> %wide.load501 to <16 x i32>
  %i.aaj = shl nuw <16 x i32> %i.aaf, splat (i32 16)
  %i.aak = shl nuw <16 x i32> %i.aag, splat (i32 16)
  %i.aal = shl nuw <16 x i32> %i.aah, splat (i32 16)
  %i.aam = shl nuw <16 x i32> %i.aai, splat (i32 16)
  %i.aan = bitcast <16 x i32> %i.aaj to <16 x float> ; 2 uses
  %i.aao = bitcast <16 x i32> %i.aak to <16 x float> ; 2 uses
  %i.aap = bitcast <16 x i32> %i.aal to <16 x float> ; 2 uses
  %i.aaq = bitcast <16 x i32> %i.aam to <16 x float> ; 2 uses
  %i.aar = getelementptr i8, ptr %next.gep497, i64 64 ; 2 uses
  %i.aas = getelementptr i8, ptr %next.gep497, i64 128 ; 2 uses
  %i.aat = getelementptr i8, ptr %next.gep497, i64 192 ; 2 uses
  %wide.load502 = load <16 x float>, ptr %next.gep497, align 4, !tbaa !53 ; 2 uses
  %wide.load503 = load <16 x float>, ptr %i.aar, align 4, !tbaa !53 ; 2 uses
  %wide.load504 = load <16 x float>, ptr %i.aas, align 4, !tbaa !53 ; 2 uses
  %wide.load505 = load <16 x float>, ptr %i.aat, align 4, !tbaa !53 ; 2 uses
  %i.aau = fcmp fast olt <16 x float> %wide.load502, %i.aan
  %i.aav = fcmp fast olt <16 x float> %wide.load503, %i.aao
  %i.aaw = fcmp fast olt <16 x float> %wide.load504, %i.aap
  %i.aax = fcmp fast olt <16 x float> %wide.load505, %i.aaq
  %i.aay = select <16 x i1> %i.aau, <16 x float> %i.aan, <16 x float> %wide.load502
  %i.aaz = select <16 x i1> %i.aav, <16 x float> %i.aao, <16 x float> %wide.load503
  %i.aba = select <16 x i1> %i.aaw, <16 x float> %i.aap, <16 x float> %wide.load504
  %i.abb = select <16 x i1> %i.aax, <16 x float> %i.aaq, <16 x float> %wide.load505
  store <16 x float> %i.aay, ptr %next.gep497, align 4, !tbaa !53
  store <16 x float> %i.aaz, ptr %i.aar, align 4, !tbaa !53
  store <16 x float> %i.aba, ptr %i.aas, align 4, !tbaa !53
  store <16 x float> %i.abb, ptr %i.aat, align 4, !tbaa !53
  %index.next506 = add nuw i64 %index495, 64      ; 2 uses
  %i.abc = icmp eq i64 %index.next506, %n.vec493
  br i1 %i.abc, label %middle.block507, label %vector.body494, !llvm.loop !299

middle.block507:                                  ; preds = %vector.body494
  %cmp.n508 = icmp eq i64 %i.zs, %n.vec493
  br i1 %cmp.n508, label %._crit_edge.i130, label %vec.epilog.iter.check510

vec.epilog.iter.check510:                         ; preds = %middle.block507
  %min.epilog.iters.check512 = icmp eq i64 %i.zt, 0
  br i1 %min.epilog.iters.check512, label %.lr.ph360.i.preheader, label %vec.epilog.ph513, !prof !56

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check490, %vec.epilog.iter.check510
  %vec.epilog.resume.val514 = phi i64 [ %n.vec493, %vec.epilog.iter.check510 ], [ 0, %vector.main.loop.iter.check490 ]
  %n.vec515 = and i64 %i.zs, 8589934584           ; 5 uses
  %i.abd = shl nuw nsw i64 %n.vec515, 1
  %i.abe = getelementptr i8, ptr %.2.lcssa.i129, i64 %i.abd
  %i.abf = shl nuw nsw i64 %n.vec515, 2
  %i.abg = getelementptr i8, ptr %.2185.lcssa.i, i64 %i.abf
  %i.abh = trunc i64 %n.vec515 to i32
  %i.abi = add i32 %.2210.lcssa.i, %i.abh
  br label %vec.epilog.vector.body516

vec.epilog.vector.body516:                        ; preds = %vec.epilog.vector.body516, %vec.epilog.ph513
  %index517 = phi i64 [ %vec.epilog.resume.val514, %vec.epilog.ph513 ], [ %index.next522, %vec.epilog.vector.body516 ] ; 3 uses
  %i.abj = shl i64 %index517, 1
  %next.gep518 = getelementptr i8, ptr %.2.lcssa.i129, i64 %i.abj
  %i.abk = shl i64 %index517, 2
  %next.gep519 = getelementptr i8, ptr %.2185.lcssa.i, i64 %i.abk ; 2 uses
  %wide.load520 = load <8 x i16>, ptr %next.gep518, align 2, !tbaa !62
  %i.abl = zext <8 x i16> %wide.load520 to <8 x i32>
  %i.abm = shl nuw <8 x i32> %i.abl, splat (i32 16)
  %i.abn = bitcast <8 x i32> %i.abm to <8 x float> ; 2 uses
  %wide.load521 = load <8 x float>, ptr %next.gep519, align 4, !tbaa !53 ; 2 uses
  %i.abo = fcmp fast olt <8 x float> %wide.load521, %i.abn
  %i.abp = select <8 x i1> %i.abo, <8 x float> %i.abn, <8 x float> %wide.load521
  store <8 x float> %i.abp, ptr %next.gep519, align 4, !tbaa !53
  %index.next522 = add nuw i64 %index517, 8       ; 2 uses
  %i.abq = icmp eq i64 %index.next522, %n.vec515
  br i1 %i.abq, label %vec.epilog.middle.block523, label %vec.epilog.vector.body516, !llvm.loop !300

vec.epilog.middle.block523:                       ; preds = %vec.epilog.vector.body516
  %cmp.n524 = icmp eq i64 %i.zs, %n.vec515
  br i1 %cmp.n524, label %._crit_edge.i130, label %.lr.ph360.i.preheader

.lr.ph360.i.preheader:                            ; preds = %iter.check509, %vec.epilog.iter.check510, %vec.epilog.middle.block523
  %.3359.i.ph = phi ptr [ %.2.lcssa.i129, %iter.check509 ], [ %i.zv, %vec.epilog.iter.check510 ], [ %i.abe, %vec.epilog.middle.block523 ]
  %.3186358.i.ph = phi ptr [ %.2185.lcssa.i, %iter.check509 ], [ %i.zx, %vec.epilog.iter.check510 ], [ %i.abg, %vec.epilog.middle.block523 ]
  %.3211357.i.ph = phi i32 [ %.2210.lcssa.i, %iter.check509 ], [ %i.zz, %vec.epilog.iter.check510 ], [ %i.abi, %vec.epilog.middle.block523 ]
  br label %.lr.ph360.i

.lr.ph353.i:                                      ; preds = %.preheader335.i, %.lr.ph353.i
  %.2352.i = phi ptr [ %i.abx, %.lr.ph353.i ], [ %.1.lcssa.i128, %.preheader335.i ] ; 2 uses
  %.2185351.i = phi ptr [ %i.aby, %.lr.ph353.i ], [ %.1184.lcssa.i, %.preheader335.i ] ; 3 uses
  %.2210350.i = phi i32 [ %i.abz, %.lr.ph353.i ], [ %.1209.lcssa.i, %.preheader335.i ]
  %i.abr = load i64, ptr %.2352.i, align 1, !tbaa !49
  %i.abs = insertelement <2 x i64> poison, i64 %i.abr, i64 0
  %i.abt = bitcast <2 x i64> %i.abs to <8 x i16>
  %30 = shufflevector <8 x i16> %i.abt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.abu = bitcast <8 x i16> %30 to <4 x float>
  %i.abv = load <4 x float>, ptr %.2185351.i, align 1, !tbaa !49
  %i.abw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.abv, <4 x float> nofpclass(nan inf) %i.abu)
  store <4 x float> %i.abw, ptr %.2185351.i, align 1, !tbaa !49
  %i.abx = getelementptr inbounds nuw i8, ptr %.2352.i, i64 8 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.2185351.i, i64 16 ; 2 uses
  %i.abz = add nuw nsw i32 %.2210350.i, 4         ; 3 uses
  %i.aca = or disjoint i32 %i.abz, 3
  %i.acb = icmp slt i32 %i.aca, %4
  br i1 %i.acb, label %.lr.ph353.i, label %.preheader334.i, !llvm.loop !301

.lr.ph360.i:                                      ; preds = %.lr.ph360.i.preheader, %.lr.ph360.i
  %.3359.i = phi ptr [ %i.aci, %.lr.ph360.i ], [ %.3359.i.ph, %.lr.ph360.i.preheader ] ; 2 uses
  %.3186358.i = phi ptr [ %i.acj, %.lr.ph360.i ], [ %.3186358.i.ph, %.lr.ph360.i.preheader ] ; 3 uses
  %.3211357.i = phi i32 [ %i.ack, %.lr.ph360.i ], [ %.3211357.i.ph, %.lr.ph360.i.preheader ]
  %i.acc = load i16, ptr %.3359.i, align 2, !tbaa !62
  %i.acd = zext i16 %i.acc to i32
  %i.ace = shl nuw i32 %i.acd, 16
  %i.acf = bitcast i32 %i.ace to float            ; 2 uses
  %i.acg = load float, ptr %.3186358.i, align 4, !tbaa !53 ; 2 uses
  %i.ach = fcmp fast olt float %i.acg, %i.acf
  %.sroa.speculated.i132 = select i1 %i.ach, float %i.acf, float %i.acg
  store float %.sroa.speculated.i132, ptr %.3186358.i, align 4, !tbaa !53
  %i.aci = getelementptr inbounds nuw i8, ptr %.3359.i, i64 2
  %i.acj = getelementptr inbounds nuw i8, ptr %.3186358.i, i64 4
  %i.ack = add nuw nsw i32 %.3211357.i, 1         ; 2 uses
  %exitcond.not.i133 = icmp eq i32 %i.ack, %4
  br i1 %exitcond.not.i133, label %._crit_edge.i130, label %.lr.ph360.i, !llvm.loop !302

._crit_edge.i130:                                 ; preds = %.lr.ph360.i, %middle.block507, %vec.epilog.middle.block523, %.preheader334.i
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %exitcond482.not.i = icmp eq i64 %indvars.iv.next.i131, %wide.trip.count.i126
  br i1 %exitcond482.not.i, label %.preheader333.i, label %bb.q, !llvm.loop !303

.preheader329.i:                                  ; preds = %._crit_edge396.i, %.preheader337.i
  br i1 %i.a, label %.lr.ph401.i.preheader, label %.preheader328.i

.lr.ph401.i.preheader:                            ; preds = %.preheader329.i
  %i.acl = add nsw i32 %4, -16                    ; 2 uses
  %i.acm = lshr i32 %i.acl, 4                     ; 2 uses
  %i.acn = add nuw nsw i32 %i.acm, 1              ; 2 uses
  %i.aco = icmp eq i32 %i.acm, 0
  br i1 %i.aco, label %.lr.ph401.i.epil.preheader, label %.lr.ph401.i.preheader.new

.lr.ph401.i.preheader.new:                        ; preds = %.lr.ph401.i.preheader
  %unroll_iter734 = and i32 %i.acn, 536870910
  br label %.lr.ph401.i

.preheader333.i:                                  ; preds = %._crit_edge.i130, %._crit_edge396.i
  %indvars.iv484.i = phi i64 [ %indvars.iv.next485.i, %._crit_edge396.i ], [ 0, %._crit_edge.i130 ] ; 2 uses
  %i.acp = mul i64 %indvars.iv484.i, %3
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.acp ; 2 uses
  br i1 %i.a, label %.lr.ph368.i, label %.preheader332.i

.preheader332.i:                                  ; preds = %.lr.ph368.i, %.preheader333.i
  %.0225.lcssa.i = phi i32 [ 0, %.preheader333.i ], [ %i.yj, %.lr.ph368.i ] ; 3 uses
  %.0221.lcssa.i = phi ptr [ %6, %.preheader333.i ], [ %i.aek, %.lr.ph368.i ] ; 2 uses
  %.0217.lcssa.i = phi ptr [ %5, %.preheader333.i ], [ %i.aej, %.lr.ph368.i ] ; 2 uses
  %.0213.lcssa.i = phi ptr [ %i.acq, %.preheader333.i ], [ %i.aei, %.lr.ph368.i ] ; 2 uses
  %i.acr = or disjoint i32 %.0225.lcssa.i, 7
  %i.acs = icmp slt i32 %i.acr, %4
  br i1 %i.acs, label %.lr.ph377.i, label %.preheader331.i

.lr.ph368.i:                                      ; preds = %.preheader333.i, %.lr.ph368.i
  %.0213366.i = phi ptr [ %i.aei, %.lr.ph368.i ], [ %i.acq, %.preheader333.i ] ; 3 uses
  %.0217365.i = phi ptr [ %i.aej, %.lr.ph368.i ], [ %5, %.preheader333.i ] ; 2 uses
  %.0221364.i = phi ptr [ %i.aek, %.lr.ph368.i ], [ %6, %.preheader333.i ] ; 3 uses
  %.0225363.i = phi i32 [ %i.ael, %.lr.ph368.i ], [ 0, %.preheader333.i ]
  %i.act = load <16 x i16>, ptr %.0213366.i, align 1, !tbaa !49 ; 2 uses
  %31 = shufflevector <16 x i16> %i.act, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %32 = shufflevector <16 x i16> %i.act, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.acu = shufflevector <16 x i16> %31, <16 x i16> %32, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.acv = shufflevector <16 x i16> %31, <16 x i16> %32, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.acw = bitcast <16 x i16> %i.acu to <8 x i32>
  %i.acx = bitcast <16 x i16> %i.acv to <8 x i32>
  %i.acy = shufflevector <8 x i32> %i.acw, <8 x i32> %i.acx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.acz = bitcast <16 x i32> %i.acy to <16 x float>
  %i.ada = load <16 x float>, ptr %.0217365.i, align 1, !tbaa !49
  %i.adb = load <16 x float>, ptr %.0221364.i, align 1, !tbaa !49
  %i.adc = fsub fast <16 x float> %i.acz, %i.ada
  %i.add = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.adc, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ade = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.add, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.adf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ade, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.adg = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.adf, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.adh = fcmp fast ogt <16 x float> %i.adg, %i.adf
  %i.adi = fadd fast <16 x float> %i.adg, splat (float -1.000000e+00)
  %i.adj = select fast <16 x i1> %i.adh, <16 x float> %i.adi, <16 x float> %i.adg ; 2 uses
  %i.adk = fneg fast <16 x float> %i.adj          ; 2 uses
  %i.adl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.adk, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ade)
  %i.adm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.adk, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.adl) ; 8 uses
  %i.adn = fmul fast <16 x float> %i.adm, %i.adm
  %i.ado = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adm, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.adp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ado, <16 x float> nofpclass(nan inf) %i.adm, <16 x float> splat (float f0x3C088908))
  %i.adq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adp, <16 x float> nofpclass(nan inf) %i.adm, <16 x float> splat (float f0x3D2AA9C1))
  %i.adr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adq, <16 x float> nofpclass(nan inf) %i.adm, <16 x float> splat (float f0x3E2AAAAA))
  %i.ads = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adr, <16 x float> nofpclass(nan inf) %i.adm, <16 x float> splat (float 5.000000e-01))
  %i.adt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ads, <16 x float> nofpclass(nan inf) %i.adn, <16 x float> nofpclass(nan inf) %i.adm)
  %i.adu = fadd fast <16 x float> %i.adt, splat (float 1.000000e+00)
  %i.adv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.adj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.adw = shl <16 x i32> %i.adv, splat (i32 23)
  %i.adx = add <16 x i32> %i.adw, splat (i32 1065353216)
  %i.ady = bitcast <16 x i32> %i.adx to <16 x float>
  %i.adz = fmul fast <16 x float> %i.adu, %i.ady  ; 2 uses
  %i.aea = bitcast <16 x float> %i.adz to <16 x i32>
  %i.aeb = lshr <16 x i32> %i.aea, splat (i32 16) ; 2 uses
  %i.aec = shufflevector <16 x i32> %i.aeb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aed = shufflevector <16 x i32> %i.aeb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aee = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aec, <8 x i32> %i.aed)
  %i.aef = bitcast <16 x i16> %i.aee to <4 x i64>
  %i.aeg = shufflevector <4 x i64> %i.aef, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aeg, ptr %.0213366.i, align 1, !tbaa !49
  %i.aeh = fadd fast <16 x float> %i.adz, %i.adb
  store <16 x float> %i.aeh, ptr %.0221364.i, align 1, !tbaa !49
  %i.aei = getelementptr inbounds nuw i8, ptr %.0213366.i, i64 32 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.0217365.i, i64 64 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.0221364.i, i64 64 ; 2 uses
  %i.ael = add nuw nsw i32 %.0225363.i, 16        ; 2 uses
  %i.aem = or disjoint i32 %i.ael, 15
  %i.aen = icmp slt i32 %i.aem, %4
  br i1 %i.aen, label %.lr.ph368.i, label %.preheader332.i, !llvm.loop !304

.preheader331.i:                                  ; preds = %.lr.ph377.i, %.preheader332.i
  %.1226.lcssa.i = phi i32 [ %.0225.lcssa.i, %.preheader332.i ], [ %i.agc, %.lr.ph377.i ] ; 3 uses
  %.1222.lcssa.i = phi ptr [ %.0221.lcssa.i, %.preheader332.i ], [ %i.agb, %.lr.ph377.i ] ; 2 uses
  %.1218.lcssa.i = phi ptr [ %.0217.lcssa.i, %.preheader332.i ], [ %i.aga, %.lr.ph377.i ] ; 2 uses
  %.1214.lcssa.i = phi ptr [ %.0213.lcssa.i, %.preheader332.i ], [ %i.afz, %.lr.ph377.i ] ; 2 uses
  %i.aeo = or disjoint i32 %.1226.lcssa.i, 3
  %i.aep = icmp slt i32 %i.aeo, %4
  br i1 %i.aep, label %.lr.ph386.i, label %.preheader330.i

.lr.ph377.i:                                      ; preds = %.preheader332.i, %.lr.ph377.i
  %.1214376.i = phi ptr [ %i.afz, %.lr.ph377.i ], [ %.0213.lcssa.i, %.preheader332.i ] ; 3 uses
  %.1218375.i = phi ptr [ %i.aga, %.lr.ph377.i ], [ %.0217.lcssa.i, %.preheader332.i ] ; 2 uses
  %.1222374.i = phi ptr [ %i.agb, %.lr.ph377.i ], [ %.0221.lcssa.i, %.preheader332.i ] ; 3 uses
  %.1226373.i = phi i32 [ %i.agc, %.lr.ph377.i ], [ %.0225.lcssa.i, %.preheader332.i ]
  %i.aeq = load <8 x i16>, ptr %.1214376.i, align 1, !tbaa !49 ; 2 uses
  %33 = shufflevector <8 x i16> %i.aeq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %34 = shufflevector <8 x i16> %i.aeq, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.aer = shufflevector <8 x i16> %33, <8 x i16> %34, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aes = bitcast <16 x i16> %i.aer to <8 x float>
  %i.aet = load <8 x float>, ptr %.1218375.i, align 1, !tbaa !49
  %i.aeu = load <8 x float>, ptr %.1222374.i, align 1, !tbaa !49
  %i.aev = fsub fast <8 x float> %i.aes, %i.aet
  %i.aew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aev, <8 x float> splat (float f0x42B0C0A5))
  %i.aex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aew, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aex, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aez = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aey, i32 1) ; 2 uses
  %i.afa = fcmp fast ogt <8 x float> %i.aez, %i.aey
  %i.afb = select <8 x i1> %i.afa, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.afc = fsub fast <8 x float> %i.aez, %i.afb   ; 2 uses
  %i.afd = fneg fast <8 x float> %i.afc           ; 2 uses
  %i.afe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.afd, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.aex)
  %i.aff = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.afd, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.afe) ; 8 uses
  %i.afg = fmul fast <8 x float> %i.aff, %i.aff
  %i.afh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aff, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.afi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afh, <8 x float> nofpclass(nan inf) %i.aff, <8 x float> splat (float f0x3C088908))
  %i.afj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afi, <8 x float> nofpclass(nan inf) %i.aff, <8 x float> splat (float f0x3D2AA9C1))
  %i.afk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afj, <8 x float> nofpclass(nan inf) %i.aff, <8 x float> splat (float f0x3E2AAAAA))
  %i.afl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afk, <8 x float> nofpclass(nan inf) %i.aff, <8 x float> splat (float 5.000000e-01))
  %i.afm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afl, <8 x float> nofpclass(nan inf) %i.afg, <8 x float> nofpclass(nan inf) %i.aff)
  %i.afn = fadd fast <8 x float> %i.afm, splat (float 1.000000e+00)
  %i.afo = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afc)
  %i.afp = shl <8 x i32> %i.afo, splat (i32 23)
  %i.afq = add <8 x i32> %i.afp, splat (i32 1065353216)
  %i.afr = bitcast <8 x i32> %i.afq to <8 x float>
  %i.afs = fmul fast <8 x float> %i.afn, %i.afr   ; 2 uses
  %i.aft = bitcast <8 x float> %i.afs to <8 x i32>
  %i.afu = lshr <8 x i32> %i.aft, splat (i32 16)  ; 2 uses
  %i.afv = shufflevector <8 x i32> %i.afu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afw = shufflevector <8 x i32> %i.afu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.afx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.afv, <4 x i32> %i.afw)
  store <8 x i16> %i.afx, ptr %.1214376.i, align 1, !tbaa !49
  %i.afy = fadd fast <8 x float> %i.afs, %i.aeu
  store <8 x float> %i.afy, ptr %.1222374.i, align 1, !tbaa !49
  %i.afz = getelementptr inbounds nuw i8, ptr %.1214376.i, i64 16 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.1218375.i, i64 32 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %.1222374.i, i64 32 ; 2 uses
  %i.agc = add nuw nsw i32 %.1226373.i, 8         ; 3 uses
  %i.agd = or disjoint i32 %i.agc, 7
  %i.age = icmp slt i32 %i.agd, %4
  br i1 %i.age, label %.lr.ph377.i, label %.preheader331.i, !llvm.loop !305

.preheader330.i:                                  ; preds = %.lr.ph386.i, %.preheader331.i
  %.2227.lcssa.i = phi i32 [ %.1226.lcssa.i, %.preheader331.i ], [ %i.akk, %.lr.ph386.i ] ; 7 uses
  %.2223.lcssa.i = phi ptr [ %.1222.lcssa.i, %.preheader331.i ], [ %i.akj, %.lr.ph386.i ] ; 8 uses
  %.2219.lcssa.i = phi ptr [ %.1218.lcssa.i, %.preheader331.i ], [ %i.aki, %.lr.ph386.i ] ; 8 uses
  %.2215.lcssa.i = phi ptr [ %.1214.lcssa.i, %.preheader331.i ], [ %i.akh, %.lr.ph386.i ] ; 6 uses
  %i.agf = icmp slt i32 %.2227.lcssa.i, %4
  br i1 %i.agf, label %iter.check548, label %._crit_edge396.i

iter.check548:                                    ; preds = %.preheader330.i
  %i.agg = xor i32 %.2227.lcssa.i, -1
  %i.agh = add i32 %4, %i.agg                     ; 3 uses
  %i.agi = zext i32 %i.agh to i64
  %i.agj = add nuw nsw i64 %i.agi, 1              ; 5 uses
  %min.iters.check532 = icmp ult i32 %i.agh, 3
  br i1 %min.iters.check532, label %.lr.ph395.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check548
  %i.agk = sub i32 %i.yk, %.2227.lcssa.i
  %i.agl = zext i32 %i.agk to i64
  %i.agm = shl nuw nsw i64 %i.agl, 2
  %i.agn = add nuw nsw i64 %i.agm, 4              ; 2 uses
  %i.ago = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.agn
  %i.agp = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.agn
  %bound0 = icmp ult ptr %.2223.lcssa.i, %i.agp
  %bound1 = icmp ult ptr %.2219.lcssa.i, %i.ago
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph395.i.preheader, label %vector.main.loop.iter.check533

vector.main.loop.iter.check533:                   ; preds = %vector.memcheck
  %min.iters.check534 = icmp ult i32 %i.agh, 15
  br i1 %min.iters.check534, label %vec.epilog.ph552, label %vector.ph535

vector.ph535:                                     ; preds = %vector.main.loop.iter.check533
  %i.agq = and i64 %i.agj, 12
  %n.vec536 = and i64 %i.agj, 8589934576          ; 6 uses
  %i.agr = shl nuw nsw i64 %n.vec536, 1
  %i.ags = getelementptr i8, ptr %.2215.lcssa.i, i64 %i.agr
  %i.agt = shl nuw nsw i64 %n.vec536, 2           ; 2 uses
  %i.agu = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.agt
  %i.agv = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.agt
  %i.agw = trunc i64 %n.vec536 to i32
  %i.agx = add i32 %.2227.lcssa.i, %i.agw
  br label %vector.body537

vector.body537:                                   ; preds = %vector.ph535, %vector.body537
  %index538 = phi i64 [ 0, %vector.ph535 ], [ %index.next545, %vector.body537 ] ; 3 uses
  %i.agy = shl i64 %index538, 1
  %next.gep539 = getelementptr i8, ptr %.2215.lcssa.i, i64 %i.agy ; 2 uses
  %i.agz = shl i64 %index538, 2                   ; 2 uses
  %next.gep540 = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.agz
  %next.gep541 = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.agz ; 2 uses
  %wide.load542 = load <16 x i16>, ptr %next.gep539, align 2, !tbaa !62
  %i.aha = zext <16 x i16> %wide.load542 to <16 x i32>
  %i.ahb = shl nuw <16 x i32> %i.aha, splat (i32 16)
  %i.ahc = bitcast <16 x i32> %i.ahb to <16 x float>
  %wide.load543 = load <16 x float>, ptr %next.gep540, align 4, !tbaa !53, !alias.scope !327
  %i.ahd = fsub fast <16 x float> %i.ahc, %wide.load543
  %i.ahe = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.ahd) ; 2 uses
  %i.ahf = bitcast <16 x float> %i.ahe to <16 x i32>
  %i.ahg = lshr <16 x i32> %i.ahf, splat (i32 16)
  %i.ahh = trunc nuw nsw <16 x i32> %i.ahg to <16 x i16>
  store <16 x i16> %i.ahh, ptr %next.gep539, align 2, !tbaa !62
  %wide.load544 = load <16 x float>, ptr %next.gep541, align 4, !tbaa !53, !alias.scope !328, !noalias !327
  %i.ahi = fadd fast <16 x float> %i.ahe, %wide.load544
  store <16 x float> %i.ahi, ptr %next.gep541, align 4, !tbaa !53, !alias.scope !328, !noalias !327
  %index.next545 = add nuw i64 %index538, 16      ; 2 uses
  %i.ahj = icmp eq i64 %index.next545, %n.vec536
  br i1 %i.ahj, label %middle.block546, label %vector.body537, !llvm.loop !309

middle.block546:                                  ; preds = %vector.body537
  %cmp.n547 = icmp eq i64 %i.agj, %n.vec536
  br i1 %cmp.n547, label %._crit_edge396.i, label %vec.epilog.iter.check549

vec.epilog.iter.check549:                         ; preds = %middle.block546
  %min.epilog.iters.check551 = icmp eq i64 %i.agq, 0
  br i1 %min.epilog.iters.check551, label %.lr.ph395.i.preheader, label %vec.epilog.ph552, !prof !57

vec.epilog.ph552:                                 ; preds = %vector.main.loop.iter.check533, %vec.epilog.iter.check549
  %vec.epilog.resume.val553 = phi i64 [ %n.vec536, %vec.epilog.iter.check549 ], [ 0, %vector.main.loop.iter.check533 ]
  %n.vec554 = and i64 %i.agj, 8589934588          ; 5 uses
  %i.ahk = shl nuw nsw i64 %n.vec554, 1
  %i.ahl = getelementptr i8, ptr %.2215.lcssa.i, i64 %i.ahk
  %i.ahm = shl nuw nsw i64 %n.vec554, 2           ; 2 uses
  %i.ahn = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.ahm
  %i.aho = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.ahm
  %i.ahp = trunc i64 %n.vec554 to i32
  %i.ahq = add i32 %.2227.lcssa.i, %i.ahp
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph552
  %index556 = phi i64 [ %vec.epilog.resume.val553, %vec.epilog.ph552 ], [ %index.next563, %vec.epilog.vector.body555 ] ; 3 uses
  %i.ahr = shl i64 %index556, 1
  %next.gep557 = getelementptr i8, ptr %.2215.lcssa.i, i64 %i.ahr ; 2 uses
  %i.ahs = shl i64 %index556, 2                   ; 2 uses
  %next.gep558 = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.ahs
  %next.gep559 = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.ahs ; 2 uses
  %wide.load560 = load <4 x i16>, ptr %next.gep557, align 2, !tbaa !62
  %i.aht = zext <4 x i16> %wide.load560 to <4 x i32>
  %i.ahu = shl nuw <4 x i32> %i.aht, splat (i32 16)
  %i.ahv = bitcast <4 x i32> %i.ahu to <4 x float>
  %wide.load561 = load <4 x float>, ptr %next.gep558, align 4, !tbaa !53, !alias.scope !327
  %i.ahw = fsub fast <4 x float> %i.ahv, %wide.load561
  %i.ahx = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.ahw) ; 2 uses
  %i.ahy = bitcast <4 x float> %i.ahx to <4 x i32>
  %i.ahz = lshr <4 x i32> %i.ahy, splat (i32 16)
  %i.aia = trunc nuw nsw <4 x i32> %i.ahz to <4 x i16>
  store <4 x i16> %i.aia, ptr %next.gep557, align 2, !tbaa !62
  %wide.load562 = load <4 x float>, ptr %next.gep559, align 4, !tbaa !53, !alias.scope !328, !noalias !327
  %i.aib = fadd fast <4 x float> %i.ahx, %wide.load562
  store <4 x float> %i.aib, ptr %next.gep559, align 4, !tbaa !53, !alias.scope !328, !noalias !327
  %index.next563 = add nuw i64 %index556, 4       ; 2 uses
  %i.aic = icmp eq i64 %index.next563, %n.vec554
  br i1 %i.aic, label %vec.epilog.middle.block564, label %vec.epilog.vector.body555, !llvm.loop !310

vec.epilog.middle.block564:                       ; preds = %vec.epilog.vector.body555
  %cmp.n565 = icmp eq i64 %i.agj, %n.vec554
  br i1 %cmp.n565, label %._crit_edge396.i, label %.lr.ph395.i.preheader

.lr.ph395.i.preheader:                            ; preds = %iter.check548, %vector.memcheck, %vec.epilog.iter.check549, %vec.epilog.middle.block564
  %.3216394.i.ph = phi ptr [ %.2215.lcssa.i, %iter.check548 ], [ %.2215.lcssa.i, %vector.memcheck ], [ %i.ags, %vec.epilog.iter.check549 ], [ %i.ahl, %vec.epilog.middle.block564 ] ; 4 uses
  %.3220393.i.ph = phi ptr [ %.2219.lcssa.i, %iter.check548 ], [ %.2219.lcssa.i, %vector.memcheck ], [ %i.agu, %vec.epilog.iter.check549 ], [ %i.ahn, %vec.epilog.middle.block564 ] ; 3 uses
  %.3224392.i.ph = phi ptr [ %.2223.lcssa.i, %iter.check548 ], [ %.2223.lcssa.i, %vector.memcheck ], [ %i.agv, %vec.epilog.iter.check549 ], [ %i.aho, %vec.epilog.middle.block564 ] ; 4 uses
  %.3228391.i.ph = phi i32 [ %.2227.lcssa.i, %iter.check548 ], [ %.2227.lcssa.i, %vector.memcheck ], [ %i.agx, %vec.epilog.iter.check549 ], [ %i.ahq, %vec.epilog.middle.block564 ] ; 4 uses
  %i.aid = sub i32 %4, %.3228391.i.ph
  %.neg = add i32 %.3228391.i.ph, 1
  %xtraiter727 = and i32 %i.aid, 1
  %lcmp.mod728.not = icmp eq i32 %xtraiter727, 0
  br i1 %lcmp.mod728.not, label %.lr.ph395.i.prol.loopexit, label %.lr.ph395.i.prol

.lr.ph395.i.prol:                                 ; preds = %.lr.ph395.i.preheader
  %i.aie = load i16, ptr %.3216394.i.ph, align 2, !tbaa !62
  %i.aif = zext i16 %i.aie to i32
  %i.aig = shl nuw i32 %i.aif, 16
  %i.aih = bitcast i32 %i.aig to float
  %i.aii = load float, ptr %.3220393.i.ph, align 4, !tbaa !53
  %i.aij = fsub fast float %i.aih, %i.aii
  %i.aik = tail call fast float @llvm.exp.f32(float %i.aij) ; 2 uses
  %i.ail = bitcast float %i.aik to i32
  %i.aim = lshr i32 %i.ail, 16
  %i.ain = trunc nuw nsw i32 %i.aim to i16
  store i16 %i.ain, ptr %.3216394.i.ph, align 2, !tbaa !62
  %i.aio = load float, ptr %.3224392.i.ph, align 4, !tbaa !53
  %i.aip = fadd fast float %i.aik, %i.aio
  store float %i.aip, ptr %.3224392.i.ph, align 4, !tbaa !53
  %i.aiq = getelementptr inbounds nuw i8, ptr %.3216394.i.ph, i64 2
  %i.air = getelementptr inbounds nuw i8, ptr %.3220393.i.ph, i64 4
  %i.ais = getelementptr inbounds nuw i8, ptr %.3224392.i.ph, i64 4
  %i.ait = add nuw nsw i32 %.3228391.i.ph, 1
  br label %.lr.ph395.i.prol.loopexit

.lr.ph395.i.prol.loopexit:                        ; preds = %.lr.ph395.i.prol, %.lr.ph395.i.preheader
  %.3216394.i.unr = phi ptr [ %.3216394.i.ph, %.lr.ph395.i.preheader ], [ %i.aiq, %.lr.ph395.i.prol ]
  %.3220393.i.unr = phi ptr [ %.3220393.i.ph, %.lr.ph395.i.preheader ], [ %i.air, %.lr.ph395.i.prol ]
  %.3224392.i.unr = phi ptr [ %.3224392.i.ph, %.lr.ph395.i.preheader ], [ %i.ais, %.lr.ph395.i.prol ]
  %.3228391.i.unr = phi i32 [ %.3228391.i.ph, %.lr.ph395.i.preheader ], [ %i.ait, %.lr.ph395.i.prol ]
  %i.aiu = icmp eq i32 %4, %.neg
  br i1 %i.aiu, label %._crit_edge396.i, label %.lr.ph395.i

.lr.ph386.i:                                      ; preds = %.preheader331.i, %.lr.ph386.i
  %.2215385.i = phi ptr [ %i.akh, %.lr.ph386.i ], [ %.1214.lcssa.i, %.preheader331.i ] ; 3 uses
  %.2219384.i = phi ptr [ %i.aki, %.lr.ph386.i ], [ %.1218.lcssa.i, %.preheader331.i ] ; 2 uses
  %.2223383.i = phi ptr [ %i.akj, %.lr.ph386.i ], [ %.1222.lcssa.i, %.preheader331.i ] ; 3 uses
  %.2227382.i = phi i32 [ %i.akk, %.lr.ph386.i ], [ %.1226.lcssa.i, %.preheader331.i ]
  %i.aiv = load i64, ptr %.2215385.i, align 1, !tbaa !49
  %i.aiw = insertelement <2 x i64> poison, i64 %i.aiv, i64 0
  %i.aix = bitcast <2 x i64> %i.aiw to <8 x i16>
  %35 = shufflevector <8 x i16> %i.aix, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.aiy = bitcast <8 x i16> %35 to <4 x float>
  %i.aiz = load <4 x float>, ptr %.2219384.i, align 1, !tbaa !49
  %i.aja = load <4 x float>, ptr %.2223383.i, align 1, !tbaa !49
  %i.ajb = fsub fast <4 x float> %i.aiy, %i.aiz
  %i.ajc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajb, <4 x float> splat (float f0x42B0C0A5))
  %i.ajd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aje = fmul fast <4 x float> %i.ajd, splat (float f0x3FB8AA3B)
  %i.ajf = fadd fast <4 x float> %i.aje, splat (float 5.000000e-01) ; 2 uses
  %i.ajg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajf)
  %i.ajh = sitofp fast <4 x i32> %i.ajg to <4 x float> ; 2 uses
  %i.aji = fcmp fast olt <4 x float> %i.ajf, %i.ajh
  %i.ajj = select <4 x i1> %i.aji, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ajk = fsub fast <4 x float> %i.ajh, %i.ajj   ; 2 uses
  %i.ajl = fneg fast <4 x float> %i.ajk           ; 2 uses
  %i.ajm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ajl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ajd)
  %i.ajn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ajl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ajm) ; 8 uses
  %i.ajo = fmul fast <4 x float> %i.ajn, %i.ajn
  %i.ajp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajn, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ajq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajp, <4 x float> nofpclass(nan inf) %i.ajn, <4 x float> splat (float f0x3C088908))
  %i.ajr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajq, <4 x float> nofpclass(nan inf) %i.ajn, <4 x float> splat (float f0x3D2AA9C1))
  %i.ajs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajr, <4 x float> nofpclass(nan inf) %i.ajn, <4 x float> splat (float f0x3E2AAAAA))
  %i.ajt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajs, <4 x float> nofpclass(nan inf) %i.ajn, <4 x float> splat (float 5.000000e-01))
  %i.aju = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajt, <4 x float> nofpclass(nan inf) %i.ajo, <4 x float> nofpclass(nan inf) %i.ajn)
  %i.ajv = fadd fast <4 x float> %i.aju, splat (float 1.000000e+00)
  %i.ajw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajk)
  %i.ajx = shl <4 x i32> %i.ajw, splat (i32 23)
  %i.ajy = add <4 x i32> %i.ajx, splat (i32 1065353216)
  %i.ajz = bitcast <4 x i32> %i.ajy to <4 x float>
  %i.aka = fmul fast <4 x float> %i.ajv, %i.ajz   ; 2 uses
  %i.akb = bitcast <4 x float> %i.aka to <4 x i32>
  %i.akc = lshr <4 x i32> %i.akb, splat (i32 16)
  %i.akd = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.akc, <4 x i32> poison)
  %i.ake = bitcast <8 x i16> %i.akd to <2 x i64>
  %i.akf = extractelement <2 x i64> %i.ake, i64 0
  store i64 %i.akf, ptr %.2215385.i, align 1, !tbaa !49
  %i.akg = fadd fast <4 x float> %i.aka, %i.aja
  store <4 x float> %i.akg, ptr %.2223383.i, align 1, !tbaa !49
  %i.akh = getelementptr inbounds nuw i8, ptr %.2215385.i, i64 8 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.2219384.i, i64 16 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.2223383.i, i64 16 ; 2 uses
  %i.akk = add nuw nsw i32 %.2227382.i, 4         ; 3 uses
  %i.akl = or disjoint i32 %i.akk, 3
  %i.akm = icmp slt i32 %i.akl, %4
  br i1 %i.akm, label %.lr.ph386.i, label %.preheader330.i, !llvm.loop !311

.lr.ph395.i:                                      ; preds = %.lr.ph395.i.prol.loopexit, %.lr.ph395.i
  %.3216394.i = phi ptr [ %i.alo, %.lr.ph395.i ], [ %.3216394.i.unr, %.lr.ph395.i.prol.loopexit ] ; 4 uses
  %.3220393.i = phi ptr [ %i.alp, %.lr.ph395.i ], [ %.3220393.i.unr, %.lr.ph395.i.prol.loopexit ] ; 3 uses
  %.3224392.i = phi ptr [ %i.alq, %.lr.ph395.i ], [ %.3224392.i.unr, %.lr.ph395.i.prol.loopexit ] ; 4 uses
  %.3228391.i = phi i32 [ %i.alr, %.lr.ph395.i ], [ %.3228391.i.unr, %.lr.ph395.i.prol.loopexit ]
  %i.akn = load i16, ptr %.3216394.i, align 2, !tbaa !62
  %i.ako = zext i16 %i.akn to i32
  %i.akp = shl nuw i32 %i.ako, 16
  %i.akq = bitcast i32 %i.akp to float
  %i.akr = load float, ptr %.3220393.i, align 4, !tbaa !53
  %i.aks = fsub fast float %i.akq, %i.akr
  %i.akt = tail call fast float @llvm.exp.f32(float %i.aks) ; 2 uses
  %i.aku = bitcast float %i.akt to i32
  %i.akv = lshr i32 %i.aku, 16
  %i.akw = trunc nuw nsw i32 %i.akv to i16
  store i16 %i.akw, ptr %.3216394.i, align 2, !tbaa !62
  %i.akx = load float, ptr %.3224392.i, align 4, !tbaa !53
  %i.aky = fadd fast float %i.akt, %i.akx
  store float %i.aky, ptr %.3224392.i, align 4, !tbaa !53
  %i.akz = getelementptr inbounds nuw i8, ptr %.3216394.i, i64 2 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.3220393.i, i64 4
  %i.alb = getelementptr inbounds nuw i8, ptr %.3224392.i, i64 4 ; 2 uses
  %i.alc = load i16, ptr %i.akz, align 2, !tbaa !62
  %i.ald = zext i16 %i.alc to i32
  %i.ale = shl nuw i32 %i.ald, 16
  %i.alf = bitcast i32 %i.ale to float
  %i.alg = load float, ptr %i.ala, align 4, !tbaa !53
  %i.alh = fsub fast float %i.alf, %i.alg
  %i.ali = tail call fast float @llvm.exp.f32(float %i.alh) ; 2 uses
  %i.alj = bitcast float %i.ali to i32
  %i.alk = lshr i32 %i.alj, 16
  %i.all = trunc nuw nsw i32 %i.alk to i16
  store i16 %i.all, ptr %i.akz, align 2, !tbaa !62
  %i.alm = load float, ptr %i.alb, align 4, !tbaa !53
  %i.aln = fadd fast float %i.ali, %i.alm
  store float %i.aln, ptr %i.alb, align 4, !tbaa !53
  %i.alo = getelementptr inbounds nuw i8, ptr %.3216394.i, i64 4
  %i.alp = getelementptr inbounds nuw i8, ptr %.3220393.i, i64 8
  %i.alq = getelementptr inbounds nuw i8, ptr %.3224392.i, i64 8
  %i.alr = add nuw nsw i32 %.3228391.i, 2         ; 2 uses
  %exitcond483.not.i.1 = icmp eq i32 %i.alr, %4
  br i1 %exitcond483.not.i.1, label %._crit_edge396.i, label %.lr.ph395.i, !llvm.loop !312

._crit_edge396.i:                                 ; preds = %.lr.ph395.i.prol.loopexit, %.lr.ph395.i, %middle.block546, %vec.epilog.middle.block564, %.preheader330.i
  %indvars.iv.next485.i = add nuw nsw i64 %indvars.iv484.i, 1 ; 2 uses
  %exitcond488.not.i = icmp eq i64 %indvars.iv.next485.i, %wide.trip.count.i126
  br i1 %exitcond488.not.i, label %.preheader329.i, label %.preheader333.i, !llvm.loop !313

.preheader328.loopexit.i.unr-lcssa:               ; preds = %.lr.ph401.i
  %i.als = and i32 %i.acl, 16
  %lcmp.mod731.not.not = icmp eq i32 %i.als, 0
  br i1 %lcmp.mod731.not.not, label %.lr.ph401.i.epil.preheader, label %.preheader328.loopexit.i

.lr.ph401.i.epil.preheader:                       ; preds = %.preheader328.loopexit.i.unr-lcssa, %.lr.ph401.i.preheader
  %.0204399.i.epil.init = phi ptr [ %6, %.lr.ph401.i.preheader ], [ %i.amn, %.preheader328.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod733 = trunc i32 %i.acn to i1
  tail call void @llvm.assume(i1 %lcmp.mod733)
  %i.alt = load <16 x float>, ptr %.0204399.i.epil.init, align 1, !tbaa !49 ; 2 uses
  %i.alu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.alt, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.alv = fneg fast <16 x float> %i.alt
  %i.alw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.alv, <16 x float> nofpclass(nan inf) %i.alu, <16 x float> splat (float 2.000000e+00))
  %i.alx = fmul fast <16 x float> %i.alw, %i.alu
  store <16 x float> %i.alx, ptr %.0204399.i.epil.init, align 1, !tbaa !49
  %i.aly = getelementptr inbounds nuw i8, ptr %.0204399.i.epil.init, i64 64
  br label %.preheader328.loopexit.i

.preheader328.loopexit.i:                         ; preds = %.preheader328.loopexit.i.unr-lcssa, %.lr.ph401.i.epil.preheader
  %.lcssa651 = phi ptr [ %i.amn, %.preheader328.loopexit.i.unr-lcssa ], [ %i.aly, %.lr.ph401.i.epil.preheader ]
  %i.alz = and i32 %4, 2147483632
  br label %.preheader328.i

.preheader328.i:                                  ; preds = %.preheader328.loopexit.i, %.preheader329.i
  %.0204.lcssa.i = phi ptr [ %6, %.preheader329.i ], [ %.lcssa651, %.preheader328.loopexit.i ] ; 2 uses
  %.0200.lcssa.i = phi i32 [ 0, %.preheader329.i ], [ %i.alz, %.preheader328.loopexit.i ] ; 3 uses
  %i.ama = or disjoint i32 %.0200.lcssa.i, 7
  %i.amb = icmp slt i32 %i.ama, %4
  br i1 %i.amb, label %.lr.ph406.i, label %.preheader327.i

.lr.ph401.i:                                      ; preds = %.lr.ph401.i, %.lr.ph401.i.preheader.new
  %.0204399.i = phi ptr [ %6, %.lr.ph401.i.preheader.new ], [ %i.amn, %.lr.ph401.i ] ; 4 uses
  %niter735 = phi i32 [ 0, %.lr.ph401.i.preheader.new ], [ %niter735.next.1, %.lr.ph401.i ]
  %i.amc = load <16 x float>, ptr %.0204399.i, align 1, !tbaa !49 ; 2 uses
  %i.amd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.amc, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ame = fneg fast <16 x float> %i.amc
  %i.amf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ame, <16 x float> nofpclass(nan inf) %i.amd, <16 x float> splat (float 2.000000e+00))
  %i.amg = fmul fast <16 x float> %i.amf, %i.amd
  store <16 x float> %i.amg, ptr %.0204399.i, align 1, !tbaa !49
  %i.amh = getelementptr inbounds nuw i8, ptr %.0204399.i, i64 64 ; 2 uses
  %i.ami = load <16 x float>, ptr %i.amh, align 1, !tbaa !49 ; 2 uses
  %i.amj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.ami, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.amk = fneg fast <16 x float> %i.ami
  %i.aml = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.amk, <16 x float> nofpclass(nan inf) %i.amj, <16 x float> splat (float 2.000000e+00))
  %i.amm = fmul fast <16 x float> %i.aml, %i.amj
  store <16 x float> %i.amm, ptr %i.amh, align 1, !tbaa !49
  %i.amn = getelementptr inbounds nuw i8, ptr %.0204399.i, i64 128 ; 3 uses
  %niter735.next.1 = add i32 %niter735, 2         ; 2 uses
  %niter735.ncmp.1.not = icmp eq i32 %niter735.next.1, %unroll_iter734
  br i1 %niter735.ncmp.1.not, label %.preheader328.loopexit.i.unr-lcssa, label %.lr.ph401.i, !llvm.loop !314

.preheader327.i:                                  ; preds = %.lr.ph406.i, %.preheader328.i
  %.1205.lcssa.i = phi ptr [ %.0204.lcssa.i, %.preheader328.i ], [ %i.amv, %.lr.ph406.i ] ; 2 uses
  %.1201.lcssa.i = phi i32 [ %.0200.lcssa.i, %.preheader328.i ], [ %i.amw, %.lr.ph406.i ] ; 3 uses
  %i.amo = or disjoint i32 %.1201.lcssa.i, 3
  %i.amp = icmp slt i32 %i.amo, %4
  br i1 %i.amp, label %.lr.ph411.i, label %.preheader326.i

.lr.ph406.i:                                      ; preds = %.preheader328.i, %.lr.ph406.i
  %.1201405.i = phi i32 [ %i.amw, %.lr.ph406.i ], [ %.0200.lcssa.i, %.preheader328.i ]
  %.1205404.i = phi ptr [ %i.amv, %.lr.ph406.i ], [ %.0204.lcssa.i, %.preheader328.i ] ; 3 uses
  %i.amq = load <8 x float>, ptr %.1205404.i, align 1, !tbaa !49 ; 2 uses
  %i.amr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.amq) ; 2 uses
  %i.ams = fneg fast <8 x float> %i.amq
  %i.amt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ams, <8 x float> nofpclass(nan inf) %i.amr, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.amu = fmul fast <8 x float> %i.amt, %i.amr
  store <8 x float> %i.amu, ptr %.1205404.i, align 1, !tbaa !49
  %i.amv = getelementptr inbounds nuw i8, ptr %.1205404.i, i64 32 ; 2 uses
  %i.amw = add nuw nsw i32 %.1201405.i, 8         ; 3 uses
  %i.amx = or disjoint i32 %i.amw, 7
  %i.amy = icmp slt i32 %i.amx, %4
  br i1 %i.amy, label %.lr.ph406.i, label %.preheader327.i, !llvm.loop !315

.preheader326.i:                                  ; preds = %.lr.ph411.i, %.preheader327.i
  %.2206.lcssa.i = phi ptr [ %.1205.lcssa.i, %.preheader327.i ], [ %i.aoe, %.lr.ph411.i ] ; 5 uses
  %.2202.lcssa.i = phi i32 [ %.1201.lcssa.i, %.preheader327.i ], [ %i.aof, %.lr.ph411.i ] ; 5 uses
  %i.amz = icmp slt i32 %.2202.lcssa.i, %4
  br i1 %i.amz, label %iter.check585, label %.preheader325.i

iter.check585:                                    ; preds = %.preheader326.i
  %i.ana = xor i32 %.2202.lcssa.i, -1
  %i.anb = add i32 %4, %i.ana                     ; 3 uses
  %i.anc = zext i32 %i.anb to i64
  %i.and = add nuw nsw i64 %i.anc, 1              ; 5 uses
  %min.iters.check570 = icmp ult i32 %i.anb, 7
  br i1 %min.iters.check570, label %.lr.ph416.i.preheader, label %vector.main.loop.iter.check571

vector.main.loop.iter.check571:                   ; preds = %iter.check585
  %min.iters.check572 = icmp ult i32 %i.anb, 63
  br i1 %min.iters.check572, label %vec.epilog.ph589, label %vector.ph573

vector.ph573:                                     ; preds = %vector.main.loop.iter.check571
  %i.ane = and i64 %i.and, 56
  %n.vec574 = and i64 %i.and, 8589934528          ; 5 uses
  %i.anf = trunc i64 %n.vec574 to i32
  %i.ang = add i32 %.2202.lcssa.i, %i.anf
  %i.anh = shl nuw nsw i64 %n.vec574, 2
  %i.ani = getelementptr i8, ptr %.2206.lcssa.i, i64 %i.anh
  br label %vector.body575

vector.body575:                                   ; preds = %vector.ph573, %vector.body575
  %index576 = phi i64 [ 0, %vector.ph573 ], [ %index.next582, %vector.body575 ] ; 2 uses
  %i.anj = shl i64 %index576, 2
  %next.gep577 = getelementptr i8, ptr %.2206.lcssa.i, i64 %i.anj ; 5 uses
  %i.ank = getelementptr i8, ptr %next.gep577, i64 64 ; 2 uses
  %i.anl = getelementptr i8, ptr %next.gep577, i64 128 ; 2 uses
  %i.anm = getelementptr i8, ptr %next.gep577, i64 192 ; 2 uses
  %wide.load578 = load <16 x float>, ptr %next.gep577, align 4, !tbaa !53
  %wide.load579 = load <16 x float>, ptr %i.ank, align 4, !tbaa !53
  %wide.load580 = load <16 x float>, ptr %i.anl, align 4, !tbaa !53
  %wide.load581 = load <16 x float>, ptr %i.anm, align 4, !tbaa !53
  %i.ann = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load578
  %i.ano = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load579
  %i.anp = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load580
  %i.anq = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load581
  store <16 x float> %i.ann, ptr %next.gep577, align 4, !tbaa !53
  store <16 x float> %i.ano, ptr %i.ank, align 4, !tbaa !53
  store <16 x float> %i.anp, ptr %i.anl, align 4, !tbaa !53
  store <16 x float> %i.anq, ptr %i.anm, align 4, !tbaa !53
  %index.next582 = add nuw i64 %index576, 64      ; 2 uses
  %i.anr = icmp eq i64 %index.next582, %n.vec574
  br i1 %i.anr, label %middle.block583, label %vector.body575, !llvm.loop !316

middle.block583:                                  ; preds = %vector.body575
  %cmp.n584 = icmp eq i64 %i.and, %n.vec574
  br i1 %cmp.n584, label %.preheader325.i, label %vec.epilog.iter.check586

vec.epilog.iter.check586:                         ; preds = %middle.block583
  %min.epilog.iters.check588 = icmp eq i64 %i.ane, 0
  br i1 %min.epilog.iters.check588, label %.lr.ph416.i.preheader, label %vec.epilog.ph589, !prof !56

vec.epilog.ph589:                                 ; preds = %vector.main.loop.iter.check571, %vec.epilog.iter.check586
  %vec.epilog.resume.val590 = phi i64 [ %n.vec574, %vec.epilog.iter.check586 ], [ 0, %vector.main.loop.iter.check571 ]
  %n.vec591 = and i64 %i.and, 8589934584          ; 4 uses
  %i.ans = trunc i64 %n.vec591 to i32
  %i.ant = add i32 %.2202.lcssa.i, %i.ans
  %i.anu = shl nuw nsw i64 %n.vec591, 2
  %i.anv = getelementptr i8, ptr %.2206.lcssa.i, i64 %i.anu
  br label %vec.epilog.vector.body592

vec.epilog.vector.body592:                        ; preds = %vec.epilog.vector.body592, %vec.epilog.ph589
  %index593 = phi i64 [ %vec.epilog.resume.val590, %vec.epilog.ph589 ], [ %index.next596, %vec.epilog.vector.body592 ] ; 2 uses
  %i.anw = shl i64 %index593, 2
  %next.gep594 = getelementptr i8, ptr %.2206.lcssa.i, i64 %i.anw ; 2 uses
  %wide.load595 = load <8 x float>, ptr %next.gep594, align 4, !tbaa !53
  %i.anx = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load595
  store <8 x float> %i.anx, ptr %next.gep594, align 4, !tbaa !53
  %index.next596 = add nuw i64 %index593, 8       ; 2 uses
  %i.any = icmp eq i64 %index.next596, %n.vec591
  br i1 %i.any, label %vec.epilog.middle.block597, label %vec.epilog.vector.body592, !llvm.loop !317

vec.epilog.middle.block597:                       ; preds = %vec.epilog.vector.body592
  %cmp.n598 = icmp eq i64 %i.and, %n.vec591
  br i1 %cmp.n598, label %.preheader325.i, label %.lr.ph416.i.preheader

.lr.ph416.i.preheader:                            ; preds = %iter.check585, %vec.epilog.iter.check586, %vec.epilog.middle.block597
  %.3203415.i.ph = phi i32 [ %.2202.lcssa.i, %iter.check585 ], [ %i.ang, %vec.epilog.iter.check586 ], [ %i.ant, %vec.epilog.middle.block597 ]
  %.3207414.i.ph = phi ptr [ %.2206.lcssa.i, %iter.check585 ], [ %i.ani, %vec.epilog.iter.check586 ], [ %i.anv, %vec.epilog.middle.block597 ]
  br label %.lr.ph416.i

.lr.ph411.i:                                      ; preds = %.preheader327.i, %.lr.ph411.i
  %.2202410.i = phi i32 [ %i.aof, %.lr.ph411.i ], [ %.1201.lcssa.i, %.preheader327.i ]
  %.2206409.i = phi ptr [ %i.aoe, %.lr.ph411.i ], [ %.1205.lcssa.i, %.preheader327.i ] ; 3 uses
  %i.anz = load <4 x float>, ptr %.2206409.i, align 1, !tbaa !49 ; 2 uses
  %i.aoa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.anz) ; 2 uses
  %i.aob = fneg fast <4 x float> %i.anz
  %i.aoc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aob, <4 x float> nofpclass(nan inf) %i.aoa, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.aod = fmul fast <4 x float> %i.aoc, %i.aoa
  store <4 x float> %i.aod, ptr %.2206409.i, align 1, !tbaa !49
  %i.aoe = getelementptr inbounds nuw i8, ptr %.2206409.i, i64 16 ; 2 uses
  %i.aof = add nuw nsw i32 %.2202410.i, 4         ; 3 uses
  %i.aog = or disjoint i32 %i.aof, 3
  %i.aoh = icmp slt i32 %i.aog, %4
  br i1 %i.aoh, label %.lr.ph411.i, label %.preheader326.i, !llvm.loop !318

.preheader325.i:                                  ; preds = %.lr.ph416.i, %middle.block583, %vec.epilog.middle.block597, %.preheader326.i
  br i1 %i.yi, label %.lr.ph445.i, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit

.lr.ph445.i:                                      ; preds = %.preheader325.i
  %i.aoi = and i32 %4, -16
  %wide.trip.count494.i = zext nneg i32 %1 to i64
  br label %bb.r

.lr.ph416.i:                                      ; preds = %.lr.ph416.i.preheader, %.lr.ph416.i
  %.3203415.i = phi i32 [ %i.aom, %.lr.ph416.i ], [ %.3203415.i.ph, %.lr.ph416.i.preheader ]
  %.3207414.i = phi ptr [ %i.aol, %.lr.ph416.i ], [ %.3207414.i.ph, %.lr.ph416.i.preheader ] ; 3 uses
  %i.aoj = load float, ptr %.3207414.i, align 4, !tbaa !53
  %i.aok = fdiv fast float 1.000000e+00, %i.aoj
  store float %i.aok, ptr %.3207414.i, align 4, !tbaa !53
  %i.aol = getelementptr inbounds nuw i8, ptr %.3207414.i, i64 4
  %i.aom = add nuw nsw i32 %.3203415.i, 1         ; 2 uses
  %exitcond489.not.i = icmp eq i32 %i.aom, %4
  br i1 %exitcond489.not.i, label %.preheader325.i, label %.lr.ph416.i, !llvm.loop !319

bb.r:                                             ; preds = %._crit_edge443.i, %.lr.ph445.i
  %indvars.iv491.i = phi i64 [ 0, %.lr.ph445.i ], [ %indvars.iv.next492.i, %._crit_edge443.i ] ; 2 uses
  %i.aon = mul i64 %indvars.iv491.i, %3
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aon ; 2 uses
  br i1 %i.a, label %.lr.ph421.i, label %.preheader324.i

.preheader324.i:                                  ; preds = %.lr.ph421.i, %bb.r
  %.0195.lcssa.i = phi ptr [ %i.aoo, %bb.r ], [ %i.aph, %.lr.ph421.i ] ; 2 uses
  %.0191.lcssa.i = phi ptr [ %6, %bb.r ], [ %i.api, %.lr.ph421.i ] ; 2 uses
  %.0187.lcssa.i = phi i32 [ 0, %bb.r ], [ %i.aoi, %.lr.ph421.i ] ; 3 uses
  %i.aop = or disjoint i32 %.0187.lcssa.i, 7
  %i.aoq = icmp slt i32 %i.aop, %4
  br i1 %i.aoq, label %.lr.ph428.i, label %.preheader323.i

.lr.ph421.i:                                      ; preds = %bb.r, %.lr.ph421.i
  %.0187419.i = phi i32 [ %i.apj, %.lr.ph421.i ], [ 0, %bb.r ]
  %.0191418.i = phi ptr [ %i.api, %.lr.ph421.i ], [ %6, %bb.r ] ; 2 uses
  %.0195417.i = phi ptr [ %i.aph, %.lr.ph421.i ], [ %i.aoo, %bb.r ] ; 3 uses
  %i.aor = load <16 x i16>, ptr %.0195417.i, align 1, !tbaa !49 ; 2 uses
  %36 = shufflevector <16 x i16> %i.aor, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %37 = shufflevector <16 x i16> %i.aor, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.aos = shufflevector <16 x i16> %36, <16 x i16> %37, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aot = shufflevector <16 x i16> %36, <16 x i16> %37, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aou = bitcast <16 x i16> %i.aos to <8 x i32>
  %i.aov = bitcast <16 x i16> %i.aot to <8 x i32>
  %i.aow = shufflevector <8 x i32> %i.aou, <8 x i32> %i.aov, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aox = bitcast <16 x i32> %i.aow to <16 x float>
  %i.aoy = load <16 x float>, ptr %.0191418.i, align 1, !tbaa !49
  %i.aoz = fmul fast <16 x float> %i.aoy, %i.aox
  %i.apa = bitcast <16 x float> %i.aoz to <16 x i32>
  %i.apb = lshr <16 x i32> %i.apa, splat (i32 16) ; 2 uses
  %i.apc = shufflevector <16 x i32> %i.apb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apd = shufflevector <16 x i32> %i.apb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ape = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.apc, <8 x i32> %i.apd)
  %i.apf = bitcast <16 x i16> %i.ape to <4 x i64>
  %i.apg = shufflevector <4 x i64> %i.apf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.apg, ptr %.0195417.i, align 1, !tbaa !49
  %i.aph = getelementptr inbounds nuw i8, ptr %.0195417.i, i64 32 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.0191418.i, i64 64 ; 2 uses
  %i.apj = add nuw nsw i32 %.0187419.i, 16        ; 2 uses
  %i.apk = or disjoint i32 %i.apj, 15
  %i.apl = icmp slt i32 %i.apk, %4
  br i1 %i.apl, label %.lr.ph421.i, label %.preheader324.i, !llvm.loop !320

.preheader323.i:                                  ; preds = %.lr.ph428.i, %.preheader324.i
  %.1196.lcssa.i = phi ptr [ %.0195.lcssa.i, %.preheader324.i ], [ %i.apy, %.lr.ph428.i ] ; 2 uses
  %.1192.lcssa.i = phi ptr [ %.0191.lcssa.i, %.preheader324.i ], [ %i.apz, %.lr.ph428.i ] ; 2 uses
  %.1188.lcssa.i = phi i32 [ %.0187.lcssa.i, %.preheader324.i ], [ %i.aqa, %.lr.ph428.i ] ; 3 uses
  %i.apm = or disjoint i32 %.1188.lcssa.i, 3
  %i.apn = icmp slt i32 %i.apm, %4
  br i1 %i.apn, label %.lr.ph435.i, label %.preheader.i125

.lr.ph428.i:                                      ; preds = %.preheader324.i, %.lr.ph428.i
  %.1188427.i = phi i32 [ %i.aqa, %.lr.ph428.i ], [ %.0187.lcssa.i, %.preheader324.i ]
  %.1192426.i = phi ptr [ %i.apz, %.lr.ph428.i ], [ %.0191.lcssa.i, %.preheader324.i ] ; 2 uses
  %.1196425.i = phi ptr [ %i.apy, %.lr.ph428.i ], [ %.0195.lcssa.i, %.preheader324.i ] ; 3 uses
  %i.apo = load <8 x i16>, ptr %.1196425.i, align 1, !tbaa !49 ; 2 uses
  %38 = shufflevector <8 x i16> %i.apo, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %39 = shufflevector <8 x i16> %i.apo, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.app = shufflevector <8 x i16> %38, <8 x i16> %39, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apq = bitcast <16 x i16> %i.app to <8 x float>
  %i.apr = load <8 x float>, ptr %.1192426.i, align 1, !tbaa !49
  %i.aps = fmul fast <8 x float> %i.apr, %i.apq
  %i.apt = bitcast <8 x float> %i.aps to <8 x i32>
  %i.apu = lshr <8 x i32> %i.apt, splat (i32 16)  ; 2 uses
  %i.apv = shufflevector <8 x i32> %i.apu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.apw = shufflevector <8 x i32> %i.apu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.apx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.apv, <4 x i32> %i.apw)
  store <8 x i16> %i.apx, ptr %.1196425.i, align 1, !tbaa !49
  %i.apy = getelementptr inbounds nuw i8, ptr %.1196425.i, i64 16 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %.1192426.i, i64 32 ; 2 uses
  %i.aqa = add nuw nsw i32 %.1188427.i, 8         ; 3 uses
  %i.aqb = or disjoint i32 %i.aqa, 7
  %i.aqc = icmp slt i32 %i.aqb, %4
  br i1 %i.aqc, label %.lr.ph428.i, label %.preheader323.i, !llvm.loop !321

.preheader.i125:                                  ; preds = %.lr.ph435.i, %.preheader323.i
  %.2197.lcssa.i = phi ptr [ %.1196.lcssa.i, %.preheader323.i ], [ %i.atb, %.lr.ph435.i ] ; 5 uses
  %.2193.lcssa.i = phi ptr [ %.1192.lcssa.i, %.preheader323.i ], [ %i.atc, %.lr.ph435.i ] ; 5 uses
  %.2189.lcssa.i = phi i32 [ %.1188.lcssa.i, %.preheader323.i ], [ %i.atd, %.lr.ph435.i ] ; 5 uses
  %i.aqd = icmp slt i32 %.2189.lcssa.i, %4
  br i1 %i.aqd, label %iter.check621, label %._crit_edge443.i

iter.check621:                                    ; preds = %.preheader.i125
  %i.aqe = xor i32 %.2189.lcssa.i, -1
  %i.aqf = add i32 %4, %i.aqe                     ; 3 uses
  %i.aqg = zext i32 %i.aqf to i64
  %i.aqh = add nuw nsw i64 %i.aqg, 1              ; 5 uses
  %min.iters.check601 = icmp ult i32 %i.aqf, 7
  br i1 %min.iters.check601, label %.lr.ph442.i.preheader, label %vector.main.loop.iter.check602

vector.main.loop.iter.check602:                   ; preds = %iter.check621
  %min.iters.check603 = icmp ult i32 %i.aqf, 63
  br i1 %min.iters.check603, label %vec.epilog.ph625, label %vector.ph604

vector.ph604:                                     ; preds = %vector.main.loop.iter.check602
  %i.aqi = and i64 %i.aqh, 56
  %n.vec605 = and i64 %i.aqh, 8589934528          ; 6 uses
  %i.aqj = trunc i64 %n.vec605 to i32
  %i.aqk = add i32 %.2189.lcssa.i, %i.aqj
  %i.aql = shl nuw nsw i64 %n.vec605, 2
  %i.aqm = getelementptr i8, ptr %.2193.lcssa.i, i64 %i.aql
  %i.aqn = shl nuw nsw i64 %n.vec605, 1
  %i.aqo = getelementptr i8, ptr %.2197.lcssa.i, i64 %i.aqn
  br label %vector.body606

vector.body606:                                   ; preds = %vector.ph604, %vector.body606
  %index607 = phi i64 [ 0, %vector.ph604 ], [ %index.next618, %vector.body606 ] ; 3 uses
  %i.aqp = shl i64 %index607, 2
  %next.gep608 = getelementptr i8, ptr %.2193.lcssa.i, i64 %i.aqp ; 4 uses
  %i.aqq = shl i64 %index607, 1
  %next.gep609 = getelementptr i8, ptr %.2197.lcssa.i, i64 %i.aqq ; 5 uses
  %i.aqr = getelementptr i8, ptr %next.gep609, i64 32 ; 2 uses
  %i.aqs = getelementptr i8, ptr %next.gep609, i64 64 ; 2 uses
  %i.aqt = getelementptr i8, ptr %next.gep609, i64 96 ; 2 uses
  %wide.load610 = load <16 x i16>, ptr %next.gep609, align 2, !tbaa !62
  %wide.load611 = load <16 x i16>, ptr %i.aqr, align 2, !tbaa !62
  %wide.load612 = load <16 x i16>, ptr %i.aqs, align 2, !tbaa !62
  %wide.load613 = load <16 x i16>, ptr %i.aqt, align 2, !tbaa !62
  %i.aqu = zext <16 x i16> %wide.load610 to <16 x i32>
  %i.aqv = zext <16 x i16> %wide.load611 to <16 x i32>
  %i.aqw = zext <16 x i16> %wide.load612 to <16 x i32>
  %i.aqx = zext <16 x i16> %wide.load613 to <16 x i32>
  %i.aqy = shl nuw <16 x i32> %i.aqu, splat (i32 16)
  %i.aqz = shl nuw <16 x i32> %i.aqv, splat (i32 16)
  %i.ara = shl nuw <16 x i32> %i.aqw, splat (i32 16)
  %i.arb = shl nuw <16 x i32> %i.aqx, splat (i32 16)
  %i.arc = bitcast <16 x i32> %i.aqy to <16 x float>
  %i.ard = bitcast <16 x i32> %i.aqz to <16 x float>
  %i.are = bitcast <16 x i32> %i.ara to <16 x float>
  %i.arf = bitcast <16 x i32> %i.arb to <16 x float>
  %i.arg = getelementptr i8, ptr %next.gep608, i64 64
  %i.arh = getelementptr i8, ptr %next.gep608, i64 128
  %i.ari = getelementptr i8, ptr %next.gep608, i64 192
  %wide.load614 = load <16 x float>, ptr %next.gep608, align 4, !tbaa !53
  %wide.load615 = load <16 x float>, ptr %i.arg, align 4, !tbaa !53
  %wide.load616 = load <16 x float>, ptr %i.arh, align 4, !tbaa !53
  %wide.load617 = load <16 x float>, ptr %i.ari, align 4, !tbaa !53
  %i.arj = fmul fast <16 x float> %wide.load614, %i.arc
  %i.ark = fmul fast <16 x float> %wide.load615, %i.ard
  %i.arl = fmul fast <16 x float> %wide.load616, %i.are
  %i.arm = fmul fast <16 x float> %wide.load617, %i.arf
  %i.arn = bitcast <16 x float> %i.arj to <16 x i32>
  %i.aro = bitcast <16 x float> %i.ark to <16 x i32>
  %i.arp = bitcast <16 x float> %i.arl to <16 x i32>
  %i.arq = bitcast <16 x float> %i.arm to <16 x i32>
  %i.arr = lshr <16 x i32> %i.arn, splat (i32 16)
  %i.ars = lshr <16 x i32> %i.aro, splat (i32 16)
  %i.art = lshr <16 x i32> %i.arp, splat (i32 16)
  %i.aru = lshr <16 x i32> %i.arq, splat (i32 16)
  %i.arv = trunc nuw <16 x i32> %i.arr to <16 x i16>
  %i.arw = trunc nuw <16 x i32> %i.ars to <16 x i16>
  %i.arx = trunc nuw <16 x i32> %i.art to <16 x i16>
  %i.ary = trunc nuw <16 x i32> %i.aru to <16 x i16>
  store <16 x i16> %i.arv, ptr %next.gep609, align 2, !tbaa !62
  store <16 x i16> %i.arw, ptr %i.aqr, align 2, !tbaa !62
  store <16 x i16> %i.arx, ptr %i.aqs, align 2, !tbaa !62
  store <16 x i16> %i.ary, ptr %i.aqt, align 2, !tbaa !62
  %index.next618 = add nuw i64 %index607, 64      ; 2 uses
  %i.arz = icmp eq i64 %index.next618, %n.vec605
  br i1 %i.arz, label %middle.block619, label %vector.body606, !llvm.loop !322

middle.block619:                                  ; preds = %vector.body606
  %cmp.n620 = icmp eq i64 %i.aqh, %n.vec605
  br i1 %cmp.n620, label %._crit_edge443.i, label %vec.epilog.iter.check622

vec.epilog.iter.check622:                         ; preds = %middle.block619
  %min.epilog.iters.check624 = icmp eq i64 %i.aqi, 0
  br i1 %min.epilog.iters.check624, label %.lr.ph442.i.preheader, label %vec.epilog.ph625, !prof !56

vec.epilog.ph625:                                 ; preds = %vector.main.loop.iter.check602, %vec.epilog.iter.check622
  %vec.epilog.resume.val626 = phi i64 [ %n.vec605, %vec.epilog.iter.check622 ], [ 0, %vector.main.loop.iter.check602 ]
  %n.vec627 = and i64 %i.aqh, 8589934584          ; 5 uses
  %i.asa = trunc i64 %n.vec627 to i32
  %i.asb = add i32 %.2189.lcssa.i, %i.asa
  %i.asc = shl nuw nsw i64 %n.vec627, 2
  %i.asd = getelementptr i8, ptr %.2193.lcssa.i, i64 %i.asc
  %i.ase = shl nuw nsw i64 %n.vec627, 1
  %i.asf = getelementptr i8, ptr %.2197.lcssa.i, i64 %i.ase
  br label %vec.epilog.vector.body628

vec.epilog.vector.body628:                        ; preds = %vec.epilog.vector.body628, %vec.epilog.ph625
  %index629 = phi i64 [ %vec.epilog.resume.val626, %vec.epilog.ph625 ], [ %index.next634, %vec.epilog.vector.body628 ] ; 3 uses
  %i.asg = shl i64 %index629, 2
  %next.gep630 = getelementptr i8, ptr %.2193.lcssa.i, i64 %i.asg
  %i.ash = shl i64 %index629, 1
  %next.gep631 = getelementptr i8, ptr %.2197.lcssa.i, i64 %i.ash ; 2 uses
  %wide.load632 = load <8 x i16>, ptr %next.gep631, align 2, !tbaa !62
  %i.asi = zext <8 x i16> %wide.load632 to <8 x i32>
  %i.asj = shl nuw <8 x i32> %i.asi, splat (i32 16)
  %i.ask = bitcast <8 x i32> %i.asj to <8 x float>
  %wide.load633 = load <8 x float>, ptr %next.gep630, align 4, !tbaa !53
  %i.asl = fmul fast <8 x float> %wide.load633, %i.ask
  %i.asm = bitcast <8 x float> %i.asl to <8 x i32>
  %i.asn = lshr <8 x i32> %i.asm, splat (i32 16)
  %i.aso = trunc nuw <8 x i32> %i.asn to <8 x i16>
  store <8 x i16> %i.aso, ptr %next.gep631, align 2, !tbaa !62
  %index.next634 = add nuw i64 %index629, 8       ; 2 uses
  %i.asp = icmp eq i64 %index.next634, %n.vec627
  br i1 %i.asp, label %vec.epilog.middle.block635, label %vec.epilog.vector.body628, !llvm.loop !323

vec.epilog.middle.block635:                       ; preds = %vec.epilog.vector.body628
  %cmp.n636 = icmp eq i64 %i.aqh, %n.vec627
  br i1 %cmp.n636, label %._crit_edge443.i, label %.lr.ph442.i.preheader

.lr.ph442.i.preheader:                            ; preds = %iter.check621, %vec.epilog.iter.check622, %vec.epilog.middle.block635
  %.3190441.i.ph = phi i32 [ %.2189.lcssa.i, %iter.check621 ], [ %i.aqk, %vec.epilog.iter.check622 ], [ %i.asb, %vec.epilog.middle.block635 ]
  %.3194440.i.ph = phi ptr [ %.2193.lcssa.i, %iter.check621 ], [ %i.aqm, %vec.epilog.iter.check622 ], [ %i.asd, %vec.epilog.middle.block635 ]
  %.3198439.i.ph = phi ptr [ %.2197.lcssa.i, %iter.check621 ], [ %i.aqo, %vec.epilog.iter.check622 ], [ %i.asf, %vec.epilog.middle.block635 ]
  br label %.lr.ph442.i

.lr.ph435.i:                                      ; preds = %.preheader323.i, %.lr.ph435.i
  %.2189434.i = phi i32 [ %i.atd, %.lr.ph435.i ], [ %.1188.lcssa.i, %.preheader323.i ]
  %.2193433.i = phi ptr [ %i.atc, %.lr.ph435.i ], [ %.1192.lcssa.i, %.preheader323.i ] ; 2 uses
  %.2197432.i = phi ptr [ %i.atb, %.lr.ph435.i ], [ %.1196.lcssa.i, %.preheader323.i ] ; 3 uses
  %i.asq = load i64, ptr %.2197432.i, align 1, !tbaa !49
  %i.asr = insertelement <2 x i64> poison, i64 %i.asq, i64 0
  %i.ass = bitcast <2 x i64> %i.asr to <8 x i16>
  %40 = shufflevector <8 x i16> %i.ass, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ast = bitcast <8 x i16> %40 to <4 x float>
  %i.asu = load <4 x float>, ptr %.2193433.i, align 1, !tbaa !49
  %i.asv = fmul fast <4 x float> %i.asu, %i.ast
  %i.asw = bitcast <4 x float> %i.asv to <4 x i32>
  %i.asx = lshr <4 x i32> %i.asw, splat (i32 16)
  %i.asy = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.asx, <4 x i32> poison)
  %i.asz = bitcast <8 x i16> %i.asy to <2 x i64>
  %i.ata = extractelement <2 x i64> %i.asz, i64 0
  store i64 %i.ata, ptr %.2197432.i, align 1, !tbaa !49
  %i.atb = getelementptr inbounds nuw i8, ptr %.2197432.i, i64 8 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %.2193433.i, i64 16 ; 2 uses
  %i.atd = add nuw nsw i32 %.2189434.i, 4         ; 3 uses
  %i.ate = or disjoint i32 %i.atd, 3
  %i.atf = icmp slt i32 %i.ate, %4
  br i1 %i.atf, label %.lr.ph435.i, label %.preheader.i125, !llvm.loop !324

.lr.ph442.i:                                      ; preds = %.lr.ph442.i.preheader, %.lr.ph442.i
  %.3190441.i = phi i32 [ %i.atr, %.lr.ph442.i ], [ %.3190441.i.ph, %.lr.ph442.i.preheader ]
  %.3194440.i = phi ptr [ %i.atq, %.lr.ph442.i ], [ %.3194440.i.ph, %.lr.ph442.i.preheader ] ; 2 uses
  %.3198439.i = phi ptr [ %i.atp, %.lr.ph442.i ], [ %.3198439.i.ph, %.lr.ph442.i.preheader ] ; 3 uses
  %i.atg = load i16, ptr %.3198439.i, align 2, !tbaa !62
  %i.ath = zext i16 %i.atg to i32
  %i.ati = shl nuw i32 %i.ath, 16
  %i.atj = bitcast i32 %i.ati to float
  %i.atk = load float, ptr %.3194440.i, align 4, !tbaa !53
  %i.atl = fmul fast float %i.atk, %i.atj
  %i.atm = bitcast float %i.atl to i32
  %i.atn = lshr i32 %i.atm, 16
  %i.ato = trunc nuw i32 %i.atn to i16
  store i16 %i.ato, ptr %.3198439.i, align 2, !tbaa !62
  %i.atp = getelementptr inbounds nuw i8, ptr %.3198439.i, i64 2
  %i.atq = getelementptr inbounds nuw i8, ptr %.3194440.i, i64 4
  %i.atr = add nuw nsw i32 %.3190441.i, 1         ; 2 uses
  %exitcond490.not.i = icmp eq i32 %i.atr, %4
  br i1 %exitcond490.not.i, label %._crit_edge443.i, label %.lr.ph442.i, !llvm.loop !325

._crit_edge443.i:                                 ; preds = %.lr.ph442.i, %middle.block619, %vec.epilog.middle.block635, %.preheader.i125
  %indvars.iv.next492.i = add nuw nsw i64 %indvars.iv491.i, 1 ; 2 uses
  %exitcond495.not.i = icmp eq i64 %indvars.iv.next492.i, %wide.trip.count494.i
  br i1 %exitcond495.not.i, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit, label %bb.r, !llvm.loop !326

_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit: ; preds = %._crit_edge443.i, %.preheader325.i, %bb.p, %._crit_edge, %.split, %_ZN4ncnnL24softmax_bf16s_pack16_sseEPtimiPfS1_.exit, %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit, %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !21     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.h = load i32, ptr %0, align 4, !tbaa !21     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !21
  %i.k = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not16 = icmp sgt i32 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !40
  %i.p = load i32, ptr %i.l, align 4, !tbaa !20
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %indvars.iv, %i.q
  %i.s = load i64, ptr %i.m, align 8, !tbaa !18
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %i.v = load i32, ptr %4, align 4, !tbaa !21
  %i.w = load i32, ptr %5, align 4, !tbaa !21
  invoke fastcc void @_ZN4ncnnL17softmax_bf16s_sseEPtii(ptr noundef %i.u, i32 noundef %i.v, i32 noundef %i.w)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.x = load i32, ptr %i.b, align 4, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #20
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !21     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.h = load i32, ptr %0, align 4, !tbaa !21     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !21
  %i.k = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.036 = phi i32 [ %i.k, %.lr.ph ], [ %i.aj, %bb.d ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !21     ; 2 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !21
  %i.p = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.q = mul nsw i32 %i.n, %.036                  ; 2 uses
  %i.r = sub nsw i32 %i.o, %i.q
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.n)
  %i.s = load ptr, ptr %5, align 8, !tbaa !40, !noalias !331
  %i.t = load i64, ptr %i.l, align 8, !tbaa !44, !noalias !331
  %i.u = sext i32 %i.p to i64
  %i.v = mul i64 %i.t, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !331
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !21
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %6, align 8, !tbaa !40
  %i.ad = load i32, ptr %7, align 4, !tbaa !21    ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.q
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i32, ptr %8, align 4, !tbaa !21
  %i.ai = load i64, ptr %9, align 8, !tbaa !42
  invoke fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ad, i64 noundef %i.ai, i32 noundef %.sroa.speculated, ptr noundef %i.y, ptr noundef %i.ab)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.aj = add nsw i32 %.036, 1
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !21
  %.not.not = icmp slt i32 %.036, %i.ak
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e
end_hunk_1
