Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZNK4pbrt5Image15HasAnyNaNPixelsEv:bb.a
  %i.p = phi i32 [ %i.cf, %._crit_edge52 ], [ %i.m, %.preheader46.lr.ph ] ; 2 uses
  %i.q = phi i32 [ %i.cg, %._crit_edge52 ], [ %i.m, %.preheader46.lr.ph ] ; 2 uses
  %.01653 = phi i32 [ %i.ch, %._crit_edge52 ], [ 0, %.preheader46.lr.ph ] ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.preheader.preheader, label %._crit_edge52

.preheader.preheader:                             ; preds = %.preheader46
  %.pre = load i64, ptr %i.h, align 8, !tbaa !75
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.s = phi i32 [ %i.ca, %._crit_edge ], [ %i.p, %.preheader.preheader ]
  %i.t = phi i64 [ %i.cb, %._crit_edge ], [ %.pre, %.preheader.preheader ] ; 2 uses
  %.01451 = phi i32 [ %i.cc, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %.not49 = icmp sgt i32 %i.u, 0
  br i1 %.not49, label %.preheader.preheader.i, label %._crit_edge

bb.b:                                             ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i64, ptr %i.h, align 8, !tbaa !75   ; 3 uses
  %i.w = trunc i64 %i.v to i32
  %sext = shl i64 %i.v, 32
  %i.x = ashr exact i64 %sext, 32
  %.not = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %.not, label %.preheader.preheader.i, label %._crit_edge.loopexit, !llvm.loop !259

.preheader.preheader.i:                           ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader ] ; 4 uses
  %i.y = phi i32 [ %i.w, %bb.b ], [ %i.u, %.preheader ] ; 3 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.d, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.04.0.copyload.i to i32 ; 5 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 2 uses
  %i.z = icmp slt i32 %.01451, %.sroa.0.0.extract.trunc.i
  %i.aa = add nsw i32 %.sroa.0.0.extract.trunc.i, -1
  %..i.i = call i32 @llvm.smin.i32(i32 %.01451, i32 %i.aa)
  %.sroa.022.0 = select i1 %i.z, i32 %.01451, i32 %..i.i ; 3 uses
  %i.ab = icmp slt i32 %.01653, %.sroa.9.0.extract.trunc.i
  %i.ac = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %.01653, i32 %i.ac)
  %.sroa.14.2 = select i1 %i.ab, i32 %.01653, i32 %..i.1.i ; 3 uses
  %i.ad = load i32, ptr %0, align 8, !tbaa !72
  switch i32 %i.ad, label %bb.k [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.j
  ]

bb.c:                                             ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.ae = mul nsw i32 %.sroa.14.2, %.sroa.0.0.extract.trunc.i
  %i.af = add nsw i32 %i.ae, %.sroa.022.0
  %i.ag = mul nsw i32 %i.af, %i.y
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 %indvars.iv ; 3 uses
  %i.al = load i64, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.am = and i64 %i.al, 144115188075855871
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = lshr i64 %i.al, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  switch i32 %i.ap, label %bb.e [
    i32 1, label %.lr.ph.i.i.i.i.i.i
    i32 2, label %bb.d
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.ar = uitofp i8 %i.aq to float
  %i.as = fdiv float %i.ar, 2.550000e+02
  store float %i.as, ptr %i.a, align 4, !tbaa !79
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr %i.ak, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.e:                                             ; preds = %bb.c
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.an, ptr %i.ak, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.at = load float, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.f:                                             ; preds = %.preheader.preheader.i
  %i.au = mul nsw i32 %.sroa.14.2, %.sroa.0.0.extract.trunc.i
  %i.av = add nsw i32 %i.au, %.sroa.022.0
  %i.aw = mul nsw i32 %i.av, %i.y
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr [2 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !83 ; 2 uses
  %i.bc = zext i16 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 13               ; 4 uses
  %i.be = and i32 %i.bd, 260046848                ; 2 uses
  %i.bf = icmp eq i32 %i.be, 260046848
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = or i32 %i.bd, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bh = and i32 %i.bd, 268427264
  %i.bi = add nuw nsw i32 %i.bh, 939524096
  %i.bj = icmp eq i32 %i.be, 0
  br i1 %i.bj, label %bb.i, label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bk = or i32 %i.bd, 947912704
  %i.bl = bitcast i32 %i.bk to float
  %i.bm = fadd float %i.bl, f0xB8800000
  %i.bn = bitcast float %i.bm to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

_ZNK4pbrt4HalfcvfEv.exit.i:                       ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i.i = phi i32 [ %i.bg, %bb.g ], [ %i.bn, %bb.i ], [ %i.bi, %bb.h ]
  %.signext.i.i = sext i16 %i.bb to i32
  %i.bo = and i32 %.signext.i.i, -2147483648
  %i.bp = or i32 %.sroa.0.0.i.i, %i.bo
  %i.bq = bitcast i32 %i.bp to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.j:                                             ; preds = %.preheader.preheader.i
  %i.br = mul nsw i32 %.sroa.14.2, %.sroa.0.0.extract.trunc.i
  %i.bs = add nsw i32 %i.br, %.sroa.022.0
  %i.bt = mul nsw i32 %i.bs, %i.y
  %i.bu = sext i32 %i.bt to i64
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !79
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.k:                                             ; preds = %.preheader.preheader.i
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.94, i32 noundef 273, ptr noundef nonnull @.str.22) #33
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit: ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i, %_ZNK4pbrt4HalfcvfEv.exit.i, %bb.j
  %.0.i = phi float [ %i.at, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %i.bq, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %i.by, %bb.j ]
  %i.bz = fcmp uno float %.0.i, 0.000000e+00
  br i1 %i.bz, label %.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre57 = load i32, ptr %i.d, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ca = phi i32 [ %.pre57, %._crit_edge.loopexit ], [ %i.s, %.preheader ] ; 4 uses
  %i.cb = phi i64 [ %i.v, %._crit_edge.loopexit ], [ %i.t, %.preheader ]
  %i.cc = add nuw nsw i32 %.01451, 1              ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.preheader, label %._crit_edge52.loopexit, !llvm.loop !260

._crit_edge52.loopexit:                           ; preds = %._crit_edge
  %.pre58 = load i32, ptr %i.e, align 8, !tbaa !73
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %.preheader46
  %i.ce = phi i32 [ %.pre58, %._crit_edge52.loopexit ], [ %i.o, %.preheader46 ] ; 2 uses
  %i.cf = phi i32 [ %i.ca, %._crit_edge52.loopexit ], [ %i.p, %.preheader46 ]
  %i.cg = phi i32 [ %i.ca, %._crit_edge52.loopexit ], [ %i.q, %.preheader46 ]
  %i.ch = add nuw nsw i32 %.01653, 1              ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %i.ce
  br i1 %i.ci, label %.preheader46, label %.loopexit, !llvm.loop !261

.loopexit:                                        ; preds = %._crit_edge52, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit, %.preheader46.lr.ph, %.preheader47, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %.preheader47 ], [ true, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ false, %.preheader46.lr.ph ], [ false, %._crit_edge52 ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Image14GaussianFilterERKNS_16ImageChannelDescEif(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Image") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, float noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %6 = alloca %"class.pbrt::Image", align 8       ; 8 uses
  %7 = alloca %"class.std::vector.36", align 8    ; 10 uses
  %8 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %9 = alloca %"class.std::function", align 8     ; 11 uses
  %10 = alloca %"class.std::vector.36", align 8   ; 10 uses
  %11 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %12 = alloca %"class.std::function", align 8    ; 9 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %.noexc, label %.lr.ph

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #33
  unreachable

.lr.ph:                                           ; preds = %bb.a
  %i.d = shl nuw i32 %3, 1                        ; 3 uses
  %i.e = or disjoint i32 %i.d, 1                  ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 6 uses
  %i.g = shl nuw nsw i64 %i.f, 2                  ; 3 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #35 ; 12 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.h, i8 0, i64 %i.g, i1 false), !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !89
  %i.m = fmul float %4, f0x40C90FDB
  %i.n = fmul float %4, %i.m
  %i.o = tail call noundef float @sqrtf(float noundef %i.n) #31
  %i.p = fmul float %4, 2.000000e+00
  %i.q = fmul float %4, %i.p                      ; 2 uses
  %i.r = fdiv float 1.000000e+00, %i.o            ; 2 uses
  %13 = or disjoint i32 %i.d, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %min.iters.check = icmp slt i32 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.s = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.s to i64              ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat116 = shufflevector <8 x float> %broadcast.splatinsert115, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat118 = shufflevector <8 x i32> %broadcast.splatinsert117, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.t = sub <8 x i32> %vec.ind, %broadcast.splat118
  %i.u = sitofp <8 x i32> %i.t to <8 x float>     ; 2 uses
  %i.v = fneg <8 x float> %i.u
  %i.w = fmul nnan <8 x float> %i.u, %i.v
  %i.x = fdiv <8 x float> %i.w, %broadcast.splat
  %i.y = fmul <8 x float> %i.x, splat (float f0x3FB8AA3B) ; 2 uses
  %i.z = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %i.y) ; 2 uses
  %i.aa = fsub <8 x float> %i.y, %i.z             ; 3 uses
  %i.ab = fptosi <8 x float> %i.z to <8 x i32>
  %i.ac = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.aa, <8 x float> splat (float f0x3DA00AC9), <8 x float> splat (float f0x3E679A0B))
  %i.ad = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.aa, <8 x float> %i.ac, <8 x float> splat (float f0x3F321004))
  %i.ae = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.aa, <8 x float> %i.ad, <8 x float> splat (float 1.000000e+00))
  %i.af = bitcast <8 x float> %i.ae to <8 x i32>  ; 2 uses
  %i.ag = lshr <8 x i32> %i.af, splat (i32 23)
  %i.ah = add <8 x i32> %i.ab, splat (i32 -127)
  %i.ai = add <8 x i32> %i.ah, %i.ag              ; 3 uses
  %i.aj = icmp sgt <8 x i32> %i.ai, splat (i32 -127)
  %i.ak = icmp sgt <8 x i32> %i.ai, splat (i32 127)
  %i.al = and <8 x i32> %i.af, splat (i32 -2139095041)
  %i.am = shl nsw <8 x i32> %i.ai, splat (i32 23)
  %i.an = add nsw <8 x i32> %i.am, splat (i32 1065353216)
  %i.ao = or <8 x i32> %i.an, %i.al
  %i.ap = bitcast <8 x i32> %i.ao to <8 x float>
  %predphi = select <8 x i1> %i.ak, <8 x float> splat (float +inf), <8 x float> %i.ap
  %predphi119 = select <8 x i1> %i.aj, <8 x float> %predphi, <8 x float> zeroinitializer
  %i.aq = fmul <8 x float> %broadcast.splat116, %predphi119
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index
  store <8 x float> %i.aq, ptr %i.ar, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %scalar.ph.preheader, label %vector.body, !llvm.loop !262

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi float [ %i.bp, %.lr.ph.i ], [ %i.dj, %.lr.ph.i.prol.loopexit ]
  %.sroa.02.06.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.dk, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.at = load float, ptr %.sroa.02.06.i, align 4, !tbaa !79
  %i.au = fadd float %.07.i, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !79
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !79
  %i.ba = fadd float %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 12
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !79
  %i.bd = fadd float %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 16
  %i.bf = load float, ptr %i.be, align 4, !tbaa !79
  %i.bg = fadd float %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 20
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !79
  %i.bj = fadd float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 24
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !79
  %i.bm = fadd float %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 28
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !79
  %i.bp = fadd float %i.bm, %i.bo                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 32 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.bq, %i.k
  br i1 %.not.i.7, label %iter.check, label %.lr.ph.i, !llvm.loop !263

iter.check:                                       ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi float [ %i.dj, %.lr.ph.i.prol.loopexit ], [ %i.bp, %.lr.ph.i ] ; 3 uses
  %min.iters.check121 = icmp ult i32 %3, 4
  br i1 %min.iters.check121, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET0_T_S8_S7_.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp ult i32 %3, 16
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph123

vector.ph123:                                     ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.f, 24
  %n.vec124 = and i64 %i.f, 2147483616            ; 3 uses
  %i.bs = shl nuw nsw i64 %n.vec124, 2
  %i.bt = getelementptr i8, ptr %i.h, i64 %i.bs
  %broadcast.splatinsert125 = insertelement <8 x float> poison, float %.lcssa, i64 0
  %broadcast.splat126 = shufflevector <8 x float> %broadcast.splatinsert125, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.ph123, %vector.body127
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next132, %vector.body127 ] ; 2 uses
  %i.bu = shl i64 %index128, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bu ; 5 uses
  %i.bv = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !79
  %wide.load129 = load <8 x float>, ptr %i.bv, align 4, !tbaa !79
  %wide.load130 = load <8 x float>, ptr %i.bw, align 4, !tbaa !79
  %wide.load131 = load <8 x float>, ptr %i.bx, align 4, !tbaa !79
  %i.by = fdiv <8 x float> %wide.load, %broadcast.splat126
  %i.bz = fdiv <8 x float> %wide.load129, %broadcast.splat126
  %i.ca = fdiv <8 x float> %wide.load130, %broadcast.splat126
  %i.cb = fdiv <8 x float> %wide.load131, %broadcast.splat126
  store <8 x float> %i.by, ptr %next.gep, align 4, !tbaa !79
  store <8 x float> %i.bz, ptr %i.bv, align 4, !tbaa !79
  store <8 x float> %i.ca, ptr %i.bw, align 4, !tbaa !79
  store <8 x float> %i.cb, ptr %i.bx, align 4, !tbaa !79
  %index.next132 = add nuw i64 %index128, 32      ; 2 uses
  %i.cc = icmp eq i64 %index.next132, %n.vec124
  br i1 %i.cc, label %vec.epilog.iter.check, label %vector.body127, !llvm.loop !264

vec.epilog.iter.check:                            ; preds = %vector.body127
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET0_T_S8_S7_.exit.preheader, label %vec.epilog.ph, !prof !92

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET0_T_S8_S7_.exit.preheader: ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.sroa.081.089.ph = phi ptr [ %i.h, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.vector.body ]
  br label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET0_T_S8_S7_.exit

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec124, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec136 = and i64 %i.f, 2147483640            ; 2 uses
  %i.cd = shl nuw nsw i64 %n.vec136, 2
  %i.ce = getelementptr i8, ptr %i.h, i64 %i.cd
  %broadcast.splatinsert137 = insertelement <8 x float> poison, float %.lcssa, i64 0
  %broadcast.splat138 = shufflevector <8 x float> %broadcast.splatinsert137, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ] ; 2 uses
  %i.cf = shl i64 %index139, 2
  %next.gep140 = getelementptr i8, ptr %i.h, i64 %i.cf ; 2 uses
  %wide.load141 = load <8 x float>, ptr %next.gep140, align 4, !tbaa !79
  %i.cg = fdiv <8 x float> %wide.load141, %broadcast.splat138
  store <8 x float> %i.cg, ptr %next.gep140, align 4, !tbaa !79
  %index.next142 = add nuw i64 %index139, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next142, %n.vec136
  br i1 %i.ch, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfET0_T_S8_S7_.exit.preheader, label %vec.epilog.vector.body, !llvm.loop !265

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ci = trunc i64 %indvars.iv to i32
  %i.cj = sub i32 %i.ci, %3
  %i.ck = sitofp i32 %i.cj to float               ; 2 uses
  %i.cl = fneg float %i.ck
  %i.cm = fmul nnan float %i.ck, %i.cl
  %i.cn = fdiv float %i.cm, %i.q
  %i.co = fmul float %i.cn, f0x3FB8AA3B           ; 2 uses
  %i.cp = tail call noundef float @llvm.floor.f32(float %i.co) ; 2 uses
  %i.cq = fsub float %i.co, %i.cp                 ; 3 uses
  %i.cr = fptosi float %i.cp to i32
  %i.cs = tail call noundef float @llvm.fma.f32(float %i.cq, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ct = tail call noundef float @llvm.fma.f32(float %i.cq, float %i.cs, float f0x3F321004)
  %i.cu = tail call noundef float @llvm.fma.f32(float %i.cq, float %i.ct, float 1.000000e+00)
  %i.cv = bitcast float %i.cu to i32              ; 2 uses
  %i.cw = lshr i32 %i.cv, 23
  %i.cx = add i32 %i.cr, -127
  %i.cy = add i32 %i.cx, %i.cw                    ; 3 uses
  %i.cz = icmp slt i32 %i.cy, -126
  br i1 %i.cz, label %bb.d, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.da = icmp sgt i32 %i.cy, 127
  br i1 %i.da, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.db = and i32 %i.cv, -2139095041
  %i.dc = shl nsw i32 %i.cy, 23
  %i.dd = add nsw i32 %i.dc, 1065353216
  %i.de = or i32 %i.dd, %i.db
  %i.df = bitcast i32 %i.de to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %scalar.ph
  %.0.i.i = phi float [ %i.df, %bb.c ], [ 0.000000e+00, %scalar.ph ], [ +inf, %bb.b ]
  %i.dg = fmul float %i.r, %.0.i.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store float %i.dg, ptr %i.dh, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.i.preheader, label %scalar.ph, !llvm.loop !266

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.f, 7
  br label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.prol = phi float [ %i.dj, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.sroa.02.06.i.prol = phi ptr [ %i.dk, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.di = load float, ptr %.sroa.02.06.i.prol, align 4, !tbaa !79
  %i.dj = fadd float %.07.i.prol, %i.di           ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_0
begin_hunk_1_@_ZN4pbrt5Image5FlipYEv:bb.a

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre40 = load i32, ptr %i.a, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.al = phi i32 [ %.pre40, %._crit_edge.loopexit ], [ %i.v, %bb.b ] ; 5 uses
  %i.am = phi i64 [ %i.bm, %._crit_edge.loopexit ], [ %i.w, %bb.b ]
  %i.an = phi i64 [ %i.bm, %._crit_edge.loopexit ], [ %i.x, %bb.b ]
  %i.ao = add nuw nsw i32 %.02230, 1              ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.al
  br i1 %i.ap, label %bb.b, label %._crit_edge32.loopexit, !llvm.loop !564

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.aq = phi i64 [ %i.w, %.lr.ph.preheader ], [ %i.bm, %bb.g ] ; 2 uses
  %i.ar = phi i32 [ %.pre38, %.lr.ph.preheader ], [ %i.bn, %bb.g ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 7 uses
  switch i32 %i.ar, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !76  ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ad
  %i.au = getelementptr i8, ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.av = getelementptr i8, ptr %i.as, i64 %i.aj
  %i.aw = getelementptr i8, ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !37
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !37
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !37
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !37
  %.pre37 = load i32, ptr %0, align 8, !tbaa !72
  %.pre39 = load i64, ptr %i.e, align 8, !tbaa !75
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !80  ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.az, i64 %i.ad
  %i.bb = getelementptr [2 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.bc = getelementptr [2 x i8], ptr %i.az, i64 %i.aj
  %i.bd = getelementptr [2 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.bb, align 2, !tbaa !154
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !154
  store i16 %i.be, ptr %i.bb, align 2, !tbaa !154
  store i16 %.sroa.0.0.copyload.i, ptr %i.bd, align 2, !tbaa !154
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.ad
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bf, i64 %i.aj
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !79
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !79
  store float %i.bl, ptr %i.bh, align 4, !tbaa !79
  store float %i.bk, ptr %i.bj, align 4, !tbaa !79
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 809, ptr noundef nonnull @.str.39) #33
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d
  %i.bm = phi i64 [ %.pre39, %bb.c ], [ %i.aq, %bb.e ], [ %i.aq, %bb.d ] ; 4 uses
  %i.bn = phi i32 [ %.pre37, %bb.c ], [ 2, %bb.e ], [ 1, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = shl i64 %i.bm, 32
  %i.bp = ashr exact i64 %i.bo, 32
  %i.bq = icmp slt i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !565
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Image20JointBilateralFilterERKNS_16ImageChannelDescEiPKfS3_RKNS_18ImageChannelValuesE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Image") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::vector.36", align 8    ; 10 uses
  %8 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %9 = alloca %"class.std::vector", align 8       ; 12 uses
  %10 = alloca %"class.std::vector", align 8      ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 9 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !162  ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !47
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA17_KcRA18_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 819, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(17) @.str.40, ptr noundef nonnull align 1 dereferenceable(18) @.str.41, ptr noundef nonnull align 1 dereferenceable(17) @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZNK4pbrt5Image12ChannelNamesB5cxx11ERKNS_16ImageChannelDescE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.36") align 8 %7, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.j = load ptr, ptr %7, align 8, !tbaa !95     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 5
  store i64 0, ptr %8, align 8, !tbaa !77
  %i.q = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31
  %i.r = ptrtoint ptr %i.q to i64
  invoke void @_ZN4pbrt5ImageC2ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef 2, i64 %.sroa.0.0.copyload, ptr %i.j, i64 %i.p, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 %i.r)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %7, align 8, !tbaa !95     ; 3 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !96   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !37
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !95
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %bb.d ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not54 = icmp slt i32 %3, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ao = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.f:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ag

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38
  %i.aq = phi ptr [ null, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38 ] ; 5 uses
  %i.ar = phi ptr [ null, %.lr.ph ], [ %i.co, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38 ] ; 3 uses
  %i.as = phi ptr [ null, %.lr.ph ], [ %i.cp, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38 ] ; 3 uses
  %.055 = phi i32 [ 0, %.lr.ph ], [ %i.ek, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38 ] ; 2 uses
  %i.at = uitofp nneg i32 %.055 to float          ; 2 uses
  %i.au = load float, ptr %4, align 4, !tbaa !79  ; 4 uses
  %i.av = fmul float %i.au, f0x40C90FDB
  %i.aw = fmul float %i.au, %i.av
  %i.ax = call noundef float @sqrtf(float noundef %i.aw) #31
  %i.ay = fneg float %i.at
  %i.az = fmul nnan float %i.at, %i.ay            ; 2 uses
  %i.ba = fmul float %i.au, 2.000000e+00
  %i.bb = fmul float %i.au, %i.ba
  %i.bc = fdiv float %i.az, %i.bb
  %i.bd = fmul float %i.bc, f0x3FB8AA3B           ; 2 uses
  %i.be = call noundef float @llvm.floor.f32(float %i.bd) ; 2 uses
  %i.bf = fsub float %i.bd, %i.be                 ; 3 uses
  %i.bg = fptosi float %i.be to i32
  %i.bh = call noundef float @llvm.fma.f32(float %i.bf, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bi = call noundef float @llvm.fma.f32(float %i.bf, float %i.bh, float f0x3F321004)
  %i.bj = call noundef float @llvm.fma.f32(float %i.bf, float %i.bi, float 1.000000e+00)
  %i.bk = bitcast float %i.bj to i32              ; 2 uses
  %i.bl = lshr i32 %i.bk, 23
  %i.bm = add i32 %i.bg, -127
  %i.bn = add i32 %i.bm, %i.bl                    ; 3 uses
  %i.bo = icmp slt i32 %i.bn, -126
  br i1 %i.bo, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = icmp sgt i32 %i.bn, 127
  br i1 %i.bp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = and i32 %i.bk, -2139095041
  %i.br = shl nsw i32 %i.bn, 23
  %i.bs = add nsw i32 %i.br, 1065353216
  %i.bt = or i32 %i.bs, %i.bq
  %i.bu = bitcast i32 %i.bt to float
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.i = phi float [ %i.bu, %bb.i ], [ 0.000000e+00, %bb.g ], [ +inf, %bb.h ]
  %i.bv = fdiv float 1.000000e+00, %i.ax
  %i.bw = fmul float %i.bv, %.0.i.i               ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store float %i.bw, ptr %i.as, align 4, !tbaa !79
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store ptr %i.bx, ptr %i.ag, align 8, !tbaa !89
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.l:                                             ; preds = %bb.j
  %i.by = ptrtoint ptr %i.ar to i64
  %i.bz = ptrtoint ptr %i.aq to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775804
  br i1 %i.cb, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.s, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.117) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cc = ashr exact i64 %i.ca, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 2305843009213693951)
  %i.cg = select i1 %i.ce, i64 2305843009213693951, i64 %i.cf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #35
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store float %i.bw, ptr %i.cj, align 4, !tbaa !79
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.m, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %.noexc26
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr align 4 %i.aq, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %.noexc26
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ca) #34
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ci, ptr %9, align 8, !tbaa !87
  store ptr %i.cl, ptr %i.ag, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cg ; 2 uses
  store ptr %i.cm, ptr %i.ah, align 8, !tbaa !88
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.k
  %i.cn = phi ptr [ %i.ci, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.aq, %bb.k ]
  %i.co = phi ptr [ %i.cm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.ar, %bb.k ]
  %i.cp = phi ptr [ %i.cl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.bx, %bb.k ]
  %i.cq = load float, ptr %i.ai, align 4, !tbaa !79 ; 4 uses
  %i.cr = fmul float %i.cq, f0x40C90FDB
  %i.cs = fmul float %i.cq, %i.cr
  %i.ct = call noundef float @sqrtf(float noundef %i.cs) #31
  %i.cu = fmul float %i.cq, 2.000000e+00
  %i.cv = fmul float %i.cq, %i.cu
  %i.cw = fdiv float %i.az, %i.cv
  %i.cx = fmul float %i.cw, f0x3FB8AA3B           ; 2 uses
  %i.cy = call noundef float @llvm.floor.f32(float %i.cx) ; 2 uses
  %i.cz = fsub float %i.cx, %i.cy                 ; 3 uses
  %i.da = fptosi float %i.cy to i32
  %i.db = call noundef float @llvm.fma.f32(float %i.cz, float f0x3DA00AC9, float f0x3E679A0B)
  %i.dc = call noundef float @llvm.fma.f32(float %i.cz, float %i.db, float f0x3F321004)
  %i.dd = call noundef float @llvm.fma.f32(float %i.cz, float %i.dc, float 1.000000e+00)
  %i.de = bitcast float %i.dd to i32              ; 2 uses
  %i.df = lshr i32 %i.de, 23
  %i.dg = add i32 %i.da, -127
  %i.dh = add i32 %i.dg, %i.df                    ; 3 uses
  %i.di = icmp slt i32 %i.dh, -126
  br i1 %i.di, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.dj = icmp sgt i32 %i.dh, 127
  br i1 %i.dj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = and i32 %i.de, -2139095041
  %i.dl = shl nsw i32 %i.dh, 23
  %i.dm = add nsw i32 %i.dl, 1065353216
  %i.dn = or i32 %i.dm, %i.dk
  %i.do = bitcast i32 %i.dn to float
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %.0.i.i27 = phi float [ %i.do, %bb.p ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ], [ +inf, %bb.o ]
  %i.dp = fdiv float 1.000000e+00, %i.ct
  %i.dq = fmul float %i.dp, %.0.i.i27             ; 2 uses
  %i.dr = load ptr, ptr %i.aj, align 8, !tbaa !89 ; 4 uses
  %i.ds = load ptr, ptr %i.ak, align 8, !tbaa !88
  %.not.i.i29 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store float %i.dq, ptr %i.dr, align 4, !tbaa !79
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store ptr %i.dt, ptr %i.aj, align 8, !tbaa !89
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38

bb.s:                                             ; preds = %bb.q
  %i.du = load ptr, ptr %10, align 8, !tbaa !87   ; 4 uses
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 6 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775804
  br i1 %i.dy, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i30

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.s
  %i.dz = ashr exact i64 %i.dx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 2305843009213693951)
  %i.ed = select i1 %i.eb, i64 2305843009213693951, i64 %i.ec ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.ee = shl nuw nsw i64 %i.ed, 2
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #35
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i30
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.dx ; 2 uses
  store float %i.dq, ptr %i.eg, align 4, !tbaa !79
  %i.eh = icmp sgt i64 %i.dx, 0
  br i1 %i.eh, label %bb.t, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i33

bb.t:                                             ; preds = %.noexc37
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr align 4 %i.du, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i33

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i33: ; preds = %bb.t, %.noexc37
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %.not.i17.i.i.i34 = icmp eq ptr %i.du, null
  br i1 %.not.i17.i.i.i34, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i35, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i33
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dx) #34
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i35

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i35: ; preds = %bb.u, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i33
  store ptr %i.ef, ptr %10, align 8, !tbaa !87
  store ptr %i.ei, ptr %i.aj, align 8, !tbaa !89
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.ej, ptr %i.ak, align 8, !tbaa !88
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38

_ZNSt6vectorIfSaIfEE9push_backEOf.exit38:         ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i35, %bb.r
  %i.ek = add nuw nsw i32 %.055, 1                ; 2 uses
  %i.el = load i32, ptr %i.a, align 4, !tbaa !38
  %.not = icmp sgt i32 %i.ek, %i.el
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !566

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i30, %.invoke, %._crit_edge
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %._crit_edge
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %1, ptr %i.ao, align 16, !tbaa !105
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !107
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !107
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.a, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !108
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %9, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !110
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %10, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !110
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr %6, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !170
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store ptr %0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  store ptr %i.ao, ptr %11, align 8, !tbaa !111
  store ptr @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E9_M_invokeERKSt9_Any_dataOlSG_", ptr %i.em, align 8, !tbaa !113
  store ptr @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.an, align 8, !tbaa !103
  %i.en = sext i32 %i.am to i64
  invoke void @_ZN4pbrt11ParallelForEllSt8functionIFvllEE(i64 noundef 0, i64 noundef %i.en, ptr nofree noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.eo = load ptr, ptr %i.an, align 8, !tbaa !103 ; 2 uses
  %.not.i = icmp eq ptr %i.eo, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = invoke noundef zeroext i1 %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.w, %bb.x
  %i.es = load ptr, ptr %10, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !88
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #34
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.ey = load ptr, ptr %9, align 8, !tbaa !87    ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIfSaIfEED2Ev.exit41, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !88
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fd) #34
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit41

_ZNSt6vectorIfSaIfEED2Ev.exit41:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  ret void

bb.ab:                                            ; preds = %bb.v
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %i.an, align 8, !tbaa !103 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ff, null
  br i1 %.not.i42, label %.body, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fg = invoke noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body unwind label %bb.ad     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #36
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %bb.ac
  %.pn21.pn = phi { ptr, i32 } [ %i.fe, %bb.ab ], [ %i.fe, %bb.ac ], [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fj = load ptr, ptr %10, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIfSaIfEED2Ev.exit45, label %bb.ae

bb.ae:                                            ; preds = %.body
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !88
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #34
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit45

_ZNSt6vectorIfSaIfEED2Ev.exit45:                  ; preds = %.body, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.fp = load ptr, ptr %9, align 8, !tbaa !87    ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIfSaIfEED2Ev.exit47, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit45
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !88
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #34
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit47

_ZNSt6vectorIfSaIfEED2Ev.exit47:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit45, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #31
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit47, %bb.f
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit47 ], [ %i.ap, %bb.f ]
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA17_KcRA18_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(17) %4, ptr noundef nonnull align 1 dereferenceable(18) %5, ptr noundef nonnull align 1 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !43, !alias.scope !569
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !46, !alias.scope !569
  store i8 0, ptr %i.a, align 8, !tbaa !37, !alias.scope !569
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA17_KcJRA18_S2_S4_RmS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(17) %4, ptr noundef nonnull align 1 dereferenceable(18) %5, ptr noundef nonnull align 1 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA17_KcRA18_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !569 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !37, !alias.scope !569
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #34
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA17_KcRA18_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !48
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #33
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA17_KcRA18_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA17_KcRA18_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !48    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !37
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt5Image4ReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_13ColorEncodingE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::ImageAndMetadata") align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1, ptr %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %struct.qoi_desc, align 4           ; 8 uses
end_hunk_1
begin_hunk_2_@_ZNK4pbrt5Image8WritePFMERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13ImageMetadataE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !46
  %i.p = load ptr, ptr %6, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.r = invoke noundef ptr @_ZN4pbrt10FOpenWriteENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.i       ; 6 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = load ptr, ptr %6, align 8, !tbaa !48     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.e, align 8, !tbaa !37
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !43, !alias.scope !840
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !46, !alias.scope !840
  store i8 0, ptr %i.w, align 8, !tbaa !37, !alias.scope !840
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.87, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !48, !alias.scope !840 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !37, !alias.scope !840
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #34
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.i, %bb.f, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50 ], [ %.pn44, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73 ], [ %i.y, %bb.f ], [ %i.ax, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.e
  %i.ad = load ptr, ptr %5, align 8, !tbaa !48
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.ad)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.ae = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.w
  br i1 %i.af, label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !37
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #34
  br label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit

bb.h:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.w
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.w, align 8, !tbaa !37
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume

_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ba

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.e
  br i1 %i.ap, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.i
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !37
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #34
  br label %common.resume

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !75
  %i.au = and i64 %i.at, 4294967295
  %.not42 = icmp eq i64 %i.au, 3
  br i1 %.not42, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !43, !alias.scope !841
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !46, !alias.scope !841
  store i8 0, ptr %i.av, align 8, !tbaa !37, !alias.scope !841
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.88)
          to label %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !48, !alias.scope !841 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.av
  br i1 %i.az, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50: ; preds = %bb.l
  %i.ba = load i64, ptr %i.av, align 8, !tbaa !37, !alias.scope !841
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #34
  br label %common.resume

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.k
  %i.bc = load ptr, ptr %4, align 8, !tbaa !48
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.bc)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.bd = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.av
  br i1 %i.be, label %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %bb.m
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !37
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #34
  br label %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit

bb.n:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.av
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.n
  %i.bk = load i64, ptr %i.av, align 8, !tbaa !37
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume

_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit:                ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ba

bb.o:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !74 ; 2 uses
  %i.bo = mul nsw i32 %i.bn, 3
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i32 %i.bn, 0
  %i.br = shl nuw nsw i64 %i.bp, 2
  %i.bs = select i1 %i.bq, i64 -1, i64 %i.br      ; 2 uses
  %i.bt = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bs) #35, !noalias !842 ; 12 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bt, i8 0, i64 %i.bs, i1 false), !noalias !842
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.89) #31
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.loopexit114, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr %i.bm, align 4, !tbaa !74
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !73
  %i.bz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.90, i32 noundef %i.bw, i32 noundef %i.by) #31
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %.loopexit114, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.91, double noundef -1.000000e+00) #31
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.loopexit114, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = load i32, ptr %i.bx, align 8, !tbaa !73 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ci = icmp sgt i32 %i.cd, 0
  br i1 %i.ci, label %.preheader.lr.ph, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

.preheader.lr.ph:                                 ; preds = %bb.r
  %i.cj = zext nneg i32 %i.cd to i64
  br label %.preheader

bb.s:                                             ; preds = %._crit_edge
  %i.ck = trunc nuw i64 %indvars.iv.next128232 to i32
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !836

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.s
  %indvars.iv.next128232.in = phi i64 [ %i.cj, %.preheader.lr.ph ], [ %indvars.iv.next128232, %bb.s ]
  %indvars.iv.next128232 = add nsw i64 %indvars.iv.next128232.in, -1 ; 4 uses
  %indvars233 = trunc i64 %indvars.iv.next128232 to i32 ; 17 uses
  %i.cm = load i32, ptr %i.bm, align 4, !tbaa !74 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.sroa.282.0.insert.ext = shl i64 %indvars.iv.next128232, 32
  br label %bb.t

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.lcssa = phi i32 [ %i.cm, %.preheader ], [ %i.ka, %.loopexit ]
  %i.co = mul nsw i32 %.lcssa, 3
  %i.cp = sext i32 %i.co to i64
  %i.cq = call i64 @fwrite(ptr noundef nonnull %i.bt, i64 noundef 4, i64 noundef %i.cp, ptr noundef nonnull %i.r)
  %i.cr = load i32, ptr %i.bm, align 4, !tbaa !74
  %i.cs = mul nsw i32 %i.cr, 3
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp ult i64 %i.cq, %i.ct
  br i1 %i.cu, label %.loopexit114, label %bb.s, !llvm.loop !836

bb.t:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 12 uses
  %i.cv = load i64, ptr %i.as, align 8, !tbaa !75
  %i.cw = trunc i64 %i.cv to i32                  ; 3 uses
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.sroa.081.0.insert.insert = or disjoint i64 %.sroa.282.0.insert.ext, %indvars.iv
  %i.cy = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.081.0.insert.insert, i32 noundef 0, i64 4294967297)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.v:                                             ; preds = %bb.u
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store float %i.cy, ptr %i.da, align 4, !tbaa !79
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store float %i.cy, ptr %i.db, align 4, !tbaa !79
  store float %i.cy, ptr %i.cz, align 4, !tbaa !79
  br label %.loopexit

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 3, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 %i.cw, ptr %i.d, align 4, !tbaa !38
  %i.dc = icmp eq i32 %i.cw, 3
  br i1 %i.dc, label %.preheader.preheader.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4pbrt8LogFatalIJRA2_KcRA12_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 1795, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(2) @.str.92, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 1 dereferenceable(2) @.str.92, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #33
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73

.preheader.preheader.i:                           ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.de = mul nuw nsw i64 %indvars.iv, 3          ; 7 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.bm, align 4 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.04.0.copyload.i to i32 ; 6 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 6 uses
  %sext = shl i64 %.sroa.04.0.copyload.i, 32
  %i.df = ashr exact i64 %sext, 32                ; 5 uses
  %i.dg = icmp slt i64 %indvars.iv, %i.df
  %i.dh = add nsw i32 %.sroa.0.0.extract.trunc.i, -1
  %i.di = trunc nuw nsw i64 %indvars.iv to i32    ; 10 uses
  %..i.i = call i32 @llvm.smin.i32(i32 %i.di, i32 %i.dh) ; 5 uses
  %.sroa.090.0 = select i1 %i.dg, i32 %i.di, i32 %..i.i ; 3 uses
  %7 = icmp slt i32 %indvars233, %.sroa.9.0.extract.trunc.i
  %i.dj = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %indvars233, i32 %i.dj) ; 5 uses
  %spec.select = select i1 %7, i32 %indvars233, i32 %..i.1.i ; 3 uses
  %i.dk = load i32, ptr %0, align 8, !tbaa !72
  switch i32 %i.dk, label %bb.ah [
    i32 0, label %bb.aa
    i32 1, label %bb.ad
    i32 2, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192
  ]

bb.aa:                                            ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.dl = mul nsw i32 %spec.select, %.sroa.0.0.extract.trunc.i
  %i.dm = add nsw i32 %i.dl, %.sroa.090.0
  %i.dn = mul nsw i32 %i.dm, 3
  %i.do = sext i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.ch, align 8, !tbaa !76
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.do  ; 3 uses
  %i.dr = load i64, ptr %i.cg, align 8, !tbaa !77 ; 2 uses
  %i.ds = and i64 %i.dr, 144115188075855871
  %i.dt = inttoptr i64 %i.ds to ptr               ; 2 uses
  %i.du = lshr i64 %i.dr, 57
  %i.dv = trunc nuw nsw i64 %i.du to i32
  switch i32 %i.dv, label %bb.ac [
    i32 1, label %.lr.ph.i.i.i.i.i.i
    i32 2, label %bb.ab
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aa
  %i.dw = load i8, ptr %i.dq, align 1, !tbaa !37
  %i.dx = uitofp i8 %i.dw to float
  %i.dy = fdiv float %i.dx, 2.550000e+02
  store float %i.dy, ptr %i.a, align 4, !tbaa !79
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.dt, ptr %i.dq, i64 1, ptr nonnull %i.a, i64 1)
          to label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.dt, ptr %i.dq, i64 1, ptr nonnull %i.a, i64 1)
          to label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %.preheader.preheader.i
  %i.dz = mul nsw i32 %spec.select, %.sroa.0.0.extract.trunc.i
  %i.ea = add nsw i32 %i.dz, %.sroa.090.0
  %i.eb = mul nsw i32 %i.ea, 3
  %i.ec = sext i32 %i.eb to i64
  %i.ed = load ptr, ptr %i.cf, align 8, !tbaa !80
  %i.ee = getelementptr [2 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !83 ; 2 uses
  %i.eg = zext i16 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 13               ; 4 uses
  %i.ei = and i32 %i.eh, 260046848                ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 260046848
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ek = or i32 %i.eh, 1879048192
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.el = and i32 %i.eh, 268427264
  %i.em = add nuw nsw i32 %i.el, 939524096
  %i.en = icmp eq i32 %i.ei, 0
  br i1 %i.en, label %bb.ag, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.eo = or i32 %i.eh, 947912704
  %i.ep = bitcast i32 %i.eo to float
  %i.eq = fadd float %i.ep, f0xB8800000
  %i.er = bitcast float %i.eq to i32
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread: ; preds = %bb.ae, %bb.af, %bb.ag
  %.sroa.0.0.i.i = phi i32 [ %i.ek, %bb.ae ], [ %i.er, %bb.ag ], [ %i.em, %bb.af ]
  %.signext.i.i = sext i16 %i.ef to i32
  %i.es = and i32 %.signext.i.i, -2147483648
  %i.et = or i32 %.sroa.0.0.i.i, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.de
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !79
  %i.ev = icmp slt i64 %indvars.iv, %i.df
  %.sroa.090.0.1183 = select i1 %i.ev, i32 %i.di, i32 %..i.i
  %.not109.1184 = icmp sgt i32 %.sroa.9.0.extract.trunc.i, %indvars233
  %spec.select.1185 = select i1 %.not109.1184, i32 %indvars233, i32 %..i.1.i
  br label %bb.ai

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192: ; preds = %.preheader.preheader.i
  %i.ew = mul nsw i32 %spec.select, %.sroa.0.0.extract.trunc.i
  %i.ex = add nsw i32 %i.ew, %.sroa.090.0
  %i.ey = mul nsw i32 %i.ex, 3
  %i.ez = sext i32 %i.ey to i64
  %i.fa = load ptr, ptr %i.ce, align 8, !tbaa !84
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !79
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.de
  store float %i.fc, ptr %i.fd, align 4, !tbaa !79
  %i.fe = icmp slt i64 %indvars.iv, %i.df
  %.sroa.090.0.1198 = select i1 %i.fe, i32 %i.di, i32 %..i.i
  %.not109.1199 = icmp sgt i32 %.sroa.9.0.extract.trunc.i, %indvars233
  %spec.select.1200 = select i1 %.not109.1199, i32 %indvars233, i32 %..i.1.i
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread217

bb.ah:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit, %.preheader.preheader.i
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.94, i32 noundef 273, ptr noundef nonnull @.str.22) #33
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ah
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ab, %bb.ac
  %i.ff = load float, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.sroa.04.0.copyload.i.1.pre = load i64, ptr %i.bm, align 4 ; 3 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !72
  %i.fg = trunc i64 %.sroa.04.0.copyload.i.1.pre to i32 ; 4 uses
  %.pre133.a = lshr i64 %.sroa.04.0.copyload.i.1.pre, 32
  %.pre134.a = trunc nuw i64 %.pre133.a to i32    ; 4 uses
  %sext176 = shl i64 %.sroa.04.0.copyload.i.1.pre, 32
  %.pre135.a = ashr exact i64 %sext176, 32        ; 3 uses
  %.pre136 = add nsw i32 %i.fg, -1
  %.pre138.a = call i32 @llvm.smin.i32(i32 %i.di, i32 %.pre136) ; 3 uses
  %.pre139 = add nsw i32 %.pre134.a, -1
  %.pre140 = call i32 @llvm.smin.i32(i32 %indvars233, i32 %.pre139) ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.de
  store float %i.ff, ptr %i.fh, align 4, !tbaa !79
  %i.fi = icmp slt i64 %indvars.iv, %.pre135.a
  %.sroa.090.0.1 = select i1 %i.fi, i32 %i.di, i32 %.pre138.a ; 3 uses
  %.not109.1 = icmp sgt i32 %.pre134.a, %indvars233
  %spec.select.1 = select i1 %.not109.1, i32 %indvars233, i32 %.pre140 ; 3 uses
  switch i32 %.pre, label %bb.ah [
    i32 0, label %bb.am
    i32 1, label %bb.ai
    i32 2, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread217
  ]

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread217: ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192
  %spec.select.1206 = phi i32 [ %spec.select.1200, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192 ], [ %spec.select.1, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %.sroa.090.0.1205 = phi i32 [ %.sroa.090.0.1198, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192 ], [ %.sroa.090.0.1, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %i.fj = phi i32 [ %.sroa.0.0.extract.trunc.i, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192 ], [ %i.fg, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ] ; 2 uses
  %.sroa.9.0.extract.trunc.i.1.pre-phi204 = phi i32 [ %.sroa.9.0.extract.trunc.i, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192 ], [ %.pre134.a, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %.pre-phi203 = phi i64 [ %i.df, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192 ], [ %.pre135.a, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %..i.i.1.pre-phi202 = phi i32 [ %..i.i, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192 ], [ %.pre138.a, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %.pre-phi140201 = phi i32 [ %..i.1.i, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread192 ], [ %.pre140, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %i.fk = load i64, ptr %i.as, align 8, !tbaa !75
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = mul nsw i32 %i.fj, %spec.select.1206
  %i.fn = add nsw i32 %i.fm, %.sroa.090.0.1205
  %i.fo = mul nsw i32 %i.fn, %i.fl
  %i.fp = sext i32 %i.fo to i64
  %i.fq = load ptr, ptr %i.ce, align 8, !tbaa !84
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = getelementptr i8, ptr %i.fr, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !79
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.de
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store float %i.ft, ptr %i.fv, align 4, !tbaa !79
  %i.fw = icmp slt i64 %indvars.iv, %.pre-phi203
  %.sroa.090.0.2223 = select i1 %i.fw, i32 %i.di, i32 %..i.i.1.pre-phi202
  %8 = icmp sgt i32 %.sroa.9.0.extract.trunc.i.1.pre-phi204, %indvars233
  %spec.select.2225 = select i1 %8, i32 %indvars233, i32 %.pre-phi140201
  br label %bb.ap

bb.ai:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  %spec.select.1191 = phi i32 [ %spec.select.1185, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread ], [ %spec.select.1, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %.sroa.090.0.1190 = phi i32 [ %.sroa.090.0.1183, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread ], [ %.sroa.090.0.1, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %i.fx = phi i32 [ %.sroa.0.0.extract.trunc.i, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread ], [ %i.fg, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ] ; 2 uses
  %.sroa.9.0.extract.trunc.i.1.pre-phi189 = phi i32 [ %.sroa.9.0.extract.trunc.i, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread ], [ %.pre134.a, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %.pre-phi188 = phi i64 [ %i.df, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread ], [ %.pre135.a, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %..i.i.1.pre-phi187 = phi i32 [ %..i.i, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread ], [ %.pre138.a, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %.pre-phi140186 = phi i32 [ %..i.1.i, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread ], [ %.pre140, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ]
  %i.fy = load i64, ptr %i.as, align 8, !tbaa !75
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = mul nsw i32 %i.fx, %spec.select.1191
  %i.gb = add nsw i32 %i.ga, %.sroa.090.0.1190
  %i.gc = mul nsw i32 %i.gb, %i.fz
  %i.gd = sext i32 %i.gc to i64
  %i.ge = load ptr, ptr %i.cf, align 8, !tbaa !80
  %i.gf = getelementptr [2 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = getelementptr i8, ptr %i.gf, i64 2
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !83 ; 2 uses
  %i.gi = zext i16 %i.gh to i32
  %i.gj = shl nuw nsw i32 %i.gi, 13               ; 4 uses
  %i.gk = and i32 %i.gj, 260046848                ; 2 uses
  %i.gl = icmp eq i32 %i.gk, 260046848
  br i1 %i.gl, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gm = and i32 %i.gj, 268427264
  %i.gn = add nuw nsw i32 %i.gm, 939524096
  %i.go = icmp eq i32 %i.gk, 0
  br i1 %i.go, label %bb.ak, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread

bb.ak:                                            ; preds = %bb.aj
  %i.gp = or i32 %i.gj, 947912704
  %i.gq = bitcast i32 %i.gp to float
  %i.gr = fadd float %i.gq, f0xB8800000
  %i.gs = bitcast float %i.gr to i32
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread

bb.al:                                            ; preds = %bb.ai
  %i.gt = or i32 %i.gj, 1879048192
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread: ; preds = %bb.aj, %bb.ak, %bb.al
  %.sroa.0.0.i.i.1 = phi i32 [ %i.gt, %bb.al ], [ %i.gs, %bb.ak ], [ %i.gn, %bb.aj ]
  %.signext.i.i.1 = sext i16 %i.gh to i32
  %i.gu = and i32 %.signext.i.i.1, -2147483648
  %i.gv = or i32 %.sroa.0.0.i.i.1, %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.de
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !79
  %i.gy = icmp slt i64 %indvars.iv, %.pre-phi188
  %.sroa.090.0.2212.a = select i1 %i.gy, i32 %i.di, i32 %..i.i.1.pre-phi187
  %9 = icmp sgt i32 %.sroa.9.0.extract.trunc.i.1.pre-phi189, %indvars233
  %spec.select.2214 = select i1 %9, i32 %indvars233, i32 %.pre-phi140186
  br label %bb.aq

bb.am:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.gz = load i64, ptr %i.as, align 8, !tbaa !75
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = mul nsw i32 %spec.select.1, %i.fg
  %i.hc = add nsw i32 %i.hb, %.sroa.090.0.1
  %i.hd = mul nsw i32 %i.hc, %i.ha
  %i.he = sext i32 %i.hd to i64
  %i.hf = load ptr, ptr %i.ch, align 8, !tbaa !76
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.he
  %i.hh = getelementptr i8, ptr %i.hg, i64 1      ; 3 uses
  %i.hi = load i64, ptr %i.cg, align 8, !tbaa !77 ; 2 uses
  %i.hj = and i64 %i.hi, 144115188075855871
  %i.hk = inttoptr i64 %i.hj to ptr               ; 2 uses
  %i.hl = lshr i64 %i.hi, 57
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  switch i32 %i.hm, label %bb.ao [
    i32 1, label %.lr.ph.i.i.i.i.i.i.1
    i32 2, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.hk, ptr %i.hh, i64 1, ptr nonnull %i.a, i64 1)
          to label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %bb.am
  %i.hn = load i8, ptr %i.hh, align 1, !tbaa !37
  %i.ho = uitofp i8 %i.hn to float
  %i.hp = fdiv float %i.ho, 2.550000e+02
  store float %i.hp, ptr %i.a, align 4, !tbaa !79
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.hk, ptr %i.hh, i64 1, ptr nonnull %i.a, i64 1)
          to label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1: ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i.1, %bb.ao
  %i.hq = load float, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.sroa.04.0.copyload.i.2.pre = load i64, ptr %i.bm, align 4 ; 3 uses
  %.pre132 = load i32, ptr %0, align 8, !tbaa !72
  %i.hr = trunc i64 %.sroa.04.0.copyload.i.2.pre to i32 ; 4 uses
  %.pre141 = lshr i64 %.sroa.04.0.copyload.i.2.pre, 32
  %.pre142 = trunc nuw i64 %.pre141 to i32        ; 2 uses
  %sext177 = shl i64 %.sroa.04.0.copyload.i.2.pre, 32
  %.pre143 = ashr exact i64 %sext177, 32
  %.pre145 = add nsw i32 %i.hr, -1
  %.pre147 = call i32 @llvm.smin.i32(i32 %i.di, i32 %.pre145)
  %.pre148 = add nsw i32 %.pre142, -1
  %.pre150 = call i32 @llvm.smin.i32(i32 %indvars233, i32 %.pre148)
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.de
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  store float %i.hq, ptr %i.ht, align 4, !tbaa !79
  %i.hu = icmp slt i64 %indvars.iv, %.pre143
  %.sroa.090.0.2 = select i1 %i.hu, i32 %i.di, i32 %.pre147 ; 3 uses
  %.not109.2 = icmp sgt i32 %.pre142, %indvars233
  %spec.select.2 = select i1 %.not109.2, i32 %indvars233, i32 %.pre150 ; 3 uses
  switch i32 %.pre132, label %bb.ah [
    i32 0, label %bb.au
    i32 1, label %bb.aq
    i32 2, label %bb.ap
  ]

bb.ap:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread217, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1
  %spec.select.2227 = phi i32 [ %spec.select.2225, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread217 ], [ %spec.select.2, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1 ]
  %.sroa.090.0.2226 = phi i32 [ %.sroa.090.0.2223, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread217 ], [ %.sroa.090.0.2, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1 ]
  %i.hv = phi i32 [ %i.fj, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread217 ], [ %i.hr, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1 ]
  %i.hw = load i64, ptr %i.as, align 8, !tbaa !75
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = mul nsw i32 %i.hv, %spec.select.2227
  %i.hz = add nsw i32 %i.hy, %.sroa.090.0.2226
  %i.ia = mul nsw i32 %i.hz, %i.hx
  %i.ib = sext i32 %i.ia to i64
  %i.ic = load ptr, ptr %i.ce, align 8, !tbaa !84
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %i.ib
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %i.if = load float, ptr %i.ie, align 4, !tbaa !79
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2

bb.aq:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1
  %spec.select.2216 = phi i32 [ %spec.select.2214, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread ], [ %spec.select.2, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1 ]
  %.sroa.090.0.2215 = phi i32 [ %.sroa.090.0.2212.a, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread ], [ %.sroa.090.0.2, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1 ]
  %i.ig = phi i32 [ %i.fx, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1.thread ], [ %i.hr, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1 ]
  %i.ih = load i64, ptr %i.as, align 8, !tbaa !75
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = mul nsw i32 %i.ig, %spec.select.2216
  %i.ik = add nsw i32 %i.ij, %.sroa.090.0.2215
  %i.il = mul nsw i32 %i.ik, %i.ii
  %i.im = sext i32 %i.il to i64
  %i.in = load ptr, ptr %i.cf, align 8, !tbaa !80
  %i.io = getelementptr [2 x i8], ptr %i.in, i64 %i.im
  %i.ip = getelementptr i8, ptr %i.io, i64 4
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !83 ; 2 uses
  %i.ir = zext i16 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 13               ; 4 uses
  %i.it = and i32 %i.is, 260046848                ; 2 uses
  %i.iu = icmp eq i32 %i.it, 260046848
  br i1 %i.iu, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iv = and i32 %i.is, 268427264
  %i.iw = add nuw nsw i32 %i.iv, 939524096
  %i.ix = icmp eq i32 %i.it, 0
  br i1 %i.ix, label %bb.as, label %_ZNK4pbrt4HalfcvfEv.exit.i.2

bb.as:                                            ; preds = %bb.ar
  %i.iy = or i32 %i.is, 947912704
  %i.iz = bitcast i32 %i.iy to float
  %i.ja = fadd float %i.iz, f0xB8800000
  %i.jb = bitcast float %i.ja to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.2

bb.at:                                            ; preds = %bb.aq
  %i.jc = or i32 %i.is, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.2

_ZNK4pbrt4HalfcvfEv.exit.i.2:                     ; preds = %bb.at, %bb.as, %bb.ar
  %.sroa.0.0.i.i.2 = phi i32 [ %i.jc, %bb.at ], [ %i.jb, %bb.as ], [ %i.iw, %bb.ar ]
  %.signext.i.i.2 = sext i16 %i.iq to i32
  %i.jd = and i32 %.signext.i.i.2, -2147483648
  %i.je = or i32 %.sroa.0.0.i.i.2, %i.jd
  %i.jf = bitcast i32 %i.je to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2

bb.au:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.jg = load i64, ptr %i.as, align 8, !tbaa !75
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = mul nsw i32 %spec.select.2, %i.hr
  %i.jj = add nsw i32 %i.ji, %.sroa.090.0.2
  %i.jk = mul nsw i32 %i.jj, %i.jh
  %i.jl = sext i32 %i.jk to i64
  %i.jm = load ptr, ptr %i.ch, align 8, !tbaa !76
  %i.jn = getelementptr i8, ptr %i.jm, i64 %i.jl
  %i.jo = getelementptr i8, ptr %i.jn, i64 2      ; 3 uses
  %i.jp = load i64, ptr %i.cg, align 8, !tbaa !77 ; 2 uses
  %i.jq = and i64 %i.jp, 144115188075855871
  %i.jr = inttoptr i64 %i.jq to ptr               ; 2 uses
  %i.js = lshr i64 %i.jp, 57
  %i.jt = trunc nuw nsw i64 %i.js to i32
  switch i32 %i.jt, label %bb.aw [
    i32 1, label %.lr.ph.i.i.i.i.i.i.2
    i32 2, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.jr, ptr %i.jo, i64 1, ptr nonnull %i.a, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %bb.au
  %i.ju = load i8, ptr %i.jo, align 1, !tbaa !37
  %i.jv = uitofp i8 %i.ju to float
  %i.jw = fdiv float %i.jv, 2.550000e+02
  store float %i.jw, ptr %i.a, align 4, !tbaa !79
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2

bb.aw:                                            ; preds = %bb.au
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.jr, ptr %i.jo, i64 1, ptr nonnull %i.a, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2: ; preds = %bb.aw, %.lr.ph.i.i.i.i.i.i.2, %bb.av
  %i.jx = load float, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2: ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2, %_ZNK4pbrt4HalfcvfEv.exit.i.2, %bb.ap
  %.0.i.2 = phi float [ %i.jx, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2 ], [ %i.jf, %_ZNK4pbrt4HalfcvfEv.exit.i.2 ], [ %i.if, %bb.ap ]
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.de
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store float %.0.i.2, ptr %i.jz, align 4, !tbaa !79
  br label %.loopexit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.ac, %bb.ab, %bb.an, %bb.ao, %bb.av, %bb.aw, %bb.ah
  %lpad.loopexit.split-lp234 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73

.loopexit:                                        ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ka = load i32, ptr %i.bm, align 4, !tbaa !74 ; 2 uses
  %i.kb = sext i32 %i.ka to i64
  %i.kc = icmp slt i64 %indvars.iv.next, %i.kb
  br i1 %i.kc, label %bb.t, label %._crit_edge, !llvm.loop !837

.loopexit114:                                     ; preds = %._crit_edge, %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.kd, ptr %3, align 8, !tbaa !43, !alias.scope !843
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ke, align 8, !tbaa !46, !alias.scope !843
  store i8 0, ptr %i.kd, align 8, !tbaa !37, !alias.scope !843
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.93, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i64 unwind label %bb.ax

bb.ax:                                            ; preds = %.loopexit114
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = load ptr, ptr %3, align 8, !tbaa !48, !alias.scope !843 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.kd
  br i1 %i.kh, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60: ; preds = %bb.ax
  %i.ki = load i64, ptr %i.kd, align 8, !tbaa !37, !alias.scope !843
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #34
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i64: ; preds = %.loopexit114
  %i.kk = load ptr, ptr %3, align 8, !tbaa !48
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.kk)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i64
  %i.kl = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.kd
  br i1 %i.km, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68: ; preds = %bb.ay
  %i.kn = load i64, ptr %i.kd, align 8, !tbaa !37
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69

bb.az:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i64
  %i.kp = landingpad { ptr, i32 }
          cleanup
  %i.kq = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.kd
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i65: ; preds = %bb.az
  %i.ks = load i64, ptr %i.kd, align 8, !tbaa !37
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i66: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.s, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69
  %.039 = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69 ], [ true, %bb.r ], [ true, %bb.s ]
  %i.ku = call i32 @fclose(ptr noundef nonnull %i.r) ; 0 uses
  call void @_ZdaPv(ptr noundef nonnull %i.bt) #34
  br label %bb.ba

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73: ; preds = %bb.ax, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i66, %bb.z
  %.pn44 = phi { ptr, i32 } [ %i.dd, %bb.z ], [ %lpad.loopexit.split-lp234, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.kp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i66 ], [ %i.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60 ], [ %i.kf, %bb.ax ]
  call void @_ZdaPv(ptr noundef nonnull %i.bt) #34
  br label %common.resume

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit, %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit
  %.140 = phi i1 [ false, %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit ], [ %.039, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ false, %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit ]
end_hunk_2
begin_hunk_3_@_ZN4pbrt6detail21stringPrintfRecursiveIRKN4pstd8optionalIPKNS_13RGBColorSpaceEEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.97, i32 noundef 176, ptr noundef nonnull @.str.118, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %.noexc38 unwind label %bb.t

.noexc38:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.s
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cs = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.u
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !37
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.v:                                             ; preds = %bb.t, %bb.q
  %.pn24 = phi { ptr, i32 } [ %i.cr, %bb.t ], [ %.pn19.pn.pn.pn, %bb.q ]
  %i.cx = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.v
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !37
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pstdlsIPKN4pbrt13RGBColorSpaceEEERSoS5_RKNS_8optionalIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !52, !noundef !53
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.141, i64 noundef 17) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZTSPKN4pbrt13RGBColorSpaceE, i64 noundef 24) ; 0 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.142, i64 noundef 12) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.143, i64 noundef 7) ; 0 uses
  %i.h = load i8, ptr %i.a, align 8, !tbaa !51, !range !52, !noundef !53
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.107, i32 noundef 240, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(4) @.str.108) #33
  unreachable

_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEE5valueEv.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !195
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.j) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.140, i64 noundef 2) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.144, i64 noundef 25) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEE5valueEv.exit
  %.0 = phi ptr [ %i.k, %_ZNK4pstd8optionalIPKN4pbrt13RGBColorSpaceEE5valueEv.exit ], [ %0, %bb.d ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E9_M_invokeERKSt9_Any_dataOlSB_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 8 uses
  %4 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !111   ; 6 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !47
  %.val4 = load i64, ptr %2, align 8, !tbaa !47   ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1585 ; 2 uses
  %sext.i.i.i = shl i64 %.val3, 32
  %i.d = ashr exact i64 %sext.i.i.i, 32           ; 2 uses
  %i.e = icmp sgt i64 %.val4, %i.d
  br i1 %i.e, label %.preheader39.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

.preheader39.lr.ph.i.i.i:                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.t = load i32, ptr %i.f, align 4, !tbaa !74   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader39.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

.preheader39.i.i.i:                               ; preds = %.preheader39.lr.ph.i.i.i, %._crit_edge61.i.i.i
  %i.v = phi i32 [ %i.x, %._crit_edge61.i.i.i ], [ %i.t, %.preheader39.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv70.i.i.i = phi i64 [ %indvars.iv.next71.i.i.i, %._crit_edge61.i.i.i ], [ %i.d, %.preheader39.lr.ph.i.i.i ] ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph60.i.i.i, label %._crit_edge61.i.i.i

.lr.ph60.i.i.i:                                   ; preds = %.preheader39.i.i.i
  %.sroa.238.0.insert.ext.i.i.i = shl i64 %indvars.iv70.i.i.i, 32 ; 2 uses
  br label %bb.b

._crit_edge61.i.i.i:                              ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, %.preheader39.i.i.i
  %i.x = phi i32 [ %i.v, %.preheader39.i.i.i ], [ %i.ev, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i ]
  %indvars.iv.next71.i.i.i = add i64 %indvars.iv70.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next71.i.i.i, %.val4
  br i1 %exitcond.not.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %.preheader39.i.i.i, !llvm.loop !1572

bb.b:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, %.lr.ph60.i.i.i
  %indvars.iv67.i.i.i = phi i64 [ 0, %.lr.ph60.i.i.i ], [ %indvars.iv.next68.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1586, !nonnull !53, !align !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !101 ; 9 uses
  %i.ab = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 7 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  store i64 %i.ac, ptr %3, align 8, !tbaa !139
  store ptr null, ptr %i.h, align 8, !tbaa !160
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.aa, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ad = shl i64 %i.aa, 2                        ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !120
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %i.ad, i64 noundef 4), !inline_history !1573
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i, %bb.c
  %.0.i.i.i.i1418.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %i.ai, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !161
  store ptr %.0.i.i.i.i1418.i.i.i.i.i, ptr %i.h, align 8, !tbaa !160
  br label %.lr.ph.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i: ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %.pre74.i.i.i = shl nuw nsw i64 %i.aa, 2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre74.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.ad, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.aj = phi i64 [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.ad, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.ak = phi ptr [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %.0.i.i.i.i1418.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ] ; 3 uses
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ak, null
  %i.al = select i1 %.not.i9.i.i.i.i.i, ptr %i.k, ptr %i.ak
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 %.pre-phi.i.i.i, i1 false), !tbaa !79
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i

_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ]
  %i.an = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !1587, !nonnull !53, !align !244
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !38 ; 2 uses
  %.not55.i.i.i = icmp slt i32 %i.ap, 0
  br i1 %.not55.i.i.i, label %._crit_edge58.i.i.i, label %.lr.ph57.i.i.i

.lr.ph57.i.i.i:                                   ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = load ptr, ptr %i.h, align 8             ; 4 uses
  %.not.i.i27.i.i.i = icmp eq ptr %i.ar, null
  %i.as = select i1 %.not.i.i27.i.i.i, ptr %i.k, ptr %i.ar ; 10 uses
  %i.at = trunc nuw nsw i64 %indvars.iv67.i.i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %.lr.ph57.i.i.i
  %.02256.i.i.i = phi i32 [ %i.aq, %.lr.ph57.i.i.i ], [ %i.cz, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.au = add nsw i32 %.02256.i.i.i, %i.at
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !1586, !nonnull !53, !align !214
  %.sroa.037.0.insert.ext.i.i.i = zext i32 %i.au to i64
  %.sroa.037.0.insert.insert.i.i.i = or disjoint i64 %.sroa.238.0.insert.ext.i.i.i, %.sroa.037.0.insert.ext.i.i.i
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 %.sroa.037.0.insert.insert.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 4294967297)
          to label %.preheader.i.i.i unwind label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.d
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !1588, !nonnull !53, !align !244
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !38 ; 4 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  %.pre.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !160 ; 4 uses
  br i1 %i.ay, label %iter.check, label %._crit_edge.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !1589, !nonnull !53, !align !214
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !1587, !nonnull !53, !align !244
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.bc = add nsw i32 %i.bb, %.02256.i.i.i
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !87 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bd ; 8 uses
  %.not.i.i26.i.i.i = icmp eq ptr %.pre.i.i.i, null
  %i.bg = select i1 %.not.i.i26.i.i.i, ptr %i.p, ptr %.pre.i.i.i ; 9 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ax to i64 ; 9 uses
  %min.iters.check = icmp ult i32 %i.ax, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = shl nuw nsw i64 %wide.trip.count.i.i.i, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.bh ; 2 uses
  %scevgep93 = getelementptr i8, ptr %i.be, i64 4
  %i.bi = shl nuw nsw i64 %i.bd, 2
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.bi
  %scevgep95 = getelementptr i8, ptr %i.bg, i64 %i.bh
  %bound0 = icmp ult ptr %i.as, %scevgep94
  %bound1 = icmp ult ptr %i.bf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound096 = icmp ult ptr %i.as, %scevgep95
  %bound197 = icmp ult ptr %i.bg, %scevgep
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx = or i1 %found.conflict, %found.conflict98
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check99 = icmp ult i32 %i.ax, 32
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  %i.bk = load float, ptr %i.bf, align 4, !tbaa !79, !alias.scope !1590
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bk, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %wide.load = load <8 x float>, ptr %i.bl, align 4, !tbaa !79, !alias.scope !1591
  %wide.load100 = load <8 x float>, ptr %i.bm, align 4, !tbaa !79, !alias.scope !1591
  %wide.load101 = load <8 x float>, ptr %i.bn, align 4, !tbaa !79, !alias.scope !1591
  %wide.load102 = load <8 x float>, ptr %i.bo, align 4, !tbaa !79, !alias.scope !1591
  %i.bp = fmul <8 x float> %broadcast.splat, %wide.load
  %i.bq = fmul <8 x float> %broadcast.splat, %wide.load100
  %i.br = fmul <8 x float> %broadcast.splat, %wide.load101
  %i.bs = fmul <8 x float> %broadcast.splat, %wide.load102
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 96 ; 2 uses
  %wide.load103 = load <8 x float>, ptr %i.bt, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %wide.load104 = load <8 x float>, ptr %i.bu, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %wide.load105 = load <8 x float>, ptr %i.bv, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %wide.load106 = load <8 x float>, ptr %i.bw, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %i.bx = fadd <8 x float> %i.bp, %wide.load103
  %i.by = fadd <8 x float> %i.bq, %wide.load104
  %i.bz = fadd <8 x float> %i.br, %wide.load105
  %i.ca = fadd <8 x float> %i.bs, %wide.load106
  store <8 x float> %i.bx, ptr %i.bt, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  store <8 x float> %i.by, ptr %i.bu, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  store <8 x float> %i.bz, ptr %i.bv, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  store <8 x float> %i.ca, ptr %i.bw, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1578

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %i.cc = load float, ptr %i.bf, align 4, !tbaa !79, !alias.scope !1590
  %broadcast.splatinsert110 = insertelement <4 x float> poison, float %i.cc, i64 0
  %broadcast.splat111 = shufflevector <4 x float> %broadcast.splatinsert110, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index108
  %wide.load109 = load <4 x float>, ptr %i.cd, align 4, !tbaa !79, !alias.scope !1591
  %i.ce = fmul <4 x float> %broadcast.splat111, %wide.load109
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index108 ; 2 uses
  %wide.load112 = load <4 x float>, ptr %i.cf, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %i.cg = fadd <4 x float> %i.ce, %wide.load112
  store <4 x float> %i.cg, ptr %i.cf, align 4, !tbaa !79, !alias.scope !1592, !noalias !1593
  %index.next113 = add nuw i64 %index108, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next113, %n.vec107
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1579

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %n.vec107, %wide.trip.count.i.i.i
  br i1 %cmp.n114, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec107, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ci = load float, ptr %i.bf, align 4, !tbaa !79
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i.prol
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !79
  %i.cl = fmul float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.i.i.prol ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !79
  %i.co = fadd float %i.cl, %i.cn
  store float %i.co, ptr %i.cm, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1580

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.cp = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.i
  store i64 0, ptr %i.q, align 8, !tbaa !162
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.cr = load i64, ptr %i.r, align 8, !tbaa !161
  %i.cs = shl i64 %i.cr, 2
  %i.ct = load ptr, ptr %4, align 8, !tbaa !118   ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !120
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.cs, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i unwind label %bb.f, !inline_history !1

bb.f:                                             ; preds = %bb.e
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.cz = add nsw i32 %.02256.i.i.i, 1            ; 2 uses
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !1587, !nonnull !53, !align !244
  %i.db = load i32, ptr %i.da, align 4, !tbaa !38
  %.not.i.i.i = icmp sgt i32 %i.cz, %i.db
  br i1 %.not.i.i.i, label %._crit_edge58.i.i.i, label %bb.d, !llvm.loop !1581

bb.g:                                             ; preds = %bb.d
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.l

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.dd = load float, ptr %i.bf, align 4, !tbaa !79
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i
  %i.df = load float, ptr %i.de, align 4, !tbaa !79
  %i.dg = fmul float %i.dd, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.i.i ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !79
  %i.dj = fadd float %i.dg, %i.di
  store float %i.dj, ptr %i.dh, align 4, !tbaa !79
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dk = load float, ptr %i.bf, align 4, !tbaa !79
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !79
  %i.dn = fmul float %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !79
  %i.dq = fadd float %i.dn, %i.dp
  store float %i.dq, ptr %i.do, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.dr = load float, ptr %i.bf, align 4, !tbaa !79
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i.1
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !79
  %i.du = fmul float %i.dr, %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i.1 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !79
  %i.dx = fadd float %i.du, %i.dw
  store float %i.dx, ptr %i.dv, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dy = load float, ptr %i.bf, align 4, !tbaa !79
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i.2
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !79
  %i.eb = fmul float %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i.2 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !79
  %i.ee = fadd float %i.eb, %i.ed
  store float %i.ee, ptr %i.ec, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1582

._crit_edge58.i.i.i:                              ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.ef = phi ptr [ %i.am, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %i.ar, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ]
  %i.eg = load ptr, ptr %i.s, align 8, !tbaa !1594, !nonnull !53, !align !214 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %indvars.iv67.i.i.i, %.sroa.238.0.insert.ext.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !75 ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !38
  %sext.i.i.i.i = shl i64 %i.ei, 32
  %i.ek = ashr exact i64 %sext.i.i.i.i, 32
  %.not.i.i.i.i = icmp ugt i64 %i.aa, %i.ek
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge58.i.i.i
  invoke void @_ZN4pbrt8LogFatalIJRA14_KcRA12_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 785, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #33
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %._crit_edge58.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not1012.i.i.i.i = icmp eq i64 %i.aa, 0
  %.pre73.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !160 ; 5 uses
  br i1 %.not1012.i.i.i.i, label %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.i
  %.not.i.i28.i.i.i = icmp eq ptr %.pre73.i.i.i, null
  %i.el = select i1 %.not.i.i28.i.i.i, ptr %i.k, ptr %.pre73.i.i.i ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.aa
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc30.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.014.i.i.i.i = phi i32 [ %i.ep, %.noexc30.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0913.i.i.i.i = phi ptr [ %i.eo, %.noexc30.i.i.i ], [ %i.el, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.en = load float, ptr %.0913.i.i.i.i, align 4, !tbaa !79
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %i.eg, i64 %.sroa.0.0.insert.insert.i.i.i, i32 noundef %.014.i.i.i.i, float noundef %i.en)
          to label %.noexc30.i.i.i unwind label %.loopexit.i.i.i

.noexc30.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i, i64 4 ; 2 uses
  %i.ep = add nuw nsw i32 %.014.i.i.i.i, 1
  %.not10.i.i.i.i = icmp eq ptr %i.eo, %i.em
  br i1 %.not10.i.i.i.i, label %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i: ; preds = %.noexc30.i.i.i, %bb.i
  %.not.i.i.i.i31.i.i.i = icmp eq ptr %.pre73.i.i.i, null
  br i1 %.not.i.i.i.i31.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i
  %i.eq = load ptr, ptr %i.ab, align 8, !tbaa !120
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %.pre73.i.i.i, i64 noundef %i.an, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i unwind label %bb.k, !inline_history !1

bb.k:                                             ; preds = %bb.j
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i: ; preds = %bb.j, %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %indvars.iv.next68.i.i.i = add nuw nsw i64 %indvars.iv67.i.i.i, 1 ; 2 uses
  %i.ev = load i32, ptr %i.f, align 4, !tbaa !74  ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next68.i.i.i, %i.ew
  br i1 %i.ex, label %bb.b, label %._crit_edge61.i.i.i, !llvm.loop !1583

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i.i:                         ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.g
  %i.ey = phi ptr [ %i.ar, %bb.g ], [ %.pre73.i.i.i, %.loopexit.i.i.i ], [ %i.ef, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dc, %bb.g ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  store i64 0, ptr %i.j, align 8, !tbaa !162
  %.not.i.i.i.i33.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i33.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit34.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ez = load ptr, ptr %i.ab, align 8, !tbaa !120
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  invoke void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.ey, i64 noundef %i.an, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit34.i.i.i unwind label %bb.n, !inline_history !1

bb.n:                                             ; preds = %bb.m
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit34.i.i.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn.i.i.i

"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %._crit_edge61.i.i.i, %bb.a, %.preheader39.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK4pbrt5Image14GaussianFilterERKNS_16ImageChannelDescEifE3$_0", ptr %0, align 8, !tbaa !216
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !111
  store ptr %.val, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !1595
  store ptr %i.a, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #34
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E9_M_invokeERKSt9_Any_dataOlSB_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 8 uses
  %4 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !47
  %.val4 = load i64, ptr %2, align 8, !tbaa !47   ; 2 uses
  %sext.i.i.i = shl i64 %.val3, 32
  %i.c = ashr exact i64 %sext.i.i.i, 32           ; 2 uses
  %i.d = icmp sgt i64 %.val4, %i.c
  br i1 %i.d, label %.preheader39.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

.preheader39.lr.ph.i.i.i:                         ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !111   ; 7 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !1609
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load i32, ptr %i.f, align 4, !tbaa !74   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader39.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

.preheader39.i.i.i:                               ; preds = %.preheader39.lr.ph.i.i.i, %._crit_edge61.i.i.i
  %i.w = phi i32 [ %i.z, %._crit_edge61.i.i.i ], [ %i.u, %.preheader39.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv70.i.i.i = phi i64 [ %indvars.iv.next71.i.i.i, %._crit_edge61.i.i.i ], [ %i.c, %.preheader39.lr.ph.i.i.i ] ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph60.i.i.i, label %._crit_edge61.i.i.i

.lr.ph60.i.i.i:                                   ; preds = %.preheader39.i.i.i
  %i.y = trunc nsw i64 %indvars.iv70.i.i.i to i32
  %.sroa.2.0.insert.ext.i.i.i = shl i64 %indvars.iv70.i.i.i, 32
  br label %bb.b

._crit_edge61.i.i.i:                              ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, %.preheader39.i.i.i
  %i.z = phi i32 [ %i.w, %.preheader39.i.i.i ], [ %i.ew, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i ]
  %indvars.iv.next71.i.i.i = add i64 %indvars.iv70.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next71.i.i.i, %.val4
  br i1 %exitcond.not.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %.preheader39.i.i.i, !llvm.loop !1596

bb.b:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, %.lr.ph60.i.i.i
  %indvars.iv67.i.i.i = phi i64 [ 0, %.lr.ph60.i.i.i ], [ %indvars.iv.next68.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !1610, !nonnull !53, !align !214
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !101 ; 9 uses
  %i.ad = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 7 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  store i64 %i.ae, ptr %3, align 8, !tbaa !139
  store ptr null, ptr %i.h, align 8, !tbaa !160
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ac, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.af = shl i64 %i.ac, 2                        ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef %i.af, i64 noundef 4), !inline_history !1597
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i, %bb.c
  %.0.i.i.i.i1418.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %i.ak, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !161
  store ptr %.0.i.i.i.i1418.i.i.i.i.i, ptr %i.h, align 8, !tbaa !160
  br label %.lr.ph.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i: ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %.pre74.i.i.i = shl nuw nsw i64 %i.ac, 2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre74.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.af, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.al = phi i64 [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.af, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.am = phi ptr [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %.0.i.i.i.i1418.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ] ; 3 uses
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.am, null
  %i.an = select i1 %.not.i9.i.i.i.i.i, ptr %i.k, ptr %i.am
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %.pre-phi.i.i.i, i1 false), !tbaa !79
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i

_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %i.ao = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ]
  %i.ap = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !1611, !nonnull !53, !align !244
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !38 ; 2 uses
  %.not55.i.i.i = icmp slt i32 %i.ar, 0
  br i1 %.not55.i.i.i, label %._crit_edge58.i.i.i, label %.lr.ph57.i.i.i

.lr.ph57.i.i.i:                                   ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.as = sub nsw i32 0, %i.ar
  %i.at = load ptr, ptr %i.h, align 8             ; 4 uses
  %.not.i.i27.i.i.i = icmp eq ptr %i.at, null
  %i.au = select i1 %.not.i.i27.i.i.i, ptr %i.k, ptr %i.at ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %.lr.ph57.i.i.i
  %.02256.i.i.i = phi i32 [ %i.as, %.lr.ph57.i.i.i ], [ %i.da, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !1612, !nonnull !53, !align !214
  %i.aw = add nsw i32 %.02256.i.i.i, %i.y
  %.sroa.238.0.insert.ext.i.i.i = zext i32 %i.aw to i64
  %.sroa.238.0.insert.shift.i.i.i = shl nuw i64 %.sroa.238.0.insert.ext.i.i.i, 32
  %.sroa.037.0.insert.insert.i.i.i = add nuw nsw i64 %.sroa.238.0.insert.shift.i.i.i, %indvars.iv67.i.i.i
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %i.av, i64 %.sroa.037.0.insert.insert.i.i.i, i64 4294967297)
          to label %.preheader.i.i.i unwind label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.d
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !1613, !nonnull !53, !align !244
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !38 ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !160 ; 4 uses
  br i1 %i.az, label %iter.check, label %._crit_edge.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !1614, !nonnull !53, !align !214
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !1611, !nonnull !53, !align !244
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !38
  %i.bd = add nsw i32 %i.bc, %.02256.i.i.i
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !87 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.be ; 8 uses
  %.not.i.i26.i.i.i = icmp eq ptr %.pre.i.i.i, null
  %i.bh = select i1 %.not.i.i26.i.i.i, ptr %i.q, ptr %.pre.i.i.i ; 9 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ay to i64 ; 9 uses
  %min.iters.check = icmp ult i32 %i.ay, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bi = shl nuw nsw i64 %wide.trip.count.i.i.i, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.bi ; 2 uses
  %scevgep93 = getelementptr i8, ptr %i.bf, i64 4
  %i.bj = shl nuw nsw i64 %i.be, 2
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.bj
  %scevgep95 = getelementptr i8, ptr %i.bh, i64 %i.bi
  %bound0 = icmp ult ptr %i.au, %scevgep94
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound096 = icmp ult ptr %i.au, %scevgep95
  %bound197 = icmp ult ptr %i.bh, %scevgep
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx = or i1 %found.conflict, %found.conflict98
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check99 = icmp ult i32 %i.ay, 32
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  %i.bl = load float, ptr %i.bg, align 4, !tbaa !79, !alias.scope !1615
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bl, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %wide.load = load <8 x float>, ptr %i.bm, align 4, !tbaa !79, !alias.scope !1616
  %wide.load100 = load <8 x float>, ptr %i.bn, align 4, !tbaa !79, !alias.scope !1616
  %wide.load101 = load <8 x float>, ptr %i.bo, align 4, !tbaa !79, !alias.scope !1616
  %wide.load102 = load <8 x float>, ptr %i.bp, align 4, !tbaa !79, !alias.scope !1616
  %i.bq = fmul <8 x float> %broadcast.splat, %wide.load
  %i.br = fmul <8 x float> %broadcast.splat, %wide.load100
  %i.bs = fmul <8 x float> %broadcast.splat, %wide.load101
  %i.bt = fmul <8 x float> %broadcast.splat, %wide.load102
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 96 ; 2 uses
  %wide.load103 = load <8 x float>, ptr %i.bu, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %wide.load104 = load <8 x float>, ptr %i.bv, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %wide.load105 = load <8 x float>, ptr %i.bw, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %wide.load106 = load <8 x float>, ptr %i.bx, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %i.by = fadd <8 x float> %i.bq, %wide.load103
  %i.bz = fadd <8 x float> %i.br, %wide.load104
  %i.ca = fadd <8 x float> %i.bs, %wide.load105
  %i.cb = fadd <8 x float> %i.bt, %wide.load106
  store <8 x float> %i.by, ptr %i.bu, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  store <8 x float> %i.bz, ptr %i.bv, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  store <8 x float> %i.ca, ptr %i.bw, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  store <8 x float> %i.cb, ptr %i.bx, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1602

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %i.cd = load float, ptr %i.bg, align 4, !tbaa !79, !alias.scope !1615
  %broadcast.splatinsert110 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat111 = shufflevector <4 x float> %broadcast.splatinsert110, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index108
  %wide.load109 = load <4 x float>, ptr %i.ce, align 4, !tbaa !79, !alias.scope !1616
  %i.cf = fmul <4 x float> %broadcast.splat111, %wide.load109
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index108 ; 2 uses
  %wide.load112 = load <4 x float>, ptr %i.cg, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %i.ch = fadd <4 x float> %i.cf, %wide.load112
  store <4 x float> %i.ch, ptr %i.cg, align 4, !tbaa !79, !alias.scope !1617, !noalias !1618
  %index.next113 = add nuw i64 %index108, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next113, %n.vec107
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1603

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %n.vec107, %wide.trip.count.i.i.i
  br i1 %cmp.n114, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec107, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cj = load float, ptr %i.bg, align 4, !tbaa !79
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i.prol
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !79
  %i.cm = fmul float %i.cj, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.i.prol ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !79
  %i.cp = fadd float %i.cm, %i.co
  store float %i.cp, ptr %i.cn, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1604

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.cq = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.i
  store i64 0, ptr %i.r, align 8, !tbaa !162
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.cs = load i64, ptr %i.s, align 8, !tbaa !161
  %i.ct = shl i64 %i.cs, 2
  %i.cu = load ptr, ptr %4, align 8, !tbaa !118   ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !120
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.ct, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i unwind label %bb.f, !inline_history !1

bb.f:                                             ; preds = %bb.e
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.da = add nsw i32 %.02256.i.i.i, 1            ; 2 uses
  %i.db = load ptr, ptr %i.l, align 8, !tbaa !1611, !nonnull !53, !align !244
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !38
  %.not.i.i.i = icmp sgt i32 %i.da, %i.dc
  br i1 %.not.i.i.i, label %._crit_edge58.i.i.i, label %bb.d, !llvm.loop !1605

bb.g:                                             ; preds = %bb.d
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.l

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.de = load float, ptr %i.bg, align 4, !tbaa !79
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i
  %i.dg = load float, ptr %i.df, align 4, !tbaa !79
  %i.dh = fmul float %i.de, %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.i ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !79
  %i.dk = fadd float %i.dh, %i.dj
  store float %i.dk, ptr %i.di, align 4, !tbaa !79
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dl = load float, ptr %i.bg, align 4, !tbaa !79
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !79
  %i.do = fmul float %i.dl, %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !79
  %i.dr = fadd float %i.do, %i.dq
  store float %i.dr, ptr %i.dp, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ds = load float, ptr %i.bg, align 4, !tbaa !79
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i.1
  %i.du = load float, ptr %i.dt, align 4, !tbaa !79
  %i.dv = fmul float %i.ds, %i.du
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.1 ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !79
  %i.dy = fadd float %i.dv, %i.dx
  store float %i.dy, ptr %i.dw, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dz = load float, ptr %i.bg, align 4, !tbaa !79
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i.2
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !79
  %i.ec = fmul float %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.2 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !79
  %i.ef = fadd float %i.ec, %i.ee
  store float %i.ef, ptr %i.ed, align 4, !tbaa !79
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1606

._crit_edge58.i.i.i:                              ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.eg = phi ptr [ %i.ao, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %i.at, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ]
  %i.eh = load ptr, ptr %i.t, align 8, !tbaa !1619, !nonnull !53, !align !214 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i = add nuw nsw i64 %indvars.iv67.i.i.i, %.sroa.2.0.insert.ext.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !75 ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  store i32 %i.ek, ptr %i.b, align 4, !tbaa !38
  %sext.i.i.i.i = shl i64 %i.ej, 32
  %i.el = ashr exact i64 %sext.i.i.i.i, 32
  %.not.i.i.i.i = icmp ugt i64 %i.ac, %i.el
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge58.i.i.i
  invoke void @_ZN4pbrt8LogFatalIJRA14_KcRA12_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 785, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #33
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %._crit_edge58.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not1012.i.i.i.i = icmp eq i64 %i.ac, 0
  %.pre73.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !160 ; 5 uses
  br i1 %.not1012.i.i.i.i, label %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.i
  %.not.i.i28.i.i.i = icmp eq ptr %.pre73.i.i.i, null
  %i.em = select i1 %.not.i.i28.i.i.i, ptr %i.k, ptr %.pre73.i.i.i ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ac
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc30.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.014.i.i.i.i = phi i32 [ %i.eq, %.noexc30.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0913.i.i.i.i = phi ptr [ %i.ep, %.noexc30.i.i.i ], [ %i.em, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.eo = load float, ptr %.0913.i.i.i.i, align 4, !tbaa !79
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %i.eh, i64 %.sroa.0.0.insert.insert.i.i.i, i32 noundef %.014.i.i.i.i, float noundef %i.eo)
          to label %.noexc30.i.i.i unwind label %.loopexit.i.i.i

.noexc30.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i, i64 4 ; 2 uses
  %i.eq = add nuw nsw i32 %.014.i.i.i.i, 1
  %.not10.i.i.i.i = icmp eq ptr %i.ep, %i.en
  br i1 %.not10.i.i.i.i, label %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i: ; preds = %.noexc30.i.i.i, %bb.i
  %.not.i.i.i.i31.i.i.i = icmp eq ptr %.pre73.i.i.i, null
  br i1 %.not.i.i.i.i31.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i
  %i.er = load ptr, ptr %i.ad, align 8, !tbaa !120
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %.pre73.i.i.i, i64 noundef %i.ap, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i unwind label %bb.k, !inline_history !1

bb.k:                                             ; preds = %bb.j
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit32.i.i.i: ; preds = %bb.j, %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %indvars.iv.next68.i.i.i = add nuw nsw i64 %indvars.iv67.i.i.i, 1 ; 2 uses
  %i.ew = load i32, ptr %i.f, align 4, !tbaa !74  ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp slt i64 %indvars.iv.next68.i.i.i, %i.ex
  br i1 %i.ey, label %bb.b, label %._crit_edge61.i.i.i, !llvm.loop !1607

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i.i:                         ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.g
  %i.ez = phi ptr [ %i.at, %bb.g ], [ %.pre73.i.i.i, %.loopexit.i.i.i ], [ %i.eg, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dd, %bb.g ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  store i64 0, ptr %i.j, align 8, !tbaa !162
  %.not.i.i.i.i33.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i33.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit34.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fa = load ptr, ptr %i.ad, align 8, !tbaa !120
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.ez, i64 noundef %i.ap, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit34.i.i.i unwind label %bb.n, !inline_history !1

bb.n:                                             ; preds = %bb.m
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #36
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit34.i.i.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn.i.i.i

"_ZSt10__invoke_rIvRZNK4pbrt5Image14GaussianFilterERKNS0_16ImageChannelDescEifE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %._crit_edge61.i.i.i, %bb.a, %.preheader39.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK4pbrt5Image14GaussianFilterERKNS_16ImageChannelDescEifE3$_1", ptr %0, align 8, !tbaa !216
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !111
  store ptr %.val, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !1620
  store ptr %i.a, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 56) #34
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image14GaussianFilterERKNS1_16ImageChannelDescEifE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}
end_hunk_3
