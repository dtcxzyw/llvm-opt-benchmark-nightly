Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/instancenorm_x86_avx512?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn23InstanceNorm_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index370 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next373, %vec.epilog.vector.body ] ; 2 uses
  %i.kx = shl i64 %index370, 2
  %next.gep371 = getelementptr i8, ptr %.2.lcssa, i64 %i.kx ; 2 uses
  %wide.load372 = load <8 x float>, ptr %next.gep371, align 4, !tbaa !43
  %i.ky = fmul fast <8 x float> %wide.load372, %broadcast.splat367
  %i.kz = fadd fast <8 x float> %i.ky, %broadcast.splat369
  store <8 x float> %i.kz, ptr %next.gep371, align 4, !tbaa !43
  %index.next373 = add nuw i64 %index370, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next373, %n.vec365
  br i1 %i.la, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n374 = icmp eq i64 %i.ka, %n.vec365
  br i1 %cmp.n374, label %._crit_edge264, label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3262.ph = phi ptr [ %.2.lcssa, %iter.check ], [ %i.kd, %vec.epilog.iter.check ], [ %i.ku, %vec.epilog.middle.block ]
  %.11261.ph = phi i32 [ %.10.lcssa, %iter.check ], [ %i.kf, %vec.epilog.iter.check ], [ %i.kw, %vec.epilog.middle.block ]
  br label %.lr.ph263

.lr.ph257:                                        ; preds = %._crit_edge251, %.lr.ph257
  %.2255 = phi ptr [ %i.ld, %.lr.ph257 ], [ %.1.lcssa, %._crit_edge251 ] ; 3 uses
  %.10254 = phi i32 [ %i.le, %.lr.ph257 ], [ %.9.lcssa, %._crit_edge251 ]
  %i.lb = load <4 x float>, ptr %.2255, align 1, !tbaa !40
  %i.lc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lb, <4 x float> nofpclass(nan inf) %i.jq, <4 x float> nofpclass(nan inf) %i.js)
  store <4 x float> %i.lc, ptr %.2255, align 1, !tbaa !40
  %i.ld = getelementptr inbounds nuw i8, ptr %.2255, i64 16 ; 2 uses
  %i.le = add nuw nsw i32 %.10254, 4              ; 3 uses
  %i.lf = or disjoint i32 %i.le, 3
  %i.lg = load i32, ptr %4, align 4, !tbaa !25    ; 2 uses
  %i.lh = icmp slt i32 %i.lf, %i.lg
  br i1 %i.lh, label %.lr.ph257, label %.preheader, !llvm.loop !80

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %.lr.ph263
  %.3262 = phi ptr [ %i.ll, %.lr.ph263 ], [ %.3262.ph, %.lr.ph263.preheader ] ; 3 uses
  %.11261 = phi i32 [ %i.lm, %.lr.ph263 ], [ %.11261.ph, %.lr.ph263.preheader ]
  %i.li = load float, ptr %.3262, align 4, !tbaa !43
  %i.lj = fmul fast float %i.li, %.0119
  %i.lk = fadd fast float %i.lj, %.0118
  store float %i.lk, ptr %.3262, align 4, !tbaa !43
  %i.ll = getelementptr inbounds nuw i8, ptr %.3262, i64 4
  %i.lm = add nuw nsw i32 %.11261, 1              ; 2 uses
  %exitcond295.not = icmp eq i32 %i.lm, %i.jv
  br i1 %exitcond295.not, label %._crit_edge264, label %.lr.ph263, !llvm.loop !81

._crit_edge264:                                   ; preds = %.lr.ph263, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond297.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond297.not, label %._crit_edge267, label %.noexc

._crit_edge267:                                   ; preds = %._crit_edge264, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge267, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !51 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn23InstanceNorm_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef readonly captures(none) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca float, align 4                    ; 7 uses
  %i.f = alloca float, align 4                    ; 7 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.i, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.j = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !25
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !25
  %i.m = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not72 = icmp sgt i32 %i.m, %i.l
  br i1 %.not72, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 296
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 212 ; 2 uses
  %i.t = sext i32 %i.m to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %_ZN4ncnnL22instancenorm_bf16s_sseEPtiff.exit
  %indvars.iv = phi i64 [ %i.t, %.noexc.lr.ph ], [ %indvars.iv.next, %_ZN4ncnnL22instancenorm_bf16s_sseEPtiff.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !16, !noalias !104
  %i.v = load i64, ptr %i.n, align 8, !tbaa !17, !noalias !104
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !104
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !43
  %i.aa = load i32, ptr %4, align 4, !tbaa !25    ; 22 uses
  %i.ab = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
          to label %.noexc31 unwind label %bb.j

.noexc31:                                         ; preds = %.noexc
  %.not.i30 = icmp eq i32 %i.ab, 0
  br i1 %.not.i30, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %.noexc31
  %i.ac = icmp sgt i32 %i.aa, 15                  ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ad = add nsw i32 %i.aa, -16                  ; 2 uses
  %i.ae = lshr i32 %i.ad, 4                       ; 2 uses
  %i.af = add nuw nsw i32 %i.ae, 1                ; 2 uses
  %i.ag = icmp eq i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.af, 536870910
  br label %.lr.ph.i

bb.c:                                             ; preds = %.noexc31
  invoke void @_ZN4ncnn46instancenorm_bf16s_compute_mean_var_avx512bf16EPKtiRfS2_(ptr noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN4ncnnL35instancenorm_bf16s_compute_mean_varEPKtiRfS2_.exit unwind label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0122.i = phi ptr [ %i.z, %.lr.ph.i.preheader.new ], [ %i.ay, %.lr.ph.i ] ; 3 uses
  %.0114120.i = phi <16 x float> [ zeroinitializer, %.lr.ph.i.preheader.new ], [ %i.ax, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ah = load <16 x i16>, ptr %.0122.i, align 1, !tbaa !40 ; 2 uses
  %6 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ah, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %7 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ah, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ai = shufflevector <16 x i16> %6, <16 x i16> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aj = shufflevector <16 x i16> %6, <16 x i16> %7, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ak = bitcast <16 x i16> %i.ai to <8 x i32>
  %i.al = bitcast <16 x i16> %i.aj to <8 x i32>
  %i.am = shufflevector <8 x i32> %i.ak, <8 x i32> %i.al, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = bitcast <16 x i32> %i.am to <16 x float>
  %i.ao = fadd fast <16 x float> %.0114120.i, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32
  %i.aq = load <16 x i16>, ptr %i.ap, align 1, !tbaa !40 ; 2 uses
  %8 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.aq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %9 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.aq, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ar = shufflevector <16 x i16> %8, <16 x i16> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.as = shufflevector <16 x i16> %8, <16 x i16> %9, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.at = bitcast <16 x i16> %i.ar to <8 x i32>
  %i.au = bitcast <16 x i16> %i.as to <8 x i32>
  %i.av = shufflevector <8 x i32> %i.at, <8 x i32> %i.au, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aw = bitcast <16 x i32> %i.av to <16 x float>
  %i.ax = fadd fast <16 x float> %i.ao, %i.aw     ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0122.i, i64 64 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !86

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.az = and i32 %i.ad, 16
  %lcmp.mod.not.not = icmp eq i32 %i.az, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.0122.i.epil.init = phi ptr [ %i.z, %.lr.ph.i.preheader ], [ %i.ay, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.0114120.i.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.ax, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod285 = trunc i32 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod285)
  %i.ba = load <16 x i16>, ptr %.0122.i.epil.init, align 1, !tbaa !40 ; 2 uses
  %10 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %11 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ba, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bb = shufflevector <16 x i16> %10, <16 x i16> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bc = shufflevector <16 x i16> %10, <16 x i16> %11, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bd = bitcast <16 x i16> %i.bb to <8 x i32>
  %i.be = bitcast <16 x i16> %i.bc to <8 x i32>
  %i.bf = shufflevector <8 x i32> %i.bd, <8 x i32> %i.be, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bg = bitcast <16 x i32> %i.bf to <16 x float>
  %i.bh = fadd fast <16 x float> %.0114120.i.epil.init, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.0122.i.epil.init, i64 32
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa250 = phi <16 x float> [ %i.ax, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bh, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi ptr [ %i.ay, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bi, %.lr.ph.i.epil.preheader ]
  %i.bj = and i32 %i.aa, 2147483632
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0114.lcssa.i = phi <16 x float> [ zeroinitializer, %.preheader.i ], [ %.lcssa250, %._crit_edge.loopexit.i ] ; 3 uses
  %.078.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bj, %._crit_edge.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.z, %.preheader.i ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %i.bk = shufflevector <16 x float> %.0114.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bl = shufflevector <16 x float> %.0114.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bm = fadd fast <8 x float> %i.bk, %i.bl      ; 2 uses
  %i.bn = shufflevector <8 x float> %i.bm, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bo = shufflevector <8 x float> %i.bm, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bp = fadd fast <4 x float> %i.bn, %i.bo      ; 2 uses
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.br = fadd fast <4 x float> %i.bq, %i.bp
  %i.bs = extractelement <4 x float> %i.br, i64 1
  %i.bt = shufflevector <16 x float> %.0114.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.bu = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bt)
  %i.bv = or disjoint i32 %.078.lcssa.i, 7
  %i.bw = icmp slt i32 %i.bv, %i.aa
  br i1 %i.bw, label %.lr.ph129.i, label %._crit_edge130.i

.lr.ph129.i:                                      ; preds = %._crit_edge.i, %.lr.ph129.i
  %.1127.i = phi ptr [ %i.cb, %.lr.ph129.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.179126.i = phi i32 [ %i.cc, %.lr.ph129.i ], [ %.078.lcssa.i, %._crit_edge.i ]
  %.0115125.i = phi <8 x float> [ %i.ca, %.lr.ph129.i ], [ zeroinitializer, %._crit_edge.i ]
  %i.bx = load <8 x i16>, ptr %.1127.i, align 1, !tbaa !40 ; 2 uses
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %13 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.by = shufflevector <8 x i16> %12, <8 x i16> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bz = bitcast <16 x i16> %i.by to <8 x float>
  %i.ca = fadd fast <8 x float> %.0115125.i, %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1127.i, i64 16 ; 2 uses
  %i.cc = add nuw nsw i32 %.179126.i, 8           ; 3 uses
  %i.cd = or disjoint i32 %i.cc, 7
  %i.ce = icmp slt i32 %i.cd, %i.aa
  br i1 %i.ce, label %.lr.ph129.i, label %._crit_edge130.i, !llvm.loop !87

._crit_edge130.i:                                 ; preds = %.lr.ph129.i, %._crit_edge.i
  %.0115.lcssa.i = phi <8 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.ca, %.lr.ph129.i ] ; 2 uses
  %.179.lcssa.i = phi i32 [ %.078.lcssa.i, %._crit_edge.i ], [ %i.cc, %.lr.ph129.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %i.cb, %.lr.ph129.i ] ; 2 uses
  %i.cf = shufflevector <8 x float> %.0115.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cg = shufflevector <8 x float> %.0115.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ch = fadd fast <4 x float> %i.cf, %i.cg      ; 2 uses
  %i.ci = or disjoint i32 %.179.lcssa.i, 3
  %i.cj = icmp slt i32 %i.ci, %i.aa
  br i1 %i.cj, label %.lr.ph138.i, label %._crit_edge139.i

.lr.ph138.i:                                      ; preds = %._crit_edge130.i, %.lr.ph138.i
  %.2136.i = phi ptr [ %i.cp, %.lr.ph138.i ], [ %.1.lcssa.i, %._crit_edge130.i ] ; 2 uses
  %.280135.i = phi i32 [ %i.cq, %.lr.ph138.i ], [ %.179.lcssa.i, %._crit_edge130.i ]
  %.0117134.i = phi <4 x float> [ %i.co, %.lr.ph138.i ], [ zeroinitializer, %._crit_edge130.i ]
  %i.ck = load i64, ptr %.2136.i, align 1, !tbaa !40
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cn = bitcast <8 x i16> %14 to <4 x float>
  %i.co = fadd fast <4 x float> %.0117134.i, %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.2136.i, i64 8 ; 2 uses
  %i.cq = add nuw nsw i32 %.280135.i, 4           ; 3 uses
  %i.cr = or disjoint i32 %i.cq, 3
  %i.cs = icmp slt i32 %i.cr, %i.aa
  br i1 %i.cs, label %.lr.ph138.i, label %._crit_edge139.i, !llvm.loop !88

._crit_edge139.i:                                 ; preds = %.lr.ph138.i, %._crit_edge130.i
  %.0117.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge130.i ], [ %i.co, %.lr.ph138.i ] ; 2 uses
  %.280.lcssa.i = phi i32 [ %.179.lcssa.i, %._crit_edge130.i ], [ %i.cq, %.lr.ph138.i ] ; 5 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %._crit_edge130.i ], [ %i.cp, %.lr.ph138.i ] ; 6 uses
  %i.ct = shufflevector <4 x float> %.0117.lcssa.i, <4 x float> %i.ch, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.cu = shufflevector <4 x float> %.0117.lcssa.i, <4 x float> %i.ch, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.cv = fadd fast <4 x float> %i.ct, %i.cu
  %op.rdx248 = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.bu, <4 x float> %i.cv)
  %op.rdx249 = fadd fast float %op.rdx248, %i.bs  ; 4 uses
  %i.cw = icmp slt i32 %.280.lcssa.i, %i.aa
  br i1 %i.cw, label %iter.check228, label %._crit_edge148.i

iter.check228:                                    ; preds = %._crit_edge139.i
  %i.cx = xor i32 %.280.lcssa.i, -1
  %i.cy = add i32 %i.aa, %i.cx                    ; 3 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cz, 1                ; 5 uses
  %min.iters.check206 = icmp ult i32 %i.cy, 7
  br i1 %min.iters.check206, label %.lr.ph147.i.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %iter.check228
  %min.iters.check208 = icmp ult i32 %i.cy, 63
  br i1 %min.iters.check208, label %vec.epilog.ph232, label %vector.ph209

vector.ph209:                                     ; preds = %vector.main.loop.iter.check207
  %i.db = and i64 %i.da, 56
  %n.vec210 = and i64 %i.da, 8589934528           ; 5 uses
  %i.dc = shl nuw nsw i64 %n.vec210, 1
  %i.dd = getelementptr i8, ptr %.2.lcssa.i, i64 %i.dc ; 2 uses
  %i.de = trunc i64 %n.vec210 to i32
  %i.df = add i32 %.280.lcssa.i, %i.de
  %i.dg = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %op.rdx249, i64 0
  br label %vector.body211

vector.body211:                                   ; preds = %vector.ph209, %vector.body211
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next222, %vector.body211 ] ; 2 uses
  %vec.phi213 = phi <16 x float> [ %i.dg, %vector.ph209 ], [ %i.dx, %vector.body211 ]
  %vec.phi214 = phi <16 x float> [ zeroinitializer, %vector.ph209 ], [ %i.dy, %vector.body211 ]
  %vec.phi215 = phi <16 x float> [ zeroinitializer, %vector.ph209 ], [ %i.dz, %vector.body211 ]
  %vec.phi216 = phi <16 x float> [ zeroinitializer, %vector.ph209 ], [ %i.ea, %vector.body211 ]
  %i.dh = shl i64 %index212, 1
  %next.gep217 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.dh ; 4 uses
  %i.di = getelementptr i8, ptr %next.gep217, i64 32
  %i.dj = getelementptr i8, ptr %next.gep217, i64 64
  %i.dk = getelementptr i8, ptr %next.gep217, i64 96
  %wide.load218 = load <16 x i16>, ptr %next.gep217, align 2, !tbaa !106
  %wide.load219 = load <16 x i16>, ptr %i.di, align 2, !tbaa !106
  %wide.load220 = load <16 x i16>, ptr %i.dj, align 2, !tbaa !106
  %wide.load221 = load <16 x i16>, ptr %i.dk, align 2, !tbaa !106
  %i.dl = zext <16 x i16> %wide.load218 to <16 x i32>
  %i.dm = zext <16 x i16> %wide.load219 to <16 x i32>
  %i.dn = zext <16 x i16> %wide.load220 to <16 x i32>
  %i.do = zext <16 x i16> %wide.load221 to <16 x i32>
  %i.dp = shl nuw <16 x i32> %i.dl, splat (i32 16)
  %i.dq = shl nuw <16 x i32> %i.dm, splat (i32 16)
  %i.dr = shl nuw <16 x i32> %i.dn, splat (i32 16)
  %i.ds = shl nuw <16 x i32> %i.do, splat (i32 16)
  %i.dt = bitcast <16 x i32> %i.dp to <16 x float>
  %i.du = bitcast <16 x i32> %i.dq to <16 x float>
  %i.dv = bitcast <16 x i32> %i.dr to <16 x float>
  %i.dw = bitcast <16 x i32> %i.ds to <16 x float>
  %i.dx = fadd fast <16 x float> %vec.phi213, %i.dt ; 2 uses
  %i.dy = fadd fast <16 x float> %vec.phi214, %i.du ; 2 uses
  %i.dz = fadd fast <16 x float> %vec.phi215, %i.dv ; 2 uses
  %i.ea = fadd fast <16 x float> %vec.phi216, %i.dw ; 2 uses
  %index.next222 = add nuw i64 %index212, 64      ; 2 uses
  %i.eb = icmp eq i64 %index.next222, %n.vec210
  br i1 %i.eb, label %middle.block223, label %vector.body211, !llvm.loop !89

middle.block223:                                  ; preds = %vector.body211
  %bin.rdx224 = fadd fast <16 x float> %i.dy, %i.dx
  %bin.rdx225 = fadd fast <16 x float> %i.dz, %bin.rdx224
  %bin.rdx226 = fadd fast <16 x float> %i.ea, %bin.rdx225
  %i.ec = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx226) ; 3 uses
  %cmp.n227 = icmp eq i64 %i.da, %n.vec210
  br i1 %cmp.n227, label %._crit_edge148.i, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block223
  %min.epilog.iters.check231 = icmp eq i64 %i.db, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph147.i.preheader, label %vec.epilog.ph232, !prof !46

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check207, %vec.epilog.iter.check229
  %vec.epilog.resume.val233 = phi i64 [ %n.vec210, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check207 ]
  %bc.merge.rdx234 = phi float [ %i.ec, %vec.epilog.iter.check229 ], [ %op.rdx249, %vector.main.loop.iter.check207 ]
  %n.vec235 = and i64 %i.da, 8589934584           ; 4 uses
  %i.ed = shl nuw nsw i64 %n.vec235, 1
  %i.ee = getelementptr i8, ptr %.2.lcssa.i, i64 %i.ed ; 2 uses
  %i.ef = trunc i64 %n.vec235 to i32
  %i.eg = add i32 %.280.lcssa.i, %i.ef
  %i.eh = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx234, i64 0
  br label %vec.epilog.vector.body236

vec.epilog.vector.body236:                        ; preds = %vec.epilog.vector.body236, %vec.epilog.ph232
  %index237 = phi i64 [ %vec.epilog.resume.val233, %vec.epilog.ph232 ], [ %index.next241, %vec.epilog.vector.body236 ] ; 2 uses
  %vec.phi238 = phi <8 x float> [ %i.eh, %vec.epilog.ph232 ], [ %i.em, %vec.epilog.vector.body236 ]
  %i.ei = shl i64 %index237, 1
  %next.gep239 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.ei
  %wide.load240 = load <8 x i16>, ptr %next.gep239, align 2, !tbaa !106
  %i.ej = zext <8 x i16> %wide.load240 to <8 x i32>
  %i.ek = shl nuw <8 x i32> %i.ej, splat (i32 16)
  %i.el = bitcast <8 x i32> %i.ek to <8 x float>
  %i.em = fadd fast <8 x float> %vec.phi238, %i.el ; 2 uses
  %index.next241 = add nuw i64 %index237, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next241, %n.vec235
  br i1 %i.en, label %vec.epilog.middle.block242, label %vec.epilog.vector.body236, !llvm.loop !90

vec.epilog.middle.block242:                       ; preds = %vec.epilog.vector.body236
  %i.eo = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.em) ; 2 uses
  %cmp.n243 = icmp eq i64 %i.da, %n.vec235
  br i1 %cmp.n243, label %._crit_edge148.i, label %.lr.ph147.i.preheader

.lr.ph147.i.preheader:                            ; preds = %iter.check228, %vec.epilog.iter.check229, %vec.epilog.middle.block242
  %.3145.i.ph = phi ptr [ %.2.lcssa.i, %iter.check228 ], [ %i.dd, %vec.epilog.iter.check229 ], [ %i.ee, %vec.epilog.middle.block242 ]
  %.076144.i.ph = phi float [ %op.rdx249, %iter.check228 ], [ %i.ec, %vec.epilog.iter.check229 ], [ %i.eo, %vec.epilog.middle.block242 ]
  %.381143.i.ph = phi i32 [ %.280.lcssa.i, %iter.check228 ], [ %i.df, %vec.epilog.iter.check229 ], [ %i.eg, %vec.epilog.middle.block242 ]
  br label %.lr.ph147.i

.lr.ph147.i:                                      ; preds = %.lr.ph147.i.preheader, %.lr.ph147.i
  %.3145.i = phi ptr [ %i.eu, %.lr.ph147.i ], [ %.3145.i.ph, %.lr.ph147.i.preheader ] ; 2 uses
  %.076144.i = phi float [ %i.et, %.lr.ph147.i ], [ %.076144.i.ph, %.lr.ph147.i.preheader ]
  %.381143.i = phi i32 [ %i.ev, %.lr.ph147.i ], [ %.381143.i.ph, %.lr.ph147.i.preheader ]
  %i.ep = load i16, ptr %.3145.i, align 2, !tbaa !106
  %i.eq = zext i16 %i.ep to i32
  %i.er = shl nuw i32 %i.eq, 16
  %i.es = bitcast i32 %i.er to float
  %i.et = fadd fast float %.076144.i, %i.es       ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.3145.i, i64 2 ; 2 uses
  %i.ev = add nuw nsw i32 %.381143.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ev, %i.aa
  br i1 %exitcond.not.i, label %._crit_edge148.i, label %.lr.ph147.i, !llvm.loop !91

._crit_edge148.i:                                 ; preds = %.lr.ph147.i, %middle.block223, %vec.epilog.middle.block242, %._crit_edge139.i
  %.076.lcssa.i = phi float [ %op.rdx249, %._crit_edge139.i ], [ %i.eo, %vec.epilog.middle.block242 ], [ %i.ec, %middle.block223 ], [ %i.et, %.lr.ph147.i ]
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %._crit_edge139.i ], [ %i.ee, %vec.epilog.middle.block242 ], [ %i.dd, %middle.block223 ], [ %i.eu, %.lr.ph147.i ]
  %i.ew = sitofp fast i32 %i.aa to float          ; 2 uses
  %i.ex = fdiv fast float %.076.lcssa.i, %i.ew    ; 7 uses
  store float %i.ex, ptr %i.e, align 4, !tbaa !43
  %i.ey = sext i32 %i.aa to i64
  %i.ez = sub nsw i64 0, %i.ey
  %i.fa = getelementptr inbounds [2 x i8], ptr %.3.lcssa.i, i64 %i.ez ; 3 uses
  %i.fb = insertelement <16 x float> poison, float %i.ex, i64 0
  %i.fc = shufflevector <16 x float> %i.fb, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.ac, label %.lr.ph155.i.preheader, label %._crit_edge156.i

.lr.ph155.i.preheader:                            ; preds = %._crit_edge148.i
  %i.fd = add nsw i32 %i.aa, -16                  ; 2 uses
  %i.fe = lshr i32 %i.fd, 4                       ; 2 uses
  %i.ff = add nuw nsw i32 %i.fe, 1                ; 2 uses
  %i.fg = icmp eq i32 %i.fe, 0
  br i1 %i.fg, label %.lr.ph155.i.epil.preheader, label %.lr.ph155.i.preheader.new

.lr.ph155.i.preheader.new:                        ; preds = %.lr.ph155.i.preheader
  %unroll_iter291 = and i32 %i.ff, 536870910
  br label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %.lr.ph155.i, %.lr.ph155.i.preheader.new
  %.4153.i = phi ptr [ %i.fa, %.lr.ph155.i.preheader.new ], [ %i.ga, %.lr.ph155.i ] ; 3 uses
  %.0118151.i = phi <16 x float> [ zeroinitializer, %.lr.ph155.i.preheader.new ], [ %i.fz, %.lr.ph155.i ]
  %niter292 = phi i32 [ 0, %.lr.ph155.i.preheader.new ], [ %niter292.next.1, %.lr.ph155.i ]
  %i.fh = load <16 x i16>, ptr %.4153.i, align 1, !tbaa !40 ; 2 uses
  %15 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.fh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %16 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.fh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fi = shufflevector <16 x i16> %15, <16 x i16> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fj = shufflevector <16 x i16> %15, <16 x i16> %16, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fk = bitcast <16 x i16> %i.fi to <8 x i32>
  %i.fl = bitcast <16 x i16> %i.fj to <8 x i32>
  %i.fm = shufflevector <8 x i32> %i.fk, <8 x i32> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fn = bitcast <16 x i32> %i.fm to <16 x float>
  %i.fo = fsub fast <16 x float> %i.fn, %i.fc     ; 2 uses
  %i.fp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fo, <16 x float> nofpclass(nan inf) %i.fo, <16 x float> nofpclass(nan inf) %.0118151.i)
  %i.fq = getelementptr inbounds nuw i8, ptr %.4153.i, i64 32
  %i.fr = load <16 x i16>, ptr %i.fq, align 1, !tbaa !40 ; 2 uses
  %17 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.fr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %18 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.fr, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fs = shufflevector <16 x i16> %17, <16 x i16> %18, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ft = shufflevector <16 x i16> %17, <16 x i16> %18, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fu = bitcast <16 x i16> %i.fs to <8 x i32>
  %i.fv = bitcast <16 x i16> %i.ft to <8 x i32>
  %i.fw = shufflevector <8 x i32> %i.fu, <8 x i32> %i.fv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fx = bitcast <16 x i32> %i.fw to <16 x float>
  %i.fy = fsub fast <16 x float> %i.fx, %i.fc     ; 2 uses
  %i.fz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fy, <16 x float> nofpclass(nan inf) %i.fy, <16 x float> nofpclass(nan inf) %i.fp) ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.4153.i, i64 64 ; 3 uses
  %niter292.next.1 = add i32 %niter292, 2         ; 2 uses
  %niter292.ncmp.1.not = icmp eq i32 %niter292.next.1, %unroll_iter291
  br i1 %niter292.ncmp.1.not, label %._crit_edge156.loopexit.i.unr-lcssa, label %.lr.ph155.i, !llvm.loop !92

._crit_edge156.loopexit.i.unr-lcssa:              ; preds = %.lr.ph155.i
  %i.gb = and i32 %i.fd, 16
  %lcmp.mod287.not.not = icmp eq i32 %i.gb, 0
  br i1 %lcmp.mod287.not.not, label %.lr.ph155.i.epil.preheader, label %._crit_edge156.loopexit.i

.lr.ph155.i.epil.preheader:                       ; preds = %._crit_edge156.loopexit.i.unr-lcssa, %.lr.ph155.i.preheader
  %.4153.i.epil.init = phi ptr [ %i.fa, %.lr.ph155.i.preheader ], [ %i.ga, %._crit_edge156.loopexit.i.unr-lcssa ] ; 2 uses
  %.0118151.i.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph155.i.preheader ], [ %i.fz, %._crit_edge156.loopexit.i.unr-lcssa ]
  %lcmp.mod290 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod290)
  %i.gc = load <16 x i16>, ptr %.4153.i.epil.init, align 1, !tbaa !40 ; 2 uses
  %19 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.gc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %20 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.gc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gd = shufflevector <16 x i16> %19, <16 x i16> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ge = shufflevector <16 x i16> %19, <16 x i16> %20, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gf = bitcast <16 x i16> %i.gd to <8 x i32>
  %i.gg = bitcast <16 x i16> %i.ge to <8 x i32>
  %i.gh = shufflevector <8 x i32> %i.gf, <8 x i32> %i.gg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gi = bitcast <16 x i32> %i.gh to <16 x float>
  %i.gj = fsub fast <16 x float> %i.gi, %i.fc     ; 2 uses
  %i.gk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gj, <16 x float> nofpclass(nan inf) %i.gj, <16 x float> nofpclass(nan inf) %.0118151.i.epil.init)
  %i.gl = getelementptr inbounds nuw i8, ptr %.4153.i.epil.init, i64 32
  br label %._crit_edge156.loopexit.i

._crit_edge156.loopexit.i:                        ; preds = %._crit_edge156.loopexit.i.unr-lcssa, %.lr.ph155.i.epil.preheader
  %.lcssa265 = phi <16 x float> [ %i.fz, %._crit_edge156.loopexit.i.unr-lcssa ], [ %i.gk, %.lr.ph155.i.epil.preheader ]
  %.lcssa264 = phi ptr [ %i.ga, %._crit_edge156.loopexit.i.unr-lcssa ], [ %i.gl, %.lr.ph155.i.epil.preheader ]
  %i.gm = and i32 %i.aa, 2147483632
  br label %._crit_edge156.i

._crit_edge156.i:                                 ; preds = %._crit_edge156.loopexit.i, %._crit_edge148.i
  %.0118.lcssa.i = phi <16 x float> [ zeroinitializer, %._crit_edge148.i ], [ %.lcssa265, %._crit_edge156.loopexit.i ] ; 3 uses
  %.482.lcssa.i = phi i32 [ 0, %._crit_edge148.i ], [ %i.gm, %._crit_edge156.loopexit.i ] ; 3 uses
  %.4.lcssa.i = phi ptr [ %i.fa, %._crit_edge148.i ], [ %.lcssa264, %._crit_edge156.loopexit.i ] ; 2 uses
  %i.gn = shufflevector <16 x float> %.0118.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.go = shufflevector <16 x float> %.0118.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gp = fadd fast <8 x float> %i.gn, %i.go      ; 2 uses
  %i.gq = shufflevector <8 x float> %i.gp, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gr = shufflevector <8 x float> %i.gp, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gs = fadd fast <4 x float> %i.gq, %i.gr      ; 2 uses
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.gu = fadd fast <4 x float> %i.gt, %i.gs
  %i.gv = extractelement <4 x float> %i.gu, i64 1
  %i.gw = shufflevector <16 x float> %.0118.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gx = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.gw)
  %i.gy = insertelement <8 x float> poison, float %i.ex, i64 0
  %i.gz = shufflevector <8 x float> %i.gy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ha = or disjoint i32 %.482.lcssa.i, 7
  %i.hb = icmp slt i32 %i.ha, %i.aa
  br i1 %i.hb, label %.lr.ph164.i, label %._crit_edge165.i

.lr.ph164.i:                                      ; preds = %._crit_edge156.i, %.lr.ph164.i
  %.5162.i = phi ptr [ %i.hh, %.lr.ph164.i ], [ %.4.lcssa.i, %._crit_edge156.i ] ; 2 uses
  %.583161.i = phi i32 [ %i.hi, %.lr.ph164.i ], [ %.482.lcssa.i, %._crit_edge156.i ]
  %.0119160.i = phi <8 x float> [ %i.hg, %.lr.ph164.i ], [ zeroinitializer, %._crit_edge156.i ]
  %i.hc = load <8 x i16>, ptr %.5162.i, align 1, !tbaa !40 ; 2 uses
  %21 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %22 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.hc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.hd = shufflevector <8 x i16> %21, <8 x i16> %22, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.he = bitcast <16 x i16> %i.hd to <8 x float>
  %i.hf = fsub fast <8 x float> %i.he, %i.gz      ; 2 uses
  %i.hg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hf, <8 x float> nofpclass(nan inf) %i.hf, <8 x float> nofpclass(nan inf) %.0119160.i) ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.5162.i, i64 16 ; 2 uses
  %i.hi = add nuw nsw i32 %.583161.i, 8           ; 3 uses
  %i.hj = or disjoint i32 %i.hi, 7
  %i.hk = icmp slt i32 %i.hj, %i.aa
  br i1 %i.hk, label %.lr.ph164.i, label %._crit_edge165.i, !llvm.loop !93

._crit_edge165.i:                                 ; preds = %.lr.ph164.i, %._crit_edge156.i
  %.0119.lcssa.i = phi <8 x float> [ zeroinitializer, %._crit_edge156.i ], [ %i.hg, %.lr.ph164.i ] ; 2 uses
  %.583.lcssa.i = phi i32 [ %.482.lcssa.i, %._crit_edge156.i ], [ %i.hi, %.lr.ph164.i ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %._crit_edge156.i ], [ %i.hh, %.lr.ph164.i ] ; 2 uses
  %i.hl = shufflevector <8 x float> %.0119.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hm = shufflevector <8 x float> %.0119.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hn = fadd fast <4 x float> %i.hl, %i.hm      ; 2 uses
  %i.ho = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hq = or disjoint i32 %.583.lcssa.i, 3
  %i.hr = icmp slt i32 %i.hq, %i.aa
  br i1 %i.hr, label %.lr.ph173.i, label %._crit_edge174.i

.lr.ph173.i:                                      ; preds = %._crit_edge165.i, %.lr.ph173.i
  %.6171.i = phi ptr [ %i.hy, %.lr.ph173.i ], [ %.5.lcssa.i, %._crit_edge165.i ] ; 2 uses
  %.684170.i = phi i32 [ %i.hz, %.lr.ph173.i ], [ %.583.lcssa.i, %._crit_edge165.i ]
  %.0116169.i = phi <4 x float> [ %i.hx, %.lr.ph173.i ], [ zeroinitializer, %._crit_edge165.i ]
  %i.hs = load i64, ptr %.6171.i, align 1, !tbaa !40
  %i.ht = insertelement <2 x i64> poison, i64 %i.hs, i64 0
  %i.hu = bitcast <2 x i64> %i.ht to <8 x i16>
  %23 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hv = bitcast <8 x i16> %23 to <4 x float>
  %i.hw = fsub fast <4 x float> %i.hv, %i.hp      ; 2 uses
  %i.hx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hw, <4 x float> nofpclass(nan inf) %i.hw, <4 x float> nofpclass(nan inf) %.0116169.i) ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.6171.i, i64 8 ; 2 uses
  %i.hz = add nuw nsw i32 %.684170.i, 4           ; 3 uses
  %i.ia = or disjoint i32 %i.hz, 3
  %i.ib = icmp slt i32 %i.ia, %i.aa
  br i1 %i.ib, label %.lr.ph173.i, label %._crit_edge174.i, !llvm.loop !94

._crit_edge174.i:                                 ; preds = %.lr.ph173.i, %._crit_edge165.i
  %.0116.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge165.i ], [ %i.hx, %.lr.ph173.i ] ; 2 uses
  %.684.lcssa.i = phi i32 [ %.583.lcssa.i, %._crit_edge165.i ], [ %i.hz, %.lr.ph173.i ] ; 5 uses
  %.6.lcssa.i = phi ptr [ %.5.lcssa.i, %._crit_edge165.i ], [ %i.hy, %.lr.ph173.i ] ; 5 uses
  %i.ic = shufflevector <4 x float> %.0116.lcssa.i, <4 x float> %i.hn, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.id = shufflevector <4 x float> %.0116.lcssa.i, <4 x float> %i.hn, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ie = fadd fast <4 x float> %i.ic, %i.id
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.gx, <4 x float> %i.ie)
  %op.rdx247 = fadd fast float %op.rdx, %i.gv     ; 4 uses
  %i.if = icmp slt i32 %.684.lcssa.i, %i.aa
  br i1 %i.if, label %iter.check186, label %._crit_edge183.i

iter.check186:                                    ; preds = %._crit_edge174.i
  %i.ig = xor i32 %.684.lcssa.i, -1
  %i.ih = add i32 %i.aa, %i.ig                    ; 3 uses
  %i.ii = zext i32 %i.ih to i64
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 5 uses
  %min.iters.check164 = icmp ult i32 %i.ih, 7
  br i1 %min.iters.check164, label %.lr.ph182.i.preheader, label %vector.main.loop.iter.check165

vector.main.loop.iter.check165:                   ; preds = %iter.check186
  %min.iters.check166 = icmp ult i32 %i.ih, 63
  br i1 %min.iters.check166, label %vec.epilog.ph190, label %vector.ph167

vector.ph167:                                     ; preds = %vector.main.loop.iter.check165
  %i.ik = and i64 %i.ij, 56
  %n.vec168 = and i64 %i.ij, 8589934528           ; 5 uses
  %i.il = shl nuw nsw i64 %n.vec168, 1
  %i.im = getelementptr i8, ptr %.6.lcssa.i, i64 %i.il
  %i.in = trunc i64 %n.vec168 to i32
  %i.io = add i32 %.684.lcssa.i, %i.in
  %i.ip = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %op.rdx247, i64 0
  %broadcast.splatinsert169 = insertelement <16 x float> poison, float %i.ex, i64 0
  %broadcast.splat170 = shufflevector <16 x float> %broadcast.splatinsert169, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.ph167, %vector.body171
  %index172 = phi i64 [ 0, %vector.ph167 ], [ %index.next181, %vector.body171 ] ; 2 uses
  %vec.phi = phi <16 x float> [ %i.ip, %vector.ph167 ], [ %i.jo, %vector.body171 ]
  %vec.phi173 = phi <16 x float> [ zeroinitializer, %vector.ph167 ], [ %i.jp, %vector.body171 ]
  %vec.phi174 = phi <16 x float> [ zeroinitializer, %vector.ph167 ], [ %i.jq, %vector.body171 ]
  %vec.phi175 = phi <16 x float> [ zeroinitializer, %vector.ph167 ], [ %i.jr, %vector.body171 ]
  %i.iq = shl i64 %index172, 1
  %next.gep176 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.iq ; 4 uses
  %i.ir = getelementptr i8, ptr %next.gep176, i64 32
  %i.is = getelementptr i8, ptr %next.gep176, i64 64
  %i.it = getelementptr i8, ptr %next.gep176, i64 96
  %wide.load177 = load <16 x i16>, ptr %next.gep176, align 2, !tbaa !106
  %wide.load178 = load <16 x i16>, ptr %i.ir, align 2, !tbaa !106
  %wide.load179 = load <16 x i16>, ptr %i.is, align 2, !tbaa !106
  %wide.load180 = load <16 x i16>, ptr %i.it, align 2, !tbaa !106
  %i.iu = zext <16 x i16> %wide.load177 to <16 x i32>
  %i.iv = zext <16 x i16> %wide.load178 to <16 x i32>
  %i.iw = zext <16 x i16> %wide.load179 to <16 x i32>
  %i.ix = zext <16 x i16> %wide.load180 to <16 x i32>
  %i.iy = shl nuw <16 x i32> %i.iu, splat (i32 16)
  %i.iz = shl nuw <16 x i32> %i.iv, splat (i32 16)
  %i.ja = shl nuw <16 x i32> %i.iw, splat (i32 16)
  %i.jb = shl nuw <16 x i32> %i.ix, splat (i32 16)
  %i.jc = bitcast <16 x i32> %i.iy to <16 x float>
  %i.jd = bitcast <16 x i32> %i.iz to <16 x float>
  %i.je = bitcast <16 x i32> %i.ja to <16 x float>
  %i.jf = bitcast <16 x i32> %i.jb to <16 x float>
  %i.jg = fsub fast <16 x float> %i.jc, %broadcast.splat170 ; 2 uses
  %i.jh = fsub fast <16 x float> %i.jd, %broadcast.splat170 ; 2 uses
  %i.ji = fsub fast <16 x float> %i.je, %broadcast.splat170 ; 2 uses
  %i.jj = fsub fast <16 x float> %i.jf, %broadcast.splat170 ; 2 uses
  %i.jk = fmul fast <16 x float> %i.jg, %i.jg
  %i.jl = fmul fast <16 x float> %i.jh, %i.jh
  %i.jm = fmul fast <16 x float> %i.ji, %i.ji
  %i.jn = fmul fast <16 x float> %i.jj, %i.jj
  %i.jo = fadd fast <16 x float> %i.jk, %vec.phi  ; 2 uses
  %i.jp = fadd fast <16 x float> %i.jl, %vec.phi173 ; 2 uses
  %i.jq = fadd fast <16 x float> %i.jm, %vec.phi174 ; 2 uses
  %i.jr = fadd fast <16 x float> %i.jn, %vec.phi175 ; 2 uses
  %index.next181 = add nuw i64 %index172, 64      ; 2 uses
  %i.js = icmp eq i64 %index.next181, %n.vec168
  br i1 %i.js, label %middle.block182, label %vector.body171, !llvm.loop !95

middle.block182:                                  ; preds = %vector.body171
  %bin.rdx = fadd fast <16 x float> %i.jp, %i.jo
  %bin.rdx183 = fadd fast <16 x float> %i.jq, %bin.rdx
  %bin.rdx184 = fadd fast <16 x float> %i.jr, %bin.rdx183
  %i.jt = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx184) ; 3 uses
  %cmp.n185 = icmp eq i64 %i.ij, %n.vec168
  br i1 %cmp.n185, label %._crit_edge183.i, label %vec.epilog.iter.check187

vec.epilog.iter.check187:                         ; preds = %middle.block182
  %min.epilog.iters.check189 = icmp eq i64 %i.ik, 0
  br i1 %min.epilog.iters.check189, label %.lr.ph182.i.preheader, label %vec.epilog.ph190, !prof !46

vec.epilog.ph190:                                 ; preds = %vector.main.loop.iter.check165, %vec.epilog.iter.check187
  %vec.epilog.resume.val191 = phi i64 [ %n.vec168, %vec.epilog.iter.check187 ], [ 0, %vector.main.loop.iter.check165 ]
  %bc.merge.rdx = phi float [ %i.jt, %vec.epilog.iter.check187 ], [ %op.rdx247, %vector.main.loop.iter.check165 ]
  %n.vec192 = and i64 %i.ij, 8589934584           ; 4 uses
  %i.ju = shl nuw nsw i64 %n.vec192, 1
  %i.jv = getelementptr i8, ptr %.6.lcssa.i, i64 %i.ju
  %i.jw = trunc i64 %n.vec192 to i32
  %i.jx = add i32 %.684.lcssa.i, %i.jw
  %i.jy = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert193 = insertelement <8 x float> poison, float %i.ex, i64 0
  %broadcast.splat194 = shufflevector <8 x float> %broadcast.splatinsert193, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body195

vec.epilog.vector.body195:                        ; preds = %vec.epilog.vector.body195, %vec.epilog.ph190
  %index196 = phi i64 [ %vec.epilog.resume.val191, %vec.epilog.ph190 ], [ %index.next200, %vec.epilog.vector.body195 ] ; 2 uses
  %vec.phi197 = phi <8 x float> [ %i.jy, %vec.epilog.ph190 ], [ %i.kf, %vec.epilog.vector.body195 ]
  %i.jz = shl i64 %index196, 1
  %next.gep198 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.jz
  %wide.load199 = load <8 x i16>, ptr %next.gep198, align 2, !tbaa !106
  %i.ka = zext <8 x i16> %wide.load199 to <8 x i32>
  %i.kb = shl nuw <8 x i32> %i.ka, splat (i32 16)
  %i.kc = bitcast <8 x i32> %i.kb to <8 x float>
  %i.kd = fsub fast <8 x float> %i.kc, %broadcast.splat194 ; 2 uses
  %i.ke = fmul fast <8 x float> %i.kd, %i.kd
  %i.kf = fadd fast <8 x float> %i.ke, %vec.phi197 ; 2 uses
  %index.next200 = add nuw i64 %index196, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next200, %n.vec192
  br i1 %i.kg, label %vec.epilog.middle.block201, label %vec.epilog.vector.body195, !llvm.loop !96

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body195
  %i.kh = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.kf) ; 2 uses
  %cmp.n202 = icmp eq i64 %i.ij, %n.vec192
  br i1 %cmp.n202, label %._crit_edge183.i, label %.lr.ph182.i.preheader

.lr.ph182.i.preheader:                            ; preds = %iter.check186, %vec.epilog.iter.check187, %vec.epilog.middle.block201
  %.7180.i.ph = phi ptr [ %.6.lcssa.i, %iter.check186 ], [ %i.im, %vec.epilog.iter.check187 ], [ %i.jv, %vec.epilog.middle.block201 ]
  %.077179.i.ph = phi float [ %op.rdx247, %iter.check186 ], [ %i.jt, %vec.epilog.iter.check187 ], [ %i.kh, %vec.epilog.middle.block201 ]
  %.785178.i.ph = phi i32 [ %.684.lcssa.i, %iter.check186 ], [ %i.io, %vec.epilog.iter.check187 ], [ %i.jx, %vec.epilog.middle.block201 ]
  br label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.lr.ph182.i.preheader, %.lr.ph182.i
  %.7180.i = phi ptr [ %i.kp, %.lr.ph182.i ], [ %.7180.i.ph, %.lr.ph182.i.preheader ] ; 2 uses
  %.077179.i = phi float [ %i.ko, %.lr.ph182.i ], [ %.077179.i.ph, %.lr.ph182.i.preheader ]
  %.785178.i = phi i32 [ %i.kq, %.lr.ph182.i ], [ %.785178.i.ph, %.lr.ph182.i.preheader ]
  %i.ki = load i16, ptr %.7180.i, align 2, !tbaa !106
  %i.kj = zext i16 %i.ki to i32
  %i.kk = shl nuw i32 %i.kj, 16
  %i.kl = bitcast i32 %i.kk to float
  %i.km = fsub fast float %i.kl, %i.ex            ; 2 uses
  %i.kn = fmul fast float %i.km, %i.km
  %i.ko = fadd fast float %i.kn, %.077179.i       ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.7180.i, i64 2
  %i.kq = add nuw nsw i32 %.785178.i, 1           ; 2 uses
  %exitcond205.not.i = icmp eq i32 %i.kq, %i.aa
  br i1 %exitcond205.not.i, label %._crit_edge183.i, label %.lr.ph182.i, !llvm.loop !97

._crit_edge183.i:                                 ; preds = %.lr.ph182.i, %middle.block182, %vec.epilog.middle.block201, %._crit_edge174.i
  %.077.lcssa.i = phi float [ %op.rdx247, %._crit_edge174.i ], [ %i.kh, %vec.epilog.middle.block201 ], [ %i.jt, %middle.block182 ], [ %i.ko, %.lr.ph182.i ]
  %i.kr = fdiv fast float %.077.lcssa.i, %i.ew
  store float %i.kr, ptr %i.f, align 4, !tbaa !43
  br label %_ZN4ncnnL35instancenorm_bf16s_compute_mean_varEPKtiRfS2_.exit

_ZN4ncnnL35instancenorm_bf16s_compute_mean_varEPKtiRfS2_.exit: ; preds = %._crit_edge183.i, %bb.c
  %i.ks = load i32, ptr %i.p, align 8, !tbaa !48
  %.not27 = icmp eq i32 %i.ks, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4ncnnL35instancenorm_bf16s_compute_mean_varEPKtiRfS2_.exit
  %i.kt = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !43
  %i.kw = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !43
  %i.kz = load float, ptr %i.f, align 4, !tbaa !43
  %i.la = load float, ptr %i.s, align 4, !tbaa !49
  %i.lb = fadd fast float %i.la, %i.kz
  %i.lc = call fast float @llvm.sqrt.f32(float %i.lb)
  %i.ld = fdiv fast float %i.kv, %i.lc            ; 2 uses
  %i.le = load float, ptr %i.e, align 4, !tbaa !43
  %i.lf = fmul fast float %i.ld, %i.le
  %i.lg = fsub fast float %i.ky, %i.lf
  br label %bb.f

bb.e:                                             ; preds = %_ZN4ncnnL35instancenorm_bf16s_compute_mean_varEPKtiRfS2_.exit
  %i.lh = load float, ptr %i.f, align 4, !tbaa !43
  %i.li = load float, ptr %i.s, align 4, !tbaa !49
  %i.lj = fadd fast float %i.li, %i.lh
  %i.lk = call fast float @llvm.sqrt.f32(float %i.lj)
  %i.ll = fdiv fast float 1.000000e+00, %i.lk     ; 2 uses
  %i.lm = load float, ptr %i.e, align 4, !tbaa !43
  %i.ln = fneg fast float %i.lm
  %i.lo = fmul fast float %i.ll, %i.ln
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026 = phi nsz float [ %i.ld, %bb.d ], [ %i.ll, %bb.e ] ; 7 uses
  %.025 = phi nsz float [ %i.lg, %bb.d ], [ %i.lo, %bb.e ] ; 7 uses
  %i.lp = load i32, ptr %4, align 4, !tbaa !25    ; 11 uses
  %i.lq = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
          to label %.noexc42 unwind label %bb.j

.noexc42:                                         ; preds = %bb.f
  %.not.i33 = icmp eq i32 %i.lq, 0
  br i1 %.not.i33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc42
  invoke void @_ZN4ncnn33instancenorm_bf16s_sse_avx512bf16EPtiff(ptr noundef %i.z, i32 noundef %i.lp, float noundef nofpclass(nan inf) %.026, float noundef nofpclass(nan inf) %.025)
          to label %_ZN4ncnnL22instancenorm_bf16s_sseEPtiff.exit unwind label %bb.j

bb.h:                                             ; preds = %.noexc42
  %i.lr = insertelement <16 x float> poison, float %.026, i64 0
  %i.ls = shufflevector <16 x float> %i.lr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lt = insertelement <16 x float> poison, float %.025, i64 0
  %i.lu = shufflevector <16 x float> %i.lt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lv = icmp sgt i32 %i.lp, 15
  br i1 %i.lv, label %.lr.ph.i40, label %._crit_edge.i34

.lr.ph.i40:                                       ; preds = %bb.h, %.lr.ph.i40
  %.057.i = phi i32 [ %i.mm, %.lr.ph.i40 ], [ 0, %bb.h ]
  %.03756.i = phi ptr [ %i.ml, %.lr.ph.i40 ], [ %i.z, %bb.h ] ; 3 uses
  %i.lw = load <16 x i16>, ptr %.03756.i, align 1, !tbaa !40 ; 2 uses
  %24 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.lw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %25 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.lw, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.lx = shufflevector <16 x i16> %24, <16 x i16> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ly = shufflevector <16 x i16> %24, <16 x i16> %25, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lz = bitcast <16 x i16> %i.lx to <8 x i32>
  %i.ma = bitcast <16 x i16> %i.ly to <8 x i32>
  %i.mb = shufflevector <8 x i32> %i.lz, <8 x i32> %i.ma, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mc = bitcast <16 x i32> %i.mb to <16 x float>
  %i.md = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mc, <16 x float> nofpclass(nan inf) %i.ls, <16 x float> nofpclass(nan inf) %i.lu)
  %i.me = bitcast <16 x float> %i.md to <16 x i32>
  %i.mf = lshr <16 x i32> %i.me, splat (i32 16)   ; 2 uses
  %i.mg = shufflevector <16 x i32> %i.mf, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mh = shufflevector <16 x i32> %i.mf, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mi = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.mg, <8 x i32> %i.mh)
  %i.mj = bitcast <16 x i16> %i.mi to <4 x i64>
  %i.mk = shufflevector <4 x i64> %i.mj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.mk, ptr %.03756.i, align 1, !tbaa !40
  %i.ml = getelementptr inbounds nuw i8, ptr %.03756.i, i64 32 ; 2 uses
  %i.mm = add nuw nsw i32 %.057.i, 16             ; 2 uses
  %i.mn = or disjoint i32 %i.mm, 15
  %i.mo = icmp slt i32 %i.mn, %i.lp
  br i1 %i.mo, label %.lr.ph.i40, label %._crit_edge.loopexit.i41, !llvm.loop !98

._crit_edge.loopexit.i41:                         ; preds = %.lr.ph.i40
  %i.mp = and i32 %i.lp, 2147483632
  br label %._crit_edge.i34

._crit_edge.i34:                                  ; preds = %._crit_edge.loopexit.i41, %bb.h
  %.037.lcssa.i = phi ptr [ %i.z, %bb.h ], [ %i.ml, %._crit_edge.loopexit.i41 ] ; 2 uses
  %.0.lcssa.i35 = phi i32 [ 0, %bb.h ], [ %i.mp, %._crit_edge.loopexit.i41 ] ; 3 uses
  %i.mq = insertelement <8 x float> poison, float %.026, i64 0
  %i.mr = shufflevector <8 x float> %i.mq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ms = insertelement <8 x float> poison, float %.025, i64 0
  %i.mt = shufflevector <8 x float> %i.ms, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mu = or disjoint i32 %.0.lcssa.i35, 7
  %i.mv = icmp slt i32 %i.mu, %i.lp
  br i1 %i.mv, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %._crit_edge.i34, %.lr.ph62.i
  %.160.i = phi i32 [ %i.ng, %.lr.ph62.i ], [ %.0.lcssa.i35, %._crit_edge.i34 ]
  %.13859.i = phi ptr [ %i.nf, %.lr.ph62.i ], [ %.037.lcssa.i, %._crit_edge.i34 ] ; 3 uses
  %i.mw = load <8 x i16>, ptr %.13859.i, align 1, !tbaa !40 ; 2 uses
  %26 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %27 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mx = shufflevector <8 x i16> %26, <8 x i16> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.my = bitcast <16 x i16> %i.mx to <8 x float>
  %i.mz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.my, <8 x float> nofpclass(nan inf) %i.mr, <8 x float> nofpclass(nan inf) %i.mt)
  %i.na = bitcast <8 x float> %i.mz to <8 x i32>
  %i.nb = lshr <8 x i32> %i.na, splat (i32 16)    ; 2 uses
  %i.nc = shufflevector <8 x i32> %i.nb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nd = shufflevector <8 x i32> %i.nb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ne = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nc, <4 x i32> %i.nd)
  store <8 x i16> %i.ne, ptr %.13859.i, align 1, !tbaa !40
  %i.nf = getelementptr inbounds nuw i8, ptr %.13859.i, i64 16 ; 2 uses
  %i.ng = add nuw nsw i32 %.160.i, 8              ; 3 uses
  %i.nh = or disjoint i32 %i.ng, 7
  %i.ni = icmp slt i32 %i.nh, %i.lp
  br i1 %i.ni, label %.lr.ph62.i, label %._crit_edge63.i, !llvm.loop !99

._crit_edge63.i:                                  ; preds = %.lr.ph62.i, %._crit_edge.i34
  %.138.lcssa.i = phi ptr [ %.037.lcssa.i, %._crit_edge.i34 ], [ %i.nf, %.lr.ph62.i ] ; 2 uses
  %.1.lcssa.i36 = phi i32 [ %.0.lcssa.i35, %._crit_edge.i34 ], [ %i.ng, %.lr.ph62.i ] ; 3 uses
  %i.nj = insertelement <4 x float> poison, float %.026, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nl = insertelement <4 x float> poison, float %.025, i64 0
  %i.nm = shufflevector <4 x float> %i.nl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nn = or disjoint i32 %.1.lcssa.i36, 3
  %i.no = icmp slt i32 %i.nn, %i.lp
  br i1 %i.no, label %.lr.ph69.i, label %.preheader.i37

.preheader.i37:                                   ; preds = %.lr.ph69.i, %._crit_edge63.i
  %.239.lcssa.i = phi ptr [ %.138.lcssa.i, %._crit_edge63.i ], [ %i.ph, %.lr.ph69.i ] ; 5 uses
  %.2.lcssa.i38 = phi i32 [ %.1.lcssa.i36, %._crit_edge63.i ], [ %i.pi, %.lr.ph69.i ] ; 5 uses
  %i.np = icmp slt i32 %.2.lcssa.i38, %i.lp
  br i1 %i.np, label %iter.check, label %_ZN4ncnnL22instancenorm_bf16s_sseEPtiff.exit

iter.check:                                       ; preds = %.preheader.i37
  %i.nq = xor i32 %.2.lcssa.i38, -1
  %i.nr = add i32 %i.lp, %i.nq                    ; 3 uses
  %i.ns = zext i32 %i.nr to i64
  %i.nt = add nuw nsw i64 %i.ns, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.nr, 7
  br i1 %min.iters.check, label %.lr.ph74.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check150 = icmp ult i32 %i.nr, 31
  br i1 %min.iters.check150, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nu = and i64 %i.nt, 24
  %n.vec = and i64 %i.nt, 8589934560              ; 5 uses
  %i.nv = trunc i64 %n.vec to i32
  %i.nw = add i32 %.2.lcssa.i38, %i.nv
  %i.nx = shl nuw nsw i64 %n.vec, 1
  %i.ny = getelementptr i8, ptr %.239.lcssa.i, i64 %i.nx
  %broadcast.splatinsert = insertelement <32 x float> poison, float %.026, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert151 = insertelement <32 x float> poison, float %.025, i64 0
  %broadcast.splat152 = shufflevector <32 x float> %broadcast.splatinsert151, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nz = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.239.lcssa.i, i64 %i.nz ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !106
  %i.oa = zext <32 x i16> %wide.load to <32 x i32>
  %i.ob = shl nuw <32 x i32> %i.oa, splat (i32 16)
  %i.oc = bitcast <32 x i32> %i.ob to <32 x float>
  %i.od = fmul fast <32 x float> %broadcast.splat, %i.oc
  %i.oe = fadd fast <32 x float> %i.od, %broadcast.splat152
  %i.of = bitcast <32 x float> %i.oe to <32 x i32>
  %i.og = lshr <32 x i32> %i.of, splat (i32 16)
  %i.oh = trunc nuw <32 x i32> %i.og to <32 x i16>
  store <32 x i16> %i.oh, ptr %next.gep, align 2, !tbaa !106
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.oi = icmp eq i64 %index.next, %n.vec
  br i1 %i.oi, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nt, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL22instancenorm_bf16s_sseEPtiff.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph74.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %i.nt, 8589934584           ; 4 uses
  %i.oj = trunc i64 %n.vec153 to i32
  %i.ok = add i32 %.2.lcssa.i38, %i.oj
  %i.ol = shl nuw nsw i64 %n.vec153, 1
  %i.om = getelementptr i8, ptr %.239.lcssa.i, i64 %i.ol
  %broadcast.splatinsert154 = insertelement <8 x float> poison, float %.026, i64 0
  %broadcast.splat155 = shufflevector <8 x float> %broadcast.splatinsert154, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert156 = insertelement <8 x float> poison, float %.025, i64 0
  %broadcast.splat157 = shufflevector <8 x float> %broadcast.splatinsert156, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index158 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next161, %vec.epilog.vector.body ] ; 2 uses
  %i.on = shl i64 %index158, 1
  %next.gep159 = getelementptr i8, ptr %.239.lcssa.i, i64 %i.on ; 2 uses
  %wide.load160 = load <8 x i16>, ptr %next.gep159, align 2, !tbaa !106
  %i.oo = zext <8 x i16> %wide.load160 to <8 x i32>
  %i.op = shl nuw <8 x i32> %i.oo, splat (i32 16)
  %i.oq = bitcast <8 x i32> %i.op to <8 x float>
  %i.or = fmul fast <8 x float> %broadcast.splat155, %i.oq
  %i.os = fadd fast <8 x float> %i.or, %broadcast.splat157
  %i.ot = bitcast <8 x float> %i.os to <8 x i32>
  %i.ou = lshr <8 x i32> %i.ot, splat (i32 16)
  %i.ov = trunc nuw <8 x i32> %i.ou to <8 x i16>
  store <8 x i16> %i.ov, ptr %next.gep159, align 2, !tbaa !106
  %index.next161 = add nuw i64 %index158, 8       ; 2 uses
  %i.ow = icmp eq i64 %index.next161, %n.vec153
  br i1 %i.ow, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n162 = icmp eq i64 %i.nt, %n.vec153
  br i1 %cmp.n162, label %_ZN4ncnnL22instancenorm_bf16s_sseEPtiff.exit, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.373.i.ph = phi i32 [ %.2.lcssa.i38, %iter.check ], [ %i.nw, %vec.epilog.iter.check ], [ %i.ok, %vec.epilog.middle.block ]
  %.34072.i.ph = phi ptr [ %.239.lcssa.i, %iter.check ], [ %i.ny, %vec.epilog.iter.check ], [ %i.om, %vec.epilog.middle.block ]
  br label %.lr.ph74.i

.lr.ph69.i:                                       ; preds = %._crit_edge63.i, %.lr.ph69.i
  %.267.i = phi i32 [ %i.pi, %.lr.ph69.i ], [ %.1.lcssa.i36, %._crit_edge63.i ]
  %.23966.i = phi ptr [ %i.ph, %.lr.ph69.i ], [ %.138.lcssa.i, %._crit_edge63.i ] ; 3 uses
  %i.ox = load i64, ptr %.23966.i, align 1, !tbaa !40
  %i.oy = insertelement <2 x i64> poison, i64 %i.ox, i64 0
  %i.oz = bitcast <2 x i64> %i.oy to <8 x i16>
  %28 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pa = bitcast <8 x i16> %28 to <4 x float>
  %i.pb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pa, <4 x float> nofpclass(nan inf) %i.nk, <4 x float> nofpclass(nan inf) %i.nm)
  %i.pc = bitcast <4 x float> %i.pb to <4 x i32>
  %i.pd = lshr <4 x i32> %i.pc, splat (i32 16)
  %i.pe = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.pd, <4 x i32> poison)
  %i.pf = bitcast <8 x i16> %i.pe to <2 x i64>
  %i.pg = extractelement <2 x i64> %i.pf, i64 0
  store i64 %i.pg, ptr %.23966.i, align 1, !tbaa !40
  %i.ph = getelementptr inbounds nuw i8, ptr %.23966.i, i64 8 ; 2 uses
  %i.pi = add nuw nsw i32 %.267.i, 4              ; 3 uses
  %i.pj = or disjoint i32 %i.pi, 3
  %i.pk = icmp slt i32 %i.pj, %i.lp
  br i1 %i.pk, label %.lr.ph69.i, label %.preheader.i37, !llvm.loop !102

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i
  %.373.i = phi i32 [ %i.pv, %.lr.ph74.i ], [ %.373.i.ph, %.lr.ph74.i.preheader ]
  %.34072.i = phi ptr [ %i.pu, %.lr.ph74.i ], [ %.34072.i.ph, %.lr.ph74.i.preheader ] ; 3 uses
  %i.pl = load i16, ptr %.34072.i, align 2, !tbaa !106
  %i.pm = zext i16 %i.pl to i32
  %i.pn = shl nuw i32 %i.pm, 16
  %i.po = bitcast i32 %i.pn to float
  %i.pp = fmul fast float %.026, %i.po
  %i.pq = fadd fast float %i.pp, %.025
  %i.pr = bitcast float %i.pq to i32
  %i.ps = lshr i32 %i.pr, 16
  %i.pt = trunc nuw i32 %i.ps to i16
  store i16 %i.pt, ptr %.34072.i, align 2, !tbaa !106
  %i.pu = getelementptr inbounds nuw i8, ptr %.34072.i, i64 2
  %i.pv = add nuw nsw i32 %.373.i, 1              ; 2 uses
  %exitcond.not.i39 = icmp eq i32 %i.pv, %i.lp
  br i1 %exitcond.not.i39, label %_ZN4ncnnL22instancenorm_bf16s_sseEPtiff.exit, label %.lr.ph74.i, !llvm.loop !103

_ZN4ncnnL22instancenorm_bf16s_sseEPtiff.exit:     ; preds = %.lr.ph74.i, %middle.block, %vec.epilog.middle.block, %.preheader.i37, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.pw = load i32, ptr %i.b, align 4, !tbaa !25
  %i.px = sext i32 %i.pw to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.px
  br i1 %.not.not, label %.noexc, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnnL22instancenorm_bf16s_sseEPtiff.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.c, %.noexc
  %i.py = landingpad { ptr, i32 }
          catch ptr null
  %i.pz = extractvalue { ptr, i32 } %i.py, 0
  call void @__clang_call_terminate(ptr %i.pz) #16
  unreachable
}

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #1

declare void @_ZN4ncnn46instancenorm_bf16s_compute_mean_var_avx512bf16EPKtiRfS2_(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN4ncnn33instancenorm_bf16s_sse_avx512bf16EPtiff(ptr noundef, i32 noundef, float noundef nofpclass(nan inf), float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #11

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!16 = !{!15, !11, i64 0}
!17 = !{!15, !13, i64 64}
!18 = !{!"bool", !5, i64 0}
!19 = !{!"_ZTSN4ncnn6OptionE", !18, i64 0, !18, i64 1, !18, i64 2, !18, i64 3, !6, i64 4, !14, i64 8, !14, i64 16, !6, i64 24, !18, i64 28, !18, i64 29, !18, i64 30, !18, i64 31, !18, i64 32, !18, i64 33, !18, i64 34, !18, i64 35, !18, i64 36, !18, i64 37, !18, i64 38, !18, i64 39, !6, i64 40, !18, i64 44, !18, i64 45, !18, i64 46, !18, i64 47, !5, i64 48, !18, i64 49, !18, i64 50, !18, i64 51, !18, i64 52, !18, i64 53, !18, i64 54, !18, i64 55, !18, i64 56, !18, i64 57, !18, i64 58, !18, i64 59, !18, i64 60, !18, i64 61, !18, i64 62, !18, i64 63}
!20 = !{!15, !13, i64 16}
!21 = !{!15, !6, i64 44}
!22 = !{!15, !6, i64 48}
!23 = !{!15, !6, i64 52}
!24 = !{!15, !6, i64 56}
!25 = !{!6, !6, i64 0}
!26 = !{!19, !6, i64 4}
!27 = !{!"p1 omnipotent char", !11, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !13, i64 8, !5, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIiSaIiEE", !32, i64 0}
!34 = !{!"p1 _ZTSN4ncnn3MatE", !11, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !37, i64 0}
!39 = !{!"_ZTSN4ncnn5LayerE", !18, i64 8, !18, i64 9, !18, i64 10, !18, i64 11, !18, i64 12, !18, i64 13, !18, i64 14, !18, i64 15, !18, i64 16, !18, i64 17, !18, i64 18, !18, i64 19, !18, i64 20, !18, i64 21, !18, i64 22, !18, i64 23, !18, i64 24, !18, i64 25, !18, i64 26, !18, i64 27, !6, i64 28, !11, i64 32, !6, i64 40, !29, i64 48, !29, i64 80, !33, i64 112, !33, i64 136, !38, i64 160, !38, i64 184}
!40 = !{!5, !5, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"float", !5, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 8, i32 56}
!47 = !{!"_ZTSN4ncnn12InstanceNormE", !39, i64 0, !6, i64 208, !42, i64 212, !6, i64 216, !15, i64 224, !15, i64 296}
!48 = !{!47, !6, i64 216}
!49 = !{!47, !42, i64 212}
!50 = !{i64 2, i64 -1, i64 -1, i1 true}
!51 = !{!50}
!52 = distinct !{null}
!53 = !{!15, !12, i64 8}
!54 = !{!15, !14, i64 32}
!55 = !{!19, !18, i64 32}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!15, !6, i64 24}
!59 = !{!39, !18, i64 12}
!60 = distinct !{!60, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!61 = distinct !{!61, !60, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !83}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !41, !44, !45}
!67 = distinct !{!67, !41, !44, !45}
!68 = distinct !{!68, !41, !45, !44}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !83}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41, !44, !45}
!74 = distinct !{!74, !41, !44, !45}
!75 = distinct !{!75, !41, !45, !44}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41, !44, !45}
!79 = distinct !{!79, !41, !44, !45}
!80 = distinct !{!80, !41}
end_hunk_0
