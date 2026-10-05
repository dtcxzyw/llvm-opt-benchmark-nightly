Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx512vnni?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.2:bb.a
  %i.ka = trunc nuw i64 %indvars.iv.next422 to i32
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %._crit_edge347.loopexit, %._crit_edge337
  %.0263.in.lcssa = phi <4 x i32> [ %i.jl, %._crit_edge337 ], [ %i.jv, %._crit_edge347.loopexit ]
  %.7149.lcssa = phi ptr [ %.6148.lcssa, %._crit_edge337 ], [ %i.jw, %._crit_edge347.loopexit ] ; 2 uses
  %.7.lcssa = phi i32 [ %.6.lcssa, %._crit_edge337 ], [ %i.ka, %._crit_edge347.loopexit ] ; 3 uses
  %i.kb = load <4 x i32>, ptr %.7149.lcssa, align 1, !tbaa !25
  %i.kc = sub <4 x i32> %.0263.in.lcssa, %i.kb    ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.7149.lcssa, i64 16 ; 2 uses
  %i.ke = or disjoint i32 %.7.lcssa, 1
  %i.kf = icmp slt i32 %i.ke, %i.gc
  br i1 %i.kf, label %.lr.ph355.preheader, label %.preheader

.lr.ph355.preheader:                              ; preds = %._crit_edge347
  %i.kg = zext i32 %.7.lcssa to i64
  br label %.lr.ph355

.preheader.loopexit:                              ; preds = %.lr.ph355
  %i.kh = trunc nuw i64 %indvars.iv.next425 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge347
  %.1264.in.lcssa = phi <4 x i32> [ %i.kc, %._crit_edge347 ], [ %i.lh, %.preheader.loopexit ] ; 3 uses
  %.8150.lcssa = phi ptr [ %i.kd, %._crit_edge347 ], [ %i.li, %.preheader.loopexit ] ; 3 uses
  %.8.lcssa = phi i32 [ %.7.lcssa, %._crit_edge347 ], [ %i.kh, %.preheader.loopexit ] ; 4 uses
  %i.ki = icmp slt i32 %.8.lcssa, %i.gc
  br i1 %i.ki, label %.lr.ph361.preheader, label %._crit_edge362

.lr.ph361.preheader:                              ; preds = %.preheader
  %i.kj = zext i32 %.8.lcssa to i64               ; 3 uses
  %i.kk = sub i32 %i.gc, %.8.lcssa
  %.neg522 = add i32 %.8.lcssa, 1
  %xtraiter519 = and i32 %i.kk, 1
  %lcmp.mod520.not = icmp eq i32 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph361.prol.loopexit, label %.lr.ph361.prol

.lr.ph361.prol:                                   ; preds = %.lr.ph361.preheader
  %i.kl = load <8 x i8>, ptr %.8150.lcssa, align 1, !tbaa !25
  %i.km = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.kj
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !25
  %i.ko = sext i8 %i.kn to i16
  %i.kp = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %i.kq = shufflevector <8 x i16> %i.kp, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kr = sext <8 x i8> %i.kl to <8 x i16>        ; 2 uses
  %i.ks = mul <8 x i16> %i.kq, %i.kr
  %i.kt = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kr, <8 x i16> %i.kq)
  %i.ku = shufflevector <8 x i16> %i.ks, <8 x i16> %i.kt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kv = bitcast <8 x i16> %i.ku to <4 x i32>
  %i.kw = add <4 x i32> %.1264.in.lcssa, %i.kv    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.8150.lcssa, i64 4
  %indvars.iv.next428.prol = add nuw nsw i64 %i.kj, 1
  br label %.lr.ph361.prol.loopexit

.lr.ph361.prol.loopexit:                          ; preds = %.lr.ph361.prol, %.lr.ph361.preheader
  %indvars.iv427.unr = phi i64 [ %i.kj, %.lr.ph361.preheader ], [ %indvars.iv.next428.prol, %.lr.ph361.prol ]
  %.9151359.unr = phi ptr [ %.8150.lcssa, %.lr.ph361.preheader ], [ %i.kx, %.lr.ph361.prol ]
  %.unr521 = phi <4 x i32> [ %.1264.in.lcssa, %.lr.ph361.preheader ], [ %i.kw, %.lr.ph361.prol ]
  %.lcssa518.unr = phi <4 x i32> [ poison, %.lr.ph361.preheader ], [ %i.kw, %.lr.ph361.prol ]
  %i.ky = icmp eq i32 %i.gc, %.neg522
  br i1 %i.ky, label %._crit_edge362, label %.lr.ph361

.lr.ph355:                                        ; preds = %.lr.ph355.preheader, %.lr.ph355
  %indvars.iv424 = phi i64 [ %i.kg, %.lr.ph355.preheader ], [ %indvars.iv.next425, %.lr.ph355 ] ; 2 uses
  %.8150352 = phi ptr [ %i.kd, %.lr.ph355.preheader ], [ %i.li, %.lr.ph355 ] ; 2 uses
  %.1264.in351 = phi <4 x i32> [ %i.kc, %.lr.ph355.preheader ], [ %i.lh, %.lr.ph355 ]
  %i.kz = load <8 x i8>, ptr %.8150352, align 1, !tbaa !25
  %i.la = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv424
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !152
  %i.lc = insertelement <8 x i16> poison, i16 %i.lb, i64 0
  %i.ld = sext <8 x i8> %i.kz to <8 x i16>
  %i.le = bitcast <8 x i16> %i.lc to <16 x i8>
  %i.lf = shufflevector <16 x i8> %i.le, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.lg = sext <8 x i8> %i.lf to <8 x i16>
  %i.lh = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.1264.in351, <8 x i16> %i.ld, <8 x i16> %i.lg) ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.8150352, i64 8 ; 2 uses
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 2 ; 3 uses
  %i.lj = trunc i64 %indvars.iv.next425 to i32
  %i.lk = or i32 %i.lj, 1
  %i.ll = icmp slt i32 %i.lk, %i.gc
  br i1 %i.ll, label %.lr.ph355, label %.preheader.loopexit, !llvm.loop !149

.lr.ph361:                                        ; preds = %.lr.ph361.prol.loopexit, %.lr.ph361
  %indvars.iv427 = phi i64 [ %indvars.iv.next428.1, %.lr.ph361 ], [ %indvars.iv427.unr, %.lr.ph361.prol.loopexit ] ; 3 uses
  %.9151359 = phi ptr [ %i.mn, %.lr.ph361 ], [ %.9151359.unr, %.lr.ph361.prol.loopexit ] ; 3 uses
  %i.lm = phi <4 x i32> [ %i.mm, %.lr.ph361 ], [ %.unr521, %.lr.ph361.prol.loopexit ]
  %i.ln = load <8 x i8>, ptr %.9151359, align 1, !tbaa !25
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv427
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !25
  %i.lq = sext i8 %i.lp to i16
  %i.lr = insertelement <8 x i16> poison, i16 %i.lq, i64 0
  %i.ls = shufflevector <8 x i16> %i.lr, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lt = sext <8 x i8> %i.ln to <8 x i16>        ; 2 uses
  %i.lu = mul <8 x i16> %i.ls, %i.lt
  %i.lv = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.lt, <8 x i16> %i.ls)
  %i.lw = shufflevector <8 x i16> %i.lu, <8 x i16> %i.lv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lx = bitcast <8 x i16> %i.lw to <4 x i32>
  %i.ly = add <4 x i32> %i.lm, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %.9151359, i64 4
  %i.ma = load <8 x i8>, ptr %i.lz, align 1, !tbaa !25
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv427
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !25
  %i.me = sext i8 %i.md to i16
  %i.mf = insertelement <8 x i16> poison, i16 %i.me, i64 0
  %i.mg = shufflevector <8 x i16> %i.mf, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.mh = sext <8 x i8> %i.ma to <8 x i16>        ; 2 uses
  %i.mi = mul <8 x i16> %i.mg, %i.mh
  %i.mj = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.mh, <8 x i16> %i.mg)
  %i.mk = shufflevector <8 x i16> %i.mi, <8 x i16> %i.mj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ml = bitcast <8 x i16> %i.mk to <4 x i32>
  %i.mm = add <4 x i32> %i.ly, %i.ml              ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.9151359, i64 8
  %indvars.iv.next428.1 = add nuw nsw i64 %indvars.iv427, 2 ; 2 uses
  %i.mo = trunc nuw i64 %indvars.iv.next428.1 to i32
  %i.mp = icmp sgt i32 %i.gc, %i.mo
  br i1 %i.mp, label %.lr.ph361, label %._crit_edge362, !llvm.loop !150

._crit_edge362:                                   ; preds = %.lr.ph361.prol.loopexit, %.lr.ph361, %.preheader
  %.lcssa282 = phi <4 x i32> [ %.1264.in.lcssa, %.preheader ], [ %.lcssa518.unr, %.lr.ph361.prol.loopexit ], [ %i.mm, %.lr.ph361 ]
  %i.mq = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ms = insertelement <4 x float> poison, float %i.al, i64 0
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = load <4 x float>, ptr %i.ap, align 1, !tbaa !25
  %i.mv = load <4 x float>, ptr %i.bn, align 1, !tbaa !25
  %i.mw = sitofp fast <4 x i32> %.lcssa274 to <4 x float>
  %i.mx = fmul fast <4 x float> %i.mv, %i.mr
  %i.my = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mw, <4 x float> nofpclass(nan inf) %i.mx, <4 x float> nofpclass(nan inf) %i.mu)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.na = load <4 x float>, ptr %i.mz, align 1, !tbaa !25
  %i.nb = sitofp fast <4 x i32> %.lcssa282 to <4 x float>
  %i.nc = fmul fast <4 x float> %i.na, %i.mt
  %i.nd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nb, <4 x float> nofpclass(nan inf) %i.nc, <4 x float> nofpclass(nan inf) %i.my)
  store <4 x float> %i.nd, ptr %i.bv, align 1, !tbaa !25
  %i.ne = add nuw i32 %.0364, 1
  %exitcond.not = icmp eq i32 %.0364, %i.l
  br i1 %exitcond.not, label %._crit_edge367, label %bb.c

._crit_edge367:                                   ; preds = %._crit_edge362, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge367, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !12
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !12
  %i.k = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = shl nsw i64 %indvars.iv, 4               ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !22
  %i.r = load i32, ptr %i.l, align 4, !tbaa !21
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.p, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !24
  %i.v = mul i64 %i.t, %i.u
  %10 = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 4 uses
  %11 = load <16 x float>, ptr %10, align 1, !tbaa !25 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %13 = load <16 x float>, ptr %12, align 1, !tbaa !25 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 128
  %14 = load <16 x float>, ptr %i.w, align 1, !tbaa !25 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 192
  %15 = load <16 x float>, ptr %i.x, align 1, !tbaa !25 ; 2 uses
  %i.y = shufflevector <16 x float> %11, <16 x float> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.z = shufflevector <16 x float> %14, <16 x float> %15, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.aa = shufflevector <16 x float> %11, <16 x float> %13, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ab = shufflevector <16 x float> %14, <16 x float> %15, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ac = shufflevector <16 x float> %i.y, <16 x float> %i.z, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ad = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ae = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.af = fneg fast <16 x float> %i.ac
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.af, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aj = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ai, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ak = fcmp fast ogt <16 x float> %i.aj, %i.ai
  %i.al = fadd fast <16 x float> %i.aj, splat (float -1.000000e+00)
  %i.am = select fast <16 x i1> %i.ak, <16 x float> %i.al, <16 x float> %i.aj ; 2 uses
  %i.an = fneg fast <16 x float> %i.am            ; 2 uses
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.an, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ah)
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.an, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ao) ; 8 uses
  %i.aq = fmul fast <16 x float> %i.ap, %i.ap
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3C088908))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3D2AA9C1))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3E2AAAAA))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float 5.000000e-01))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.ap)
  %i.ax = fadd fast <16 x float> %i.aw, splat (float 1.000000e+00)
  %i.ay = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.am, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.az = shl <16 x i32> %i.ay, splat (i32 23)
  %i.ba = add <16 x i32> %i.az, splat (i32 1065353216)
  %i.bb = bitcast <16 x i32> %i.ba to <16 x float>
  %i.bc = fmul fast <16 x float> %i.ax, %i.bb
  %i.bd = fadd fast <16 x float> %i.bc, splat (float 1.000000e+00)
  %i.be = shufflevector <16 x float> %i.y, <16 x float> %i.z, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bf = fneg fast <16 x float> %i.be
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bg, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bj = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bi, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bk = fcmp fast ogt <16 x float> %i.bj, %i.bi
  %i.bl = fadd fast <16 x float> %i.bj, splat (float -1.000000e+00)
  %i.bm = select fast <16 x i1> %i.bk, <16 x float> %i.bl, <16 x float> %i.bj ; 2 uses
  %i.bn = fneg fast <16 x float> %i.bm            ; 2 uses
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bn, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bh)
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bn, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bo) ; 8 uses
  %i.bq = fmul fast <16 x float> %i.bp, %i.bp
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.br, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x3C088908))
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x3D2AA9C1))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x3E2AAAAA))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float 5.000000e-01))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.bp)
  %i.bx = fadd fast <16 x float> %i.bw, splat (float 1.000000e+00)
  %i.by = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bz = shl <16 x i32> %i.by, splat (i32 23)
  %i.ca = add <16 x i32> %i.bz, splat (i32 1065353216)
  %i.cb = bitcast <16 x i32> %i.ca to <16 x float>
  %i.cc = fmul fast <16 x float> %i.bx, %i.cb
  %i.cd = fadd fast <16 x float> %i.cc, splat (float 1.000000e+00)
  %i.ce = fneg fast <16 x float> %i.ad
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ce, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ci = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ch, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cj = fcmp fast ogt <16 x float> %i.ci, %i.ch
  %i.ck = fadd fast <16 x float> %i.ci, splat (float -1.000000e+00)
  %i.cl = select fast <16 x i1> %i.cj, <16 x float> %i.ck, <16 x float> %i.ci ; 2 uses
  %i.cm = fneg fast <16 x float> %i.cl            ; 2 uses
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cm, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cg)
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cm, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cn) ; 8 uses
  %i.cp = fmul fast <16 x float> %i.co, %i.co
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x3C088908))
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x3D2AA9C1))
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x3E2AAAAA))
  %i.cu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float 5.000000e-01))
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> nofpclass(nan inf) %i.co)
  %i.cw = fadd fast <16 x float> %i.cv, splat (float 1.000000e+00)
  %i.cx = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cl, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cy = shl <16 x i32> %i.cx, splat (i32 23)
  %i.cz = add <16 x i32> %i.cy, splat (i32 1065353216)
  %i.da = bitcast <16 x i32> %i.cz to <16 x float>
  %i.db = fmul fast <16 x float> %i.cw, %i.da
  %i.dc = fadd fast <16 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = fmul fast <16 x float> %i.ae, splat (float -2.000000e+00)
  %i.de = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.df = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.de, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.dg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.df, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dh = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dg, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.di = fcmp fast ogt <16 x float> %i.dh, %i.dg
  %i.dj = fadd fast <16 x float> %i.dh, splat (float -1.000000e+00)
  %i.dk = select fast <16 x i1> %i.di, <16 x float> %i.dj, <16 x float> %i.dh ; 2 uses
  %i.dl = fneg fast <16 x float> %i.dk            ; 2 uses
  %i.dm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dl, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.df)
  %i.dn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dl, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dm) ; 8 uses
  %i.do = fmul fast <16 x float> %i.dn, %i.dn
  %i.dp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.dq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dp, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x3C088908))
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dq, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x3D2AA9C1))
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dr, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x3E2AAAAA))
  %i.dt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float 5.000000e-01))
  %i.du = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dt, <16 x float> nofpclass(nan inf) %i.do, <16 x float> nofpclass(nan inf) %i.dn)
  %i.dv = fadd fast <16 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dx = shl <16 x i32> %i.dw, splat (i32 23)
  %i.dy = add <16 x i32> %i.dx, splat (i32 1065353216)
  %i.dz = bitcast <16 x i32> %i.dy to <16 x float>
  %i.ea = fmul fast <16 x float> %i.dv, %i.dz
  %i.eb = fadd fast <16 x float> %i.ea, splat (float 1.000000e+00)
  %i.ec = fdiv fast <16 x float> splat (float 1.000000e+00), %i.eb
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.ee = load ptr, ptr %4, align 8, !tbaa !35
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.p ; 2 uses
  %i.eg = load <16 x float>, ptr %i.ef, align 1, !tbaa !25
  %i.eh = fdiv fast <16 x float> %i.eg, %i.cd
  %i.ei = fdiv fast <16 x float> %i.ed, %i.bd
  %i.ej = fadd fast <16 x float> %i.ei, %i.eh     ; 2 uses
  %i.ek = fmul fast <16 x float> %i.ej, splat (float -2.000000e+00)
  %i.el = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ek, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.el, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.en = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.eo = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.en, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ep = fcmp fast ogt <16 x float> %i.eo, %i.en
  %i.eq = fadd fast <16 x float> %i.eo, splat (float -1.000000e+00)
  %i.er = select fast <16 x i1> %i.ep, <16 x float> %i.eq, <16 x float> %i.eo ; 2 uses
  %i.es = fneg fast <16 x float> %i.er            ; 2 uses
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.es, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.em)
  %i.eu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.es, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.et) ; 8 uses
  %i.ev = fmul fast <16 x float> %i.eu, %i.eu
  %i.ew = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ex = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ew, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x3C088908))
  %i.ey = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ex, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x3D2AA9C1))
  %i.ez = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ey, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x3E2AAAAA))
  %i.fa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ez, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float 5.000000e-01))
  %i.fb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fa, <16 x float> nofpclass(nan inf) %i.ev, <16 x float> nofpclass(nan inf) %i.eu)
  %i.fc = fadd fast <16 x float> %i.fb, splat (float 1.000000e+00)
  %i.fd = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.er, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fe = shl <16 x i32> %i.fd, splat (i32 23)
  %i.ff = add <16 x i32> %i.fe, splat (i32 1065353216)
  %i.fg = bitcast <16 x i32> %i.ff to <16 x float>
  %i.fh = fmul fast <16 x float> %i.fc, %i.fg
  %i.fi = fadd fast <16 x float> %i.fh, splat (float 1.000000e+00)
  %i.fj = fdiv fast <16 x float> splat (float 1.000000e+00), %i.fi
  %i.fk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.fl = fdiv fast <16 x float> %i.fk, %i.dc     ; 2 uses
  store <16 x float> %i.ej, ptr %i.ef, align 1, !tbaa !25
  %i.fm = load i32, ptr %5, align 4, !tbaa !12
  %i.fn = load i32, ptr %6, align 4, !tbaa !12
  %i.fo = icmp eq i32 %i.fm, %i.fn
  br i1 %i.fo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fp = load ptr, ptr %7, align 8, !tbaa !35
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.p
  store <16 x float> %i.fl, ptr %i.fq, align 1, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %8, %bb.d ], [ %9, %bb.c ]
  %i.fr = load ptr, ptr %.sink, align 8, !tbaa !35
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.p
  store <16 x float> %i.fl, ptr %i.fs, align 1, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !12
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !12
end_hunk_0
