Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/layernorm_x86_avx512?download=true
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4ncnn20LayerNorm_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4:bb.a

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.u = sext i32 %i.k to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.v = phi i32 [ %i.j, %.preheader.preheader ], [ %i.y, %._crit_edge ]
  %i.w = phi i32 [ %i.s, %.preheader.preheader ], [ %i.z, %._crit_edge ] ; 2 uses
  %indvars.iv58 = phi i64 [ %i.u, %.preheader.preheader ], [ %indvars.iv.next59, %._crit_edge ] ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.noexc
  %.pre = load i32, ptr %i.b, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.y = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.v, %.preheader ] ; 2 uses
  %i.z = phi i32 [ %i.aw, %._crit_edge.loopexit ], [ %i.w, %.preheader ]
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1
  %i.aa = sext i32 %i.y to i64
  %.not.not = icmp slt i64 %indvars.iv58, %i.aa
  br i1 %.not.not, label %.preheader, label %._crit_edge55, !llvm.loop !120

.noexc:                                           ; preds = %.preheader, %.noexc
  %indvars.iv = phi i64 [ %indvars.iv.next, %.noexc ], [ 0, %.preheader ] ; 2 uses
  %i.ab = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !124
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !22, !noalias !124
  %i.ad = load ptr, ptr %4, align 8, !tbaa !16, !noalias !124
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !17, !noalias !124
  %i.af = mul i64 %i.ae, %indvars.iv58
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !27, !noalias !124 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = sext i32 %i.ab to i64
  %i.ak = sext i32 %i.ac to i64
  %i.al = mul nsw i64 %indvars.iv, %i.aj
  %i.am = mul i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, %i.ag
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.ar = load float, ptr %i.r, align 4, !tbaa !43
  %i.as = load i32, ptr %6, align 4, !tbaa !20
  %i.at = load i32, ptr %7, align 4, !tbaa !20
  %i.au = mul nsw i32 %i.at, %i.as
  %i.av = load i32, ptr %8, align 4, !tbaa !20
  call fastcc void @_ZN4ncnnL9layernormEPfPKfS2_fii(ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef %i.aq, float noundef nofpclass(nan inf) %i.ar, i32 noundef %i.au, i32 noundef %i.av)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %3, align 4, !tbaa !20    ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.noexc, label %._crit_edge.loopexit, !llvm.loop !123

._crit_edge55:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge55, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn20LayerNorm_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !20     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.h = load i32, ptr %0, align 4, !tbaa !20     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !20
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !20
  %i.k = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %.not26 = icmp sgt i32 %i.k, %i.j
  br i1 %.not26, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.q = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.noexc
  %indvars.iv = phi i64 [ %i.q, %.noexc.lr.ph ], [ %indvars.iv.next, %.noexc ] ; 3 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !16, !noalias !127
  %i.s = load i64, ptr %i.l, align 8, !tbaa !17, !noalias !127
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.m, align 8, !tbaa !27, !noalias !127
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.z = load float, ptr %i.p, align 4, !tbaa !43
  %i.aa = load i32, ptr %5, align 4, !tbaa !20
  %i.ab = load i32, ptr %6, align 4, !tbaa !20
  %i.ac = mul nsw i32 %i.ab, %i.aa
  %i.ad = load i32, ptr %7, align 4, !tbaa !20
  %i.ae = mul nsw i32 %i.ac, %i.ad
  %i.af = load i32, ptr %8, align 4, !tbaa !20
  call fastcc void @_ZN4ncnnL9layernormEPfPKfS2_fii(ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y, float noundef nofpclass(nan inf) %i.z, i32 noundef %i.ae, i32 noundef %i.af)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !20
  %i.ah = sext i32 %i.ag to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ah
  br i1 %.not.not, label %.noexc, label %._crit_edge

._crit_edge:                                      ; preds = %.noexc, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL19layernorm_bf16s_sseEPtPKfS2_fii(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef nofpclass(nan inf) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #12 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn30layernorm_bf16s_sse_avx512bf16EPtPKfS2_fii(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef nofpclass(nan inf) %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %5, %4                       ; 49 uses
  %i.c = icmp sgt i32 %i.b, 15                    ; 4 uses
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader595

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = add nsw i32 %i.b, -16                    ; 2 uses
  %i.e = lshr i32 %i.d, 4                         ; 2 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.f, 536870910
  br label %.lr.ph

.preheader595.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %i.h = and i32 %i.d, 16
  %lcmp.mod.not.not = icmp eq i32 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader595.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader595.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0300598.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.al, %.preheader595.loopexit.unr-lcssa ] ; 2 uses
  %.0529596.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ak, %.preheader595.loopexit.unr-lcssa ]
  %lcmp.mod1161 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod1161)
  %i.i = load <16 x i16>, ptr %.0300598.epil.init, align 1, !tbaa !46 ; 2 uses
  %6 = shufflevector <16 x i16> %i.i, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %7 = shufflevector <16 x i16> %i.i, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.j = shufflevector <16 x i16> %6, <16 x i16> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.k = shufflevector <16 x i16> %6, <16 x i16> %7, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.l = bitcast <16 x i16> %i.j to <8 x i32>
  %i.m = bitcast <16 x i16> %i.k to <8 x i32>
  %i.n = shufflevector <8 x i32> %i.l, <8 x i32> %i.m, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.o = bitcast <16 x i32> %i.n to <16 x float>
  %i.p = fadd fast <16 x float> %.0529596.epil.init, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.0300598.epil.init, i64 32
  br label %.preheader595.loopexit

.preheader595.loopexit:                           ; preds = %.preheader595.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa1158 = phi <16 x float> [ %i.ak, %.preheader595.loopexit.unr-lcssa ], [ %i.p, %.lr.ph.epil.preheader ]
  %.lcssa1157 = phi ptr [ %i.al, %.preheader595.loopexit.unr-lcssa ], [ %i.q, %.lr.ph.epil.preheader ]
  %i.r = and i32 %i.b, 2147483632
  br label %.preheader595

.preheader595:                                    ; preds = %.preheader595.loopexit, %bb.c
  %.0529.lcssa = phi <16 x float> [ zeroinitializer, %bb.c ], [ %.lcssa1158, %.preheader595.loopexit ] ; 9 uses
  %.0304.lcssa = phi i32 [ 0, %bb.c ], [ %i.r, %.preheader595.loopexit ] ; 3 uses
  %.0300.lcssa = phi ptr [ %0, %bb.c ], [ %.lcssa1157, %.preheader595.loopexit ] ; 2 uses
  %i.s = or disjoint i32 %.0304.lcssa, 7
  %i.t = icmp slt i32 %i.s, %i.b
  br i1 %i.t, label %.lr.ph604, label %.preheader594

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0300598 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 3 uses
  %.0529596 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.u = load <16 x i16>, ptr %.0300598, align 1, !tbaa !46 ; 2 uses
  %8 = shufflevector <16 x i16> %i.u, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %9 = shufflevector <16 x i16> %i.u, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.v = shufflevector <16 x i16> %8, <16 x i16> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.w = shufflevector <16 x i16> %8, <16 x i16> %9, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.x = bitcast <16 x i16> %i.v to <8 x i32>
  %i.y = bitcast <16 x i16> %i.w to <8 x i32>
  %i.z = shufflevector <8 x i32> %i.x, <8 x i32> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aa = bitcast <16 x i32> %i.z to <16 x float>
  %i.ab = fadd fast <16 x float> %.0529596, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.0300598, i64 32
  %i.ad = load <16 x i16>, ptr %i.ac, align 1, !tbaa !46 ; 2 uses
  %10 = shufflevector <16 x i16> %i.ad, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %11 = shufflevector <16 x i16> %i.ad, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.ae = shufflevector <16 x i16> %10, <16 x i16> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.af = shufflevector <16 x i16> %10, <16 x i16> %11, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ag = bitcast <16 x i16> %i.ae to <8 x i32>
  %i.ah = bitcast <16 x i16> %i.af to <8 x i32>
  %i.ai = shufflevector <8 x i32> %i.ag, <8 x i32> %i.ah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aj = bitcast <16 x i32> %i.ai to <16 x float>
  %i.ak = fadd fast <16 x float> %i.ab, %i.aj     ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0300598, i64 64 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader595.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !128

.preheader594:                                    ; preds = %.lr.ph604, %.preheader595
  %.0538.lcssa = phi <8 x float> [ zeroinitializer, %.preheader595 ], [ %i.ar, %.lr.ph604 ] ; 6 uses
  %.1305.lcssa = phi i32 [ %.0304.lcssa, %.preheader595 ], [ %i.at, %.lr.ph604 ] ; 3 uses
  %.1301.lcssa = phi ptr [ %.0300.lcssa, %.preheader595 ], [ %i.as, %.lr.ph604 ] ; 2 uses
  %i.am = or disjoint i32 %.1305.lcssa, 3
  %i.an = icmp slt i32 %i.am, %i.b
  br i1 %i.an, label %.lr.ph611, label %.preheader593

.lr.ph604:                                        ; preds = %.preheader595, %.lr.ph604
  %.1301603 = phi ptr [ %i.as, %.lr.ph604 ], [ %.0300.lcssa, %.preheader595 ] ; 2 uses
  %.1305602 = phi i32 [ %i.at, %.lr.ph604 ], [ %.0304.lcssa, %.preheader595 ]
  %.0538601 = phi <8 x float> [ %i.ar, %.lr.ph604 ], [ zeroinitializer, %.preheader595 ]
  %i.ao = load <8 x i16>, ptr %.1301603, align 1, !tbaa !46 ; 2 uses
  %12 = shufflevector <8 x i16> %i.ao, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %13 = shufflevector <8 x i16> %i.ao, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ap = shufflevector <8 x i16> %12, <8 x i16> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aq = bitcast <16 x i16> %i.ap to <8 x float>
  %i.ar = fadd fast <8 x float> %.0538601, %i.aq  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.1301603, i64 16 ; 2 uses
  %i.at = add nuw nsw i32 %.1305602, 8            ; 3 uses
  %i.au = or disjoint i32 %i.at, 7
  %i.av = icmp slt i32 %i.au, %i.b
  br i1 %i.av, label %.lr.ph604, label %.preheader594, !llvm.loop !129

.preheader593:                                    ; preds = %.lr.ph611, %.preheader594
  %.0545.lcssa = phi <4 x float> [ zeroinitializer, %.preheader594 ], [ %i.cs, %.lr.ph611 ] ; 6 uses
  %.2306.lcssa = phi i32 [ %.1305.lcssa, %.preheader594 ], [ %i.cu, %.lr.ph611 ] ; 5 uses
  %.2302.lcssa = phi ptr [ %.1301.lcssa, %.preheader594 ], [ %i.ct, %.lr.ph611 ] ; 5 uses
  %i.aw = icmp slt i32 %.2306.lcssa, %i.b
  br i1 %i.aw, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader593
  %i.ax = xor i32 %.2306.lcssa, -1
  %i.ay = add i32 %i.b, %i.ax                     ; 3 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 7
  br i1 %min.iters.check, label %.lr.ph618.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check940 = icmp ult i32 %i.ay, 63
  br i1 %min.iters.check940, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.ba, 56
  %n.vec = and i64 %i.ba, 8589934528              ; 5 uses
  %i.bc = shl nuw nsw i64 %n.vec, 1
  %i.bd = getelementptr i8, ptr %.2302.lcssa, i64 %i.bc
  %i.be = trunc i64 %n.vec to i32
  %i.bf = add i32 %.2306.lcssa, %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi941 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %vec.phi942 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi943 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %i.bg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2302.lcssa, i64 %i.bg ; 4 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 32
  %i.bi = getelementptr i8, ptr %next.gep, i64 64
  %i.bj = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !159
  %wide.load944 = load <16 x i16>, ptr %i.bh, align 2, !tbaa !159
  %wide.load945 = load <16 x i16>, ptr %i.bi, align 2, !tbaa !159
  %wide.load946 = load <16 x i16>, ptr %i.bj, align 2, !tbaa !159
  %i.bk = zext <16 x i16> %wide.load to <16 x i32>
  %i.bl = zext <16 x i16> %wide.load944 to <16 x i32>
  %i.bm = zext <16 x i16> %wide.load945 to <16 x i32>
  %i.bn = zext <16 x i16> %wide.load946 to <16 x i32>
  %i.bo = shl nuw <16 x i32> %i.bk, splat (i32 16)
  %i.bp = shl nuw <16 x i32> %i.bl, splat (i32 16)
  %i.bq = shl nuw <16 x i32> %i.bm, splat (i32 16)
  %i.br = shl nuw <16 x i32> %i.bn, splat (i32 16)
  %i.bs = bitcast <16 x i32> %i.bo to <16 x float>
  %i.bt = bitcast <16 x i32> %i.bp to <16 x float>
  %i.bu = bitcast <16 x i32> %i.bq to <16 x float>
  %i.bv = bitcast <16 x i32> %i.br to <16 x float>
  %i.bw = fadd fast <16 x float> %vec.phi, %i.bs  ; 2 uses
  %i.bx = fadd fast <16 x float> %vec.phi941, %i.bt ; 2 uses
  %i.by = fadd fast <16 x float> %vec.phi942, %i.bu ; 2 uses
  %i.bz = fadd fast <16 x float> %vec.phi943, %i.bv ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.bx, %i.bw
  %bin.rdx947 = fadd fast <16 x float> %i.by, %bin.rdx
  %bin.rdx948 = fadd fast <16 x float> %i.bz, %bin.rdx947
  %i.cb = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx948) ; 3 uses
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph618.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cb, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %n.vec949 = and i64 %i.ba, 8589934584           ; 4 uses
  %i.cc = shl nuw nsw i64 %n.vec949, 1
  %i.cd = getelementptr i8, ptr %.2302.lcssa, i64 %i.cc
  %i.ce = trunc i64 %n.vec949 to i32
  %i.cf = add i32 %.2306.lcssa, %i.ce
  %i.cg = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index950 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next954, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi951 = phi <8 x float> [ %i.cg, %vec.epilog.ph ], [ %i.cl, %vec.epilog.vector.body ]
  %i.ch = shl i64 %index950, 1
  %next.gep952 = getelementptr i8, ptr %.2302.lcssa, i64 %i.ch
  %wide.load953 = load <8 x i16>, ptr %next.gep952, align 2, !tbaa !159
  %i.ci = zext <8 x i16> %wide.load953 to <8 x i32>
  %i.cj = shl nuw <8 x i32> %i.ci, splat (i32 16)
  %i.ck = bitcast <8 x i32> %i.cj to <8 x float>
  %i.cl = fadd fast <8 x float> %vec.phi951, %i.ck ; 2 uses
  %index.next954 = add nuw i64 %index950, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next954, %n.vec949
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cn = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cl) ; 2 uses
  %cmp.n955 = icmp eq i64 %i.ba, %n.vec949
  br i1 %cmp.n955, label %._crit_edge, label %.lr.ph618.preheader

.lr.ph618.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0297617.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.3303616.ph = phi ptr [ %.2302.lcssa, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  %.3307615.ph = phi i32 [ %.2306.lcssa, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  br label %.lr.ph618

.lr.ph611:                                        ; preds = %.preheader594, %.lr.ph611
  %.2302610 = phi ptr [ %i.ct, %.lr.ph611 ], [ %.1301.lcssa, %.preheader594 ] ; 2 uses
  %.2306609 = phi i32 [ %i.cu, %.lr.ph611 ], [ %.1305.lcssa, %.preheader594 ]
  %.0545608 = phi <4 x float> [ %i.cs, %.lr.ph611 ], [ zeroinitializer, %.preheader594 ]
  %i.co = load i64, ptr %.2302610, align 1, !tbaa !46
  %i.cp = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %i.cq = bitcast <2 x i64> %i.cp to <8 x i16>
  %14 = shufflevector <8 x i16> %i.cq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cr = bitcast <8 x i16> %14 to <4 x float>
  %i.cs = fadd fast <4 x float> %.0545608, %i.cr  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.2302610, i64 8 ; 2 uses
  %i.cu = add nuw nsw i32 %.2306609, 4            ; 3 uses
  %i.cv = or disjoint i32 %i.cu, 3
  %i.cw = icmp slt i32 %i.cv, %i.b
  br i1 %i.cw, label %.lr.ph611, label %.preheader593, !llvm.loop !132

.lr.ph618:                                        ; preds = %.lr.ph618.preheader, %.lr.ph618
  %.0297617 = phi float [ %i.dc, %.lr.ph618 ], [ %.0297617.ph, %.lr.ph618.preheader ]
  %.3303616 = phi ptr [ %i.cx, %.lr.ph618 ], [ %.3303616.ph, %.lr.ph618.preheader ] ; 2 uses
  %.3307615 = phi i32 [ %i.dd, %.lr.ph618 ], [ %.3307615.ph, %.lr.ph618.preheader ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.3303616, i64 2
  %i.cy = load i16, ptr %.3303616, align 2, !tbaa !159
  %i.cz = zext i16 %i.cy to i32
  %i.da = shl nuw i32 %i.cz, 16
  %i.db = bitcast i32 %i.da to float
  %i.dc = fadd fast float %.0297617, %i.db        ; 2 uses
  %i.dd = add nuw nsw i32 %.3307615, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.dd, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph618, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph618, %middle.block, %vec.epilog.middle.block, %.preheader593
  %.0297.lcssa = phi float [ 0.000000e+00, %.preheader593 ], [ %i.cn, %vec.epilog.middle.block ], [ %i.cb, %middle.block ], [ %i.dc, %.lr.ph618 ] ; 5 uses
  %i.de = icmp eq i32 %5, 16                      ; 3 uses
  br i1 %i.de, label %.thread, label %bb.d

.thread:                                          ; preds = %._crit_edge
  %i.df = sitofp fast i32 %4 to float
  %i.dg = insertelement <16 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <16 x float> %i.dg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.di = fdiv fast <16 x float> %.0529.lcssa, %i.dh
  br label %.thread569

bb.d:                                             ; preds = %._crit_edge
  switch i32 %5, label %.thread569 [
    i32 8, label %bb.e
    i32 4, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.dj = shufflevector <16 x float> %.0529.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dk = shufflevector <16 x float> %.0529.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dl = fadd fast <8 x float> %i.dj, %i.dk
  %i.dm = fadd fast <8 x float> %i.dl, %.0538.lcssa
  %i.dn = sitofp fast i32 %4 to float
  %i.do = insertelement <8 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <8 x float> %i.do, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dq = fdiv fast <8 x float> %i.dm, %i.dp      ; 2 uses
  %i.dr = shufflevector <8 x float> %i.dq, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.thread569

bb.f:                                             ; preds = %bb.d
  %i.ds = shufflevector <16 x float> %.0529.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dt = shufflevector <16 x float> %.0529.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.du = fadd fast <8 x float> %i.ds, %i.dt
  %i.dv = fadd fast <8 x float> %i.du, %.0538.lcssa ; 2 uses
  %i.dw = shufflevector <8 x float> %i.dv, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dx = shufflevector <8 x float> %i.dv, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dy = fadd fast <4 x float> %i.dx, %i.dw
  %i.dz = fadd fast <4 x float> %i.dy, %.0545.lcssa
  %i.ea = sitofp fast i32 %4 to float
  %i.eb = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = fdiv fast <4 x float> %i.dz, %i.ec      ; 3 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ef = shufflevector <4 x float> %i.ed, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %.thread569

bb.g:                                             ; preds = %bb.d
  %i.eg = shufflevector <16 x float> %.0529.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eh = shufflevector <16 x float> %.0529.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ei = fadd fast <8 x float> %i.eg, %i.eh      ; 2 uses
  %i.ej = shufflevector <8 x float> %i.ei, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ek = shufflevector <8 x float> %i.ei, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.el = fadd fast <4 x float> %i.ej, %i.ek      ; 2 uses
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.en = fadd fast <4 x float> %i.em, %i.el
  %i.eo = extractelement <4 x float> %i.en, i64 1
  %i.ep = shufflevector <16 x float> %.0529.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.eq = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ep)
  %i.er = shufflevector <8 x float> %.0538.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.es = shufflevector <8 x float> %.0538.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.et = fadd fast <4 x float> %i.er, %i.es      ; 2 uses
  %i.eu = shufflevector <4 x float> %.0545.lcssa, <4 x float> %i.et, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ev = shufflevector <4 x float> %.0545.lcssa, <4 x float> %i.et, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ew = fadd fast <4 x float> %i.eu, %i.ev
  %op.rdx1088 = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %i.eq, <4 x float> %i.ew)
  %op.rdx1089 = fadd fast float %i.eo, %.0297.lcssa
  %op.rdx1090 = fadd fast float %op.rdx1088, %op.rdx1089
  %i.ex = sitofp fast i32 %4 to float
  %i.ey = fdiv fast float %op.rdx1090, %i.ex      ; 2 uses
  %i.ez = insertelement <4 x float> poison, float %i.ey, i64 0 ; 3 uses
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = shufflevector <4 x float> %i.ez, <4 x float> poison, <8 x i32> zeroinitializer
  %i.fc = shufflevector <4 x float> %i.ez, <4 x float> poison, <16 x i32> zeroinitializer
  br label %.thread569

.thread569:                                       ; preds = %bb.d, %bb.f, %.thread, %bb.e, %bb.g
  %i.fd = phi i1 [ true, %bb.g ], [ false, %bb.d ], [ false, %bb.e ], [ false, %.thread ], [ false, %bb.f ] ; 2 uses
  %i.fe = phi i1 [ false, %bb.g ], [ false, %bb.d ], [ true, %bb.e ], [ false, %.thread ], [ false, %bb.f ] ; 2 uses
  %i.ff = phi i1 [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.e ], [ false, %.thread ], [ true, %bb.f ] ; 2 uses
  %.2547 = phi nsz <4 x float> [ %i.fa, %bb.g ], [ %.0545.lcssa, %bb.d ], [ %.0545.lcssa, %bb.e ], [ %.0545.lcssa, %.thread ], [ %i.ed, %bb.f ] ; 3 uses
  %.3541 = phi nsz <8 x float> [ %i.fb, %bb.g ], [ %.0538.lcssa, %bb.d ], [ %i.dq, %bb.e ], [ %.0538.lcssa, %.thread ], [ %i.ee, %bb.f ] ; 3 uses
  %.4533 = phi nsz <16 x float> [ %i.fc, %bb.g ], [ %.0529.lcssa, %bb.d ], [ %i.dr, %bb.e ], [ %i.di, %.thread ], [ %i.ef, %bb.f ] ; 5 uses
  %.1298 = phi nsz float [ %i.ey, %bb.g ], [ %.0297.lcssa, %bb.d ], [ %.0297.lcssa, %bb.e ], [ %.0297.lcssa, %.thread ], [ %.0297.lcssa, %bb.f ] ; 5 uses
  br i1 %i.c, label %.lr.ph623.preheader, label %.preheader592

.lr.ph623.preheader:                              ; preds = %.thread569
  %i.fg = add nsw i32 %i.b, -16                   ; 2 uses
  %i.fh = lshr i32 %i.fg, 4                       ; 2 uses
  %i.fi = add nuw nsw i32 %i.fh, 1                ; 2 uses
  %i.fj = icmp eq i32 %i.fh, 0
  br i1 %i.fj, label %.lr.ph623.epil.preheader, label %.lr.ph623.preheader.new

.lr.ph623.preheader.new:                          ; preds = %.lr.ph623.preheader
  %unroll_iter1167 = and i32 %i.fi, 536870910
  br label %.lr.ph623

.preheader592.loopexit.unr-lcssa:                 ; preds = %.lr.ph623
  %i.fk = and i32 %i.fg, 16
  %lcmp.mod1163.not.not = icmp eq i32 %i.fk, 0
  br i1 %lcmp.mod1163.not.not, label %.lr.ph623.epil.preheader, label %.preheader592.loopexit

.lr.ph623.epil.preheader:                         ; preds = %.preheader592.loopexit.unr-lcssa, %.lr.ph623.preheader
  %.0324622.epil.init = phi ptr [ %0, %.lr.ph623.preheader ], [ %i.gr, %.preheader592.loopexit.unr-lcssa ] ; 2 uses
  %.0550620.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph623.preheader ], [ %i.gq, %.preheader592.loopexit.unr-lcssa ]
  %lcmp.mod1166 = trunc i32 %i.fi to i1
  tail call void @llvm.assume(i1 %lcmp.mod1166)
  %i.fl = load <16 x i16>, ptr %.0324622.epil.init, align 1, !tbaa !46 ; 2 uses
  %15 = shufflevector <16 x i16> %i.fl, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %16 = shufflevector <16 x i16> %i.fl, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.fm = shufflevector <16 x i16> %15, <16 x i16> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fn = shufflevector <16 x i16> %15, <16 x i16> %16, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fo = bitcast <16 x i16> %i.fm to <8 x i32>
  %i.fp = bitcast <16 x i16> %i.fn to <8 x i32>
  %i.fq = shufflevector <8 x i32> %i.fo, <8 x i32> %i.fp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fr = bitcast <16 x i32> %i.fq to <16 x float>
  %i.fs = fsub fast <16 x float> %i.fr, %.4533    ; 2 uses
  %i.ft = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fs, <16 x float> nofpclass(nan inf) %i.fs, <16 x float> nofpclass(nan inf) %.0550620.epil.init)
  %i.fu = getelementptr inbounds nuw i8, ptr %.0324622.epil.init, i64 32
  br label %.preheader592.loopexit

.preheader592.loopexit:                           ; preds = %.preheader592.loopexit.unr-lcssa, %.lr.ph623.epil.preheader
  %.lcssa1144 = phi <16 x float> [ %i.gq, %.preheader592.loopexit.unr-lcssa ], [ %i.ft, %.lr.ph623.epil.preheader ]
  %.lcssa1143 = phi ptr [ %i.gr, %.preheader592.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph623.epil.preheader ]
  %i.fv = and i32 %i.b, 2147483632
  br label %.preheader592

.preheader592:                                    ; preds = %.preheader592.loopexit, %.thread569
  %.0550.lcssa = phi <16 x float> [ zeroinitializer, %.thread569 ], [ %.lcssa1144, %.preheader592.loopexit ] ; 2 uses
  %.0328.lcssa = phi i32 [ 0, %.thread569 ], [ %i.fv, %.preheader592.loopexit ] ; 3 uses
  %.0324.lcssa = phi ptr [ %0, %.thread569 ], [ %.lcssa1143, %.preheader592.loopexit ] ; 2 uses
  %i.fw = or disjoint i32 %.0328.lcssa, 7
  %i.fx = icmp slt i32 %i.fw, %i.b
  br i1 %i.fx, label %.lr.ph630, label %.preheader591

.lr.ph623:                                        ; preds = %.lr.ph623, %.lr.ph623.preheader.new
  %.0324622 = phi ptr [ %0, %.lr.ph623.preheader.new ], [ %i.gr, %.lr.ph623 ] ; 3 uses
  %.0550620 = phi <16 x float> [ zeroinitializer, %.lr.ph623.preheader.new ], [ %i.gq, %.lr.ph623 ]
  %niter1168 = phi i32 [ 0, %.lr.ph623.preheader.new ], [ %niter1168.next.1, %.lr.ph623 ]
  %i.fy = load <16 x i16>, ptr %.0324622, align 1, !tbaa !46 ; 2 uses
  %17 = shufflevector <16 x i16> %i.fy, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %18 = shufflevector <16 x i16> %i.fy, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.fz = shufflevector <16 x i16> %17, <16 x i16> %18, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ga = shufflevector <16 x i16> %17, <16 x i16> %18, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gb = bitcast <16 x i16> %i.fz to <8 x i32>
  %i.gc = bitcast <16 x i16> %i.ga to <8 x i32>
  %i.gd = shufflevector <8 x i32> %i.gb, <8 x i32> %i.gc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ge = bitcast <16 x i32> %i.gd to <16 x float>
  %i.gf = fsub fast <16 x float> %i.ge, %.4533    ; 2 uses
  %i.gg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gf, <16 x float> nofpclass(nan inf) %i.gf, <16 x float> nofpclass(nan inf) %.0550620)
  %i.gh = getelementptr inbounds nuw i8, ptr %.0324622, i64 32
  %i.gi = load <16 x i16>, ptr %i.gh, align 1, !tbaa !46 ; 2 uses
  %19 = shufflevector <16 x i16> %i.gi, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %20 = shufflevector <16 x i16> %i.gi, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.gj = shufflevector <16 x i16> %19, <16 x i16> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.gk = shufflevector <16 x i16> %19, <16 x i16> %20, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gl = bitcast <16 x i16> %i.gj to <8 x i32>
  %i.gm = bitcast <16 x i16> %i.gk to <8 x i32>
  %i.gn = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.go = bitcast <16 x i32> %i.gn to <16 x float>
  %i.gp = fsub fast <16 x float> %i.go, %.4533    ; 2 uses
  %i.gq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gp, <16 x float> nofpclass(nan inf) %i.gp, <16 x float> nofpclass(nan inf) %i.gg) ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0324622, i64 64 ; 3 uses
  %niter1168.next.1 = add i32 %niter1168, 2       ; 2 uses
  %niter1168.ncmp.1.not = icmp eq i32 %niter1168.next.1, %unroll_iter1167
  br i1 %niter1168.ncmp.1.not, label %.preheader592.loopexit.unr-lcssa, label %.lr.ph623, !llvm.loop !134

.preheader591:                                    ; preds = %.lr.ph630, %.preheader592
  %.0555.lcssa = phi <8 x float> [ zeroinitializer, %.preheader592 ], [ %i.gy, %.lr.ph630 ] ; 2 uses
  %.1329.lcssa = phi i32 [ %.0328.lcssa, %.preheader592 ], [ %i.ha, %.lr.ph630 ] ; 3 uses
  %.1325.lcssa = phi ptr [ %.0324.lcssa, %.preheader592 ], [ %i.gz, %.lr.ph630 ] ; 2 uses
  %i.gs = or disjoint i32 %.1329.lcssa, 3
  %i.gt = icmp slt i32 %i.gs, %i.b
  br i1 %i.gt, label %.lr.ph637, label %.preheader590

.lr.ph630:                                        ; preds = %.preheader592, %.lr.ph630
  %.1325629 = phi ptr [ %i.gz, %.lr.ph630 ], [ %.0324.lcssa, %.preheader592 ] ; 2 uses
  %.1329628 = phi i32 [ %i.ha, %.lr.ph630 ], [ %.0328.lcssa, %.preheader592 ]
  %.0555627 = phi <8 x float> [ %i.gy, %.lr.ph630 ], [ zeroinitializer, %.preheader592 ]
  %i.gu = load <8 x i16>, ptr %.1325629, align 1, !tbaa !46 ; 2 uses
  %21 = shufflevector <8 x i16> %i.gu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %22 = shufflevector <8 x i16> %i.gu, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.gv = shufflevector <8 x i16> %21, <8 x i16> %22, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gw = bitcast <16 x i16> %i.gv to <8 x float>
  %i.gx = fsub fast <8 x float> %i.gw, %.3541     ; 2 uses
  %i.gy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gx, <8 x float> nofpclass(nan inf) %i.gx, <8 x float> nofpclass(nan inf) %.0555627) ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.1325629, i64 16 ; 2 uses
  %i.ha = add nuw nsw i32 %.1329628, 8            ; 3 uses
  %i.hb = or disjoint i32 %i.ha, 7
  %i.hc = icmp slt i32 %i.hb, %i.b
  br i1 %i.hc, label %.lr.ph630, label %.preheader591, !llvm.loop !135

.preheader590:                                    ; preds = %.lr.ph637, %.preheader591
  %.0559.lcssa = phi <4 x float> [ zeroinitializer, %.preheader591 ], [ %i.jk, %.lr.ph637 ] ; 2 uses
  %.2330.lcssa = phi i32 [ %.1329.lcssa, %.preheader591 ], [ %i.jm, %.lr.ph637 ] ; 5 uses
  %.2326.lcssa = phi ptr [ %.1325.lcssa, %.preheader591 ], [ %i.jl, %.lr.ph637 ] ; 5 uses
  %i.hd = icmp slt i32 %.2330.lcssa, %i.b
  br i1 %i.hd, label %iter.check980, label %._crit_edge645

iter.check980:                                    ; preds = %.preheader590
  %i.he = xor i32 %.2330.lcssa, -1
  %i.hf = add i32 %i.b, %i.he                     ; 3 uses
  %i.hg = zext i32 %i.hf to i64
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 5 uses
  %min.iters.check958 = icmp ult i32 %i.hf, 7
  br i1 %min.iters.check958, label %.lr.ph644.preheader, label %vector.main.loop.iter.check959

vector.main.loop.iter.check959:                   ; preds = %iter.check980
  %min.iters.check960 = icmp ult i32 %i.hf, 63
  br i1 %min.iters.check960, label %vec.epilog.ph984, label %vector.ph961

vector.ph961:                                     ; preds = %vector.main.loop.iter.check959
  %i.hi = and i64 %i.hh, 56
  %n.vec962 = and i64 %i.hh, 8589934528           ; 5 uses
  %i.hj = shl nuw nsw i64 %n.vec962, 1
  %i.hk = getelementptr i8, ptr %.2326.lcssa, i64 %i.hj
  %i.hl = trunc i64 %n.vec962 to i32
  %i.hm = add i32 %.2330.lcssa, %i.hl
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.1298, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body963

vector.body963:                                   ; preds = %vector.ph961, %vector.body963
  %index964 = phi i64 [ 0, %vector.ph961 ], [ %index.next974, %vector.body963 ] ; 2 uses
  %vec.phi965 = phi <16 x float> [ zeroinitializer, %vector.ph961 ], [ %i.il, %vector.body963 ]
  %vec.phi966 = phi <16 x float> [ zeroinitializer, %vector.ph961 ], [ %i.im, %vector.body963 ]
  %vec.phi967 = phi <16 x float> [ zeroinitializer, %vector.ph961 ], [ %i.in, %vector.body963 ]
  %vec.phi968 = phi <16 x float> [ zeroinitializer, %vector.ph961 ], [ %i.io, %vector.body963 ]
  %i.hn = shl i64 %index964, 1
  %next.gep969 = getelementptr i8, ptr %.2326.lcssa, i64 %i.hn ; 4 uses
  %i.ho = getelementptr i8, ptr %next.gep969, i64 32
  %i.hp = getelementptr i8, ptr %next.gep969, i64 64
  %i.hq = getelementptr i8, ptr %next.gep969, i64 96
  %wide.load970 = load <16 x i16>, ptr %next.gep969, align 2, !tbaa !159
  %wide.load971 = load <16 x i16>, ptr %i.ho, align 2, !tbaa !159
  %wide.load972 = load <16 x i16>, ptr %i.hp, align 2, !tbaa !159
  %wide.load973 = load <16 x i16>, ptr %i.hq, align 2, !tbaa !159
  %i.hr = zext <16 x i16> %wide.load970 to <16 x i32>
  %i.hs = zext <16 x i16> %wide.load971 to <16 x i32>
  %i.ht = zext <16 x i16> %wide.load972 to <16 x i32>
  %i.hu = zext <16 x i16> %wide.load973 to <16 x i32>
  %i.hv = shl nuw <16 x i32> %i.hr, splat (i32 16)
  %i.hw = shl nuw <16 x i32> %i.hs, splat (i32 16)
  %i.hx = shl nuw <16 x i32> %i.ht, splat (i32 16)
  %i.hy = shl nuw <16 x i32> %i.hu, splat (i32 16)
  %i.hz = bitcast <16 x i32> %i.hv to <16 x float>
  %i.ia = bitcast <16 x i32> %i.hw to <16 x float>
  %i.ib = bitcast <16 x i32> %i.hx to <16 x float>
  %i.ic = bitcast <16 x i32> %i.hy to <16 x float>
  %i.id = fsub fast <16 x float> %i.hz, %broadcast.splat ; 2 uses
  %i.ie = fsub fast <16 x float> %i.ia, %broadcast.splat ; 2 uses
  %i.if = fsub fast <16 x float> %i.ib, %broadcast.splat ; 2 uses
  %i.ig = fsub fast <16 x float> %i.ic, %broadcast.splat ; 2 uses
  %i.ih = fmul fast <16 x float> %i.id, %i.id
  %i.ii = fmul fast <16 x float> %i.ie, %i.ie
  %i.ij = fmul fast <16 x float> %i.if, %i.if
  %i.ik = fmul fast <16 x float> %i.ig, %i.ig
  %i.il = fadd fast <16 x float> %i.ih, %vec.phi965 ; 2 uses
  %i.im = fadd fast <16 x float> %i.ii, %vec.phi966 ; 2 uses
  %i.in = fadd fast <16 x float> %i.ij, %vec.phi967 ; 2 uses
  %i.io = fadd fast <16 x float> %i.ik, %vec.phi968 ; 2 uses
  %index.next974 = add nuw i64 %index964, 64      ; 2 uses
  %i.ip = icmp eq i64 %index.next974, %n.vec962
  br i1 %i.ip, label %middle.block975, label %vector.body963, !llvm.loop !136

middle.block975:                                  ; preds = %vector.body963
  %bin.rdx976 = fadd fast <16 x float> %i.im, %i.il
  %bin.rdx977 = fadd fast <16 x float> %i.in, %bin.rdx976
  %bin.rdx978 = fadd fast <16 x float> %i.io, %bin.rdx977
  %i.iq = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx978) ; 3 uses
  %cmp.n979 = icmp eq i64 %i.hh, %n.vec962
  br i1 %cmp.n979, label %._crit_edge645, label %vec.epilog.iter.check981

vec.epilog.iter.check981:                         ; preds = %middle.block975
  %min.epilog.iters.check983 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check983, label %.lr.ph644.preheader, label %vec.epilog.ph984, !prof !51

vec.epilog.ph984:                                 ; preds = %vector.main.loop.iter.check959, %vec.epilog.iter.check981
  %vec.epilog.resume.val985 = phi i64 [ %n.vec962, %vec.epilog.iter.check981 ], [ 0, %vector.main.loop.iter.check959 ]
  %bc.merge.rdx986 = phi float [ %i.iq, %vec.epilog.iter.check981 ], [ 0.000000e+00, %vector.main.loop.iter.check959 ]
  %n.vec987 = and i64 %i.hh, 8589934584           ; 4 uses
  %i.ir = shl nuw nsw i64 %n.vec987, 1
  %i.is = getelementptr i8, ptr %.2326.lcssa, i64 %i.ir
  %i.it = trunc i64 %n.vec987 to i32
  %i.iu = add i32 %.2330.lcssa, %i.it
  %i.iv = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx986, i64 0
  %broadcast.splatinsert988 = insertelement <8 x float> poison, float %.1298, i64 0
  %broadcast.splat989 = shufflevector <8 x float> %broadcast.splatinsert988, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body990

vec.epilog.vector.body990:                        ; preds = %vec.epilog.vector.body990, %vec.epilog.ph984
  %index991 = phi i64 [ %vec.epilog.resume.val985, %vec.epilog.ph984 ], [ %index.next995, %vec.epilog.vector.body990 ] ; 2 uses
  %vec.phi992 = phi <8 x float> [ %i.iv, %vec.epilog.ph984 ], [ %i.jc, %vec.epilog.vector.body990 ]
  %i.iw = shl i64 %index991, 1
  %next.gep993 = getelementptr i8, ptr %.2326.lcssa, i64 %i.iw
  %wide.load994 = load <8 x i16>, ptr %next.gep993, align 2, !tbaa !159
  %i.ix = zext <8 x i16> %wide.load994 to <8 x i32>
  %i.iy = shl nuw <8 x i32> %i.ix, splat (i32 16)
  %i.iz = bitcast <8 x i32> %i.iy to <8 x float>
  %i.ja = fsub fast <8 x float> %i.iz, %broadcast.splat989 ; 2 uses
  %i.jb = fmul fast <8 x float> %i.ja, %i.ja
  %i.jc = fadd fast <8 x float> %i.jb, %vec.phi992 ; 2 uses
  %index.next995 = add nuw i64 %index991, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next995, %n.vec987
  br i1 %i.jd, label %vec.epilog.middle.block996, label %vec.epilog.vector.body990, !llvm.loop !137

vec.epilog.middle.block996:                       ; preds = %vec.epilog.vector.body990
  %i.je = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.jc) ; 2 uses
  %cmp.n997 = icmp eq i64 %i.hh, %n.vec987
  br i1 %cmp.n997, label %._crit_edge645, label %.lr.ph644.preheader

.lr.ph644.preheader:                              ; preds = %iter.check980, %vec.epilog.iter.check981, %vec.epilog.middle.block996
  %.0308643.ph = phi float [ 0.000000e+00, %iter.check980 ], [ %i.iq, %vec.epilog.iter.check981 ], [ %i.je, %vec.epilog.middle.block996 ]
  %.3327642.ph = phi ptr [ %.2326.lcssa, %iter.check980 ], [ %i.hk, %vec.epilog.iter.check981 ], [ %i.is, %vec.epilog.middle.block996 ]
  %.3331641.ph = phi i32 [ %.2330.lcssa, %iter.check980 ], [ %i.hm, %vec.epilog.iter.check981 ], [ %i.iu, %vec.epilog.middle.block996 ]
  br label %.lr.ph644

.lr.ph637:                                        ; preds = %.preheader591, %.lr.ph637
  %.2326636 = phi ptr [ %i.jl, %.lr.ph637 ], [ %.1325.lcssa, %.preheader591 ] ; 2 uses
  %.2330635 = phi i32 [ %i.jm, %.lr.ph637 ], [ %.1329.lcssa, %.preheader591 ]
  %.0559634 = phi <4 x float> [ %i.jk, %.lr.ph637 ], [ zeroinitializer, %.preheader591 ]
  %i.jf = load i64, ptr %.2326636, align 1, !tbaa !46
  %i.jg = insertelement <2 x i64> poison, i64 %i.jf, i64 0
  %i.jh = bitcast <2 x i64> %i.jg to <8 x i16>
  %23 = shufflevector <8 x i16> %i.jh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ji = bitcast <8 x i16> %23 to <4 x float>
  %i.jj = fsub fast <4 x float> %i.ji, %.2547     ; 2 uses
  %i.jk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jj, <4 x float> nofpclass(nan inf) %i.jj, <4 x float> nofpclass(nan inf) %.0559634) ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.2326636, i64 8 ; 2 uses
  %i.jm = add nuw nsw i32 %.2330635, 4            ; 3 uses
  %i.jn = or disjoint i32 %i.jm, 3
  %i.jo = icmp slt i32 %i.jn, %i.b
  br i1 %i.jo, label %.lr.ph637, label %.preheader590, !llvm.loop !138

.lr.ph644:                                        ; preds = %.lr.ph644.preheader, %.lr.ph644
  %.0308643 = phi float [ %i.jw, %.lr.ph644 ], [ %.0308643.ph, %.lr.ph644.preheader ]
  %.3327642 = phi ptr [ %i.jp, %.lr.ph644 ], [ %.3327642.ph, %.lr.ph644.preheader ] ; 2 uses
  %.3331641 = phi i32 [ %i.jx, %.lr.ph644 ], [ %.3331641.ph, %.lr.ph644.preheader ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.3327642, i64 2
  %i.jq = load i16, ptr %.3327642, align 2, !tbaa !159
  %i.jr = zext i16 %i.jq to i32
  %i.js = shl nuw i32 %i.jr, 16
  %i.jt = bitcast i32 %i.js to float
  %i.ju = fsub fast float %i.jt, %.1298           ; 2 uses
  %i.jv = fmul fast float %i.ju, %i.ju
  %i.jw = fadd fast float %i.jv, %.0308643        ; 2 uses
  %i.jx = add nuw nsw i32 %.3331641, 1            ; 2 uses
  %exitcond815.not = icmp eq i32 %i.jx, %i.b
  br i1 %exitcond815.not, label %._crit_edge645, label %.lr.ph644, !llvm.loop !139

._crit_edge645:                                   ; preds = %.lr.ph644, %middle.block975, %vec.epilog.middle.block996, %.preheader590
  %.0308.lcssa = phi float [ 0.000000e+00, %.preheader590 ], [ %i.je, %vec.epilog.middle.block996 ], [ %i.iq, %middle.block975 ], [ %i.jw, %.lr.ph644 ] ; 2 uses
  br i1 %i.de, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge645
  %i.jy = sitofp fast i32 %4 to float
  %i.jz = insertelement <16 x float> poison, float %i.jy, i64 0
  %i.ka = shufflevector <16 x float> %i.jz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kb = insertelement <16 x float> poison, float %3, i64 0
  %i.kc = shufflevector <16 x float> %i.kb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kd = fdiv fast <16 x float> %.0550.lcssa, %i.ka
  %i.ke = fadd fast <16 x float> %i.kd, %i.kc     ; 2 uses
  %i.kf = shufflevector <16 x float> %i.ke, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.kf)
  %i.kh = shufflevector <16 x float> %i.ke, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ki = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.kh)
  %i.kj = shufflevector <8 x float> %i.kg, <8 x float> %i.ki, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.kk = fmul fast <16 x float> %i.kj, %.4533
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge645
  %.1551 = phi nsz <16 x float> [ %i.kj, %bb.h ], [ %.0550.lcssa, %._crit_edge645 ] ; 3 uses
  %.5534 = phi nsz <16 x float> [ %i.kk, %bb.h ], [ %.4533, %._crit_edge645 ]
  br i1 %i.fe, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.kl = shufflevector <16 x float> %.1551, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.km = shufflevector <16 x float> %.1551, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kn = fadd fast <8 x float> %i.kl, %.0555.lcssa
  %i.ko = fadd fast <8 x float> %i.kn, %i.km
  %i.kp = sitofp fast i32 %4 to float
  %i.kq = insertelement <8 x float> poison, float %i.kp, i64 0
  %i.kr = shufflevector <8 x float> %i.kq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ks = insertelement <8 x float> poison, float %3, i64 0
  %i.kt = shufflevector <8 x float> %i.ks, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ku = fdiv fast <8 x float> %i.ko, %i.kr
  %i.kv = fadd fast <8 x float> %i.ku, %i.kt
  %i.kw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.kv) ; 3 uses
  %i.kx = fmul fast <8 x float> %i.kw, %.3541     ; 2 uses
  %i.ky = shufflevector <8 x float> %i.kw, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kz = shufflevector <8 x float> %i.kx, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1556 = phi nsz <8 x float> [ %i.kw, %bb.j ], [ %.0555.lcssa, %bb.i ] ; 2 uses
  %.2552 = phi nsz <16 x float> [ %i.ky, %bb.j ], [ %.1551, %bb.i ] ; 3 uses
  %.4542 = phi nsz <8 x float> [ %i.kx, %bb.j ], [ %.3541, %bb.i ]
  %.6535 = phi nsz <16 x float> [ %i.kz, %bb.j ], [ %.5534, %bb.i ]
  br i1 %i.ff, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.la = shufflevector <16 x float> %.2552, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lb = shufflevector <16 x float> %.2552, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lc = fadd fast <8 x float> %i.la, %.1556
  %i.ld = fadd fast <8 x float> %i.lc, %i.lb      ; 2 uses
  %i.le = shufflevector <8 x float> %i.ld, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lf = shufflevector <8 x float> %i.ld, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lg = fadd fast <4 x float> %i.le, %.0559.lcssa
  %i.lh = fadd fast <4 x float> %i.lg, %i.lf
  %i.li = sitofp fast i32 %4 to float
  %i.lj = insertelement <4 x float> poison, float %i.li, i64 0
  %i.lk = shufflevector <4 x float> %i.lj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ll = insertelement <4 x float> poison, float %3, i64 0
  %i.lm = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ln = fdiv fast <4 x float> %i.lh, %i.lk
  %i.lo = fadd fast <4 x float> %i.ln, %i.lm
  %i.lp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> nofpclass(nan inf) %i.lo) ; 4 uses
  %i.lq = fmul fast <4 x float> %i.lp, %.2547     ; 3 uses
  %i.lr = shufflevector <4 x float> %i.lp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ls = shufflevector <4 x float> %i.lq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lt = shufflevector <4 x float> %i.lp, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lu = shufflevector <4 x float> %i.lq, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1560 = phi nsz <4 x float> [ %i.lp, %bb.l ], [ %.0559.lcssa, %bb.k ] ; 3 uses
  %.2557 = phi nsz <8 x float> [ %i.lr, %bb.l ], [ %.1556, %bb.k ] ; 3 uses
  %.3553 = phi nsz <16 x float> [ %i.lt, %bb.l ], [ %.2552, %bb.k ] ; 3 uses
  %.3548 = phi nsz <4 x float> [ %i.lq, %bb.l ], [ %.2547, %bb.k ]
  %.5543 = phi nsz <8 x float> [ %i.ls, %bb.l ], [ %.4542, %bb.k ]
  %.7536 = phi nsz <16 x float> [ %i.lu, %bb.l ], [ %.6535, %bb.k ]
  br i1 %i.fd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.lv = shufflevector <16 x float> %.3553, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lw = shufflevector <16 x float> %.3553, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lx = fadd fast <8 x float> %i.lv, %i.lw      ; 2 uses
  %i.ly = shufflevector <8 x float> %i.lx, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lz = shufflevector <8 x float> %i.lx, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ma = fadd fast <4 x float> %i.ly, %i.lz      ; 2 uses
  %i.mb = shufflevector <8 x float> %.2557, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mc = shufflevector <8 x float> %.2557, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.md = fadd fast <4 x float> %i.mb, %i.mc      ; 2 uses
  %i.me = shufflevector <4 x float> %.1560, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.mf = fadd fast <4 x float> %i.me, %.1560     ; 2 uses
  %i.mg = extractelement <4 x float> %i.mf, i64 1
  %i.mh = extractelement <4 x float> %i.mf, i64 0
  %i.mi = shufflevector <4 x float> %i.ma, <4 x float> %i.md, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.mj = shufflevector <4 x float> %i.ma, <4 x float> %i.md, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.mk = fadd fast <4 x float> %i.mi, %i.mj
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %i.mg, <4 x float> %i.mk)
  %op.rdx1086 = fadd fast float %i.mh, %.0308.lcssa
  %op.rdx1087 = fadd fast float %op.rdx, %op.rdx1086
  %i.ml = sitofp fast i32 %4 to float
  %i.mm = fdiv fast float %op.rdx1087, %i.ml
  %i.mn = fadd fast float %i.mm, %3
  %i.mo = tail call fast float @llvm.sqrt.f32(float %i.mn)
  %i.mp = fdiv fast float 1.000000e+00, %i.mo     ; 3 uses
  %i.mq = fmul fast float %i.mp, %.1298           ; 2 uses
  %i.mr = insertelement <4 x float> poison, float %i.mp, i64 0 ; 3 uses
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mt = insertelement <4 x float> poison, float %i.mq, i64 0 ; 3 uses
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mv = shufflevector <4 x float> %i.mr, <4 x float> poison, <8 x i32> zeroinitializer
  %i.mw = shufflevector <4 x float> %i.mt, <4 x float> poison, <8 x i32> zeroinitializer
  %i.mx = shufflevector <4 x float> %i.mr, <4 x float> poison, <16 x i32> zeroinitializer
  %i.my = shufflevector <4 x float> %i.mt, <4 x float> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2561 = phi nsz <4 x float> [ %i.ms, %bb.n ], [ %.1560, %bb.m ] ; 3 uses
  %.3558 = phi nsz <8 x float> [ %i.mv, %bb.n ], [ %.2557, %bb.m ] ; 4 uses
  %.4554 = phi nsz <16 x float> [ %i.mx, %bb.n ], [ %.3553, %bb.m ] ; 5 uses
  %.4549 = phi nsz <4 x float> [ %i.mu, %bb.n ], [ %.3548, %bb.m ] ; 3 uses
  %.6544 = phi nsz <8 x float> [ %i.mw, %bb.n ], [ %.5543, %bb.m ] ; 4 uses
  %.8537 = phi nsz <16 x float> [ %i.my, %bb.n ], [ %.7536, %bb.m ] ; 5 uses
  %.1309 = phi nsz float [ %i.mp, %bb.n ], [ %.0308.lcssa, %bb.m ] ; 6 uses
  %.2299 = phi nsz float [ %i.mq, %bb.n ], [ %.1298, %bb.m ] ; 6 uses
  %i.mz = icmp ne ptr %1, null
  %i.na = icmp ne ptr %2, null
  %or.cond = and i1 %i.mz, %i.na
  br i1 %or.cond, label %bb.p, label %.preheader589

.preheader589:                                    ; preds = %bb.o
  br i1 %i.c, label %.lr.ph649, label %.preheader588

.lr.ph649:                                        ; preds = %.preheader589
  %i.nb = fneg fast <16 x float> %.8537
  br label %bb.z

bb.p:                                             ; preds = %bb.o
  %or.cond752 = and i1 %i.de, %i.c
  br i1 %or.cond752, label %.lr.ph669, label %.loopexit584

.lr.ph669:                                        ; preds = %bb.p
  %i.nc = fneg fast <16 x float> %.8537
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph669, %bb.q
  %.0265668 = phi ptr [ %0, %.lr.ph669 ], [ %i.nz, %bb.q ] ; 3 uses
  %.0269667 = phi ptr [ %1, %.lr.ph669 ], [ %i.oa, %bb.q ] ; 2 uses
  %.0283666 = phi ptr [ %2, %.lr.ph669 ], [ %i.ob, %bb.q ] ; 2 uses
  %.0310665 = phi i32 [ 0, %.lr.ph669 ], [ %i.oc, %bb.q ]
  %i.nd = load <16 x i16>, ptr %.0265668, align 1, !tbaa !46 ; 2 uses
  %24 = shufflevector <16 x i16> %i.nd, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %25 = shufflevector <16 x i16> %i.nd, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.ne = shufflevector <16 x i16> %24, <16 x i16> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.nf = shufflevector <16 x i16> %24, <16 x i16> %25, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ng = bitcast <16 x i16> %i.ne to <8 x i32>
  %i.nh = bitcast <16 x i16> %i.nf to <8 x i32>
  %i.ni = shufflevector <8 x i32> %i.ng, <8 x i32> %i.nh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nj = bitcast <16 x i32> %i.ni to <16 x float>
  %i.nk = load float, ptr %.0269667, align 4, !tbaa !48
  %i.nl = insertelement <16 x float> poison, float %i.nk, i64 0
  %i.nm = shufflevector <16 x float> %i.nl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nn = load float, ptr %.0283666, align 4, !tbaa !48
  %i.no = insertelement <16 x float> poison, float %i.nn, i64 0
  %i.np = shufflevector <16 x float> %i.no, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nj, <16 x float> nofpclass(nan inf) %.4554, <16 x float> %i.nc)
  %i.nr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nq, <16 x float> nofpclass(nan inf) %i.nm, <16 x float> nofpclass(nan inf) %i.np)
  %i.ns = bitcast <16 x float> %i.nr to <16 x i32>
  %i.nt = lshr <16 x i32> %i.ns, splat (i32 16)   ; 2 uses
  %i.nu = shufflevector <16 x i32> %i.nt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nv = shufflevector <16 x i32> %i.nt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nw = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.nu, <8 x i32> %i.nv)
  %i.nx = bitcast <16 x i16> %i.nw to <4 x i64>
  %i.ny = shufflevector <4 x i64> %i.nx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ny, ptr %.0265668, align 1, !tbaa !46
  %i.nz = getelementptr inbounds nuw i8, ptr %.0265668, i64 32 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.0269667, i64 4 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.0283666, i64 4 ; 2 uses
  %i.oc = add nuw nsw i32 %.0310665, 16           ; 2 uses
  %i.od = or disjoint i32 %i.oc, 15
  %i.oe = icmp slt i32 %i.od, %i.b
  br i1 %i.oe, label %bb.q, label %.loopexit584, !llvm.loop !140

.loopexit584:                                     ; preds = %bb.q, %bb.p
  %.1311 = phi i32 [ 0, %bb.p ], [ %i.b, %bb.q ]  ; 4 uses
  %.1284 = phi ptr [ %2, %bb.p ], [ %i.ob, %bb.q ] ; 3 uses
  %.1270 = phi ptr [ %1, %bb.p ], [ %i.oa, %bb.q ] ; 3 uses
  %.1266 = phi ptr [ %0, %bb.p ], [ %i.nz, %bb.q ] ; 3 uses
  br i1 %i.fe, label %.preheader582, label %.loopexit581

.preheader582:                                    ; preds = %.loopexit584
  %i.of = or disjoint i32 %.1311, 15
  %i.og = icmp slt i32 %i.of, %i.b
  br i1 %i.og, label %.lr.ph678, label %.preheader580

.lr.ph678:                                        ; preds = %.preheader582
  %i.oh = fneg fast <16 x float> %.8537
  br label %bb.r

.preheader580:                                    ; preds = %bb.r, %.preheader582
  %.2312.lcssa = phi i32 [ %.1311, %.preheader582 ], [ %i.pq, %bb.r ] ; 3 uses
  %.2285.lcssa = phi ptr [ %.1284, %.preheader582 ], [ %i.pp, %bb.r ] ; 2 uses
  %.2271.lcssa = phi ptr [ %.1270, %.preheader582 ], [ %i.po, %bb.r ] ; 2 uses
  %.2267.lcssa = phi ptr [ %.1266, %.preheader582 ], [ %i.pn, %bb.r ] ; 2 uses
  %i.oi = or disjoint i32 %.2312.lcssa, 7
  %i.oj = icmp slt i32 %i.oi, %i.b
  br i1 %i.oj, label %.lr.ph687, label %.loopexit581

.lr.ph687:                                        ; preds = %.preheader580
  %i.ok = fneg fast <8 x float> %.6544
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph678, %bb.r
  %.2267677 = phi ptr [ %.1266, %.lr.ph678 ], [ %i.pn, %bb.r ] ; 3 uses
  %.2271676 = phi ptr [ %.1270, %.lr.ph678 ], [ %i.po, %bb.r ] ; 3 uses
  %.2285675 = phi ptr [ %.1284, %.lr.ph678 ], [ %i.pp, %bb.r ] ; 3 uses
  %.2312674 = phi i32 [ %.1311, %.lr.ph678 ], [ %i.pq, %bb.r ]
  %i.ol = load <16 x i16>, ptr %.2267677, align 1, !tbaa !46 ; 2 uses
  %26 = shufflevector <16 x i16> %i.ol, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %27 = shufflevector <16 x i16> %i.ol, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.om = shufflevector <16 x i16> %26, <16 x i16> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.on = shufflevector <16 x i16> %26, <16 x i16> %27, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.oo = bitcast <16 x i16> %i.om to <8 x i32>
  %i.op = bitcast <16 x i16> %i.on to <8 x i32>
  %i.oq = shufflevector <8 x i32> %i.oo, <8 x i32> %i.op, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.or = bitcast <16 x i32> %i.oq to <16 x float>
  %i.os = load float, ptr %.2271676, align 4, !tbaa !48
  %i.ot = insertelement <8 x float> poison, float %i.os, i64 0
  %i.ou = getelementptr inbounds nuw i8, ptr %.2271676, i64 4
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !48
  %i.ow = insertelement <8 x float> poison, float %i.ov, i64 0
  %i.ox = shufflevector <8 x float> %i.ot, <8 x float> %i.ow, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.oy = load float, ptr %.2285675, align 4, !tbaa !48
  %i.oz = insertelement <8 x float> poison, float %i.oy, i64 0
  %i.pa = getelementptr inbounds nuw i8, ptr %.2285675, i64 4
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !48
  %i.pc = insertelement <8 x float> poison, float %i.pb, i64 0
  %i.pd = shufflevector <8 x float> %i.oz, <8 x float> %i.pc, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.pe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.or, <16 x float> nofpclass(nan inf) %.4554, <16 x float> %i.oh)
  %i.pf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pe, <16 x float> nofpclass(nan inf) %i.ox, <16 x float> nofpclass(nan inf) %i.pd)
  %i.pg = bitcast <16 x float> %i.pf to <16 x i32>
  %i.ph = lshr <16 x i32> %i.pg, splat (i32 16)   ; 2 uses
  %i.pi = shufflevector <16 x i32> %i.ph, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pj = shufflevector <16 x i32> %i.ph, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pk = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.pi, <8 x i32> %i.pj)
  %i.pl = bitcast <16 x i16> %i.pk to <4 x i64>
  %i.pm = shufflevector <4 x i64> %i.pl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.pm, ptr %.2267677, align 1, !tbaa !46
  %i.pn = getelementptr inbounds nuw i8, ptr %.2267677, i64 32 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.2271676, i64 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.2285675, i64 8 ; 2 uses
  %i.pq = add nuw nsw i32 %.2312674, 16           ; 3 uses
  %i.pr = or disjoint i32 %i.pq, 15
  %i.ps = icmp slt i32 %i.pr, %i.b
  br i1 %i.ps, label %bb.r, label %.preheader580, !llvm.loop !141

bb.s:                                             ; preds = %.lr.ph687, %bb.s
  %.3268686 = phi ptr [ %.2267.lcssa, %.lr.ph687 ], [ %i.qj, %bb.s ] ; 3 uses
  %.3272685 = phi ptr [ %.2271.lcssa, %.lr.ph687 ], [ %i.qk, %bb.s ] ; 2 uses
  %.3286684 = phi ptr [ %.2285.lcssa, %.lr.ph687 ], [ %i.ql, %bb.s ] ; 2 uses
  %.3313683 = phi i32 [ %.2312.lcssa, %.lr.ph687 ], [ %i.qm, %bb.s ]
  %i.pt = load <8 x i16>, ptr %.3268686, align 1, !tbaa !46 ; 2 uses
  %28 = shufflevector <8 x i16> %i.pt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %29 = shufflevector <8 x i16> %i.pt, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.pu = shufflevector <8 x i16> %28, <8 x i16> %29, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pv = bitcast <16 x i16> %i.pu to <8 x float>
  %i.pw = load float, ptr %.3272685, align 4, !tbaa !48
  %i.px = insertelement <8 x float> poison, float %i.pw, i64 0
  %i.py = shufflevector <8 x float> %i.px, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pz = load float, ptr %.3286684, align 4, !tbaa !48
  %i.qa = insertelement <8 x float> poison, float %i.pz, i64 0
  %i.qb = shufflevector <8 x float> %i.qa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pv, <8 x float> nofpclass(nan inf) %.3558, <8 x float> %i.ok)
  %i.qd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qc, <8 x float> nofpclass(nan inf) %i.py, <8 x float> nofpclass(nan inf) %i.qb)
  %i.qe = bitcast <8 x float> %i.qd to <8 x i32>
  %i.qf = lshr <8 x i32> %i.qe, splat (i32 16)    ; 2 uses
  %i.qg = shufflevector <8 x i32> %i.qf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qh = shufflevector <8 x i32> %i.qf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.qi = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.qg, <4 x i32> %i.qh)
  store <8 x i16> %i.qi, ptr %.3268686, align 1, !tbaa !46
  %i.qj = getelementptr inbounds nuw i8, ptr %.3268686, i64 16 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.3272685, i64 4 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.3286684, i64 4 ; 2 uses
  %i.qm = add nuw nsw i32 %.3313683, 8            ; 3 uses
  %i.qn = or disjoint i32 %i.qm, 7
  %i.qo = icmp slt i32 %i.qn, %i.b
  br i1 %i.qo, label %bb.s, label %.loopexit581, !llvm.loop !142

.loopexit581:                                     ; preds = %bb.s, %.preheader580, %.loopexit584
  %.4314 = phi i32 [ %.1311, %.loopexit584 ], [ %.2312.lcssa, %.preheader580 ], [ %i.qm, %bb.s ] ; 4 uses
  %.4287 = phi ptr [ %.1284, %.loopexit584 ], [ %.2285.lcssa, %.preheader580 ], [ %i.ql, %bb.s ] ; 3 uses
  %.4273 = phi ptr [ %.1270, %.loopexit584 ], [ %.2271.lcssa, %.preheader580 ], [ %i.qk, %bb.s ] ; 3 uses
  %.4 = phi ptr [ %.1266, %.loopexit584 ], [ %.2267.lcssa, %.preheader580 ], [ %i.qj, %bb.s ] ; 3 uses
  br i1 %i.ff, label %.preheader579, label %.loopexit577

.preheader579:                                    ; preds = %.loopexit581
  %i.qp = add nuw nsw i32 %.4314, 15
  %i.qq = icmp slt i32 %i.qp, %i.b
  br i1 %i.qq, label %.lr.ph696, label %.preheader578

.lr.ph696:                                        ; preds = %.preheader579
  %i.qr = fneg fast <16 x float> %.8537
  br label %bb.t

.preheader578:                                    ; preds = %bb.t, %.preheader579
  %.5315.lcssa = phi i32 [ %.4314, %.preheader579 ], [ %i.sq, %bb.t ] ; 3 uses
  %.5288.lcssa = phi ptr [ %.4287, %.preheader579 ], [ %i.sp, %bb.t ] ; 2 uses
  %.5274.lcssa = phi ptr [ %.4273, %.preheader579 ], [ %i.so, %bb.t ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4, %.preheader579 ], [ %i.sn, %bb.t ] ; 2 uses
  %i.qs = add nuw nsw i32 %.5315.lcssa, 7
  %i.qt = icmp slt i32 %i.qs, %i.b
  br i1 %i.qt, label %.lr.ph705, label %.preheader576

.lr.ph705:                                        ; preds = %.preheader578
  %i.qu = fneg fast <8 x float> %.6544
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph696, %bb.t
  %.5695 = phi ptr [ %.4, %.lr.ph696 ], [ %i.sn, %bb.t ] ; 3 uses
  %.5274694 = phi ptr [ %.4273, %.lr.ph696 ], [ %i.so, %bb.t ] ; 5 uses
  %.5288693 = phi ptr [ %.4287, %.lr.ph696 ], [ %i.sp, %bb.t ] ; 5 uses
  %.5315692 = phi i32 [ %.4314, %.lr.ph696 ], [ %i.sq, %bb.t ] ; 2 uses
  %i.qv = load <16 x i16>, ptr %.5695, align 1, !tbaa !46 ; 2 uses
  %30 = shufflevector <16 x i16> %i.qv, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %31 = shufflevector <16 x i16> %i.qv, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.qw = shufflevector <16 x i16> %30, <16 x i16> %31, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.qx = shufflevector <16 x i16> %30, <16 x i16> %31, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qy = bitcast <16 x i16> %i.qw to <8 x i32>
  %i.qz = bitcast <16 x i16> %i.qx to <8 x i32>
  %i.ra = shufflevector <8 x i32> %i.qy, <8 x i32> %i.qz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rb = bitcast <16 x i32> %i.ra to <16 x float>
  %i.rc = load float, ptr %.5274694, align 4, !tbaa !48
  %i.rd = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.re = getelementptr inbounds nuw i8, ptr %.5274694, i64 4
  %i.rf = load float, ptr %i.re, align 4, !tbaa !48
  %i.rg = insertelement <4 x float> poison, float %i.rf, i64 0
  %i.rh = getelementptr inbounds nuw i8, ptr %.5274694, i64 8
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !48
  %i.rj = insertelement <4 x float> poison, float %i.ri, i64 0
  %i.rk = getelementptr inbounds nuw i8, ptr %.5274694, i64 12
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !48
  %i.rm = insertelement <4 x float> poison, float %i.rl, i64 0
  %i.rn = shufflevector <4 x float> %i.rd, <4 x float> %i.rg, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ro = shufflevector <4 x float> %i.rj, <4 x float> %i.rm, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.rp = shufflevector <8 x float> %i.rn, <8 x float> %i.ro, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rq = load float, ptr %.5288693, align 4, !tbaa !48
  %i.rr = insertelement <4 x float> poison, float %i.rq, i64 0
  %i.rs = getelementptr inbounds nuw i8, ptr %.5288693, i64 4
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !48
  %i.ru = insertelement <4 x float> poison, float %i.rt, i64 0
  %i.rv = getelementptr inbounds nuw i8, ptr %.5288693, i64 8
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !48
  %i.rx = insertelement <4 x float> poison, float %i.rw, i64 0
  %i.ry = getelementptr inbounds nuw i8, ptr %.5288693, i64 12
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !48
  %i.sa = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.sb = shufflevector <4 x float> %i.rr, <4 x float> %i.ru, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.sc = shufflevector <4 x float> %i.rx, <4 x float> %i.sa, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.sd = shufflevector <8 x float> %i.sb, <8 x float> %i.sc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.se = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rb, <16 x float> nofpclass(nan inf) %.4554, <16 x float> %i.qr)
  %i.sf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.se, <16 x float> nofpclass(nan inf) %i.rp, <16 x float> nofpclass(nan inf) %i.sd)
  %i.sg = bitcast <16 x float> %i.sf to <16 x i32>
  %i.sh = lshr <16 x i32> %i.sg, splat (i32 16)   ; 2 uses
  %i.si = shufflevector <16 x i32> %i.sh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sj = shufflevector <16 x i32> %i.sh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sk = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.si, <8 x i32> %i.sj)
  %i.sl = bitcast <16 x i16> %i.sk to <4 x i64>
  %i.sm = shufflevector <4 x i64> %i.sl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.sm, ptr %.5695, align 1, !tbaa !46
  %i.sn = getelementptr inbounds nuw i8, ptr %.5695, i64 32 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.5274694, i64 16 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.5288693, i64 16 ; 2 uses
  %i.sq = add nuw nsw i32 %.5315692, 16           ; 2 uses
  %i.sr = add nuw nsw i32 %.5315692, 31
  %i.ss = icmp slt i32 %i.sr, %i.b
  br i1 %i.ss, label %bb.t, label %.preheader578, !llvm.loop !143

.preheader576:                                    ; preds = %bb.u, %.preheader578
  %.6316.lcssa = phi i32 [ %.5315.lcssa, %.preheader578 ], [ %i.tv, %bb.u ] ; 3 uses
  %.6289.lcssa = phi ptr [ %.5288.lcssa, %.preheader578 ], [ %i.tu, %bb.u ] ; 2 uses
  %.6275.lcssa = phi ptr [ %.5274.lcssa, %.preheader578 ], [ %i.tt, %bb.u ] ; 2 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader578 ], [ %i.ts, %bb.u ] ; 2 uses
  %i.st = add nuw nsw i32 %.6316.lcssa, 3
  %i.su = icmp slt i32 %i.st, %i.b
  br i1 %i.su, label %.lr.ph714, label %.loopexit577

.lr.ph714:                                        ; preds = %.preheader576
  %i.sv = fneg fast <4 x float> %.4549
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph705, %bb.u
  %.6704 = phi ptr [ %.5.lcssa, %.lr.ph705 ], [ %i.ts, %bb.u ] ; 3 uses
  %.6275703 = phi ptr [ %.5274.lcssa, %.lr.ph705 ], [ %i.tt, %bb.u ] ; 3 uses
  %.6289702 = phi ptr [ %.5288.lcssa, %.lr.ph705 ], [ %i.tu, %bb.u ] ; 3 uses
  %.6316701 = phi i32 [ %.5315.lcssa, %.lr.ph705 ], [ %i.tv, %bb.u ] ; 2 uses
  %i.sw = load <8 x i16>, ptr %.6704, align 1, !tbaa !46 ; 2 uses
  %32 = shufflevector <8 x i16> %i.sw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %33 = shufflevector <8 x i16> %i.sw, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.sx = shufflevector <8 x i16> %32, <8 x i16> %33, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sy = bitcast <16 x i16> %i.sx to <8 x float>
  %i.sz = load float, ptr %.6275703, align 4, !tbaa !48
  %i.ta = insertelement <4 x float> poison, float %i.sz, i64 0
  %i.tb = getelementptr inbounds nuw i8, ptr %.6275703, i64 4
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !48
  %i.td = insertelement <4 x float> poison, float %i.tc, i64 0
  %i.te = shufflevector <4 x float> %i.ta, <4 x float> %i.td, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.tf = load float, ptr %.6289702, align 4, !tbaa !48
  %i.tg = insertelement <4 x float> poison, float %i.tf, i64 0
  %i.th = getelementptr inbounds nuw i8, ptr %.6289702, i64 4
  %i.ti = load float, ptr %i.th, align 4, !tbaa !48
  %i.tj = insertelement <4 x float> poison, float %i.ti, i64 0
  %i.tk = shufflevector <4 x float> %i.tg, <4 x float> %i.tj, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.tl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sy, <8 x float> nofpclass(nan inf) %.3558, <8 x float> %i.qu)
  %i.tm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tl, <8 x float> nofpclass(nan inf) %i.te, <8 x float> nofpclass(nan inf) %i.tk)
  %i.tn = bitcast <8 x float> %i.tm to <8 x i32>
  %i.to = lshr <8 x i32> %i.tn, splat (i32 16)    ; 2 uses
  %i.tp = shufflevector <8 x i32> %i.to, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tq = shufflevector <8 x i32> %i.to, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.tr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.tp, <4 x i32> %i.tq)
  store <8 x i16> %i.tr, ptr %.6704, align 1, !tbaa !46
  %i.ts = getelementptr inbounds nuw i8, ptr %.6704, i64 16 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.6275703, i64 8 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.6289702, i64 8 ; 2 uses
  %i.tv = add nuw nsw i32 %.6316701, 8            ; 2 uses
  %i.tw = add nuw nsw i32 %.6316701, 15
  %i.tx = icmp slt i32 %i.tw, %i.b
  br i1 %i.tx, label %bb.u, label %.preheader576, !llvm.loop !144

bb.v:                                             ; preds = %.lr.ph714, %bb.v
  %.7713 = phi ptr [ %.6.lcssa, %.lr.ph714 ], [ %i.up, %bb.v ] ; 3 uses
  %.7276712 = phi ptr [ %.6275.lcssa, %.lr.ph714 ], [ %i.uq, %bb.v ] ; 2 uses
  %.7290711 = phi ptr [ %.6289.lcssa, %.lr.ph714 ], [ %i.ur, %bb.v ] ; 2 uses
  %.7317710 = phi i32 [ %.6316.lcssa, %.lr.ph714 ], [ %i.us, %bb.v ] ; 2 uses
  %i.ty = load i64, ptr %.7713, align 1, !tbaa !46
  %i.tz = insertelement <2 x i64> poison, i64 %i.ty, i64 0
  %i.ua = bitcast <2 x i64> %i.tz to <8 x i16>
  %34 = shufflevector <8 x i16> %i.ua, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ub = bitcast <8 x i16> %34 to <4 x float>
  %i.uc = load float, ptr %.7276712, align 4, !tbaa !48
  %i.ud = insertelement <4 x float> poison, float %i.uc, i64 0
  %i.ue = shufflevector <4 x float> %i.ud, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uf = load float, ptr %.7290711, align 4, !tbaa !48
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ui = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ub, <4 x float> nofpclass(nan inf) %.2561, <4 x float> %i.sv)
  %i.uj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ui, <4 x float> nofpclass(nan inf) %i.ue, <4 x float> nofpclass(nan inf) %i.uh)
  %i.uk = bitcast <4 x float> %i.uj to <4 x i32>
  %i.ul = lshr <4 x i32> %i.uk, splat (i32 16)
  %i.um = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ul, <4 x i32> poison)
  %i.un = bitcast <8 x i16> %i.um to <2 x i64>
  %i.uo = extractelement <2 x i64> %i.un, i64 0
  store i64 %i.uo, ptr %.7713, align 1, !tbaa !46
  %i.up = getelementptr inbounds nuw i8, ptr %.7713, i64 8 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.7276712, i64 4 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.7290711, i64 4 ; 2 uses
  %i.us = add nuw nsw i32 %.7317710, 4            ; 2 uses
  %i.ut = add nuw nsw i32 %.7317710, 7
  %i.uu = icmp slt i32 %i.ut, %i.b
  br i1 %i.uu, label %bb.v, label %.loopexit577, !llvm.loop !145

.loopexit577:                                     ; preds = %bb.v, %.preheader576, %.loopexit581
  %.8318 = phi i32 [ %.4314, %.loopexit581 ], [ %.6316.lcssa, %.preheader576 ], [ %i.us, %bb.v ] ; 4 uses
  %.8291 = phi ptr [ %.4287, %.loopexit581 ], [ %.6289.lcssa, %.preheader576 ], [ %i.ur, %bb.v ] ; 3 uses
  %.8277 = phi ptr [ %.4273, %.loopexit581 ], [ %.6275.lcssa, %.preheader576 ], [ %i.uq, %bb.v ] ; 3 uses
  %.8 = phi ptr [ %.4, %.loopexit581 ], [ %.6.lcssa, %.preheader576 ], [ %i.up, %bb.v ] ; 3 uses
  br i1 %i.fd, label %.preheader575, label %.loopexit573

.preheader575:                                    ; preds = %.loopexit577
  %i.uv = add nuw nsw i32 %.8318, 15
  %i.uw = icmp slt i32 %i.uv, %i.b
  br i1 %i.uw, label %.lr.ph723, label %.preheader574

.lr.ph723:                                        ; preds = %.preheader575
  %i.ux = fneg fast <16 x float> %.8537
  br label %bb.w

.preheader574:                                    ; preds = %bb.w, %.preheader575
  %.9319.lcssa = phi i32 [ %.8318, %.preheader575 ], [ %i.vw, %bb.w ] ; 3 uses
  %.9292.lcssa = phi ptr [ %.8291, %.preheader575 ], [ %i.vv, %bb.w ] ; 2 uses
  %.9278.lcssa = phi ptr [ %.8277, %.preheader575 ], [ %i.vu, %bb.w ] ; 2 uses
  %.9.lcssa = phi ptr [ %.8, %.preheader575 ], [ %i.vt, %bb.w ] ; 2 uses
  %i.uy = add nuw nsw i32 %.9319.lcssa, 7
  %i.uz = icmp slt i32 %i.uy, %i.b
  br i1 %i.uz, label %.lr.ph732, label %.preheader

.lr.ph732:                                        ; preds = %.preheader574
  %i.va = fneg fast <8 x float> %.6544
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph723, %bb.w
  %.9722 = phi ptr [ %.8, %.lr.ph723 ], [ %i.vt, %bb.w ] ; 3 uses
  %.9278721 = phi ptr [ %.8277, %.lr.ph723 ], [ %i.vu, %bb.w ] ; 2 uses
  %.9292720 = phi ptr [ %.8291, %.lr.ph723 ], [ %i.vv, %bb.w ] ; 2 uses
  %.9319719 = phi i32 [ %.8318, %.lr.ph723 ], [ %i.vw, %bb.w ] ; 2 uses
  %i.vb = load <16 x i16>, ptr %.9722, align 1, !tbaa !46 ; 2 uses
  %35 = shufflevector <16 x i16> %i.vb, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %36 = shufflevector <16 x i16> %i.vb, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.vc = shufflevector <16 x i16> %35, <16 x i16> %36, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.vd = shufflevector <16 x i16> %35, <16 x i16> %36, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ve = bitcast <16 x i16> %i.vc to <8 x i32>
  %i.vf = bitcast <16 x i16> %i.vd to <8 x i32>
  %i.vg = shufflevector <8 x i32> %i.ve, <8 x i32> %i.vf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vh = bitcast <16 x i32> %i.vg to <16 x float>
  %i.vi = load <16 x float>, ptr %.9278721, align 1, !tbaa !46
  %i.vj = load <16 x float>, ptr %.9292720, align 1, !tbaa !46
  %i.vk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.vh, <16 x float> nofpclass(nan inf) %.4554, <16 x float> %i.ux)
  %i.vl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.vk, <16 x float> nofpclass(nan inf) %i.vi, <16 x float> nofpclass(nan inf) %i.vj)
  %i.vm = bitcast <16 x float> %i.vl to <16 x i32>
  %i.vn = lshr <16 x i32> %i.vm, splat (i32 16)   ; 2 uses
  %i.vo = shufflevector <16 x i32> %i.vn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vp = shufflevector <16 x i32> %i.vn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vq = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.vo, <8 x i32> %i.vp)
  %i.vr = bitcast <16 x i16> %i.vq to <4 x i64>
  %i.vs = shufflevector <4 x i64> %i.vr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.vs, ptr %.9722, align 1, !tbaa !46
  %i.vt = getelementptr inbounds nuw i8, ptr %.9722, i64 32 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.9278721, i64 64 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.9292720, i64 64 ; 2 uses
  %i.vw = add nuw nsw i32 %.9319719, 16           ; 2 uses
  %i.vx = add nuw nsw i32 %.9319719, 31
  %i.vy = icmp slt i32 %i.vx, %i.b
  br i1 %i.vy, label %bb.w, label %.preheader574, !llvm.loop !146

.preheader:                                       ; preds = %bb.x, %.preheader574
  %.10320.lcssa = phi i32 [ %.9319.lcssa, %.preheader574 ], [ %i.wr, %bb.x ] ; 3 uses
  %.10293.lcssa = phi ptr [ %.9292.lcssa, %.preheader574 ], [ %i.wq, %bb.x ] ; 2 uses
  %.10279.lcssa = phi ptr [ %.9278.lcssa, %.preheader574 ], [ %i.wp, %bb.x ] ; 2 uses
  %.10.lcssa = phi ptr [ %.9.lcssa, %.preheader574 ], [ %i.wo, %bb.x ] ; 2 uses
  %i.vz = add nuw nsw i32 %.10320.lcssa, 3
  %i.wa = icmp slt i32 %i.vz, %i.b
  br i1 %i.wa, label %.lr.ph741, label %.loopexit573

.lr.ph741:                                        ; preds = %.preheader
  %i.wb = fneg fast <4 x float> %.4549
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph732, %bb.x
  %.10731 = phi ptr [ %.9.lcssa, %.lr.ph732 ], [ %i.wo, %bb.x ] ; 3 uses
  %.10279730 = phi ptr [ %.9278.lcssa, %.lr.ph732 ], [ %i.wp, %bb.x ] ; 2 uses
  %.10293729 = phi ptr [ %.9292.lcssa, %.lr.ph732 ], [ %i.wq, %bb.x ] ; 2 uses
  %.10320728 = phi i32 [ %.9319.lcssa, %.lr.ph732 ], [ %i.wr, %bb.x ] ; 2 uses
  %i.wc = load <8 x i16>, ptr %.10731, align 1, !tbaa !46 ; 2 uses
  %37 = shufflevector <8 x i16> %i.wc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %38 = shufflevector <8 x i16> %i.wc, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.wd = shufflevector <8 x i16> %37, <8 x i16> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.we = bitcast <16 x i16> %i.wd to <8 x float>
  %i.wf = load <8 x float>, ptr %.10279730, align 1, !tbaa !46
  %i.wg = load <8 x float>, ptr %.10293729, align 1, !tbaa !46
  %i.wh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.we, <8 x float> nofpclass(nan inf) %.3558, <8 x float> %i.va)
  %i.wi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wh, <8 x float> nofpclass(nan inf) %i.wf, <8 x float> nofpclass(nan inf) %i.wg)
  %i.wj = bitcast <8 x float> %i.wi to <8 x i32>
  %i.wk = lshr <8 x i32> %i.wj, splat (i32 16)    ; 2 uses
  %i.wl = shufflevector <8 x i32> %i.wk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wm = shufflevector <8 x i32> %i.wk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.wn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.wl, <4 x i32> %i.wm)
  store <8 x i16> %i.wn, ptr %.10731, align 1, !tbaa !46
  %i.wo = getelementptr inbounds nuw i8, ptr %.10731, i64 16 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.10279730, i64 32 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.10293729, i64 32 ; 2 uses
  %i.wr = add nuw nsw i32 %.10320728, 8           ; 2 uses
  %i.ws = add nuw nsw i32 %.10320728, 15
  %i.wt = icmp slt i32 %i.ws, %i.b
  br i1 %i.wt, label %bb.x, label %.preheader, !llvm.loop !147

bb.y:                                             ; preds = %.lr.ph741, %bb.y
  %.11740 = phi ptr [ %.10.lcssa, %.lr.ph741 ], [ %i.xh, %bb.y ] ; 3 uses
  %.11280739 = phi ptr [ %.10279.lcssa, %.lr.ph741 ], [ %i.xi, %bb.y ] ; 2 uses
  %.11294738 = phi ptr [ %.10293.lcssa, %.lr.ph741 ], [ %i.xj, %bb.y ] ; 2 uses
  %.11321737 = phi i32 [ %.10320.lcssa, %.lr.ph741 ], [ %i.xk, %bb.y ] ; 2 uses
  %i.wu = load i64, ptr %.11740, align 1, !tbaa !46
  %i.wv = insertelement <2 x i64> poison, i64 %i.wu, i64 0
  %i.ww = bitcast <2 x i64> %i.wv to <8 x i16>
  %39 = shufflevector <8 x i16> %i.ww, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.wx = bitcast <8 x i16> %39 to <4 x float>
  %i.wy = load <4 x float>, ptr %.11280739, align 1, !tbaa !46
  %i.wz = load <4 x float>, ptr %.11294738, align 1, !tbaa !46
  %i.xa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wx, <4 x float> nofpclass(nan inf) %.2561, <4 x float> %i.wb)
  %i.xb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xa, <4 x float> nofpclass(nan inf) %i.wy, <4 x float> nofpclass(nan inf) %i.wz)
  %i.xc = bitcast <4 x float> %i.xb to <4 x i32>
  %i.xd = lshr <4 x i32> %i.xc, splat (i32 16)
  %i.xe = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.xd, <4 x i32> poison)
  %i.xf = bitcast <8 x i16> %i.xe to <2 x i64>
  %i.xg = extractelement <2 x i64> %i.xf, i64 0
  store i64 %i.xg, ptr %.11740, align 1, !tbaa !46
  %i.xh = getelementptr inbounds nuw i8, ptr %.11740, i64 8 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.11280739, i64 16 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.11294738, i64 16 ; 2 uses
  %i.xk = add nuw nsw i32 %.11321737, 4           ; 2 uses
  %i.xl = add nuw nsw i32 %.11321737, 7
  %i.xm = icmp slt i32 %i.xl, %i.b
  br i1 %i.xm, label %bb.y, label %.loopexit573, !llvm.loop !148

.loopexit573:                                     ; preds = %bb.y, %.preheader, %.loopexit577
  %.12322 = phi i32 [ %.8318, %.loopexit577 ], [ %.10320.lcssa, %.preheader ], [ %i.xk, %bb.y ] ; 5 uses
  %.12295 = phi ptr [ %.8291, %.loopexit577 ], [ %.10293.lcssa, %.preheader ], [ %i.xj, %bb.y ] ; 5 uses
  %.12281 = phi ptr [ %.8277, %.loopexit577 ], [ %.10279.lcssa, %.preheader ], [ %i.xi, %bb.y ] ; 5 uses
  %.12 = phi ptr [ %.8, %.loopexit577 ], [ %.10.lcssa, %.preheader ], [ %i.xh, %bb.y ] ; 5 uses
  %i.xn = icmp slt i32 %.12322, %i.b
  br i1 %i.xn, label %iter.check1060, label %.loopexit

iter.check1060:                                   ; preds = %.loopexit573
  %i.xo = xor i32 %.12322, -1
  %i.xp = add i32 %i.b, %i.xo                     ; 3 uses
  %i.xq = zext i32 %i.xp to i64
  %i.xr = add nuw nsw i64 %i.xq, 1                ; 5 uses
  %min.iters.check1037 = icmp ult i32 %i.xp, 7
  br i1 %min.iters.check1037, label %.lr.ph751.preheader, label %vector.main.loop.iter.check1038

vector.main.loop.iter.check1038:                  ; preds = %iter.check1060
  %min.iters.check1039 = icmp ult i32 %i.xp, 31
  br i1 %min.iters.check1039, label %vec.epilog.ph1064, label %vector.ph1040

vector.ph1040:                                    ; preds = %vector.main.loop.iter.check1038
  %i.xs = and i64 %i.xr, 24
  %n.vec1041 = and i64 %i.xr, 8589934560          ; 6 uses
  %i.xt = shl nuw nsw i64 %n.vec1041, 1
  %i.xu = getelementptr i8, ptr %.12, i64 %i.xt
  %i.xv = shl nuw nsw i64 %n.vec1041, 2           ; 2 uses
  %i.xw = getelementptr i8, ptr %.12281, i64 %i.xv
  %i.xx = getelementptr i8, ptr %.12295, i64 %i.xv
  %i.xy = trunc i64 %n.vec1041 to i32
  %i.xz = add i32 %.12322, %i.xy
  %broadcast.splatinsert1042 = insertelement <16 x float> poison, float %.1309, i64 0
  %broadcast.splat1043 = shufflevector <16 x float> %broadcast.splatinsert1042, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1044 = insertelement <16 x float> poison, float %.2299, i64 0
  %broadcast.splat1045 = shufflevector <16 x float> %broadcast.splatinsert1044, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.ph1040, %vector.body1046
  %index1047 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1057, %vector.body1046 ] ; 3 uses
  %i.ya = shl i64 %index1047, 1
  %next.gep1048 = getelementptr i8, ptr %.12, i64 %i.ya ; 3 uses
  %i.yb = shl i64 %index1047, 2                   ; 2 uses
  %next.gep1049 = getelementptr i8, ptr %.12281, i64 %i.yb ; 2 uses
  %next.gep1050 = getelementptr i8, ptr %.12295, i64 %i.yb ; 2 uses
  %i.yc = getelementptr i8, ptr %next.gep1048, i64 32 ; 2 uses
  %wide.load1051 = load <16 x i16>, ptr %next.gep1048, align 2, !tbaa !159
  %wide.load1052 = load <16 x i16>, ptr %i.yc, align 2, !tbaa !159
  %i.yd = zext <16 x i16> %wide.load1051 to <16 x i32>
  %i.ye = zext <16 x i16> %wide.load1052 to <16 x i32>
  %i.yf = shl nuw <16 x i32> %i.yd, splat (i32 16)
  %i.yg = shl nuw <16 x i32> %i.ye, splat (i32 16)
  %i.yh = bitcast <16 x i32> %i.yf to <16 x float>
  %i.yi = bitcast <16 x i32> %i.yg to <16 x float>
  %i.yj = fmul fast <16 x float> %broadcast.splat1043, %i.yh
  %i.yk = fmul fast <16 x float> %broadcast.splat1043, %i.yi
  %i.yl = fsub fast <16 x float> %i.yj, %broadcast.splat1045
  %i.ym = fsub fast <16 x float> %i.yk, %broadcast.splat1045
  %i.yn = getelementptr i8, ptr %next.gep1049, i64 64
  %wide.load1053 = load <16 x float>, ptr %next.gep1049, align 4, !tbaa !48
  %wide.load1054 = load <16 x float>, ptr %i.yn, align 4, !tbaa !48
  %i.yo = fmul fast <16 x float> %i.yl, %wide.load1053
  %i.yp = fmul fast <16 x float> %i.ym, %wide.load1054
  %i.yq = getelementptr i8, ptr %next.gep1050, i64 64
  %wide.load1055 = load <16 x float>, ptr %next.gep1050, align 4, !tbaa !48
  %wide.load1056 = load <16 x float>, ptr %i.yq, align 4, !tbaa !48
  %i.yr = fadd fast <16 x float> %i.yo, %wide.load1055
  %i.ys = fadd fast <16 x float> %i.yp, %wide.load1056
  %i.yt = bitcast <16 x float> %i.yr to <16 x i32>
  %i.yu = bitcast <16 x float> %i.ys to <16 x i32>
  %i.yv = lshr <16 x i32> %i.yt, splat (i32 16)
  %i.yw = lshr <16 x i32> %i.yu, splat (i32 16)
  %i.yx = trunc nuw <16 x i32> %i.yv to <16 x i16>
  %i.yy = trunc nuw <16 x i32> %i.yw to <16 x i16>
  store <16 x i16> %i.yx, ptr %next.gep1048, align 2, !tbaa !159
  store <16 x i16> %i.yy, ptr %i.yc, align 2, !tbaa !159
  %index.next1057 = add nuw i64 %index1047, 32    ; 2 uses
  %i.yz = icmp eq i64 %index.next1057, %n.vec1041
  br i1 %i.yz, label %middle.block1058, label %vector.body1046, !llvm.loop !149

middle.block1058:                                 ; preds = %vector.body1046
  %cmp.n1059 = icmp eq i64 %i.xr, %n.vec1041
  br i1 %cmp.n1059, label %.loopexit, label %vec.epilog.iter.check1061

vec.epilog.iter.check1061:                        ; preds = %middle.block1058
  %min.epilog.iters.check1063 = icmp eq i64 %i.xs, 0
  br i1 %min.epilog.iters.check1063, label %.lr.ph751.preheader, label %vec.epilog.ph1064, !prof !52

vec.epilog.ph1064:                                ; preds = %vector.main.loop.iter.check1038, %vec.epilog.iter.check1061
  %vec.epilog.resume.val1065 = phi i64 [ %n.vec1041, %vec.epilog.iter.check1061 ], [ 0, %vector.main.loop.iter.check1038 ]
  %n.vec1066 = and i64 %i.xr, 8589934584          ; 5 uses
  %i.za = shl nuw nsw i64 %n.vec1066, 1
  %i.zb = getelementptr i8, ptr %.12, i64 %i.za
  %i.zc = shl nuw nsw i64 %n.vec1066, 2           ; 2 uses
  %i.zd = getelementptr i8, ptr %.12281, i64 %i.zc
  %i.ze = getelementptr i8, ptr %.12295, i64 %i.zc
  %i.zf = trunc i64 %n.vec1066 to i32
  %i.zg = add i32 %.12322, %i.zf
  %broadcast.splatinsert1067 = insertelement <8 x float> poison, float %.1309, i64 0
  %broadcast.splat1068 = shufflevector <8 x float> %broadcast.splatinsert1067, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1069 = insertelement <8 x float> poison, float %.2299, i64 0
  %broadcast.splat1070 = shufflevector <8 x float> %broadcast.splatinsert1069, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body1071

vec.epilog.vector.body1071:                       ; preds = %vec.epilog.vector.body1071, %vec.epilog.ph1064
  %index1072 = phi i64 [ %vec.epilog.resume.val1065, %vec.epilog.ph1064 ], [ %index.next1079, %vec.epilog.vector.body1071 ] ; 3 uses
  %i.zh = shl i64 %index1072, 1
  %next.gep1073 = getelementptr i8, ptr %.12, i64 %i.zh ; 2 uses
  %i.zi = shl i64 %index1072, 2                   ; 2 uses
  %next.gep1074 = getelementptr i8, ptr %.12281, i64 %i.zi
  %next.gep1075 = getelementptr i8, ptr %.12295, i64 %i.zi
  %wide.load1076 = load <8 x i16>, ptr %next.gep1073, align 2, !tbaa !159
  %i.zj = zext <8 x i16> %wide.load1076 to <8 x i32>
  %i.zk = shl nuw <8 x i32> %i.zj, splat (i32 16)
  %i.zl = bitcast <8 x i32> %i.zk to <8 x float>
  %i.zm = fmul fast <8 x float> %broadcast.splat1068, %i.zl
  %i.zn = fsub fast <8 x float> %i.zm, %broadcast.splat1070
  %wide.load1077 = load <8 x float>, ptr %next.gep1074, align 4, !tbaa !48
  %i.zo = fmul fast <8 x float> %i.zn, %wide.load1077
  %wide.load1078 = load <8 x float>, ptr %next.gep1075, align 4, !tbaa !48
  %i.zp = fadd fast <8 x float> %i.zo, %wide.load1078
  %i.zq = bitcast <8 x float> %i.zp to <8 x i32>
  %i.zr = lshr <8 x i32> %i.zq, splat (i32 16)
  %i.zs = trunc nuw <8 x i32> %i.zr to <8 x i16>
  store <8 x i16> %i.zs, ptr %next.gep1073, align 2, !tbaa !159
  %index.next1079 = add nuw i64 %index1072, 8     ; 2 uses
  %i.zt = icmp eq i64 %index.next1079, %n.vec1066
  br i1 %i.zt, label %vec.epilog.middle.block1080, label %vec.epilog.vector.body1071, !llvm.loop !150

vec.epilog.middle.block1080:                      ; preds = %vec.epilog.vector.body1071
  %cmp.n1081 = icmp eq i64 %i.xr, %n.vec1066
  br i1 %cmp.n1081, label %.loopexit, label %.lr.ph751.preheader

.lr.ph751.preheader:                              ; preds = %iter.check1060, %vec.epilog.iter.check1061, %vec.epilog.middle.block1080
  %.13749.ph = phi ptr [ %.12, %iter.check1060 ], [ %i.xu, %vec.epilog.iter.check1061 ], [ %i.zb, %vec.epilog.middle.block1080 ]
  %.13282748.ph = phi ptr [ %.12281, %iter.check1060 ], [ %i.xw, %vec.epilog.iter.check1061 ], [ %i.zd, %vec.epilog.middle.block1080 ]
  %.13296747.ph = phi ptr [ %.12295, %iter.check1060 ], [ %i.xx, %vec.epilog.iter.check1061 ], [ %i.ze, %vec.epilog.middle.block1080 ]
  %.13323746.ph = phi i32 [ %.12322, %iter.check1060 ], [ %i.xz, %vec.epilog.iter.check1061 ], [ %i.zg, %vec.epilog.middle.block1080 ]
  br label %.lr.ph751

.lr.ph751:                                        ; preds = %.lr.ph751.preheader, %.lr.ph751
  %.13749 = phi ptr [ %i.aah, %.lr.ph751 ], [ %.13749.ph, %.lr.ph751.preheader ] ; 3 uses
  %.13282748 = phi ptr [ %i.aai, %.lr.ph751 ], [ %.13282748.ph, %.lr.ph751.preheader ] ; 2 uses
  %.13296747 = phi ptr [ %i.aaj, %.lr.ph751 ], [ %.13296747.ph, %.lr.ph751.preheader ] ; 2 uses
  %.13323746 = phi i32 [ %i.aak, %.lr.ph751 ], [ %.13323746.ph, %.lr.ph751.preheader ]
  %i.zu = load i16, ptr %.13749, align 2, !tbaa !159
  %i.zv = zext i16 %i.zu to i32
  %i.zw = shl nuw i32 %i.zv, 16
  %i.zx = bitcast i32 %i.zw to float
  %i.zy = fmul fast float %.1309, %i.zx
  %i.zz = fsub fast float %i.zy, %.2299
  %i.aaa = load float, ptr %.13282748, align 4, !tbaa !48
  %i.aab = fmul fast float %i.zz, %i.aaa
  %i.aac = load float, ptr %.13296747, align 4, !tbaa !48
  %i.aad = fadd fast float %i.aab, %i.aac
  %i.aae = bitcast float %i.aad to i32
  %i.aaf = lshr i32 %i.aae, 16
  %i.aag = trunc nuw i32 %i.aaf to i16
  store i16 %i.aag, ptr %.13749, align 2, !tbaa !159
  %i.aah = getelementptr inbounds nuw i8, ptr %.13749, i64 2
  %i.aai = getelementptr inbounds nuw i8, ptr %.13282748, i64 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %.13296747, i64 4
  %i.aak = add nuw nsw i32 %.13323746, 1          ; 2 uses
  %exitcond817.not = icmp eq i32 %i.aak, %i.b
  br i1 %exitcond817.not, label %.loopexit, label %.lr.ph751, !llvm.loop !151

.preheader588.loopexit:                           ; preds = %bb.z
  %i.aal = and i32 %i.b, 2147483632
  br label %.preheader588

.preheader588:                                    ; preds = %.preheader588.loopexit, %.preheader589
  %.14.lcssa = phi ptr [ %0, %.preheader589 ], [ %i.abe, %.preheader588.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader589 ], [ %i.aal, %.preheader588.loopexit ] ; 3 uses
  %i.aam = or disjoint i32 %.0.lcssa, 7
  %i.aan = icmp slt i32 %i.aam, %i.b
  br i1 %i.aan, label %.lr.ph654, label %.preheader587

.lr.ph654:                                        ; preds = %.preheader588
  %i.aao = fneg fast <8 x float> %.6544
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph649, %bb.z
  %.0648 = phi i32 [ 0, %.lr.ph649 ], [ %i.abf, %bb.z ]
  %.14647 = phi ptr [ %0, %.lr.ph649 ], [ %i.abe, %bb.z ] ; 3 uses
  %i.aap = load <16 x i16>, ptr %.14647, align 1, !tbaa !46 ; 2 uses
  %40 = shufflevector <16 x i16> %i.aap, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %41 = shufflevector <16 x i16> %i.aap, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.aaq = shufflevector <16 x i16> %40, <16 x i16> %41, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aar = shufflevector <16 x i16> %40, <16 x i16> %41, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aas = bitcast <16 x i16> %i.aaq to <8 x i32>
  %i.aat = bitcast <16 x i16> %i.aar to <8 x i32>
  %i.aau = shufflevector <8 x i32> %i.aas, <8 x i32> %i.aat, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aav = bitcast <16 x i32> %i.aau to <16 x float>
  %i.aaw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aav, <16 x float> nofpclass(nan inf) %.4554, <16 x float> %i.nb)
  %i.aax = bitcast <16 x float> %i.aaw to <16 x i32>
  %i.aay = lshr <16 x i32> %i.aax, splat (i32 16) ; 2 uses
  %i.aaz = shufflevector <16 x i32> %i.aay, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aba = shufflevector <16 x i32> %i.aay, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abb = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aaz, <8 x i32> %i.aba)
  %i.abc = bitcast <16 x i16> %i.abb to <4 x i64>
  %i.abd = shufflevector <4 x i64> %i.abc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.abd, ptr %.14647, align 1, !tbaa !46
  %i.abe = getelementptr inbounds nuw i8, ptr %.14647, i64 32 ; 2 uses
  %i.abf = add nuw nsw i32 %.0648, 16             ; 2 uses
  %i.abg = or disjoint i32 %i.abf, 15
  %i.abh = icmp slt i32 %i.abg, %i.b
  br i1 %i.abh, label %bb.z, label %.preheader588.loopexit, !llvm.loop !152

.preheader587:                                    ; preds = %bb.aa, %.preheader588
  %.15.lcssa = phi ptr [ %.14.lcssa, %.preheader588 ], [ %i.abu, %bb.aa ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader588 ], [ %i.abv, %bb.aa ] ; 3 uses
  %i.abi = or disjoint i32 %.1.lcssa, 3
  %i.abj = icmp slt i32 %i.abi, %i.b
  br i1 %i.abj, label %.lr.ph659, label %.preheader585

.lr.ph659:                                        ; preds = %.preheader587
  %i.abk = fneg fast <4 x float> %.4549
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph654, %bb.aa
  %.1653 = phi i32 [ %.0.lcssa, %.lr.ph654 ], [ %i.abv, %bb.aa ]
  %.15652 = phi ptr [ %.14.lcssa, %.lr.ph654 ], [ %i.abu, %bb.aa ] ; 3 uses
  %i.abl = load <8 x i16>, ptr %.15652, align 1, !tbaa !46 ; 2 uses
  %42 = shufflevector <8 x i16> %i.abl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %43 = shufflevector <8 x i16> %i.abl, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.abm = shufflevector <8 x i16> %42, <8 x i16> %43, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abn = bitcast <16 x i16> %i.abm to <8 x float>
  %i.abo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abn, <8 x float> nofpclass(nan inf) %.3558, <8 x float> %i.aao)
  %i.abp = bitcast <8 x float> %i.abo to <8 x i32>
  %i.abq = lshr <8 x i32> %i.abp, splat (i32 16)  ; 2 uses
  %i.abr = shufflevector <8 x i32> %i.abq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abs = shufflevector <8 x i32> %i.abq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.abt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.abr, <4 x i32> %i.abs)
  store <8 x i16> %i.abt, ptr %.15652, align 1, !tbaa !46
  %i.abu = getelementptr inbounds nuw i8, ptr %.15652, i64 16 ; 2 uses
  %i.abv = add nuw nsw i32 %.1653, 8              ; 3 uses
  %i.abw = or disjoint i32 %i.abv, 7
  %i.abx = icmp slt i32 %i.abw, %i.b
  br i1 %i.abx, label %bb.aa, label %.preheader587, !llvm.loop !153

.preheader585:                                    ; preds = %bb.ab, %.preheader587
  %.16.lcssa = phi ptr [ %.15.lcssa, %.preheader587 ], [ %i.adq, %bb.ab ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader587 ], [ %i.adr, %bb.ab ] ; 5 uses
  %i.aby = icmp slt i32 %.2.lcssa, %i.b
  br i1 %i.aby, label %iter.check1017, label %.loopexit

iter.check1017:                                   ; preds = %.preheader585
  %i.abz = xor i32 %.2.lcssa, -1
  %i.aca = add i32 %i.b, %i.abz                   ; 3 uses
  %i.acb = zext i32 %i.aca to i64
  %i.acc = add nuw nsw i64 %i.acb, 1              ; 5 uses
  %min.iters.check1001 = icmp ult i32 %i.aca, 7
  br i1 %min.iters.check1001, label %.lr.ph664.preheader, label %vector.main.loop.iter.check1002

vector.main.loop.iter.check1002:                  ; preds = %iter.check1017
  %min.iters.check1003 = icmp ult i32 %i.aca, 31
  br i1 %min.iters.check1003, label %vec.epilog.ph1021, label %vector.ph1004

vector.ph1004:                                    ; preds = %vector.main.loop.iter.check1002
  %i.acd = and i64 %i.acc, 24
  %n.vec1005 = and i64 %i.acc, 8589934560         ; 5 uses
  %i.ace = trunc i64 %n.vec1005 to i32
  %i.acf = add i32 %.2.lcssa, %i.ace
  %i.acg = shl nuw nsw i64 %n.vec1005, 1
  %i.ach = getelementptr i8, ptr %.16.lcssa, i64 %i.acg
  %broadcast.splatinsert1006 = insertelement <32 x float> poison, float %.1309, i64 0
  %broadcast.splat1007 = shufflevector <32 x float> %broadcast.splatinsert1006, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1008 = insertelement <32 x float> poison, float %.2299, i64 0
  %broadcast.splat1009 = shufflevector <32 x float> %broadcast.splatinsert1008, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.ph1004, %vector.body1010
  %index1011 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1014, %vector.body1010 ] ; 2 uses
  %i.aci = shl i64 %index1011, 1
  %next.gep1012 = getelementptr i8, ptr %.16.lcssa, i64 %i.aci ; 2 uses
  %wide.load1013 = load <32 x i16>, ptr %next.gep1012, align 2, !tbaa !159
  %i.acj = zext <32 x i16> %wide.load1013 to <32 x i32>
  %i.ack = shl nuw <32 x i32> %i.acj, splat (i32 16)
  %i.acl = bitcast <32 x i32> %i.ack to <32 x float>
  %i.acm = fmul fast <32 x float> %broadcast.splat1007, %i.acl
  %i.acn = fsub fast <32 x float> %i.acm, %broadcast.splat1009
  %i.aco = bitcast <32 x float> %i.acn to <32 x i32>
  %i.acp = lshr <32 x i32> %i.aco, splat (i32 16)
  %i.acq = trunc nuw <32 x i32> %i.acp to <32 x i16>
  store <32 x i16> %i.acq, ptr %next.gep1012, align 2, !tbaa !159
  %index.next1014 = add nuw i64 %index1011, 32    ; 2 uses
  %i.acr = icmp eq i64 %index.next1014, %n.vec1005
  br i1 %i.acr, label %middle.block1015, label %vector.body1010, !llvm.loop !154

middle.block1015:                                 ; preds = %vector.body1010
  %cmp.n1016 = icmp eq i64 %i.acc, %n.vec1005
  br i1 %cmp.n1016, label %.loopexit, label %vec.epilog.iter.check1018

vec.epilog.iter.check1018:                        ; preds = %middle.block1015
  %min.epilog.iters.check1020 = icmp eq i64 %i.acd, 0
  br i1 %min.epilog.iters.check1020, label %.lr.ph664.preheader, label %vec.epilog.ph1021, !prof !52

vec.epilog.ph1021:                                ; preds = %vector.main.loop.iter.check1002, %vec.epilog.iter.check1018
  %vec.epilog.resume.val1022 = phi i64 [ %n.vec1005, %vec.epilog.iter.check1018 ], [ 0, %vector.main.loop.iter.check1002 ]
  %n.vec1023 = and i64 %i.acc, 8589934584         ; 4 uses
  %i.acs = trunc i64 %n.vec1023 to i32
  %i.act = add i32 %.2.lcssa, %i.acs
  %i.acu = shl nuw nsw i64 %n.vec1023, 1
  %i.acv = getelementptr i8, ptr %.16.lcssa, i64 %i.acu
  %broadcast.splatinsert1024 = insertelement <8 x float> poison, float %.1309, i64 0
  %broadcast.splat1025 = shufflevector <8 x float> %broadcast.splatinsert1024, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1026 = insertelement <8 x float> poison, float %.2299, i64 0
  %broadcast.splat1027 = shufflevector <8 x float> %broadcast.splatinsert1026, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body1028

vec.epilog.vector.body1028:                       ; preds = %vec.epilog.vector.body1028, %vec.epilog.ph1021
  %index1029 = phi i64 [ %vec.epilog.resume.val1022, %vec.epilog.ph1021 ], [ %index.next1032, %vec.epilog.vector.body1028 ] ; 2 uses
  %i.acw = shl i64 %index1029, 1
  %next.gep1030 = getelementptr i8, ptr %.16.lcssa, i64 %i.acw ; 2 uses
  %wide.load1031 = load <8 x i16>, ptr %next.gep1030, align 2, !tbaa !159
  %i.acx = zext <8 x i16> %wide.load1031 to <8 x i32>
  %i.acy = shl nuw <8 x i32> %i.acx, splat (i32 16)
  %i.acz = bitcast <8 x i32> %i.acy to <8 x float>
  %i.ada = fmul fast <8 x float> %broadcast.splat1025, %i.acz
  %i.adb = fsub fast <8 x float> %i.ada, %broadcast.splat1027
  %i.adc = bitcast <8 x float> %i.adb to <8 x i32>
  %i.add = lshr <8 x i32> %i.adc, splat (i32 16)
  %i.ade = trunc nuw <8 x i32> %i.add to <8 x i16>
  store <8 x i16> %i.ade, ptr %next.gep1030, align 2, !tbaa !159
  %index.next1032 = add nuw i64 %index1029, 8     ; 2 uses
  %i.adf = icmp eq i64 %index.next1032, %n.vec1023
  br i1 %i.adf, label %vec.epilog.middle.block1033, label %vec.epilog.vector.body1028, !llvm.loop !155

vec.epilog.middle.block1033:                      ; preds = %vec.epilog.vector.body1028
  %cmp.n1034 = icmp eq i64 %i.acc, %n.vec1023
  br i1 %cmp.n1034, label %.loopexit, label %.lr.ph664.preheader

.lr.ph664.preheader:                              ; preds = %iter.check1017, %vec.epilog.iter.check1018, %vec.epilog.middle.block1033
  %.3663.ph = phi i32 [ %.2.lcssa, %iter.check1017 ], [ %i.acf, %vec.epilog.iter.check1018 ], [ %i.act, %vec.epilog.middle.block1033 ]
  %.17662.ph = phi ptr [ %.16.lcssa, %iter.check1017 ], [ %i.ach, %vec.epilog.iter.check1018 ], [ %i.acv, %vec.epilog.middle.block1033 ]
  br label %.lr.ph664

bb.ab:                                            ; preds = %.lr.ph659, %bb.ab
  %.2658 = phi i32 [ %.1.lcssa, %.lr.ph659 ], [ %i.adr, %bb.ab ]
  %.16657 = phi ptr [ %.15.lcssa, %.lr.ph659 ], [ %i.adq, %bb.ab ] ; 3 uses
  %i.adg = load i64, ptr %.16657, align 1, !tbaa !46
  %i.adh = insertelement <2 x i64> poison, i64 %i.adg, i64 0
  %i.adi = bitcast <2 x i64> %i.adh to <8 x i16>
  %44 = shufflevector <8 x i16> %i.adi, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.adj = bitcast <8 x i16> %44 to <4 x float>
  %i.adk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.adj, <4 x float> nofpclass(nan inf) %.2561, <4 x float> %i.abk)
  %i.adl = bitcast <4 x float> %i.adk to <4 x i32>
  %i.adm = lshr <4 x i32> %i.adl, splat (i32 16)
  %i.adn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.adm, <4 x i32> poison)
  %i.ado = bitcast <8 x i16> %i.adn to <2 x i64>
  %i.adp = extractelement <2 x i64> %i.ado, i64 0
  store i64 %i.adp, ptr %.16657, align 1, !tbaa !46
  %i.adq = getelementptr inbounds nuw i8, ptr %.16657, i64 8 ; 2 uses
  %i.adr = add nuw nsw i32 %.2658, 4              ; 3 uses
  %i.ads = or disjoint i32 %i.adr, 3
  %i.adt = icmp slt i32 %i.ads, %i.b
  br i1 %i.adt, label %bb.ab, label %.preheader585, !llvm.loop !156

.lr.ph664:                                        ; preds = %.lr.ph664.preheader, %.lr.ph664
  %.3663 = phi i32 [ %i.aee, %.lr.ph664 ], [ %.3663.ph, %.lr.ph664.preheader ]
  %.17662 = phi ptr [ %i.aed, %.lr.ph664 ], [ %.17662.ph, %.lr.ph664.preheader ] ; 3 uses
  %i.adu = load i16, ptr %.17662, align 2, !tbaa !159
  %i.adv = zext i16 %i.adu to i32
  %i.adw = shl nuw i32 %i.adv, 16
  %i.adx = bitcast i32 %i.adw to float
  %i.ady = fmul fast float %.1309, %i.adx
  %i.adz = fsub fast float %i.ady, %.2299
  %i.aea = bitcast float %i.adz to i32
  %i.aeb = lshr i32 %i.aea, 16
  %i.aec = trunc nuw i32 %i.aeb to i16
  store i16 %i.aec, ptr %.17662, align 2, !tbaa !159
  %i.aed = getelementptr inbounds nuw i8, ptr %.17662, i64 2
  %i.aee = add nuw nsw i32 %.3663, 1              ; 2 uses
  %exitcond816.not = icmp eq i32 %i.aee, %i.b
  br i1 %exitcond816.not, label %.loopexit, label %.lr.ph664, !llvm.loop !157

.loopexit:                                        ; preds = %.lr.ph664, %.lr.ph751, %middle.block1015, %vec.epilog.middle.block1033, %middle.block1058, %vec.epilog.middle.block1080, %.preheader585, %.loopexit573, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn20LayerNorm_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !20     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.h = load i32, ptr %0, align 4, !tbaa !20     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !20
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !20
  %i.k = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %.not17 = icmp sgt i32 %i.k, %i.j
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.q = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !16
  %i.s = load i32, ptr %i.l, align 4, !tbaa !21
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %indvars.iv, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !27
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.aa = load float, ptr %i.p, align 4, !tbaa !43
  %i.ab = load i32, ptr %5, align 4, !tbaa !20
  %i.ac = load i32, ptr %6, align 4, !tbaa !20
  invoke fastcc void @_ZN4ncnnL19layernorm_bf16s_sseEPtPKfS2_fii(ptr noundef %i.x, ptr noundef %i.y, ptr noundef %i.z, float noundef nofpclass(nan inf) %i.aa, i32 noundef %i.ab, i32 noundef %i.ac)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !20
  %i.ae = sext i32 %i.ad to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ae
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #17
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn20LayerNorm_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !20     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.h = load i32, ptr %0, align 4, !tbaa !20     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !20
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !20
  %i.k = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %.not32 = icmp sgt i32 %i.k, %i.j
  br i1 %.not32, label %._crit_edge34, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 296
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.r = load i32, ptr %3, align 4, !tbaa !20     ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.preheader.preheader, label %._crit_edge34

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.u = phi i32 [ %i.j, %.preheader.preheader ], [ %i.x, %._crit_edge ]
  %i.v = phi i32 [ %i.r, %.preheader.preheader ], [ %i.y, %._crit_edge ] ; 2 uses
  %indvars.iv37 = phi i64 [ %i.t, %.preheader.preheader ], [ %indvars.iv.next38, %._crit_edge ] ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.b, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.x = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.u, %.preheader ] ; 2 uses
  %i.y = phi i32 [ %i.aq, %._crit_edge.loopexit ], [ %i.v, %.preheader ]
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, 1
  %i.z = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv37, %i.z
  br i1 %.not.not, label %.preheader, label %._crit_edge34, !llvm.loop !160

.noexc:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !164
  %i.ab = load ptr, ptr %4, align 8, !tbaa !16, !noalias !164
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !164
  %i.ad = mul i64 %i.ac, %indvars.iv37
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !27, !noalias !164 ; 2 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = sext i32 %i.aa to i64
  %i.ai = mul nsw i64 %indvars.iv, %i.ah
  %i.aj = mul i64 %i.ai, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.an = load float, ptr %i.q, align 4, !tbaa !43
  %i.ao = load i32, ptr %6, align 4, !tbaa !20
  %i.ap = load i32, ptr %7, align 4, !tbaa !20
end_hunk_0
