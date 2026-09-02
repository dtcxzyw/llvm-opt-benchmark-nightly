Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_float?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_fft_naive_small_float_c:bb.a
._crit_edge.us:                                   ; preds = %bb.b
  %i.t = mul nuw nsw i64 %i.b, %indvars.iv37
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t
  store <2 x float> %i.s, ptr %i.u, align 4, !tbaa !24
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge34, label %.preheader.us, !llvm.loop !83

._crit_edge34:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @ff_tx_fft_init_naive_small_float_c(ptr nofree noundef captures(none) initializes((16, 24)) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %.not = icmp eq i32 %i.b, 0
  %i.c = sitofp nsz i32 %4 to double
  %.v = select i1 %.not, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %i.d = fdiv nnan nsz double %.v, %i.c
  %i.e = mul nsw i32 %4, %4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @av_malloc(i64 noundef %i.g) #16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23
  %.not23 = icmp eq ptr %i.h, null
  br i1 %.not23, label %.loopexit, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.j = icmp sgt i32 %4, 0
  br i1 %i.j, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader24
  %wide.trip.count31 = zext nneg i32 %4 to i64    ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv28 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next29, %._crit_edge ] ; 3 uses
  %i.k = trunc nuw nsw i64 %indvars.iv28 to i32
  %i.l = uitofp nneg i32 %i.k to double
  %i.m = fmul nsz double %i.d, %i.l
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %.loopexit, label %.preheader, !llvm.loop !84

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fmul nsz double %i.m, %i.o
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.p) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.q = mul nuw nsw i64 %indvars.iv, %indvars.iv28
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.q
  %i.s = insertelement <2 x double> poison, double %cos, i64 0
  %i.t = insertelement <2 x double> %i.s, double %sin, i64 1
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  store <2 x float> %i.u, ptr %i.r, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count31
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !85

.loopexit:                                        ; preds = %._crit_edge, %.preheader24, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %.preheader24 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 1                         ; 5 uses
  %i.e = ashr i32 %i.c, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = lshr i64 %3, 2                           ; 4 uses
  %i.i = icmp sgt i32 %i.d, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = mul nuw nsw i32 %i.d, 3
  %i.k = mul nuw nsw i32 %i.d, 5
  %i.l = zext nneg i32 %i.d to i64                ; 5 uses
  %i.m = zext nneg i32 %i.j to i64                ; 3 uses
  %i.n = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.o = getelementptr [4 x i8], ptr %2, i64 %i.n
  %i.p = getelementptr [4 x i8], ptr %2, i64 %i.m
  %invariant.gep129 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.q = getelementptr [4 x i8], ptr %2, i64 %i.l
  %invariant.gep131 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.m
  %i.r = getelementptr [4 x i8], ptr %2, i64 %i.m
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  tail call void %i.t(ptr noundef %i.v, ptr noundef %1, ptr noundef %1, i64 noundef 8) #16
  %i.w = icmp sgt i32 %i.e, 0
  br i1 %i.w, label %.lr.ph117.preheader, label %._crit_edge118

.lr.ph117.preheader:                              ; preds = %._crit_edge
  %i.x = zext nneg i32 %i.e to i64                ; 2 uses
  %wide.trip.count123 = zext nneg i32 %i.e to i64
  br label %.lr.ph117

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.y = shl nuw nsw i64 %indvars.iv, 1           ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = icmp samesign ult i64 %i.y, %i.l
  %i.ac = xor i64 %i.y, -1                        ; 4 uses
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gep130 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep129, i64 %i.y
  %i.ad = load float, ptr %gep130, align 4, !tbaa !24
  %i.ae = getelementptr [4 x i8], ptr %i.q, i64 %i.ac
  %i.af = load float, ptr %i.ae, align 4, !tbaa !24
  %i.ag = fsub nsz float %i.af, %i.ad
  %gep132 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep131, i64 %i.y
  %i.ah = load float, ptr %gep132, align 4, !tbaa !24
  %i.ai = getelementptr [4 x i8], ptr %i.r, i64 %i.ac
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !24
  %i.ak = fadd nsz float %i.ah, %i.aj
  %i.al = fneg nsz float %i.ak
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.y
  %i.am = load float, ptr %gep, align 4, !tbaa !24
  %i.an = getelementptr [4 x i8], ptr %i.o, i64 %i.ac
  %i.ao = load float, ptr %i.an, align 4, !tbaa !24
  %i.ap = fadd nsz float %i.am, %i.ao
  %i.aq = fneg nsz float %i.ap
  %i.ar = sub nuw nsw i64 %i.y, %i.l
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !24
  %i.au = getelementptr [4 x i8], ptr %i.p, i64 %i.ac
  %i.av = load float, ptr %i.au, align 4, !tbaa !24
  %i.aw = fsub nsz float %i.at, %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.067.0 = phi nsz float [ %i.ag, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.6.0 = phi nsz float [ %i.al, %bb.c ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !28 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !29
  %i.bb = fneg nsz float %i.ba
  %i.bc = fmul nsz float %.sroa.6.0, %i.bb
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.067.0, float %i.ay, float %i.bc)
  %i.be = sext i32 %i.aa to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store float %i.bd, ptr %i.bg, align 4, !tbaa !29
  %i.bh = load float, ptr %i.az, align 4, !tbaa !29
  %i.bi = fmul nsz float %.sroa.6.0, %i.ay
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.067.0, float %i.bh, float %i.bi)
  store float %i.bj, ptr %i.bf, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !86

._crit_edge118:                                   ; preds = %.lr.ph117, %._crit_edge
  ret void

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.lr.ph117
  %indvars.iv120 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next121, %.lr.ph117 ] ; 3 uses
  %i.bk = add nuw nsw i64 %indvars.iv120, %i.x    ; 3 uses
  %i.bl = xor i64 %indvars.iv120, -1
  %i.bm = add nsw i64 %i.x, %i.bl                 ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !28 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !29 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bk ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !28 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !29 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !29
  %i.by = load float, ptr %i.bv, align 4, !tbaa !28
  %i.bz = fneg nsz float %i.by
  %i.ca = fmul nsz float %i.bu, %i.bz
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.bs, float %i.bx, float %i.ca)
  %i.cc = shl nsw i64 %i.bm, 1
  %i.cd = mul nsw i64 %i.h, %i.cc
  %i.ce = getelementptr [4 x i8], ptr %1, i64 %i.cd ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %i.h
  store float %i.cb, ptr %i.cf, align 4, !tbaa !24
  %i.cg = load float, ptr %i.bv, align 4, !tbaa !28
  %i.ch = load float, ptr %i.bw, align 4, !tbaa !29
  %i.ci = fmul nsz float %i.bu, %i.ch
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.bs, float %i.cg, float %i.ci)
  %i.ck = shl nuw nsw i64 %i.bk, 1
  %i.cl = mul nuw nsw i64 %i.h, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cl ; 2 uses
  store float %i.cj, ptr %i.cm, align 4, !tbaa !24
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !29
  %i.cq = load float, ptr %i.cn, align 4, !tbaa !28
  %i.cr = fneg nsz float %i.cq
  %i.cs = fmul nsz float %i.bq, %i.cr
  %i.ct = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.cp, float %i.cs)
  %i.cu = getelementptr [4 x i8], ptr %i.cm, i64 %i.h
  store float %i.ct, ptr %i.cu, align 4, !tbaa !24
  %i.cv = load float, ptr %i.cn, align 4, !tbaa !28
  %i.cw = load float, ptr %i.co, align 4, !tbaa !29
  %i.cx = fmul nsz float %i.bq, %i.cw
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.cv, float %i.cx)
  store float %i.cy, ptr %i.ce, align 4, !tbaa !24
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !87
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_init_float_c(ptr noundef initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %.not = icmp eq i32 %5, 0                       ; 3 uses
  %i.a = select i1 %.not, i32 2, i32 1
  store i32 %i.a, ptr %7, align 4, !tbaa !36
  %i.b = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  %i.c = fpext nsz float %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.c, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.b, ptr %i.e, align 4, !tbaa !39
  %i.f = and i64 %2, 6917529027641081854          ; 2 uses
  %i.g = or disjoint i64 %i.f, 2305843009213693953
  %i.h = ashr i32 %4, 1                           ; 5 uses
  %i.i = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 0, i64 noundef %i.g, ptr noundef nonnull %7, i32 noundef %i.h, i32 noundef %5, ptr noundef nonnull %6) #16
  %.not48 = icmp eq i32 %i.i, 0
  br i1 %.not48, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i64 %i.f, 1
  %i.k = call i32 @ff_tx_init_subtx(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.j, ptr noundef nonnull %7, i32 noundef %i.h, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
  %.not49 = icmp eq i32 %i.k, 0
  br i1 %.not49, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = sext i32 %i.h to i64
  %i.m = shl nsw i64 %i.l, 2                      ; 2 uses
  %i.n = call noalias ptr @av_malloc(i64 noundef %i.m) #16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !33
  %.not50 = icmp eq ptr %i.n, null
  br i1 %.not50, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30
  %i.t = and i64 %i.s, 2305843009213693952
  %.not51 = icmp eq i64 %i.t, 0
  br i1 %.not51, label %.preheader53, label %bb.e

.preheader53:                                     ; preds = %bb.d
  %i.u = icmp sgt i32 %i.h, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.loopexit54

.lr.ph.preheader:                                 ; preds = %.preheader53
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.w, i64 %i.m, i1 false)
  br label %.loopexit54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit54, label %.lr.ph, !llvm.loop !88

.loopexit54:                                      ; preds = %.lr.ph, %.preheader53, %bb.e
  %spec.select = select i1 %.not, ptr null, ptr %i.n
  %i.z = call i32 @ff_tx_mdct_gen_exp_float(ptr noundef nonnull %0, ptr noundef %spec.select) ; 2 uses
  %.not52 = icmp ne i32 %i.z, 0
  %brmerge = or i1 %.not, %.not52
  br i1 %brmerge, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit54
  %i.aa = load i32, ptr %0, align 8, !tbaa !21
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv59 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next60, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv59 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = shl i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !12
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !21
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next60, %i.ai
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %bb.f, %.preheader, %.loopexit54, %bb.c, %bb.b
  %.044 = phi i32 [ %i.k, %bb.b ], [ -12, %bb.c ], [ %i.z, %.loopexit54 ], [ 0, %.preheader ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.044
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.d = ashr i32 %i.c, 1                         ; 3 uses
  %i.e = ashr i32 %i.c, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = lshr i64 %3, 2                           ; 3 uses
  %i.i = and i32 %i.c, -2
  %i.j = add nsw i32 %i.i, -1
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  tail call void %i.p(ptr noundef %i.r, ptr noundef %1, ptr noundef %1, i64 noundef 8) #16
  %i.s = sext i32 %i.d to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = icmp sgt i32 %i.e, 0
  br i1 %i.u, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %._crit_edge
  %i.v = zext nneg i32 %i.e to i64                ; 2 uses
  %wide.trip.count100 = zext nneg i32 %i.e to i64
  br label %.lr.ph94

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 2 uses
  %i.y = sub nsw i32 0, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.h, %i.z
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !24 ; 2 uses
  %i.ad = sext i32 %i.x to i64
  %i.ae = mul nsw i64 %i.h, %i.ad
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !29 ; 2 uses
  %i.al = fneg nsz float %i.ak
  %i.am = fmul nsz float %i.ag, %i.al
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.ai, float %i.am)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !28
  %i.ap = load float, ptr %i.ah, align 4, !tbaa !28
  %i.aq = fmul nsz float %i.ag, %i.ap
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.ak, float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store float %i.ar, ptr %i.as, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge95:                                    ; preds = %.lr.ph94, %._crit_edge
  ret void

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %indvars.iv97 = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next98, %.lr.ph94 ] ; 3 uses
  %i.at = add nuw nsw i64 %indvars.iv97, %i.v     ; 2 uses
  %i.au = xor i64 %indvars.iv97, -1
  %i.av = add nsw i64 %i.v, %i.au                 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !29 ; 2 uses
  %i.az = load float, ptr %i.aw, align 4, !tbaa !28 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !29 ; 2 uses
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !28 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.av ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !29 ; 2 uses
  %i.bh = load float, ptr %i.be, align 4, !tbaa !28
  %i.bi = fneg nsz float %i.bh
  %i.bj = fmul nsz float %i.az, %i.bi
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.bg, float %i.bj)
  store float %i.bk, ptr %i.aw, align 4, !tbaa !28
  %i.bl = load float, ptr %i.be, align 4, !tbaa !28
  %i.bm = fmul nsz float %i.az, %i.bg
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.bl, float %i.bm)
  store float %i.bn, ptr %i.bb, align 4, !tbaa !29
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.at ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !29 ; 2 uses
  %i.br = load float, ptr %i.bo, align 4, !tbaa !28
  %i.bs = fneg nsz float %i.br
  %i.bt = fmul nsz float %i.bd, %i.bs
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bq, float %i.bt)
  store float %i.bu, ptr %i.ba, align 4, !tbaa !28
  %i.bv = load float, ptr %i.bo, align 4, !tbaa !28
  %i.bw = fmul nsz float %i.bd, %i.bq
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bv, float %i.bw)
  store float %i.bx, ptr %i.ax, align 4, !tbaa !29
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !91
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_3xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 3                      ; 13 uses
  %i.g = mul nuw nsw i32 %i.e, 9                  ; 9 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 4 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %..preheader136_crit_edge

..preheader136_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 15                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = zext nneg i32 %i.e to i64                ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.u, 4
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 3           ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.f
  %i.z = add nsw i32 %i.x, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !24 ; 2 uses
  %i.ad = xor i32 %i.x, -1                        ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.c

.preheader136:                                    ; preds = %bb.j, %..preheader136_crit_edge
  %i.ae = phi ptr [ %.pre, %..preheader136_crit_edge ], [ %i.t, %bb.j ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ah = sext i32 %i.e to i64                    ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !10
  tail call void %i.ai(ptr noundef nonnull %i.d, ptr noundef %i.ae, ptr noundef %i.ae, i64 noundef 8) #16
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 8) #16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !31
  %.idx = shl nsw i64 %i.ah, 4
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = icmp sgt i32 %i.i, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.as = add i32 %i.f, %i.ad
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !24
  %i.aw = fsub nsz float %i.av, %i.ac
  %i.ax = add nsw i32 %i.x, %i.g
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !24
  %i.bb = add i32 %i.g, %i.ad
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !24
  %i.bf = fadd nsz float %i.ba, %i.be
  %i.bg = fneg nsz float %i.bf
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bh = add i32 %i.r, %i.ad
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !24
  %i.bl = fadd nsz float %i.ac, %i.bk
  %i.bm = fneg nsz float %i.bl
  %i.bn = sub nuw nsw i32 %i.x, %i.f
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !24
  %i.br = add i32 %i.g, %i.ad
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !24
  %i.bv = fsub nsz float %i.bq, %i.bu
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz float [ %i.aw, %bb.b ], [ %i.bm, %bb.c ]
  %.sroa.6.0 = phi nsz float [ %i.bg, %bb.b ], [ %i.bv, %bb.c ] ; 2 uses
  %i.bw = ashr i32 %i.x, 1
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bx
  %i.bz = load <2 x float>, ptr %i.by, align 4, !tbaa !24 ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = extractelement <2 x float> %i.bz, i64 1
  %i.cc = fneg nsz float %i.cb
  %i.cd = fmul nsz float %.sroa.6.0, %i.cc
  %i.ce = extractelement <2 x float> %i.bz, i64 0
  %i.cf = fmul nsz float %.sroa.6.0, %i.ce
  %i.cg = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.cd, i64 1
  %i.ck = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ca, <2 x float> %i.cj) ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12 ; 6 uses
  %i.co = icmp slt i32 %i.cn, %i.f
  %i.cp = add nsw i32 %i.cn, %i.f
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !24 ; 2 uses
  %i.ct = xor i32 %i.cn, -1                       ; 4 uses
  br i1 %i.co, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cu = add i32 %i.r, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !24
  %i.cy = fadd nsz float %i.cs, %i.cx
  %i.cz = fneg nsz float %i.cy
  %i.da = sub nuw nsw i32 %i.cn, %i.f
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !24
  %i.de = add i32 %i.g, %i.ct
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !24
  %i.di = fsub nsz float %i.dd, %i.dh
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dj = add i32 %i.f, %i.ct
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !24
  %i.dn = fsub nsz float %i.dm, %i.cs
  %i.do = add nsw i32 %i.cn, %i.g
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !24
  %i.ds = add i32 %i.g, %i.ct
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !24
  %i.dw = fadd nsz float %i.dr, %i.dv
  %i.dx = fneg nsz float %i.dw
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz float [ %i.dn, %bb.f ], [ %i.cz, %bb.e ]
  %.sroa.6.0.1 = phi nsz float [ %i.dx, %bb.f ], [ %i.di, %bb.e ] ; 2 uses
  %i.dy = ashr i32 %i.cn, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dz
  %i.eb = load <2 x float>, ptr %i.ea, align 4, !tbaa !24 ; 3 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = extractelement <2 x float> %i.eb, i64 1
  %i.ee = fneg nsz float %i.ed
  %i.ef = fmul nsz float %.sroa.6.0.1, %i.ee
  %i.eg = extractelement <2 x float> %i.eb, i64 0
  %i.eh = fmul nsz float %.sroa.6.0.1, %i.eg
  %i.ei = insertelement <2 x float> poison, float %.sroa.077.0.1, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ef, i64 1
  %i.em = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.ec, <2 x float> %i.el) ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !12 ; 6 uses
  %i.eq = icmp slt i32 %i.ep, %i.f
  %i.er = add nsw i32 %i.ep, %i.f
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %2, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4, !tbaa !24 ; 2 uses
  %i.ev = xor i32 %i.ep, -1                       ; 4 uses
  br i1 %i.eq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ew = add i32 %i.r, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !24
  %i.fa = fadd nsz float %i.eu, %i.ez
  %i.fb = fneg nsz float %i.fa
  %i.fc = sub nuw nsw i32 %i.ep, %i.f
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !24
  %i.fg = add i32 %i.g, %i.ev
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !24
  %i.fk = fsub nsz float %i.ff, %i.fj
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.fl = add i32 %i.f, %i.ev
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !24
  %i.fp = fsub nsz float %i.fo, %i.eu
  %i.fq = add nsw i32 %i.ep, %i.g
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !24
  %i.fu = add i32 %i.g, %i.ev
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !24
  %i.fy = fadd nsz float %i.ft, %i.fx
  %i.fz = fneg nsz float %i.fy
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.077.0.2 = phi nsz float [ %i.fp, %bb.i ], [ %i.fb, %bb.h ]
  %.sroa.6.0.2 = phi nsz float [ %i.fz, %bb.i ], [ %i.fk, %bb.h ] ; 2 uses
  %i.ga = ashr i32 %i.ep, 1
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !12
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.gf ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.u
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx.i
  %i.gj = load <2 x float>, ptr %i.gc, align 4, !tbaa !24 ; 3 uses
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gl = extractelement <2 x float> %i.gj, i64 1
  %i.gm = fneg nsz float %i.gl
  %i.gn = fmul nsz float %.sroa.6.0.2, %i.gm
  %i.go = extractelement <2 x float> %i.gj, i64 0
  %i.gp = fmul nsz float %.sroa.6.0.2, %i.go
  %i.gq = insertelement <2 x float> poison, float %.sroa.077.0.2, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gt = insertelement <2 x float> %i.gs, float %i.gn, i64 1
  %i.gu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gk, <2 x float> %i.gt) ; 2 uses
  %i.gv = fsub nsz <2 x float> %i.em, %i.gu
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gx = fadd nsz <2 x float> %i.em, %i.gu       ; 2 uses
  %i.gy = fadd nsz <2 x float> %i.ck, %i.gx
  store <2 x float> %i.gy, ptr %i.gg, align 4, !tbaa !24
  %i.gz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 32), align 16, !tbaa !24
  %i.ha = fmul nsz <2 x float> %i.gw, %i.gz       ; 2 uses
  %i.hb = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 40), align 8, !tbaa !24
  %i.hc = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fmul nsz <2 x float> %i.gx, %i.hd
  %i.hf = fsub nsz <2 x float> %i.ck, %i.he       ; 2 uses
  %i.hg = fadd nsz <2 x float> %i.hf, %i.ha       ; 2 uses
  %i.hh = fsub nsz <2 x float> %i.hf, %i.ha       ; 2 uses
  %i.hi = shufflevector <2 x float> %i.hg, <2 x float> %i.hh, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.hi, ptr %i.gh, align 4, !tbaa !24
  %i.hj = shufflevector <2 x float> %i.hh, <2 x float> %i.hg, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.hj, ptr %i.gi, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.preheader136, label %.preheader137, !llvm.loop !92

.lr.ph:                                           ; preds = %.preheader136
  %i.hk = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %i.hl = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count151 = zext nneg i32 %i.i to i64
  br label %bb.k

._crit_edge:                                      ; preds = %bb.k, %.preheader136
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv148 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next149, %bb.k ] ; 3 uses
  %i.hm = add nuw nsw i64 %indvars.iv148, %i.hl   ; 3 uses
  %i.hn = xor i64 %indvars.iv148, -1
  %i.ho = add nsw i64 %i.hl, %i.hn                ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hm
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !12
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ho
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !12
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.ht ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !28 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !29 ; 2 uses
  %i.hy = sext i32 %i.hq to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hy ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !28 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !29 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hm ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !29
  %i.ig = load float, ptr %i.id, align 4, !tbaa !28
  %i.ih = fneg nsz float %i.ig
  %i.ii = fmul nsz float %i.ic, %i.ih
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ia, float %i.if, float %i.ii)
  %i.ik = shl nsw i64 %i.ho, 1
  %i.il = mul nsw i64 %i.p, %i.ik
  %i.im = getelementptr [4 x i8], ptr %1, i64 %i.il ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %i.p
  store float %i.ij, ptr %i.in, align 4, !tbaa !24
  %i.io = load float, ptr %i.id, align 4, !tbaa !28
  %i.ip = load float, ptr %i.ie, align 4, !tbaa !29
  %i.iq = fmul nsz float %i.ic, %i.ip
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.ia, float %i.io, float %i.iq)
  %i.is = shl nuw nsw i64 %i.hm, 1
  %i.it = mul nuw nsw i64 %i.p, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.it ; 2 uses
  store float %i.ir, ptr %i.iu, align 4, !tbaa !24
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ho ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !29
  %i.iy = load float, ptr %i.iv, align 4, !tbaa !28
  %i.iz = fneg nsz float %i.iy
  %i.ja = fmul nsz float %i.hx, %i.iz
  %i.jb = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float %i.ix, float %i.ja)
  %i.jc = getelementptr [4 x i8], ptr %i.iu, i64 %i.p
  store float %i.jb, ptr %i.jc, align 4, !tbaa !24
  %i.jd = load float, ptr %i.iv, align 4, !tbaa !28
  %i.je = load float, ptr %i.iw, align 4, !tbaa !29
  %i.jf = fmul nsz float %i.hx, %i.je
  %i.jg = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float %i.jd, float %i.jf)
  store float %i.jg, ptr %i.im, align 4, !tbaa !24
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.k, !llvm.loop !93
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_pfa_init_float_c(ptr noundef initializes((140, 152)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 4 uses
  %i.a = alloca [15 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 2, ptr %7, align 4
  %i.b = ashr i32 %4, 1                           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = sdiv i32 %i.b, %i.d                      ; 3 uses
  %i.f = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  %i.g = fpext nsz float %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.g, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.f, ptr %i.i, align 4, !tbaa !39
  %i.j = and i64 %2, 6917529027641081854
  %i.k = or disjoint i64 %i.j, 2305843009213693953
  %i.l = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 0, i64 noundef %i.k, ptr noundef nonnull %7, i32 noundef %i.e, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %i.o = load i32, ptr %i.c, align 8, !tbaa !12
  %i.p = call i32 @ff_tx_gen_compound_mapping(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.e) #16 ; 2 uses
  %.not59 = icmp eq i32 %i.p, 0
  br i1 %.not59, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.c, align 8, !tbaa !12
  %i.r = icmp eq i32 %i.q, 15
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.s = icmp sgt i32 %i.b, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %i.v = zext nneg i32 %i.b to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv75 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next76, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.a, ptr noundef nonnull align 4 dereferenceable(60) %i.w, i64 60, i1 false)
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv75
  br label %.preheader63

.preheader63:                                     ; preds = %bb.e, %bb.g
  %indvars.iv71 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next72, %bb.g ] ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv71, 3         ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.x
  br label %bb.h

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 15 ; 2 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next76, %i.v
  br i1 %i.y, label %bb.e, label %._crit_edge, !llvm.loop !94

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 5
  br i1 %exitcond74.not, label %bb.f, label %.preheader63, !llvm.loop !95

bb.h:                                             ; preds = %.preheader63, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader63 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.z = mul nuw nsw i64 %indvars.iv, 5
  %i.aa = add nuw nsw i64 %i.z, %i.x
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = urem i32 %i.ab, 15
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !96

bb.i:                                             ; preds = %._crit_edge, %bb.c
  %.not60 = icmp eq i32 %5, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ null, %bb.i ]
  %i.ak = call i32 @ff_tx_mdct_gen_exp_float(ptr noundef nonnull %0, ptr noundef %i.aj) ; 2 uses
  %.not61 = icmp eq i32 %i.ak, 0
  br i1 %.not61, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.k
  %i.al = icmp sgt i32 %i.b, 0
  br i1 %i.al, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.l

._crit_edge69:                                    ; preds = %bb.l, %.preheader
  %i.ao = sext i32 %i.b to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = call noalias ptr @av_malloc(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !31
  %.not62 = icmp eq ptr %i.aq, null
  br i1 %.not62, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.lr.ph68, %bb.l
  %indvars.iv78 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next79, %bb.l ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv78 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12
  %i.au = shl i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !12
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond81.not, label %._crit_edge69, label %bb.l, !llvm.loop !97

bb.m:                                             ; preds = %._crit_edge69
  %i.av = sdiv i32 %i.b, %i.e
  call void @ff_tx_init_tabs_float(i32 noundef %i.av) #17
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge69, %bb.k, %bb.b, %bb.a, %bb.m
  %.054 = phi i32 [ %i.ak, %bb.k ], [ %i.l, %bb.a ], [ %i.p, %bb.b ], [ 0, %bb.m ], [ -12, %._crit_edge69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_5xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 5                      ; 21 uses
  %i.g = mul nuw nsw i32 %i.e, 15                 ; 15 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 6 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %..preheader136_crit_edge

..preheader136_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 25                 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = zext nneg i32 %i.e to i64                ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx88.i = mul nuw nsw i64 %i.u, 24
  %.idx89.i = shl nuw nsw i64 %i.u, 5
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 5           ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.f
  %i.z = add nsw i32 %i.x, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !24 ; 2 uses
  %i.ad = xor i32 %i.x, -1                        ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.c

.preheader136:                                    ; preds = %bb.p, %..preheader136_crit_edge
  %i.ae = phi ptr [ %.pre, %..preheader136_crit_edge ], [ %i.t, %bb.p ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ah = sext i32 %i.e to i64                    ; 4 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !10
  tail call void %i.ai(ptr noundef nonnull %i.d, ptr noundef %i.ae, ptr noundef %i.ae, i64 noundef 8) #16
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 8) #16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !31
  %.idx = shl nsw i64 %i.ah, 4
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !31
  %.idx165 = mul nsw i64 %i.ah, 24
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx165 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 8) #16
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !31
  %.idx166 = shl nsw i64 %i.ah, 5
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx166 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 8) #16
  %i.az = icmp sgt i32 %i.i, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.ba = add i32 %i.f, %i.ad
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !24
  %i.be = fsub nsz float %i.bd, %i.ac
  %i.bf = add nsw i32 %i.x, %i.g
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !24
  %i.bj = add i32 %i.g, %i.ad
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !24
  %i.bn = fadd nsz float %i.bi, %i.bm
  %i.bo = fneg nsz float %i.bn
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bp = add i32 %i.r, %i.ad
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !24
  %i.bt = fadd nsz float %i.ac, %i.bs
  %i.bu = fneg nsz float %i.bt
  %i.bv = sub nuw nsw i32 %i.x, %i.f
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !24
  %i.bz = add i32 %i.g, %i.ad
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !24
  %i.cd = fsub nsz float %i.by, %i.cc
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz float [ %i.be, %bb.b ], [ %i.bu, %bb.c ]
  %.sroa.6.0 = phi nsz float [ %i.bo, %bb.b ], [ %i.cd, %bb.c ] ; 2 uses
  %i.ce = ashr i32 %i.x, 1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cf
  %i.ch = load <2 x float>, ptr %i.cg, align 4, !tbaa !24 ; 3 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = extractelement <2 x float> %i.ch, i64 1
  %i.ck = fneg nsz float %i.cj
  %i.cl = fmul nsz float %.sroa.6.0, %i.ck
  %i.cm = extractelement <2 x float> %i.ch, i64 0
  %i.cn = fmul nsz float %.sroa.6.0, %i.cm
  %i.co = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cl, i64 1
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.ci, <2 x float> %i.cr) ; 5 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12 ; 6 uses
  %i.cw = icmp slt i32 %i.cv, %i.f
  %i.cx = add nsw i32 %i.cv, %i.f
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !24 ; 2 uses
  %i.db = xor i32 %i.cv, -1                       ; 4 uses
  br i1 %i.cw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dc = add i32 %i.r, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !24
  %i.dg = fadd nsz float %i.da, %i.df
  %i.dh = fneg nsz float %i.dg
  %i.di = sub nuw nsw i32 %i.cv, %i.f
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !24
  %i.dm = add i32 %i.g, %i.db
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !24
  %i.dq = fsub nsz float %i.dl, %i.dp
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dr = add i32 %i.f, %i.db
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !24
  %i.dv = fsub nsz float %i.du, %i.da
  %i.dw = add nsw i32 %i.cv, %i.g
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dx
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !24
  %i.ea = add i32 %i.g, %i.db
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !24
  %i.ee = fadd nsz float %i.dz, %i.ed
  %i.ef = fneg nsz float %i.ee
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz float [ %i.dv, %bb.f ], [ %i.dh, %bb.e ]
  %.sroa.6.0.1 = phi nsz float [ %i.ef, %bb.f ], [ %i.dq, %bb.e ] ; 2 uses
  %i.eg = ashr i32 %i.cv, 1
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.eh
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !24 ; 3 uses
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.el = extractelement <2 x float> %i.ej, i64 1
  %i.em = fneg nsz float %i.el
  %i.en = fmul nsz float %.sroa.6.0.1, %i.em
  %i.eo = extractelement <2 x float> %i.ej, i64 0
  %i.ep = fmul nsz float %.sroa.6.0.1, %i.eo
  %i.eq = insertelement <2 x float> poison, float %.sroa.077.0.1, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.en, i64 1
  %i.eu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.ek, <2 x float> %i.et) ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !12 ; 6 uses
  %i.ey = icmp slt i32 %i.ex, %i.f
  %i.ez = add nsw i32 %i.ex, %i.f
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !24 ; 2 uses
  %i.fd = xor i32 %i.ex, -1                       ; 4 uses
  br i1 %i.ey, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fe = add i32 %i.r, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !24
  %i.fi = fadd nsz float %i.fc, %i.fh
  %i.fj = fneg nsz float %i.fi
  %i.fk = sub nuw nsw i32 %i.ex, %i.f
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !24
  %i.fo = add i32 %i.g, %i.fd
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !24
  %i.fs = fsub nsz float %i.fn, %i.fr
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ft = add i32 %i.f, %i.fd
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !24
  %i.fx = fsub nsz float %i.fw, %i.fc
  %i.fy = add nsw i32 %i.ex, %i.g
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !24
  %i.gc = add i32 %i.g, %i.fd
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !24
  %i.gg = fadd nsz float %i.gb, %i.gf
  %i.gh = fneg nsz float %i.gg
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.077.0.2 = phi nsz float [ %i.fx, %bb.i ], [ %i.fj, %bb.h ]
  %.sroa.6.0.2 = phi nsz float [ %i.gh, %bb.i ], [ %i.fs, %bb.h ] ; 2 uses
  %i.gi = ashr i32 %i.ex, 1
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gj
  %i.gl = load <2 x float>, ptr %i.gk, align 4, !tbaa !24 ; 3 uses
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = extractelement <2 x float> %i.gl, i64 1
  %i.go = fneg nsz float %i.gn
  %i.gp = fmul nsz float %.sroa.6.0.2, %i.go
  %i.gq = extractelement <2 x float> %i.gl, i64 0
  %i.gr = fmul nsz float %.sroa.6.0.2, %i.gq
  %i.gs = insertelement <2 x float> poison, float %.sroa.077.0.2, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gp, i64 1
  %i.gw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gm, <2 x float> %i.gv) ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !12 ; 6 uses
  %i.ha = icmp slt i32 %i.gz, %i.f
  %i.hb = add nsw i32 %i.gz, %i.f
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hc
  %i.he = load float, ptr %i.hd, align 4, !tbaa !24 ; 2 uses
  %i.hf = xor i32 %i.gz, -1                       ; 4 uses
  br i1 %i.ha, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hg = add i32 %i.r, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !24
  %i.hk = fadd nsz float %i.he, %i.hj
  %i.hl = fneg nsz float %i.hk
  %i.hm = sub nuw nsw i32 %i.gz, %i.f
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !24
  %i.hq = add i32 %i.g, %i.hf
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !24
  %i.hu = fsub nsz float %i.hp, %i.ht
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hv = add i32 %i.f, %i.hf
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !24
  %i.hz = fsub nsz float %i.hy, %i.he
  %i.ia = add nsw i32 %i.gz, %i.g
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !24
  %i.ie = add i32 %i.g, %i.hf
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %2, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !24
  %i.ii = fadd nsz float %i.id, %i.ih
  %i.ij = fneg nsz float %i.ii
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.077.0.3 = phi nsz float [ %i.hz, %bb.l ], [ %i.hl, %bb.k ]
  %.sroa.6.0.3 = phi nsz float [ %i.ij, %bb.l ], [ %i.hu, %bb.k ] ; 2 uses
  %i.ik = ashr i32 %i.gz, 1
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.il
  %i.in = load <2 x float>, ptr %i.im, align 4, !tbaa !24 ; 3 uses
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ip = extractelement <2 x float> %i.in, i64 1
  %i.iq = fneg nsz float %i.ip
  %i.ir = fmul nsz float %.sroa.6.0.3, %i.iq
  %i.is = extractelement <2 x float> %i.in, i64 0
  %i.it = fmul nsz float %.sroa.6.0.3, %i.is
  %i.iu = insertelement <2 x float> poison, float %.sroa.077.0.3, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = insertelement <2 x float> poison, float %i.it, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.ir, i64 1
  %i.iy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.io, <2 x float> %i.ix) ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !12 ; 6 uses
  %i.jc = icmp slt i32 %i.jb, %i.f
  %i.jd = add nsw i32 %i.jb, %i.f
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !24 ; 2 uses
  %i.jh = xor i32 %i.jb, -1                       ; 4 uses
  br i1 %i.jc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ji = add i32 %i.r, %i.jh
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jj
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !24
  %i.jm = fadd nsz float %i.jg, %i.jl
  %i.jn = fneg nsz float %i.jm
  %i.jo = sub nuw nsw i32 %i.jb, %i.f
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jp
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !24
  %i.js = add i32 %i.g, %i.jh
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !24
  %i.jw = fsub nsz float %i.jr, %i.jv
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.jx = add i32 %i.f, %i.jh
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !24
  %i.kb = fsub nsz float %i.ka, %i.jg
  %i.kc = add nsw i32 %i.jb, %i.g
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !24
  %i.kg = add i32 %i.g, %i.jh
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kh
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !24
  %i.kk = fadd nsz float %i.kf, %i.kj
  %i.kl = fneg nsz float %i.kk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.077.0.4 = phi nsz float [ %i.kb, %bb.o ], [ %i.jn, %bb.n ]
  %.sroa.6.0.4 = phi nsz float [ %i.kl, %bb.o ], [ %i.jw, %bb.n ] ; 2 uses
  %i.km = ashr i32 %i.jb, 1
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !12
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.kr ; 5 uses
  %i.kt = fsub nsz <2 x float> %i.gw, %i.iy       ; 2 uses
  %i.ku = fadd nsz <2 x float> %i.gw, %i.iy       ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.u
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx88.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx89.i
  %i.kz = load <2 x float>, ptr %i.ko, align 4, !tbaa !24 ; 3 uses
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lb = extractelement <2 x float> %i.kz, i64 1
  %i.lc = fneg nsz float %i.lb
  %i.ld = fmul nsz float %.sroa.6.0.4, %i.lc
  %i.le = extractelement <2 x float> %i.kz, i64 0
  %i.lf = fmul nsz float %.sroa.6.0.4, %i.le
  %i.lg = insertelement <2 x float> poison, float %.sroa.077.0.4, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.ld, i64 1
  %i.lk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.la, <2 x float> %i.lj) ; 2 uses
  %i.ll = fsub nsz <2 x float> %i.eu, %i.lk       ; 2 uses
  %i.lm = fadd nsz <2 x float> %i.eu, %i.lk       ; 3 uses
  %i.ln = fadd nsz <2 x float> %i.cs, %i.lm
  %i.lo = fadd nsz <2 x float> %i.ln, %i.ku
  store <2 x float> %i.lo, ptr %i.ks, align 4, !tbaa !24
  %i.lp = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %i.lq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.lr = fneg nsz <2 x float> %i.ku
  %i.ls = shufflevector <4 x float> %i.lq, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lt = fmul nsz <2 x float> %i.ls, %i.lr
  %i.lu = shufflevector <4 x float> %i.lp, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.lm, <2 x float> %i.lt) ; 2 uses
  %i.lw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %i.lx = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lz = fmul nsz <2 x float> %i.kt, %i.ly
  %i.ma = shufflevector <4 x float> %i.lw, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.ll, <2 x float> %i.lz)
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.md = fsub nsz <2 x float> %i.lv, %i.mc       ; 2 uses
  %i.me = fadd nsz <2 x float> %i.lv, %i.mc       ; 2 uses
  %i.mf = shufflevector <2 x float> %i.md, <2 x float> %i.me, <2 x i32> <i32 0, i32 3>
  %i.mg = shufflevector <2 x float> %i.me, <2 x float> %i.md, <2 x i32> <i32 0, i32 3>
  %i.mh = fadd nsz <2 x float> %i.cs, %i.mg
  store <2 x float> %i.mh, ptr %i.kv, align 4, !tbaa !24
  %i.mi = fneg nsz <2 x float> %i.lm
  %i.mj = fmul nsz <2 x float> %i.ls, %i.mi
  %i.mk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.ku, <2 x float> %i.mj) ; 2 uses
  %i.ml = fneg nsz <2 x float> %i.ll
  %i.mm = fmul nsz <2 x float> %i.ly, %i.ml
  %i.mn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.kt, <2 x float> %i.mm)
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mp = fadd nsz <2 x float> %i.mk, %i.mo       ; 2 uses
  %i.mq = fsub nsz <2 x float> %i.mk, %i.mo       ; 2 uses
  %i.mr = shufflevector <2 x float> %i.mp, <2 x float> %i.mq, <2 x i32> <i32 0, i32 3>
  %i.ms = shufflevector <2 x float> %i.mq, <2 x float> %i.mp, <2 x i32> <i32 0, i32 3>
  %i.mt = fadd nsz <2 x float> %i.cs, %i.ms
  store <2 x float> %i.mt, ptr %i.kw, align 4, !tbaa !24
  %i.mu = fadd nsz <2 x float> %i.cs, %i.mr
  store <2 x float> %i.mu, ptr %i.kx, align 4, !tbaa !24
  %i.mv = fadd nsz <2 x float> %i.cs, %i.mf
  store <2 x float> %i.mv, ptr %i.ky, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.preheader136, label %.preheader137, !llvm.loop !98

.lr.ph:                                           ; preds = %.preheader136
  %i.mw = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %i.mx = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count151 = zext nneg i32 %i.i to i64
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q, %.preheader136
  ret void

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv148 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next149, %bb.q ] ; 3 uses
  %i.my = add nuw nsw i64 %indvars.iv148, %i.mx   ; 3 uses
  %i.mz = xor i64 %indvars.iv148, -1
  %i.na = add nsw i64 %i.mx, %i.mz                ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.my
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !12
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.na
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !12
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.nf ; 2 uses
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !28 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !29 ; 2 uses
  %i.nk = sext i32 %i.nc to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.nk ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !28 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !29 ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.my ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4 ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !29
  %i.ns = load float, ptr %i.np, align 4, !tbaa !28
  %i.nt = fneg nsz float %i.ns
  %i.nu = fmul nsz float %i.no, %i.nt
  %i.nv = tail call nsz float @llvm.fmuladd.f32(float %i.nm, float %i.nr, float %i.nu)
  %i.nw = shl nsw i64 %i.na, 1
  %i.nx = mul nsw i64 %i.p, %i.nw
  %i.ny = getelementptr [4 x i8], ptr %1, i64 %i.nx ; 2 uses
  %i.nz = getelementptr [4 x i8], ptr %i.ny, i64 %i.p
  store float %i.nv, ptr %i.nz, align 4, !tbaa !24
  %i.oa = load float, ptr %i.np, align 4, !tbaa !28
  %i.ob = load float, ptr %i.nq, align 4, !tbaa !29
  %i.oc = fmul nsz float %i.no, %i.ob
  %i.od = tail call nsz float @llvm.fmuladd.f32(float %i.nm, float %i.oa, float %i.oc)
  %i.oe = shl nuw nsw i64 %i.my, 1
  %i.of = mul nuw nsw i64 %i.p, %i.oe
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.of ; 2 uses
  store float %i.od, ptr %i.og, align 4, !tbaa !24
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.na ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !29
  %i.ok = load float, ptr %i.oh, align 4, !tbaa !28
  %i.ol = fneg nsz float %i.ok
  %i.om = fmul nsz float %i.nj, %i.ol
  %i.on = tail call nsz float @llvm.fmuladd.f32(float %i.nh, float %i.oj, float %i.om)
  %i.oo = getelementptr [4 x i8], ptr %i.og, i64 %i.p
  store float %i.on, ptr %i.oo, align 4, !tbaa !24
  %i.op = load float, ptr %i.oh, align 4, !tbaa !28
  %i.oq = load float, ptr %i.oi, align 4, !tbaa !29
  %i.or = fmul nsz float %i.nj, %i.oq
  %i.os = tail call nsz float @llvm.fmuladd.f32(float %i.nh, float %i.op, float %i.or)
  store float %i.os, ptr %i.ny, align 4, !tbaa !24
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.q, !llvm.loop !99
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_7xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [7 x %struct.AVComplexFloat], align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 7                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 21                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = zext nneg i32 %i.e to i64                ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx163.i = mul nuw nsw i64 %i.u, 24
  %.idx164.i = shl nuw nsw i64 %i.u, 5
  %.idx165.i = mul nuw nsw i64 %i.u, 40
  %.idx166.i = mul nuw nsw i64 %i.u, 48
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 28
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ac = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.af = sext i32 %i.e to i64                    ; 6 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  tail call void %i.ag(ptr noundef %i.ac, ptr noundef %i.ah, ptr noundef %i.ah, i64 noundef 8) #16
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.af ; 2 uses
  tail call void %i.ai(ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.al, i64 noundef 8) #16
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx160 = shl nsw i64 %i.af, 4
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx160 ; 2 uses
  tail call void %i.am(ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ap, i64 noundef 8) #16
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx161 = mul nsw i64 %i.af, 24
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.idx161 ; 2 uses
  tail call void %i.aq(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.at, i64 noundef 8) #16
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx162 = shl nsw i64 %i.af, 5
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx162 ; 2 uses
  tail call void %i.au(ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.ax, i64 noundef 8) #16
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx163 = mul nsw i64 %i.af, 40
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %.idx163 ; 2 uses
  tail call void %i.ay(ptr noundef %i.az, ptr noundef %i.bb, ptr noundef %i.bb, i64 noundef 8) #16
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx164 = mul nsw i64 %i.af, 48
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %.idx164 ; 2 uses
  tail call void %i.bc(ptr noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bf, i64 noundef 8) #16
  %i.bg = icmp sgt i32 %i.i, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bj ; 7 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx163.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx164.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx165.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx166.i
  %i.br = load <2 x float>, ptr %4, align 16, !tbaa !24 ; 7 uses
  %i.bs = load <2 x float>, ptr %i.v, align 8, !tbaa !24 ; 3 uses
  %i.bt = load <2 x float>, ptr %i.w, align 16, !tbaa !24 ; 3 uses
  %i.bu = fadd nsz <2 x float> %i.bs, %i.bt       ; 3 uses
  %i.bv = load <2 x float>, ptr %i.x, align 16, !tbaa !24 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.y, align 8, !tbaa !24 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.z, align 4, !tbaa !24 ; 2 uses
  %i.by = load <2 x float>, ptr %i.ab, align 4, !tbaa !24 ; 2 uses
  %i.bz = fsub nsz <2 x float> %i.bv, %i.bw       ; 4 uses
  %i.ca = load <2 x float>, ptr %i.aa, align 4, !tbaa !24 ; 4 uses
  %i.cb = shufflevector <2 x float> %i.bs, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.cc = shufflevector <2 x float> %i.bt, <2 x float> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cd = fsub nsz <2 x float> %i.cb, %i.cc       ; 4 uses
  %i.ce = shufflevector <2 x float> %i.bw, <2 x float> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cf = fadd nsz <2 x float> %i.bx, %i.ce       ; 3 uses
  %i.cg = shufflevector <2 x float> %i.ca, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <2 x float> %i.by, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.ci = fsub nsz <2 x float> %i.cg, %i.ch       ; 4 uses
  %i.cj = shufflevector <2 x float> %i.ca, <2 x float> %i.bv, <2 x i32> <i32 2, i32 0>
  %i.ck = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = fadd nsz <2 x float> %i.cj, %i.ck       ; 3 uses
  %i.cm = fadd nsz <2 x float> %i.br, %i.bu
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> %i.cf, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.co = fadd nsz <2 x float> %i.cm, %i.cn
  %i.cp = shufflevector <2 x float> %i.cf, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.cq = fadd nsz <2 x float> %i.co, %i.cp
  store <2 x float> %i.cq, ptr %i.bk, align 4, !tbaa !24
  %i.cr = load <4 x float>, ptr @ff_tx_tab_7_float, align 16
  %i.cs = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 4), align 4, !tbaa !24 ; 5 uses
  %i.ct = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 8), align 8
  %i.cu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 16), align 16, !tbaa !24 ; 3 uses
  %i.cv = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 20), align 4, !tbaa !29 ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cs, <2 x float> %i.cu, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cx = fneg nsz <2 x float> %i.cw              ; 3 uses
  %i.cy = fneg nsz <2 x float> %i.cf
  %i.cz = fmul nsz <2 x float> %i.cw, %i.cy
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.db = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.bu, <2 x float> %i.da)
  %i.dd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cl, <2 x float> %i.dc) ; 2 uses
  %i.de = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 12), align 4, !tbaa !29 ; 2 uses
  %i.df = extractelement <2 x float> %i.cs, i64 0
  %i.dg = fneg nsz float %i.df
  %i.dh = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = fneg nsz float %i.de
  %i.dj = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = fmul nsz <2 x float> %i.bz, %i.dk
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = shufflevector <2 x float> %i.cu, <2 x float> %i.cs, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.do = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.ci, <2 x float> %i.dm)
  %i.dp = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.cd, <2 x float> %i.do) ; 2 uses
  %i.dr = fsub nsz <2 x float> %i.dd, %i.dq       ; 2 uses
  %i.ds = fadd nsz <2 x float> %i.dd, %i.dq       ; 2 uses
  %i.dt = shufflevector <2 x float> %i.dr, <2 x float> %i.ds, <2 x i32> <i32 0, i32 3>
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> %i.dr, <2 x i32> <i32 0, i32 3>
  %i.dv = fadd nsz <2 x float> %i.br, %i.du
  store <2 x float> %i.dv, ptr %i.bl, align 4, !tbaa !24
  %i.dw = fneg nsz <2 x float> %i.bu              ; 2 uses
  %i.dx = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul nsz <2 x float> %i.dx, %i.dw
  %i.dz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.cp, <2 x float> %i.dy)
  %i.ea = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.cn, <2 x float> %i.dz) ; 2 uses
  %i.ec = shufflevector <2 x float> %i.bz, <2 x float> %i.cd, <2 x i32> <i32 1, i32 3>
  %i.ed = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ee = insertelement <2 x float> %i.ed, float %i.cv, i64 0
  %i.ef = fmul nsz <2 x float> %i.ec, %i.ee
  %i.eg = insertelement <2 x float> %i.cs, float %i.cv, i64 1
  %i.eh = shufflevector <2 x float> %i.ci, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.ei = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.eh, <2 x float> %i.ef)
  %i.ej = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x float> %i.cd, <2 x float> %i.ci, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.em = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.ei) ; 2 uses
  %i.en = fadd nsz <2 x float> %i.eb, %i.em       ; 2 uses
  %i.eo = fsub nsz <2 x float> %i.eb, %i.em       ; 2 uses
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3>
  %i.eq = shufflevector <2 x float> %i.eo, <2 x float> %i.en, <2 x i32> <i32 0, i32 3>
  %i.er = fadd nsz <2 x float> %i.br, %i.eq
  store <2 x float> %i.er, ptr %i.bm, align 4, !tbaa !24
  %i.es = shufflevector <2 x float> %i.ci, <2 x float> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.et = fmul nsz <2 x float> %i.es, %i.dk
  %i.eu = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.el, <2 x float> %i.et)
  %i.ex = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.dh, <2 x float> %i.ew) ; 2 uses
  %i.fa = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul nsz <2 x float> %i.fa, %i.dw
  %i.fc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.cn, <2 x float> %i.fb)
  %i.fd = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.cp, <2 x float> %i.fc) ; 2 uses
  %i.ff = fsub nsz <2 x float> %i.fe, %i.ez       ; 2 uses
  %i.fg = fadd nsz <2 x float> %i.fe, %i.ez       ; 2 uses
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> %i.fg, <2 x i32> <i32 0, i32 3>
  %i.fi = shufflevector <2 x float> %i.fg, <2 x float> %i.ff, <2 x i32> <i32 0, i32 3>
  %i.fj = fadd nsz <2 x float> %i.br, %i.fi
  store <2 x float> %i.fj, ptr %i.bn, align 4, !tbaa !24
  %i.fk = fadd nsz <2 x float> %i.br, %i.fh
  store <2 x float> %i.fk, ptr %i.bo, align 4, !tbaa !24
  %i.fl = fadd nsz <2 x float> %i.br, %i.ep
  store <2 x float> %i.fl, ptr %i.bp, align 4, !tbaa !24
  %i.fm = fadd nsz <2 x float> %i.br, %i.dt
  store <2 x float> %i.fm, ptr %i.bq, align 4, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !100

bb.c:                                             ; preds = %.preheader137, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fn = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.fo = icmp slt i32 %i.fn, %i.f
  %i.fp = add nsw i32 %i.fn, %i.f
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !24 ; 2 uses
  %i.ft = xor i32 %i.fn, -1                       ; 4 uses
  br i1 %i.fo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fu = add i32 %i.f, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !24
  %i.fy = fsub nsz float %i.fx, %i.fs
  %i.fz = add nsw i32 %i.fn, %i.g
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !24
  %i.gd = add i32 %i.g, %i.ft
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !24
  %i.gh = fadd nsz float %i.gc, %i.gg
  %i.gi = fneg nsz float %i.gh
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.gj = add i32 %i.r, %i.ft
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !24
  %i.gn = fadd nsz float %i.fs, %i.gm
  %i.go = fneg nsz float %i.gn
  %i.gp = sub nuw nsw i32 %i.fn, %i.f
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !24
  %i.gt = add i32 %i.g, %i.ft
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gu
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !24
  %i.gx = fsub nsz float %i.gs, %i.gw
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.077.0 = phi nsz float [ %i.fy, %bb.d ], [ %i.go, %bb.e ]
  %.sroa.6.0 = phi nsz float [ %i.gi, %bb.d ], [ %i.gx, %bb.e ] ; 2 uses
  %i.gy = ashr i32 %i.fn, 1
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.hc = load <2 x float>, ptr %i.ha, align 4, !tbaa !24 ; 3 uses
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.he = extractelement <2 x float> %i.hc, i64 1
  %i.hf = fneg nsz float %i.he
  %i.hg = fmul nsz float %.sroa.6.0, %i.hf
  %i.hh = extractelement <2 x float> %i.hc, i64 0
  %i.hi = fmul nsz float %.sroa.6.0, %i.hh
  %i.hj = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.hg, i64 1
  %i.hn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.hd, <2 x float> %i.hm)
  store <2 x float> %i.hn, ptr %i.hb, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !101

.lr.ph:                                           ; preds = %.preheader136
  %i.ho = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %i.hp = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.hq = add nuw nsw i64 %indvars.iv151, %i.hp   ; 3 uses
  %i.hr = xor i64 %indvars.iv151, -1
  %i.hs = add nsw i64 %i.hp, %i.hr                ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hq
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !12
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.hs
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !12
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hx ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !28 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !29 ; 2 uses
  %i.ic = sext i32 %i.hu to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.ic ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !28 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.ig = load float, ptr %i.if, align 4, !tbaa !29 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hq ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4 ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !29
  %i.ik = load float, ptr %i.ih, align 4, !tbaa !28
  %i.il = fneg nsz float %i.ik
  %i.im = fmul nsz float %i.ig, %i.il
  %i.in = tail call nsz float @llvm.fmuladd.f32(float %i.ie, float %i.ij, float %i.im)
  %i.io = shl nsw i64 %i.hs, 1
  %i.ip = mul nsw i64 %i.p, %i.io
  %i.iq = getelementptr [4 x i8], ptr %1, i64 %i.ip ; 2 uses
  %i.ir = getelementptr [4 x i8], ptr %i.iq, i64 %i.p
  store float %i.in, ptr %i.ir, align 4, !tbaa !24
  %i.is = load float, ptr %i.ih, align 4, !tbaa !28
  %i.it = load float, ptr %i.ii, align 4, !tbaa !29
  %i.iu = fmul nsz float %i.ig, %i.it
  %i.iv = tail call nsz float @llvm.fmuladd.f32(float %i.ie, float %i.is, float %i.iu)
  %i.iw = shl nuw nsw i64 %i.hq, 1
  %i.ix = mul nuw nsw i64 %i.p, %i.iw
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ix ; 2 uses
  store float %i.iv, ptr %i.iy, align 4, !tbaa !24
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hs ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !29
  %i.jc = load float, ptr %i.iz, align 4, !tbaa !28
  %i.jd = fneg nsz float %i.jc
  %i.je = fmul nsz float %i.ib, %i.jd
  %i.jf = tail call nsz float @llvm.fmuladd.f32(float %i.hz, float %i.jb, float %i.je)
  %i.jg = getelementptr [4 x i8], ptr %i.iy, i64 %i.p
  store float %i.jf, ptr %i.jg, align 4, !tbaa !24
  %i.jh = load float, ptr %i.iz, align 4, !tbaa !28
  %i.ji = load float, ptr %i.ja, align 4, !tbaa !29
  %i.jj = fmul nsz float %i.ib, %i.ji
  %i.jk = tail call nsz float @llvm.fmuladd.f32(float %i.hz, float %i.jh, float %i.jj)
  store float %i.jk, ptr %i.iq, align 4, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !102
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [9 x %struct.AVComplexFloat], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 9                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 27                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = zext nneg i32 %i.e to i64                ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx196.i = mul nuw nsw i64 %i.u, 24
  %.idx197.i = shl nuw nsw i64 %i.u, 5
  %.idx198.i = mul nuw nsw i64 %i.u, 40
  %.idx199.i = mul nuw nsw i64 %i.u, 48
  %.idx200.i = mul nuw nsw i64 %i.u, 56
  %.idx201.i = shl nuw nsw i64 %i.u, 6
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 36
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ad = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ag = sext i32 %i.e to i64                    ; 8 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  tail call void %i.ah(ptr noundef %i.ad, ptr noundef %i.ai, ptr noundef %i.ai, i64 noundef 8) #16
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ag ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 8) #16
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx160 = shl nsw i64 %i.ag, 4
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx160 ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx161 = mul nsw i64 %i.ag, 24
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx161 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 8) #16
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx162 = shl nsw i64 %i.ag, 5
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx162 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 8) #16
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx163 = mul nsw i64 %i.ag, 40
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.idx163 ; 2 uses
  tail call void %i.az(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef %i.bc, i64 noundef 8) #16
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx164 = mul nsw i64 %i.ag, 48
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %.idx164 ; 2 uses
  tail call void %i.bd(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bg, i64 noundef 8) #16
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx165 = mul nsw i64 %i.ag, 56
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx165 ; 2 uses
  tail call void %i.bh(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk, i64 noundef 8) #16
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx166 = shl nsw i64 %i.ag, 6
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %.idx166 ; 2 uses
  tail call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bo, i64 noundef 8) #16
  %i.bp = icmp sgt i32 %i.i, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bs ; 9 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx196.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx197.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx198.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx199.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx200.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx201.i
  %i.cc = load <2 x float>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.v, align 8, !tbaa !24 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.w, align 16, !tbaa !24 ; 2 uses
  %i.cf = fsub nsz <2 x float> %i.cd, %i.ce       ; 2 uses
  %i.cg = fadd nsz <2 x float> %i.cd, %i.ce       ; 2 uses
  %i.ch = load <2 x float>, ptr %i.x, align 16, !tbaa !24 ; 2 uses
  %i.ci = load <2 x float>, ptr %i.y, align 8, !tbaa !24 ; 2 uses
  %i.cj = fsub nsz <2 x float> %i.ch, %i.ci       ; 2 uses
  %i.ck = fadd nsz <2 x float> %i.ch, %i.ci       ; 2 uses
  %i.cl = load <2 x float>, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.cn = fsub nsz <2 x float> %i.cl, %i.cm
  %i.co = fadd nsz <2 x float> %i.cl, %i.cm       ; 2 uses
  %i.cp = load <2 x float>, ptr %i.ab, align 16, !tbaa !24 ; 2 uses
  %i.cq = load <2 x float>, ptr %i.ac, align 8, !tbaa !24 ; 2 uses
  %i.cr = fsub nsz <2 x float> %i.cp, %i.cq       ; 3 uses
  %i.cs = fadd nsz <2 x float> %i.cp, %i.cq       ; 3 uses
  %i.ct = fsub nsz <2 x float> %i.cg, %i.cs       ; 2 uses
  %i.cu = fsub nsz <2 x float> %i.ck, %i.cs       ; 2 uses
  %i.cv = fsub nsz <2 x float> %i.cf, %i.cr       ; 2 uses
  %i.cw = fadd nsz <2 x float> %i.cj, %i.cr       ; 2 uses
  %i.cx = fneg nsz <2 x float> %i.cu
  %i.cy = fneg nsz <2 x float> %i.cw
  %i.cz = fadd nsz <2 x float> %i.cc, %i.co       ; 2 uses
  %i.da = fadd nsz <2 x float> %i.cg, %i.ck
  %i.db = fadd nsz <2 x float> %i.da, %i.cs       ; 2 uses
  %i.dc = fadd nsz <2 x float> %i.cz, %i.db
  store <2 x float> %i.dc, ptr %i.bt, align 4, !tbaa !24
  %i.dd = load <6 x float>, ptr @ff_tx_tab_9_float, align 16, !tbaa !24 ; 6 uses
  %i.de = fsub nsz <2 x float> %i.cf, %i.cj
  %i.df = fadd nsz <2 x float> %i.de, %i.cr
  %i.dg = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dh = fmul nsz <2 x float> %i.df, %i.dg
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dj = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.db, <2 x float> %i.cz) ; 2 uses
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.co, <2 x float> %i.cc) ; 3 uses
  %i.dm = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.dn = fmul nsz <2 x float> %i.cu, %i.dm
  %i.do = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.ct, <2 x float> %i.dn) ; 2 uses
  %i.dq = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.dr = fmul nsz <2 x float> %i.cw, %i.dq
  %i.ds = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.cv, <2 x float> %i.dr) ; 2 uses
  %i.du = fmul nsz <2 x float> %i.cn, %i.dg       ; 3 uses
  %i.dv = fadd nsz <2 x float> %i.dl, %i.dp       ; 2 uses
  %i.dw = fadd nsz <2 x float> %i.du, %i.dt
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dy = fsub nsz <2 x float> %i.dk, %i.di       ; 2 uses
  %i.dz = fadd nsz <2 x float> %i.dk, %i.di       ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.eb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_float, i64 24), align 8, !tbaa !24 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul nsz <2 x float> %i.ec, %i.cx
  %i.ee = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.ct, <2 x float> %i.ed) ; 2 uses
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = fmul nsz <2 x float> %i.ef, %i.cy
  %i.eh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.cv, <2 x float> %i.eg) ; 2 uses
  %i.ei = fadd nsz <2 x float> %i.dl, %i.ee       ; 2 uses
  %i.ej = fsub nsz <2 x float> %i.eh, %i.du
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.el = fadd nsz <2 x float> %i.dv, %i.dx       ; 2 uses
  %i.em = fsub nsz <2 x float> %i.dv, %i.dx       ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.en, ptr %i.bu, align 4, !tbaa !24
  %i.eo = fadd nsz <2 x float> %i.ei, %i.ek       ; 2 uses
  %i.ep = fsub nsz <2 x float> %i.ei, %i.ek       ; 2 uses
  %i.eq = shufflevector <2 x float> %i.eo, <2 x float> %i.ep, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.eq, ptr %i.bv, align 4, !tbaa !24
  %i.er = shufflevector <2 x float> %i.dz, <2 x float> %i.dy, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.er, ptr %i.bw, align 4, !tbaa !24
  %i.es = fadd nsz <2 x float> %i.dp, %i.ee
  %i.et = fsub nsz <2 x float> %i.dl, %i.es       ; 2 uses
  %i.eu = fsub nsz <2 x float> %i.eh, %i.dt
  %i.ev = fadd nsz <2 x float> %i.du, %i.eu
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ex = fadd nsz <2 x float> %i.et, %i.ew       ; 2 uses
  %i.ey = fsub nsz <2 x float> %i.et, %i.ew       ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ez, ptr %i.bx, align 4, !tbaa !24
  %i.fa = shufflevector <2 x float> %i.ey, <2 x float> %i.ex, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.fa, ptr %i.by, align 4, !tbaa !24
  store <2 x float> %i.ea, ptr %i.bz, align 4, !tbaa !24
  %i.fb = shufflevector <2 x float> %i.ep, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.fb, ptr %i.ca, align 4, !tbaa !24
  %i.fc = shufflevector <2 x float> %i.em, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.fc, ptr %i.cb, align 4, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !103

bb.c:                                             ; preds = %.preheader137, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fd = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.fe = icmp slt i32 %i.fd, %i.f
  %i.ff = add nsw i32 %i.fd, %i.f
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !24 ; 2 uses
  %i.fj = xor i32 %i.fd, -1                       ; 4 uses
  br i1 %i.fe, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fk = add i32 %i.f, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !24
  %i.fo = fsub nsz float %i.fn, %i.fi
  %i.fp = add nsw i32 %i.fd, %i.g
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !24
  %i.ft = add i32 %i.g, %i.fj
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !24
  %i.fx = fadd nsz float %i.fs, %i.fw
  %i.fy = fneg nsz float %i.fx
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.fz = add i32 %i.r, %i.fj
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !24
  %i.gd = fadd nsz float %i.fi, %i.gc
  %i.ge = fneg nsz float %i.gd
  %i.gf = sub nuw nsw i32 %i.fd, %i.f
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !24
  %i.gj = add i32 %i.g, %i.fj
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !24
  %i.gn = fsub nsz float %i.gi, %i.gm
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.077.0 = phi nsz float [ %i.fo, %bb.d ], [ %i.ge, %bb.e ]
  %.sroa.6.0 = phi nsz float [ %i.fy, %bb.d ], [ %i.gn, %bb.e ] ; 2 uses
  %i.go = ashr i32 %i.fd, 1
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.gs = load <2 x float>, ptr %i.gq, align 4, !tbaa !24 ; 3 uses
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gu = extractelement <2 x float> %i.gs, i64 1
  %i.gv = fneg nsz float %i.gu
  %i.gw = fmul nsz float %.sroa.6.0, %i.gv
  %i.gx = extractelement <2 x float> %i.gs, i64 0
  %i.gy = fmul nsz float %.sroa.6.0, %i.gx
  %i.gz = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hc = insertelement <2 x float> %i.hb, float %i.gw, i64 1
  %i.hd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.gt, <2 x float> %i.hc)
  store <2 x float> %i.hd, ptr %i.gr, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !104

.lr.ph:                                           ; preds = %.preheader136
  %i.he = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.hf = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.hg = add nuw nsw i64 %indvars.iv151, %i.hf   ; 3 uses
  %i.hh = xor i64 %indvars.iv151, -1
  %i.hi = add nsw i64 %i.hf, %i.hh                ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hg
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !12
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.hi
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !12
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hn ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !28 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !29 ; 2 uses
  %i.hs = sext i32 %i.hk to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hs ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !28 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !29 ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hg ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !29
  %i.ia = load float, ptr %i.hx, align 4, !tbaa !28
  %i.ib = fneg nsz float %i.ia
  %i.ic = fmul nsz float %i.hw, %i.ib
  %i.id = tail call nsz float @llvm.fmuladd.f32(float %i.hu, float %i.hz, float %i.ic)
  %i.ie = shl nsw i64 %i.hi, 1
  %i.if = mul nsw i64 %i.p, %i.ie
  %i.ig = getelementptr [4 x i8], ptr %1, i64 %i.if ; 2 uses
  %i.ih = getelementptr [4 x i8], ptr %i.ig, i64 %i.p
  store float %i.id, ptr %i.ih, align 4, !tbaa !24
  %i.ii = load float, ptr %i.hx, align 4, !tbaa !28
  %i.ij = load float, ptr %i.hy, align 4, !tbaa !29
  %i.ik = fmul nsz float %i.hw, %i.ij
  %i.il = tail call nsz float @llvm.fmuladd.f32(float %i.hu, float %i.ii, float %i.ik)
  %i.im = shl nuw nsw i64 %i.hg, 1
  %i.in = mul nuw nsw i64 %i.p, %i.im
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.in ; 2 uses
  store float %i.il, ptr %i.io, align 4, !tbaa !24
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hi ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4 ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !29
  %i.is = load float, ptr %i.ip, align 4, !tbaa !28
  %i.it = fneg nsz float %i.is
  %i.iu = fmul nsz float %i.hr, %i.it
  %i.iv = tail call nsz float @llvm.fmuladd.f32(float %i.hp, float %i.ir, float %i.iu)
  %i.iw = getelementptr [4 x i8], ptr %i.io, i64 %i.p
  store float %i.iv, ptr %i.iw, align 4, !tbaa !24
  %i.ix = load float, ptr %i.ip, align 4, !tbaa !28
  %i.iy = load float, ptr %i.iq, align 4, !tbaa !29
  %i.iz = fmul nsz float %i.hr, %i.iy
  %i.ja = tail call nsz float @llvm.fmuladd.f32(float %i.hp, float %i.ix, float %i.iz)
  store float %i.ja, ptr %i.ig, align 4, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !105
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexFloat], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 15                     ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 45                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader151.lr.ph, label %.preheader150

.preheader151.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = zext nneg i32 %i.e to i64                ; 15 uses
  %.idx.i = mul nuw nsw i64 %i.u, 48
  %.idx88.i = mul nuw nsw i64 %i.u, 96
  %.idx89.i = mul nuw nsw i64 %i.u, 24
  %.idx90.i = mul nuw nsw i64 %i.u, 72
  %.idx.i139 = mul nuw nsw i64 %i.u, 80
  %.idx88.i140 = mul nuw nsw i64 %i.u, 56
  %.idx89.i141 = mul nuw nsw i64 %i.u, 104
  %.idx90.i142 = shl nuw nsw i64 %i.u, 5
  %.idx.i146 = mul nuw nsw i64 %i.u, 40
  %.idx88.i147 = mul nuw nsw i64 %i.u, 88
  %.idx89.i148 = shl nuw nsw i64 %i.u, 4
  %.idx90.i149 = shl nuw nsw i64 %i.u, 6
  %.idx91.i = mul nuw nsw i64 %i.u, 112
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %.preheader151

.preheader151:                                    ; preds = %.preheader151.lr.ph, %fft15.exit
  %indvars.iv162 = phi i64 [ 0, %.preheader151.lr.ph ], [ %indvars.iv.next163, %fft15.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv162, 60
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.b

.preheader150.loopexit:                           ; preds = %fft15.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.loopexit, %bb.a
  %i.aj = phi ptr [ %.pre, %.preheader150.loopexit ], [ %i.d, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.am = sext i32 %i.e to i64                    ; 14 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  tail call void %i.an(ptr noundef %i.aj, ptr noundef %i.ao, ptr noundef %i.ao, i64 noundef 8) #16
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.am ; 2 uses
  tail call void %i.ap(ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.as, i64 noundef 8) #16
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx179 = shl nsw i64 %i.am, 4
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %.idx179 ; 2 uses
  tail call void %i.at(ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.aw, i64 noundef 8) #16
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx180 = mul nsw i64 %i.am, 24
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %.idx180 ; 2 uses
  tail call void %i.ax(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.ba, i64 noundef 8) #16
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx181 = shl nsw i64 %i.am, 5
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %.idx181 ; 2 uses
  tail call void %i.bb(ptr noundef %i.bc, ptr noundef %i.be, ptr noundef %i.be, i64 noundef 8) #16
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx182 = mul nsw i64 %i.am, 40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.idx182 ; 2 uses
  tail call void %i.bf(ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bi, i64 noundef 8) #16
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx183 = mul nsw i64 %i.am, 48
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx183 ; 2 uses
  tail call void %i.bj(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bm, i64 noundef 8) #16
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx184 = mul nsw i64 %i.am, 56
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx184 ; 2 uses
  tail call void %i.bn(ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.bq, i64 noundef 8) #16
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx185 = shl nsw i64 %i.am, 6
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.idx185 ; 2 uses
  tail call void %i.br(ptr noundef %i.bs, ptr noundef %i.bu, ptr noundef %i.bu, i64 noundef 8) #16
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx186 = mul nsw i64 %i.am, 72
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx186 ; 2 uses
  tail call void %i.bv(ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.by, i64 noundef 8) #16
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx187 = mul nsw i64 %i.am, 80
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %.idx187 ; 2 uses
  tail call void %i.bz(ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.cc, i64 noundef 8) #16
  %i.cd = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cf = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx188 = mul nsw i64 %i.am, 88
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %.idx188 ; 2 uses
  tail call void %i.cd(ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.cg, i64 noundef 8) #16
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cj = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx189 = mul nsw i64 %i.am, 96
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.idx189 ; 2 uses
  tail call void %i.ch(ptr noundef %i.ci, ptr noundef %i.ck, ptr noundef %i.ck, i64 noundef 8) #16
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cn = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx190 = mul nsw i64 %i.am, 104
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.idx190 ; 2 uses
  tail call void %i.cl(ptr noundef %i.cm, ptr noundef %i.co, ptr noundef %i.co, i64 noundef 8) #16
  %i.cp = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx191 = mul nsw i64 %i.am, 112
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.idx191 ; 2 uses
  tail call void %i.cp(ptr noundef %i.cq, ptr noundef %i.cs, ptr noundef %i.cs, i64 noundef 8) #16
  %i.ct = icmp sgt i32 %i.i, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

fft15.exit:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv162
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cw = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 40), align 8, !tbaa !24
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cx ; 15 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i
end_hunk_0
begin_hunk_1_@ff_tx_mdct_pfa_15xM_fwd_float_c:bb.a
  %i.fb = load <2 x float>, ptr %i.ae, align 16, !tbaa !24 ; 2 uses
  %i.fc = load <2 x float>, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.fd = fsub nsz <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ff = fadd nsz <2 x float> %i.fb, %i.fc       ; 2 uses
  %i.fg = fmul nsz <2 x float> %i.fe, %i.dn       ; 2 uses
  %i.fh = fmul nsz <2 x float> %i.ff, %i.dw
  %i.fi = fsub nsz <2 x float> %i.fa, %i.fh       ; 2 uses
  %i.fj = fsub nsz <2 x float> %i.fi, %i.fg       ; 2 uses
  %i.fk = fadd nsz <2 x float> %i.fi, %i.fg       ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fj, <2 x float> %i.fk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fm = load <2 x float>, ptr %i.ag, align 16, !tbaa !24 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.fo = load <2 x float>, ptr %i.ai, align 16, !tbaa !24 ; 2 uses
  %i.fp = fsub nsz <2 x float> %i.fn, %i.fo
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fr = fadd nsz <2 x float> %i.fn, %i.fo       ; 2 uses
  %i.fs = fmul nsz <2 x float> %i.fq, %i.dn       ; 2 uses
  %i.ft = fmul nsz <2 x float> %i.fr, %i.dw
  %i.fu = fsub nsz <2 x float> %i.fm, %i.ft       ; 2 uses
  %i.fv = fsub nsz <2 x float> %i.fu, %i.fs       ; 2 uses
  %i.fw = fadd nsz <2 x float> %i.fu, %i.fs       ; 2 uses
  %i.fx = shufflevector <2 x float> %i.fv, <2 x float> %i.fw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fy = fadd nsz <2 x float> %i.do, %i.dt       ; 5 uses
  %i.fz = fadd nsz <2 x float> %i.ec, %i.eh       ; 2 uses
  %i.ga = fadd nsz <2 x float> %i.eo, %i.et       ; 2 uses
  %i.gb = fadd nsz <2 x float> %i.fa, %i.ff       ; 2 uses
  %i.gc = fadd nsz <2 x float> %i.fm, %i.fr       ; 2 uses
  %i.gd = fsub nsz <2 x float> %i.fz, %i.gc       ; 2 uses
  %i.ge = fadd nsz <2 x float> %i.fz, %i.gc       ; 3 uses
  %i.gf = fsub nsz <2 x float> %i.ga, %i.gb       ; 2 uses
  %i.gg = fadd nsz <2 x float> %i.ga, %i.gb       ; 3 uses
  %i.gh = fadd nsz <2 x float> %i.fy, %i.ge
  %i.gi = fadd nsz <2 x float> %i.gh, %i.gg
  store <2 x float> %i.gi, ptr %i.cy, align 4, !tbaa !24
  %i.gj = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %i.gk = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.gl = fneg nsz <2 x float> %i.gg
  %i.gm = shufflevector <4 x float> %i.gk, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = fmul nsz <2 x float> %i.gm, %i.gl
  %i.go = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.ge, <2 x float> %i.gn) ; 2 uses
  %i.gq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %i.gr = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = fmul nsz <2 x float> %i.gf, %i.gs
  %i.gu = shufflevector <4 x float> %i.gq, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.gd, <2 x float> %i.gt)
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gx = fsub nsz <2 x float> %i.gp, %i.gw       ; 2 uses
  %i.gy = fadd nsz <2 x float> %i.gp, %i.gw       ; 2 uses
  %i.gz = shufflevector <2 x float> %i.gx, <2 x float> %i.gy, <2 x i32> <i32 0, i32 3>
  %i.ha = shufflevector <2 x float> %i.gy, <2 x float> %i.gx, <2 x i32> <i32 0, i32 3>
  %i.hb = fadd nsz <2 x float> %i.fy, %i.ha
  store <2 x float> %i.hb, ptr %i.cz, align 4, !tbaa !24
  %i.hc = fneg nsz <2 x float> %i.ge
  %i.hd = fmul nsz <2 x float> %i.gm, %i.hc
  %i.he = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gg, <2 x float> %i.hd) ; 2 uses
  %i.hf = fneg nsz <2 x float> %i.gd
  %i.hg = fmul nsz <2 x float> %i.gs, %i.hf
  %i.hh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.gf, <2 x float> %i.hg)
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hj = fadd nsz <2 x float> %i.he, %i.hi       ; 2 uses
  %i.hk = fsub nsz <2 x float> %i.he, %i.hi       ; 2 uses
  %i.hl = shufflevector <2 x float> %i.hj, <2 x float> %i.hk, <2 x i32> <i32 0, i32 3>
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> %i.hj, <2 x i32> <i32 0, i32 3>
  %i.hn = fadd nsz <2 x float> %i.fy, %i.hm
  store <2 x float> %i.hn, ptr %i.da, align 4, !tbaa !24
  %i.ho = fadd nsz <2 x float> %i.fy, %i.hl
  store <2 x float> %i.ho, ptr %i.db, align 4, !tbaa !24
  %i.hp = fadd nsz <2 x float> %i.fy, %i.gz
  store <2 x float> %i.hp, ptr %i.dc, align 4, !tbaa !24
  %i.hq = shufflevector <2 x float> %i.ea, <2 x float> %i.dz, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.hr = shufflevector <2 x float> %i.em, <2 x float> %i.el, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hs = shufflevector <2 x float> %i.ey, <2 x float> %i.ex, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ht = shufflevector <2 x float> %i.fk, <2 x float> %i.fj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hu = shufflevector <2 x float> %i.fw, <2 x float> %i.fv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hv = fsub nsz <2 x float> %i.hr, %i.hu
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hx = fadd nsz <2 x float> %i.hr, %i.hu       ; 3 uses
  %i.hy = fsub nsz <2 x float> %i.hs, %i.ht
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ia = fadd nsz <2 x float> %i.hs, %i.ht       ; 3 uses
  %i.ib = fadd nsz <2 x float> %i.hq, %i.hx
  %i.ic = fadd nsz <2 x float> %i.ib, %i.ia
  store <2 x float> %i.ic, ptr %i.dd, align 4, !tbaa !24
  %i.id = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %i.ie = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.if = fneg nsz <2 x float> %i.ia
  %i.ig = shufflevector <4 x float> %i.ie, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ih = fmul nsz <2 x float> %i.ig, %i.if
  %i.ii = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ij = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.hx, <2 x float> %i.ih) ; 2 uses
  %i.ik = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %i.il = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.in = fmul nsz <2 x float> %i.hz, %i.im
  %i.io = shufflevector <4 x float> %i.ik, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ip = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.hw, <2 x float> %i.in) ; 2 uses
  %i.iq = fsub nsz <2 x float> %i.ij, %i.ip       ; 2 uses
  %i.ir = fadd nsz <2 x float> %i.ij, %i.ip       ; 2 uses
  %i.is = shufflevector <2 x float> %i.iq, <2 x float> %i.ir, <2 x i32> <i32 0, i32 3>
  %i.it = shufflevector <2 x float> %i.ir, <2 x float> %i.iq, <2 x i32> <i32 0, i32 3>
  %i.iu = fadd nsz <2 x float> %i.hq, %i.it
  store <2 x float> %i.iu, ptr %i.de, align 4, !tbaa !24
  %i.iv = fneg nsz <2 x float> %i.hx
  %i.iw = fmul nsz <2 x float> %i.ig, %i.iv
  %i.ix = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ia, <2 x float> %i.iw) ; 2 uses
  %i.iy = fneg nsz <2 x float> %i.hw
  %i.iz = fmul nsz <2 x float> %i.im, %i.iy
  %i.ja = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.hz, <2 x float> %i.iz) ; 2 uses
  %i.jb = fadd nsz <2 x float> %i.ix, %i.ja       ; 2 uses
  %i.jc = fsub nsz <2 x float> %i.ix, %i.ja       ; 2 uses
  %i.jd = shufflevector <2 x float> %i.jb, <2 x float> %i.jc, <2 x i32> <i32 0, i32 3>
  %i.je = shufflevector <2 x float> %i.jc, <2 x float> %i.jb, <2 x i32> <i32 0, i32 3>
  %i.jf = fadd nsz <2 x float> %i.hq, %i.je
  store <2 x float> %i.jf, ptr %i.df, align 4, !tbaa !24
  %i.jg = fadd nsz <2 x float> %i.hq, %i.jd
  store <2 x float> %i.jg, ptr %i.dg, align 4, !tbaa !24
  %i.jh = fadd nsz <2 x float> %i.hq, %i.is
  store <2 x float> %i.jh, ptr %i.dh, align 4, !tbaa !24
  %i.ji = fsub nsz <2 x float> %i.en, %i.fx
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jk = fadd nsz <2 x float> %i.en, %i.fx       ; 3 uses
  %i.jl = fsub nsz <2 x float> %i.ez, %i.fl
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jn = fadd nsz <2 x float> %i.ez, %i.fl       ; 3 uses
  %i.jo = fadd nsz <2 x float> %i.eb, %i.jk
  %i.jp = fadd nsz <2 x float> %i.jo, %i.jn
  store <2 x float> %i.jp, ptr %i.di, align 4, !tbaa !24
  %i.jq = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %i.jr = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.js = fneg nsz <2 x float> %i.jn
  %i.jt = shufflevector <4 x float> %i.jr, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ju = fmul nsz <2 x float> %i.jt, %i.js
  %i.jv = shufflevector <4 x float> %i.jq, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.jk, <2 x float> %i.ju) ; 2 uses
  %i.jx = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %i.jy = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ka = fmul nsz <2 x float> %i.jm, %i.jz
  %i.kb = shufflevector <4 x float> %i.jx, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.jj, <2 x float> %i.ka) ; 2 uses
  %i.kd = fsub nsz <2 x float> %i.jw, %i.kc       ; 2 uses
  %i.ke = fadd nsz <2 x float> %i.jw, %i.kc       ; 2 uses
  %i.kf = shufflevector <2 x float> %i.kd, <2 x float> %i.ke, <2 x i32> <i32 0, i32 3>
  %i.kg = shufflevector <2 x float> %i.ke, <2 x float> %i.kd, <2 x i32> <i32 0, i32 3>
  %i.kh = fadd nsz <2 x float> %i.eb, %i.kg
  store <2 x float> %i.kh, ptr %i.dj, align 4, !tbaa !24
  %i.ki = fneg nsz <2 x float> %i.jk
  %i.kj = fmul nsz <2 x float> %i.jt, %i.ki
  %i.kk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.jn, <2 x float> %i.kj) ; 2 uses
  %i.kl = fneg nsz <2 x float> %i.jj
  %i.km = fmul nsz <2 x float> %i.jz, %i.kl
  %i.kn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.jm, <2 x float> %i.km) ; 2 uses
  %i.ko = fadd nsz <2 x float> %i.kk, %i.kn       ; 2 uses
  %i.kp = fsub nsz <2 x float> %i.kk, %i.kn       ; 2 uses
  %i.kq = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 0, i32 3>
  %i.kr = shufflevector <2 x float> %i.kp, <2 x float> %i.ko, <2 x i32> <i32 0, i32 3>
  %i.ks = fadd nsz <2 x float> %i.eb, %i.kr
  store <2 x float> %i.ks, ptr %i.dk, align 4, !tbaa !24
  %i.kt = fadd nsz <2 x float> %i.eb, %i.kq
  store <2 x float> %i.kt, ptr %i.dl, align 4, !tbaa !24
  %i.ku = fadd nsz <2 x float> %i.eb, %i.kf
  store <2 x float> %i.ku, ptr %i.dm, align 4, !tbaa !24
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next163, %i.u
  br i1 %exitcond165.not, label %.preheader150.loopexit, label %.preheader151, !llvm.loop !106

bb.b:                                             ; preds = %.preheader151, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader151 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.kv = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.kw = icmp slt i32 %i.kv, %i.f
  %i.kx = add nsw i32 %i.kv, %i.f
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !24 ; 2 uses
  %i.lb = xor i32 %i.kv, -1                       ; 4 uses
  br i1 %i.kw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.lc = add i32 %i.f, %i.lb
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !24
  %i.lg = fsub nsz float %i.lf, %i.la
  %i.lh = add nsw i32 %i.kv, %i.g
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.li
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !24
  %i.ll = add i32 %i.g, %i.lb
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lm
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !24
  %i.lp = fadd nsz float %i.lk, %i.lo
  %i.lq = fneg nsz float %i.lp
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.lr = add i32 %i.r, %i.lb
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ls
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !24
  %i.lv = fadd nsz float %i.la, %i.lu
  %i.lw = fneg nsz float %i.lv
  %i.lx = sub nuw nsw i32 %i.kv, %i.f
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !24
  %i.mb = add i32 %i.g, %i.lb
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %2, i64 %i.mc
  %i.me = load float, ptr %i.md, align 4, !tbaa !24
  %i.mf = fsub nsz float %i.ma, %i.me
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.077.0 = phi nsz float [ %i.lg, %bb.c ], [ %i.lw, %bb.d ]
  %.sroa.6.0 = phi nsz float [ %i.lq, %bb.c ], [ %i.mf, %bb.d ] ; 2 uses
  %i.mg = ashr i32 %i.kv, 1
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.mk = load <2 x float>, ptr %i.mi, align 4, !tbaa !24 ; 3 uses
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mm = extractelement <2 x float> %i.mk, i64 1
  %i.mn = fneg nsz float %i.mm
  %i.mo = fmul nsz float %.sroa.6.0, %i.mn
  %i.mp = extractelement <2 x float> %i.mk, i64 0
  %i.mq = fmul nsz float %.sroa.6.0, %i.mp
  %i.mr = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.mu = insertelement <2 x float> %i.mt, float %i.mo, i64 1
  %i.mv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> %i.ml, <2 x float> %i.mu)
  store <2 x float> %i.mv, ptr %i.mj, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %fft15.exit, label %bb.b, !llvm.loop !107

.lr.ph:                                           ; preds = %.preheader150
  %i.mw = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %i.mx = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count173 = zext nneg i32 %i.i to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader150
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv170 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next171, %bb.f ] ; 3 uses
  %i.my = add nuw nsw i64 %indvars.iv170, %i.mx   ; 3 uses
  %i.mz = xor i64 %indvars.iv170, -1
  %i.na = add nsw i64 %i.mx, %i.mz                ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.my
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !12
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.na
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !12
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.nf ; 2 uses
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !28 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !29 ; 2 uses
  %i.nk = sext i32 %i.nc to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.nk ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !28 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !29 ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.my ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4 ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !29
  %i.ns = load float, ptr %i.np, align 4, !tbaa !28
  %i.nt = fneg nsz float %i.ns
  %i.nu = fmul nsz float %i.no, %i.nt
  %i.nv = tail call nsz float @llvm.fmuladd.f32(float %i.nm, float %i.nr, float %i.nu)
  %i.nw = shl nsw i64 %i.na, 1
  %i.nx = mul nsw i64 %i.p, %i.nw
  %i.ny = getelementptr [4 x i8], ptr %1, i64 %i.nx ; 2 uses
  %i.nz = getelementptr [4 x i8], ptr %i.ny, i64 %i.p
  store float %i.nv, ptr %i.nz, align 4, !tbaa !24
  %i.oa = load float, ptr %i.np, align 4, !tbaa !28
  %i.ob = load float, ptr %i.nq, align 4, !tbaa !29
  %i.oc = fmul nsz float %i.no, %i.ob
  %i.od = tail call nsz float @llvm.fmuladd.f32(float %i.nm, float %i.oa, float %i.oc)
  %i.oe = shl nuw nsw i64 %i.my, 1
  %i.of = mul nuw nsw i64 %i.p, %i.oe
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.of ; 2 uses
  store float %i.od, ptr %i.og, align 4, !tbaa !24
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.na ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !29
  %i.ok = load float, ptr %i.oh, align 4, !tbaa !28
  %i.ol = fneg nsz float %i.ok
  %i.om = fmul nsz float %i.nj, %i.ol
  %i.on = tail call nsz float @llvm.fmuladd.f32(float %i.nh, float %i.oj, float %i.om)
  %i.oo = getelementptr [4 x i8], ptr %i.og, i64 %i.p
  store float %i.on, ptr %i.oo, align 4, !tbaa !24
  %i.op = load float, ptr %i.oh, align 4, !tbaa !28
  %i.oq = load float, ptr %i.oi, align 4, !tbaa !29
  %i.or = fmul nsz float %i.nj, %i.oq
  %i.os = tail call nsz float @llvm.fmuladd.f32(float %i.nh, float %i.op, float %i.or)
  store float %i.os, ptr %i.ny, align 4, !tbaa !24
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %._crit_edge, label %bb.f, !llvm.loop !108
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_3xM_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.k = mul nsw i32 %i.h, 3
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 2                           ; 7 uses
  %i.o = mul nsw i32 %i.h, 6
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader113.lr.ph, label %..preheader112_crit_edge

..preheader112_crit_edge:                         ; preds = %bb.a
  %.pre124 = sext i32 %i.h to i64
  br label %.preheader112

.preheader113.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.h to i64                     ; 3 uses
  %.idx.i = shl nsw i64 %i.y, 4
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph, %.preheader113
  %.0118 = phi ptr [ %i.b, %.preheader113.lr.ph ], [ %i.dm, %.preheader113 ] ; 7 uses
  %.0107117 = phi ptr [ %i.j, %.preheader113.lr.ph ], [ %i.dn, %.preheader113 ] ; 4 uses
  %.0109116 = phi i32 [ 0, %.preheader113.lr.ph ], [ %i.do, %.preheader113 ]
  %.0110115 = phi ptr [ %i.v, %.preheader113.lr.ph ], [ %i.bk, %.preheader113 ] ; 2 uses
  %i.z = load i32, ptr %.0107117, align 4, !tbaa !12 ; 2 uses
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.n, %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !24
  %i.af = sext i32 %i.z to i64
  %i.ag = mul nsw i64 %i.n, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %.0118, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.0107117, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = sub nsw i32 0, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !24
  %i.ar = sext i32 %i.al to i64
  %i.as = mul nsw i64 %i.n, %i.ar
  %i.at = getelementptr inbounds [4 x i8], ptr %2, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0118, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %.0107117, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12 ; 2 uses
  %i.az = sub nsw i32 0, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.n, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !24
  %i.be = sext i32 %i.ay to i64
  %i.bf = mul nsw i64 %i.n, %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.0118, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %.0110115, i64 4
  %i.bl = load i32, ptr %.0110115, align 4, !tbaa !12
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.y
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %.idx.i
  %i.bq = load float, ptr %i.aj, align 4, !tbaa !29
  %i.br = load <2 x float>, ptr %.0118, align 4, !tbaa !24 ; 2 uses
  %i.bs = fneg nsz float %i.bq
  %i.bt = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = insertelement <2 x float> %i.bv, float %i.bs, i64 0
  %i.bx = fmul nsz <2 x float> %i.bu, %i.bw
  %i.by = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.br, <2 x float> %i.bx) ; 2 uses
  %i.cb = load float, ptr %i.aw, align 4, !tbaa !29
  %i.cc = load <2 x float>, ptr %i.av, align 4, !tbaa !24 ; 2 uses
  %i.cd = fneg nsz float %i.cb
  %i.ce = insertelement <2 x float> poison, float %i.au, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ch = insertelement <2 x float> %i.cg, float %i.cd, i64 0
  %i.ci = fmul nsz <2 x float> %i.cf, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cc, <2 x float> %i.ci) ; 2 uses
  %i.cm = load float, ptr %i.bj, align 4, !tbaa !29
  %i.cn = load <2 x float>, ptr %i.bi, align 4, !tbaa !24 ; 2 uses
  %i.co = fneg nsz float %i.cm
  %i.cp = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cs = insertelement <2 x float> %i.cr, float %i.co, i64 0
  %i.ct = fmul nsz <2 x float> %i.cq, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cn, <2 x float> %i.ct) ; 2 uses
  %i.cx = fsub nsz <2 x float> %i.cl, %i.cw
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = fadd nsz <2 x float> %i.cl, %i.cw       ; 2 uses
  %i.da = fadd nsz <2 x float> %i.ca, %i.cz
  store <2 x float> %i.da, ptr %i.bn, align 4, !tbaa !24
  %i.db = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 32), align 16, !tbaa !24
  %i.dc = fmul nsz <2 x float> %i.cy, %i.db       ; 2 uses
  %i.dd = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 40), align 8, !tbaa !24
  %i.de = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul nsz <2 x float> %i.cz, %i.df
  %i.dh = fsub nsz <2 x float> %i.ca, %i.dg       ; 2 uses
  %i.di = fadd nsz <2 x float> %i.dh, %i.dc       ; 2 uses
  %i.dj = fsub nsz <2 x float> %i.dh, %i.dc       ; 2 uses
  %i.dk = shufflevector <2 x float> %i.di, <2 x float> %i.dj, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dk, ptr %i.bo, align 4, !tbaa !24
  %i.dl = shufflevector <2 x float> %i.dj, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dl, ptr %i.bp, align 4, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %.0118, i64 24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0107117, i64 12
  %i.do = add nuw nsw i32 %.0109116, 3            ; 2 uses
  %i.dp = icmp slt i32 %i.do, %i.e
  br i1 %i.dp, label %.preheader113, label %.preheader112.loopexit, !llvm.loop !109

.preheader112.loopexit:                           ; preds = %.preheader113
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.preheader112

.preheader112:                                    ; preds = %..preheader112_crit_edge, %.preheader112.loopexit
  %.pre-phi = phi i64 [ %.pre124, %..preheader112_crit_edge ], [ %i.y, %.preheader112.loopexit ] ; 2 uses
  %i.dq = phi ptr [ %i.g, %..preheader112_crit_edge ], [ %.pre, %.preheader112.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader112_crit_edge ], [ %i.dm, %.preheader112.loopexit ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !31 ; 2 uses
  tail call void %i.dt(ptr noundef %i.dq, ptr noundef %i.du, ptr noundef %i.du, i64 noundef 8) #16
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.dw = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !31
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.pre-phi ; 2 uses
  tail call void %i.dv(ptr noundef %i.dw, ptr noundef %i.dy, ptr noundef %i.dy, i64 noundef 8) #16
  %i.dz = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.ea = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !31
  %.idx = shl nsw i64 %.pre-phi, 4
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %.idx ; 2 uses
  tail call void %i.dz(ptr noundef %i.ea, ptr noundef %i.ec, ptr noundef %i.ec, i64 noundef 8) #16
  %i.ed = icmp sgt i32 %i.d, 0
  br i1 %i.ed, label %.lr.ph, label %._crit_edge

end_hunk_1
