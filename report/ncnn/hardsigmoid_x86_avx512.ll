Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/hardsigmoid_x86_avx512?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@_ZNK4ncnn22HardSigmoid_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = fmul fast <4 x float> %i.da, %i.cu
  %i.dc = fadd fast <4 x float> %i.db, %i.cx
  %i.dd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dc, <4 x float> zeroinitializer)
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.de, ptr %.25880, align 16, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %.25880, i64 16 ; 2 uses
  %i.dg = add nuw nsw i32 %.281, 4                ; 3 uses
  %i.dh = or disjoint i32 %i.dg, 3
  %i.di = load i32, ptr %4, align 4, !tbaa !25    ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph82, label %.preheader, !llvm.loop !71

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %bb.e
  %.387 = phi i32 [ %i.du, %bb.e ], [ %.387.ph, %.lr.ph88.preheader ]
  %.35986 = phi ptr [ %i.dt, %bb.e ], [ %.35986.ph, %.lr.ph88.preheader ] ; 3 uses
  %i.dk = load float, ptr %.35986, align 4, !tbaa !49 ; 3 uses
  %i.dl = load float, ptr %i.p, align 8, !tbaa !59
  %i.dm = fcmp fast olt float %i.dk, %i.dl
  br i1 %i.dm, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph88
  %i.dn = load float, ptr %i.q, align 4, !tbaa !65
  %i.do = fcmp fast ogt float %i.dk, %i.dn
  br i1 %i.do, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dp = load float, ptr %i.o, align 8, !tbaa !45
  %i.dq = fmul fast float %i.dp, %i.dk
  %i.dr = load float, ptr %i.n, align 4, !tbaa !48
  %i.ds = fadd fast float %i.dq, %i.dr
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.lr.ph88, %bb.d
  %.sink = phi float [ 0.000000e+00, %.lr.ph88 ], [ %i.ds, %bb.d ], [ 1.000000e+00, %bb.c ]
  store float %.sink, ptr %.35986, align 4, !tbaa !49
  %i.dt = getelementptr inbounds nuw i8, ptr %.35986, i64 4
  %i.du = add nuw nsw i32 %.387, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, %i.bl
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph88, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.e, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond100.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond100.not, label %._crit_edge91, label %.noexc

._crit_edge91:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge91, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !73 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #8

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #2

declare void @_ZN4ncnn28hardsigmoid_bf16s_avx512bf16ERNS_3MatEffRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), float noundef nofpclass(nan inf), float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL17hardsigmoid_bf16sERNS_3MatEffRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not74 = icmp sgt i32 %i.k, %i.j
  br i1 %.not74, label %._crit_edge76, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %6, align 4, !tbaa !25
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge73
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ca, %._crit_edge73 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge73 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !50, !noalias !75
  %i.q = load i64, ptr %i.l, align 8, !tbaa !54, !noalias !75
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !75
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load float, ptr %4, align 4, !tbaa !49
  %i.w = insertelement <16 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <16 x float> %i.w, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.y = load float, ptr %5, align 4, !tbaa !49
  %i.z = insertelement <16 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <16 x float> %i.z, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ab = icmp sgt i32 %i.o, 15
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.04566 = phi i32 [ %i.aw, %.lr.ph ], [ 0, %.noexc ]
  %.04665 = phi ptr [ %i.av, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.ac = load <16 x i16>, ptr %.04665, align 1, !tbaa !55 ; 2 uses
  %i.ad = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ac, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ae = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ac, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.af = shufflevector <16 x i16> %i.ad, <16 x i16> %i.ae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ag = shufflevector <16 x i16> %i.ad, <16 x i16> %i.ae, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ah = bitcast <16 x i16> %i.af to <8 x i32>
  %i.ai = bitcast <16 x i16> %i.ag to <8 x i32>
  %i.aj = shufflevector <8 x i32> %i.ah, <8 x i32> %i.ai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = bitcast <16 x i32> %i.aj to <16 x float>
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> nofpclass(nan inf) %i.x, <16 x float> nofpclass(nan inf) %i.aa)
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.al, <16 x float> zeroinitializer, i32 4)
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float 1.000000e+00), i32 4)
  %i.ao = bitcast <16 x float> %i.an to <16 x i32>
  %i.ap = lshr <16 x i32> %i.ao, splat (i32 16)   ; 2 uses
  %i.aq = shufflevector <16 x i32> %i.ap, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ar = shufflevector <16 x i32> %i.ap, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.as = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aq, <8 x i32> %i.ar)
  %i.at = bitcast <16 x i16> %i.as to <4 x i64>
  %i.au = shufflevector <4 x i64> %i.at, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.au, ptr %.04665, align 1, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %.04665, i64 32 ; 2 uses
  %i.aw = add nuw nsw i32 %.04566, 16             ; 3 uses
  %i.ax = or disjoint i32 %i.aw, 15
  %i.ay = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.ba = phi i32 [ %i.o, %.noexc ], [ %i.ay, %.lr.ph ] ; 4 uses
  %.046.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.av, %.lr.ph ] ; 7 uses
  %.045.lcssa = phi i32 [ 0, %.noexc ], [ %i.aw, %.lr.ph ] ; 3 uses
  %i.bb = icmp slt i32 %.045.lcssa, %i.ba
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bc = sub nsw i32 %i.ba, %.045.lcssa
  %notmask = shl nsw i32 -1, %i.bc
  %i.bd = trunc i32 %notmask to i16
  %i.be = xor i16 %i.bd, -1
  %i.bf = bitcast i16 %i.be to <16 x i1>          ; 2 uses
  %i.bg = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.046.lcssa, <16 x i1> %i.bf, <16 x i16> zeroinitializer) ; 2 uses
  %i.bh = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bi = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bj = shufflevector <16 x i16> %i.bh, <16 x i16> %i.bi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bk = shufflevector <16 x i16> %i.bh, <16 x i16> %i.bi, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bl = bitcast <16 x i16> %i.bj to <8 x i32>
  %i.bm = bitcast <16 x i16> %i.bk to <8 x i32>
  %i.bn = shufflevector <8 x i32> %i.bl, <8 x i32> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = bitcast <16 x i32> %i.bn to <16 x float>
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> nofpclass(nan inf) %i.x, <16 x float> nofpclass(nan inf) %i.aa)
  %i.bq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bp, <16 x float> zeroinitializer, i32 4)
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float 1.000000e+00), i32 4)
  %i.bs = bitcast <16 x float> %i.br to <16 x i32>
  %i.bt = lshr <16 x i32> %i.bs, splat (i32 16)   ; 2 uses
  %i.bu = shufflevector <16 x i32> %i.bt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = shufflevector <16 x i32> %i.bt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bw = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bu, <8 x i32> %i.bv)
  %i.bx = bitcast <16 x i16> %i.bw to <4 x i64>
  %i.by = shufflevector <4 x i64> %i.bx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bz = bitcast <4 x i64> %i.by to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bz, ptr align 1 %.046.lcssa, <16 x i1> %i.bf)
  %.pre81 = load i32, ptr %6, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ca = phi i32 [ %.pre81, %bb.c ], [ %i.ba, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.ba, %bb.c ], [ %.045.lcssa, %._crit_edge ] ; 5 uses
  %i.cb = icmp slt i32 %.1, %i.ca
  br i1 %i.cb, label %iter.check, label %._crit_edge73

iter.check:                                       ; preds = %bb.d
  %i.cc = load float, ptr %4, align 4, !tbaa !49  ; 3 uses
  %i.cd = load float, ptr %5, align 4, !tbaa !49  ; 3 uses
  %i.ce = xor i32 %.1, -1
  %i.cf = add i32 %i.ca, %i.ce                    ; 3 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cf, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check92 = icmp ult i32 %i.cf, 31
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ci = and i64 %i.ch, 24
  %n.vec = and i64 %i.ch, 8589934560              ; 5 uses
  %i.cj = trunc i64 %n.vec to i32
  %i.ck = add i32 %.1, %i.cj
  %i.cl = shl nuw nsw i64 %n.vec, 1
  %i.cm = getelementptr i8, ptr %.046.lcssa, i64 %i.cl
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.cc, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <32 x float> poison, float %i.cd, i64 0
  %broadcast.splat94 = shufflevector <32 x float> %broadcast.splatinsert93, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.046.lcssa, i64 %i.cn ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !79
  %i.co = zext <32 x i16> %wide.load to <32 x i32>
  %i.cp = shl nuw <32 x i32> %i.co, splat (i32 16)
  %i.cq = bitcast <32 x i32> %i.cp to <32 x float>
  %i.cr = fmul fast <32 x float> %broadcast.splat, %i.cq
  %i.cs = fadd fast <32 x float> %i.cr, %broadcast.splat94 ; 2 uses
  %i.ct = fcmp fast olt <32 x float> %i.cs, zeroinitializer
  %i.cu = select <32 x i1> %i.ct, <32 x float> zeroinitializer, <32 x float> %i.cs ; 2 uses
  %i.cv = fcmp fast ogt <32 x float> %i.cu, splat (float 1.000000e+00)
  %i.cw = bitcast <32 x float> %i.cu to <32 x i32>
  %i.cx = lshr <32 x i32> %i.cw, splat (i32 16)
  %i.cy = trunc nuw <32 x i32> %i.cx to <32 x i16>
  %i.cz = select <32 x i1> %i.cv, <32 x i16> splat (i16 16256), <32 x i16> %i.cy
  store <32 x i16> %i.cz, ptr %next.gep, align 2, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec96 = and i64 %i.ch, 8589934584            ; 4 uses
  %i.db = trunc i64 %n.vec96 to i32
  %i.dc = add i32 %.1, %i.db
  %i.dd = shl nuw nsw i64 %n.vec96, 1
  %i.de = getelementptr i8, ptr %.046.lcssa, i64 %i.dd
  %broadcast.splatinsert97 = insertelement <8 x float> poison, float %i.cc, i64 0
  %broadcast.splat98 = shufflevector <8 x float> %broadcast.splatinsert97, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert99 = insertelement <8 x float> poison, float %i.cd, i64 0
  %broadcast.splat100 = shufflevector <8 x float> %broadcast.splatinsert99, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 2 uses
  %i.df = shl i64 %index101, 1
  %next.gep102 = getelementptr i8, ptr %.046.lcssa, i64 %i.df ; 2 uses
  %wide.load103 = load <8 x i16>, ptr %next.gep102, align 2, !tbaa !79
  %i.dg = zext <8 x i16> %wide.load103 to <8 x i32>
  %i.dh = shl nuw <8 x i32> %i.dg, splat (i32 16)
  %i.di = bitcast <8 x i32> %i.dh to <8 x float>
  %i.dj = fmul fast <8 x float> %broadcast.splat98, %i.di
  %i.dk = fadd fast <8 x float> %i.dj, %broadcast.splat100 ; 2 uses
  %i.dl = fcmp fast olt <8 x float> %i.dk, zeroinitializer
  %i.dm = select <8 x i1> %i.dl, <8 x float> zeroinitializer, <8 x float> %i.dk ; 2 uses
  %i.dn = fcmp fast ogt <8 x float> %i.dm, splat (float 1.000000e+00)
  %i.do = bitcast <8 x float> %i.dm to <8 x i32>
  %i.dp = lshr <8 x i32> %i.do, splat (i32 16)
  %i.dq = trunc nuw <8 x i32> %i.dp to <8 x i16>
  %i.dr = select <8 x i1> %i.dn, <8 x i16> splat (i16 16256), <8 x i16> %i.dq
  store <8 x i16> %i.dr, ptr %next.gep102, align 2, !tbaa !79
  %index.next104 = add nuw i64 %index101, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next104, %n.vec96
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %i.ch, %n.vec96
  br i1 %cmp.n105, label %._crit_edge73, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.270.ph = phi i32 [ %.1, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  %.14769.ph = phi ptr [ %.046.lcssa, %iter.check ], [ %i.cm, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.270 = phi i32 [ %i.eg, %vec.epilog.scalar.ph ], [ %.270.ph, %vec.epilog.scalar.ph.preheader ]
  %.14769 = phi ptr [ %i.ef, %vec.epilog.scalar.ph ], [ %.14769.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dt = load i16, ptr %.14769, align 2, !tbaa !79
  %i.du = zext i16 %i.dt to i32
  %i.dv = shl nuw i32 %i.du, 16
  %i.dw = bitcast i32 %i.dv to float
  %i.dx = fmul fast float %i.cc, %i.dw
  %i.dy = fadd fast float %i.dx, %i.cd            ; 2 uses
  %i.dz = fcmp fast olt float %i.dy, 0.000000e+00
  %.sroa.speculated52 = select i1 %i.dz, float 0.000000e+00, float %i.dy ; 2 uses
  %i.ea = fcmp fast ogt float %.sroa.speculated52, 1.000000e+00
  %i.eb = bitcast float %.sroa.speculated52 to i32
  %i.ec = lshr i32 %i.eb, 16
  %i.ed = trunc nuw i32 %i.ec to i16
  %i.ee = select i1 %i.ea, i16 16256, i16 %i.ed
  store i16 %i.ee, ptr %.14769, align 2, !tbaa !79
  %i.ef = getelementptr inbounds nuw i8, ptr %.14769, i64 2
  %i.eg = add nuw nsw i32 %.270, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, %i.ca
  br i1 %exitcond.not, label %._crit_edge73, label %vec.epilog.scalar.ph, !llvm.loop !84

._crit_edge73:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.eh = load i32, ptr %i.b, align 4, !tbaa !25
  %i.ei = sext i32 %i.eh to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ei
  br i1 %.not.not, label %.noexc, label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge73, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge76, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i16> @llvm.masked.load.v16i16.p0(ptr captures(none), <16 x i1>, <16 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16i16.p0(<16 x i16>, ptr captures(none), <16 x i1>) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr>, <16 x i1>, <16 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #12

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_0
