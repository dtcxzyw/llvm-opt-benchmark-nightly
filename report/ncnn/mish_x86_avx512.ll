Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mish_x86_avx512?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn15Mish_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.kh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kg, <4 x float> nofpclass(nan inf) %i.kd, <4 x float> splat (float f0x3D2AA9C1))
  %i.ki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kh, <4 x float> nofpclass(nan inf) %i.kd, <4 x float> splat (float f0x3E2AAAAA))
  %i.kj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ki, <4 x float> nofpclass(nan inf) %i.kd, <4 x float> splat (float 5.000000e-01))
  %i.kk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kj, <4 x float> nofpclass(nan inf) %i.ke, <4 x float> nofpclass(nan inf) %i.kd)
  %i.kl = fadd fast <4 x float> %i.kk, splat (float 1.000000e+00)
  %i.km = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ka)
  %i.kn = shl <4 x i32> %i.km, splat (i32 23)
  %i.ko = add <4 x i32> %i.kn, splat (i32 1065353216)
  %i.kp = bitcast <4 x i32> %i.ko to <4 x float>
  %i.kq = fmul fast <4 x float> %i.kl, %i.kp
  %i.kr = fadd fast <4 x float> %i.kq, splat (float 1.000000e+00)
  %i.ks = fdiv fast <4 x float> splat (float 2.000000e+00), %i.kr
  %i.kt = fadd fast <4 x float> %i.ks, splat (float -1.000000e+00)
  %i.ku = fmul fast <4 x float> %i.kt, %i.hl
  store <4 x float> %i.ku, ptr %.243310, align 1, !tbaa !26
  %i.kv = getelementptr inbounds nuw i8, ptr %.243310, i64 16 ; 2 uses
  %i.kw = add nuw nsw i32 %.2311, 4               ; 3 uses
  %i.kx = or disjoint i32 %i.kw, 3
  %i.ky = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.kz = icmp slt i32 %i.kx, %i.ky
  br i1 %i.kz, label %.lr.ph312, label %.preheader, !llvm.loop !54

.lr.ph318:                                        ; preds = %.lr.ph318.prol.loopexit, %.lr.ph318
  %.3317 = phi i32 [ %i.lo, %.lr.ph318 ], [ %.3317.unr, %.lr.ph318.prol.loopexit ]
  %.344316 = phi ptr [ %i.ln, %.lr.ph318 ], [ %.344316.unr, %.lr.ph318.prol.loopexit ] ; 4 uses
  %i.la = load float, ptr %.344316, align 4, !tbaa !58 ; 2 uses
  %i.lb = call fast float @llvm.exp.f32(float %i.la)
  %i.lc = fadd fast float %i.lb, 1.000000e+00
  %i.ld = call fast float @llvm.log.f32(float %i.lc)
  %i.le = call fast float @llvm.tanh.f32(float %i.ld)
  %i.lf = fmul fast float %i.le, %i.la
  store float %i.lf, ptr %.344316, align 4, !tbaa !58
  %i.lg = getelementptr inbounds nuw i8, ptr %.344316, i64 4 ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !58 ; 2 uses
  %i.li = call fast float @llvm.exp.f32(float %i.lh)
  %i.lj = fadd fast float %i.li, 1.000000e+00
  %i.lk = call fast float @llvm.log.f32(float %i.lj)
  %i.ll = call fast float @llvm.tanh.f32(float %i.lk)
  %i.lm = fmul fast float %i.ll, %i.lh
  store float %i.lm, ptr %i.lg, align 4, !tbaa !58
  %i.ln = getelementptr inbounds nuw i8, ptr %.344316, i64 8
  %i.lo = add nuw nsw i32 %.3317, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.lo, %i.gz
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph318, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph318.prol.loopexit, %.lr.ph318, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond330.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond330.not, label %._crit_edge321, label %.noexc

._crit_edge321:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge321, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !29 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #2

declare void @_ZN4ncnn21mish_bf16s_avx512bf16ERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not324 = icmp sgt i32 %i.k, %i.j
  br i1 %.not324, label %._crit_edge326, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.hs, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !24, !noalias !67
  %i.r = load i64, ptr %i.l, align 8, !tbaa !25, !noalias !67
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !67
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 15
  br i1 %i.w, label %.lr.ph, label %.preheader306

.preheader306:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dt, %.lr.ph ] ; 2 uses
  %.038.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dq, %.lr.ph ] ; 2 uses
  %.037.lcssa = phi i32 [ 0, %.noexc ], [ %i.dr, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.037.lcssa, 7
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph312, label %.preheader305

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.037308 = phi i32 [ %i.dr, %.lr.ph ], [ 0, %.noexc ]
  %.038307 = phi ptr [ %i.dq, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <16 x i16>, ptr %.038307, align 1, !tbaa !26 ; 2 uses
  %i.ab = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.aa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ac = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.aa, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %5 = shufflevector <16 x i16> %i.ab, <16 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %6 = shufflevector <16 x i16> %i.ab, <16 x i16> %i.ac, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %7 = bitcast <16 x i16> %5 to <8 x i32>
  %8 = bitcast <16 x i16> %6 to <8 x i32>
  %9 = shufflevector <8 x i32> %7, <8 x i32> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ad = bitcast <16 x i32> %9 to <16 x float>   ; 2 uses
  %i.ae = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ad, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.af = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.af, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ah = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ag, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ai = fcmp fast ogt <16 x float> %i.ah, %i.ag
  %i.aj = fadd fast <16 x float> %i.ah, splat (float -1.000000e+00)
  %i.ak = select fast <16 x i1> %i.ai, <16 x float> %i.aj, <16 x float> %i.ah ; 2 uses
  %i.al = fneg fast <16 x float> %i.ak            ; 2 uses
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.al, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.af)
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.al, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.am) ; 8 uses
  %i.ao = fmul fast <16 x float> %i.an, %i.an
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.an, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> nofpclass(nan inf) %i.an, <16 x float> splat (float f0x3C088908))
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.an, <16 x float> splat (float f0x3D2AA9C1))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.an, <16 x float> splat (float f0x3E2AAAAA))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.an, <16 x float> splat (float 5.000000e-01))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> nofpclass(nan inf) %i.an)
  %i.av = fadd fast <16 x float> %i.au, splat (float 1.000000e+00)
  %i.aw = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ak, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ax = shl <16 x i32> %i.aw, splat (i32 23)
  %i.ay = add <16 x i32> %i.ax, splat (i32 1065353216)
  %i.az = bitcast <16 x i32> %i.ay to <16 x float>
  %i.ba = fmul fast <16 x float> %i.av, %i.az
  %i.bb = fadd fast <16 x float> %i.ba, splat (float 1.000000e+00) ; 2 uses
  %i.bc = fcmp fast ole <16 x float> %i.bb, zeroinitializer
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bb, <16 x float> splat (float f0x00800000), i32 4)
  %i.be = bitcast <16 x float> %i.bd to <16 x i32> ; 2 uses
  %i.bf = lshr <16 x i32> %i.be, splat (i32 23)
  %i.bg = and <16 x i32> %i.be, splat (i32 -2139095041)
  %i.bh = or disjoint <16 x i32> %i.bg, splat (i32 1056964608)
  %i.bi = bitcast <16 x i32> %i.bh to <16 x float> ; 3 uses
  %i.bj = add nsw <16 x i32> %i.bf, splat (i32 -127)
  %i.bk = sitofp fast <16 x i32> %i.bj to <16 x float> ; 2 uses
  %i.bl = fadd fast <16 x float> %i.bk, splat (float 1.000000e+00)
  %i.bm = fcmp fast olt <16 x float> %i.bi, splat (float f0x3F3504F3) ; 2 uses
  %i.bn = fadd fast <16 x float> %i.bi, splat (float -1.000000e+00)
  %i.bo = select fast <16 x i1> %i.bm, <16 x float> %i.bk, <16 x float> %i.bl ; 2 uses
  %i.bp = select fast <16 x i1> %i.bm, <16 x float> %i.bi, <16 x float> zeroinitializer
  %i.bq = fadd fast <16 x float> %i.bn, %i.bp     ; 12 uses
  %i.br = fmul fast <16 x float> %i.bq, %i.bq     ; 2 uses
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0x3DEF251A))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0xBDFE5D4F))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0x3E11E9BF))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0xBE2AAE50))
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0x3E4CCEAC))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0xBE7FFFFC))
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.by, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0x3EAAAAAA))
  %i.ca = fmul fast <16 x float> %i.br, %i.bq
  %i.cb = fmul fast <16 x float> %i.ca, %i.bz
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cb)
  %i.cd = fneg fast <16 x float> %i.br
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cd, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.cc)
  %i.cf = fadd fast <16 x float> %i.ce, %i.bq
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cf)
  %.neg304 = fmul fast <16 x float> %i.cg, splat (float -2.000000e+00)
  %i.ch = select fast <16 x i1> %i.bc, <16 x float> splat (float +nan(0x3FFFFF)), <16 x float> %.neg304
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cl = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ck, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cm = fcmp fast ogt <16 x float> %i.cl, %i.ck
  %i.cn = fadd fast <16 x float> %i.cl, splat (float -1.000000e+00)
  %i.co = select fast <16 x i1> %i.cm, <16 x float> %i.cn, <16 x float> %i.cl ; 2 uses
  %i.cp = fneg fast <16 x float> %i.co            ; 2 uses
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cp, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cj)
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cp, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cq) ; 8 uses
  %i.cs = fmul fast <16 x float> %i.cr, %i.cr
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.cr, <16 x float> splat (float f0x3C088908))
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.cr, <16 x float> splat (float f0x3D2AA9C1))
  %i.cw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cv, <16 x float> nofpclass(nan inf) %i.cr, <16 x float> splat (float f0x3E2AAAAA))
  %i.cx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cw, <16 x float> nofpclass(nan inf) %i.cr, <16 x float> splat (float 5.000000e-01))
  %i.cy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cx, <16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.cr)
  %i.cz = fadd fast <16 x float> %i.cy, splat (float 1.000000e+00)
  %i.da = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.co, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.db = shl <16 x i32> %i.da, splat (i32 23)
  %i.dc = add <16 x i32> %i.db, splat (i32 1065353216)
  %i.dd = bitcast <16 x i32> %i.dc to <16 x float>
  %i.de = fmul fast <16 x float> %i.cz, %i.dd
  %i.df = fadd fast <16 x float> %i.de, splat (float 1.000000e+00)
  %i.dg = fdiv fast <16 x float> splat (float 1.000000e+00), %i.df
  %i.dh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dg, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.di = fmul fast <16 x float> %i.dh, %i.ad
  %i.dj = bitcast <16 x float> %i.di to <16 x i32>
  %i.dk = lshr <16 x i32> %i.dj, splat (i32 16)   ; 2 uses
  %i.dl = shufflevector <16 x i32> %i.dk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dm = shufflevector <16 x i32> %i.dk, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dn = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dl, <8 x i32> %i.dm)
  %i.do = bitcast <16 x i16> %i.dn to <4 x i64>
  %i.dp = shufflevector <4 x i64> %i.do, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.dp, ptr %.038307, align 1, !tbaa !26
  %i.dq = getelementptr inbounds nuw i8, ptr %.038307, i64 32 ; 2 uses
  %i.dr = add nuw nsw i32 %.037308, 16            ; 3 uses
  %i.ds = or disjoint i32 %i.dr, 15
  %i.dt = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.du = icmp slt i32 %i.ds, %i.dt
  br i1 %i.du, label %.lr.ph, label %.preheader306, !llvm.loop !61

.preheader305:                                    ; preds = %.lr.ph312, %.preheader306
  %i.dv = phi i32 [ %i.x, %.preheader306 ], [ %i.hq, %.lr.ph312 ] ; 2 uses
  %.139.lcssa = phi ptr [ %.038.lcssa, %.preheader306 ], [ %i.hn, %.lr.ph312 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.037.lcssa, %.preheader306 ], [ %i.ho, %.lr.ph312 ] ; 3 uses
  %i.dw = or disjoint i32 %.1.lcssa, 3
  %i.dx = icmp slt i32 %i.dw, %i.dv
  br i1 %i.dx, label %.lr.ph317, label %.preheader

.lr.ph312:                                        ; preds = %.preheader306, %.lr.ph312
  %.1311 = phi i32 [ %i.ho, %.lr.ph312 ], [ %.037.lcssa, %.preheader306 ]
  %.139310 = phi ptr [ %i.hn, %.lr.ph312 ], [ %.038.lcssa, %.preheader306 ] ; 3 uses
  %i.dy = load <8 x i16>, ptr %.139310, align 1, !tbaa !26 ; 2 uses
  %i.dz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ea = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.dy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eb = shufflevector <8 x i16> %i.dz, <8 x i16> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ec = bitcast <16 x i16> %i.eb to <8 x float> ; 2 uses
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ec, <8 x float> splat (float f0x42B0C0A5))
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.eg = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ef, i32 1) ; 2 uses
  %i.eh = fcmp fast ogt <8 x float> %i.eg, %i.ef
  %i.ei = select <8 x i1> %i.eh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ej = fsub fast <8 x float> %i.eg, %i.ei      ; 2 uses
  %i.ek = fneg fast <8 x float> %i.ej             ; 2 uses
  %i.el = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ek, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ee)
  %i.em = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ek, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.el) ; 8 uses
  %i.en = fmul fast <8 x float> %i.em, %i.em
  %i.eo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.em, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ep = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eo, <8 x float> nofpclass(nan inf) %i.em, <8 x float> splat (float f0x3C088908))
  %i.eq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> nofpclass(nan inf) %i.em, <8 x float> splat (float f0x3D2AA9C1))
  %i.er = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eq, <8 x float> nofpclass(nan inf) %i.em, <8 x float> splat (float f0x3E2AAAAA))
  %i.es = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.em, <8 x float> splat (float 5.000000e-01))
  %i.et = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.es, <8 x float> nofpclass(nan inf) %i.en, <8 x float> nofpclass(nan inf) %i.em)
  %i.eu = fadd fast <8 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ej)
  %i.ew = shl <8 x i32> %i.ev, splat (i32 23)
  %i.ex = add <8 x i32> %i.ew, splat (i32 1065353216)
  %i.ey = bitcast <8 x i32> %i.ex to <8 x float>
  %i.ez = fmul fast <8 x float> %i.eu, %i.ey
  %i.fa = fadd fast <8 x float> %i.ez, splat (float 1.000000e+00) ; 2 uses
  %i.fb = fcmp fast ole <8 x float> %i.fa, zeroinitializer
  %i.fc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fa, <8 x float> splat (float f0x00800000))
  %i.fd = bitcast <8 x float> %i.fc to <8 x i32>  ; 2 uses
  %i.fe = lshr <8 x i32> %i.fd, splat (i32 23)
  %i.ff = and <8 x i32> %i.fd, splat (i32 -2139095041)
  %i.fg = or disjoint <8 x i32> %i.ff, splat (i32 1056964608)
  %i.fh = bitcast <8 x i32> %i.fg to <8 x float>  ; 3 uses
  %i.fi = add nsw <8 x i32> %i.fe, splat (i32 -127)
  %i.fj = sitofp fast <8 x i32> %i.fi to <8 x float> ; 2 uses
  %i.fk = fadd fast <8 x float> %i.fj, splat (float 1.000000e+00)
  %i.fl = fcmp fast olt <8 x float> %i.fh, splat (float f0x3F3504F3) ; 2 uses
  %i.fm = select <8 x i1> %i.fl, <8 x float> %i.fh, <8 x float> zeroinitializer
  %i.fn = fadd fast <8 x float> %i.fh, splat (float -1.000000e+00)
  %i.fo = select fast <8 x i1> %i.fl, <8 x float> %i.fj, <8 x float> %i.fk ; 2 uses
  %i.fp = fadd fast <8 x float> %i.fn, %i.fm      ; 12 uses
  %i.fq = fmul fast <8 x float> %i.fp, %i.fp      ; 2 uses
  %i.fr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fp, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.fs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fr, <8 x float> nofpclass(nan inf) %i.fp, <8 x float> splat (float f0x3DEF251A))
  %i.ft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fs, <8 x float> nofpclass(nan inf) %i.fp, <8 x float> splat (float f0xBDFE5D4F))
  %i.fu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.fp, <8 x float> splat (float f0x3E11E9BF))
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> nofpclass(nan inf) %i.fp, <8 x float> splat (float f0xBE2AAE50))
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> nofpclass(nan inf) %i.fp, <8 x float> splat (float f0x3E4CCEAC))
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fw, <8 x float> nofpclass(nan inf) %i.fp, <8 x float> splat (float f0xBE7FFFFC))
  %i.fy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fx, <8 x float> nofpclass(nan inf) %i.fp, <8 x float> splat (float f0x3EAAAAAA))
  %i.fz = fmul fast <8 x float> %i.fq, %i.fp
  %i.ga = fmul fast <8 x float> %i.fz, %i.fy
  %i.gb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fo, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ga)
  %i.gc = fneg fast <8 x float> %i.fq
  %i.gd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gc, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.gb)
  %i.ge = fadd fast <8 x float> %i.gd, %i.fp
  %i.gf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fo, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ge)
  %.neg303 = fmul fast <8 x float> %i.gf, splat (float -2.000000e+00)
  %i.gg = select fast <8 x i1> %i.fb, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg303
  %i.gh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gg, <8 x float> splat (float f0x42B0C0A5))
  %i.gi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.gk = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gj, i32 1) ; 2 uses
  %i.gl = fcmp fast ogt <8 x float> %i.gk, %i.gj
  %i.gm = select <8 x i1> %i.gl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gn = fsub fast <8 x float> %i.gk, %i.gm      ; 2 uses
  %i.go = fneg fast <8 x float> %i.gn             ; 2 uses
  %i.gp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.go, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.gi)
  %i.gq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.go, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gp) ; 8 uses
  %i.gr = fmul fast <8 x float> %i.gq, %i.gq
  %i.gs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gq, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.gt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> splat (float f0x3C088908))
  %i.gu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gt, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> splat (float f0x3D2AA9C1))
  %i.gv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gu, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> splat (float f0x3E2AAAAA))
  %i.gw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gv, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> splat (float 5.000000e-01))
  %i.gx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gw, <8 x float> nofpclass(nan inf) %i.gr, <8 x float> nofpclass(nan inf) %i.gq)
  %i.gy = fadd fast <8 x float> %i.gx, splat (float 1.000000e+00)
  %i.gz = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gn)
  %i.ha = shl <8 x i32> %i.gz, splat (i32 23)
  %i.hb = add <8 x i32> %i.ha, splat (i32 1065353216)
  %i.hc = bitcast <8 x i32> %i.hb to <8 x float>
  %i.hd = fmul fast <8 x float> %i.gy, %i.hc
  %i.he = fadd fast <8 x float> %i.hd, splat (float 1.000000e+00)
  %i.hf = fdiv fast <8 x float> splat (float 1.000000e+00), %i.he
  %i.hg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hf, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.hh = fmul fast <8 x float> %i.hg, %i.ec
  %i.hi = bitcast <8 x float> %i.hh to <8 x i32>
end_hunk_0
