Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_double?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 33
begin_hunk_0_@ff_tx_fft_naive_small_double_c:bb.a

._crit_edge.us:                                   ; preds = %bb.b
  %i.t = mul nuw nsw i64 %i.b, %indvars.iv37
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.t
  store <2 x double> %i.s, ptr %i.u, align 8, !tbaa !24
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge34, label %.preheader.us, !llvm.loop !81

._crit_edge34:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @ff_tx_fft_init_naive_small_double_c(ptr nofree noundef captures(none) initializes((16, 24)) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %.not = icmp eq i32 %i.b, 0
  %i.c = sitofp nsz i32 %4 to double
  %.v = select i1 %.not, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %i.d = fdiv nnan nsz double %.v, %i.c
  %i.e = mul nsw i32 %4, %4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 4
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
  br i1 %exitcond32.not, label %.loopexit, label %.preheader, !llvm.loop !82

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fmul nsz double %i.m, %i.o
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.p) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.q = mul nuw nsw i64 %indvars.iv, %indvars.iv28
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.q ; 2 uses
  store double %cos, ptr %i.r, align 8, !tbaa !24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store double %sin, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count31
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !83

.loopexit:                                        ; preds = %._crit_edge, %.preheader24, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %.preheader24 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 1                         ; 5 uses
  %i.e = ashr i32 %i.c, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = lshr i64 %3, 3                           ; 4 uses
  %i.i = icmp sgt i32 %i.d, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = mul nuw nsw i32 %i.d, 3
  %i.k = mul nuw nsw i32 %i.d, 5
  %i.l = zext nneg i32 %i.d to i64                ; 5 uses
  %i.m = zext nneg i32 %i.j to i64                ; 3 uses
  %i.n = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.l
  %i.o = getelementptr [8 x i8], ptr %2, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %2, i64 %i.m
  %invariant.gep129 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.l
  %i.q = getelementptr [8 x i8], ptr %2, i64 %i.l
  %invariant.gep131 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m
  %i.r = getelementptr [8 x i8], ptr %2, i64 %i.m
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  tail call void %i.t(ptr noundef %i.v, ptr noundef %1, ptr noundef %1, i64 noundef 16) #16
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
  %gep130 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep129, i64 %i.y
  %i.ad = load double, ptr %gep130, align 8, !tbaa !24
  %i.ae = getelementptr [8 x i8], ptr %i.q, i64 %i.ac
  %i.af = load double, ptr %i.ae, align 8, !tbaa !24
  %i.ag = fsub nsz double %i.af, %i.ad
  %gep132 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep131, i64 %i.y
  %i.ah = load double, ptr %gep132, align 8, !tbaa !24
  %i.ai = getelementptr [8 x i8], ptr %i.r, i64 %i.ac
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !24
  %i.ak = fadd nsz double %i.ah, %i.aj
  %i.al = fneg nsz double %i.ak
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.y
  %i.am = load double, ptr %gep, align 8, !tbaa !24
  %i.an = getelementptr [8 x i8], ptr %i.o, i64 %i.ac
  %i.ao = load double, ptr %i.an, align 8, !tbaa !24
  %i.ap = fadd nsz double %i.am, %i.ao
  %i.aq = fneg nsz double %i.ap
  %i.ar = sub nuw nsw i64 %i.y, %i.l
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !24
  %i.au = getelementptr [8 x i8], ptr %i.p, i64 %i.ac
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = fsub nsz double %i.at, %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.067.0 = phi nsz double [ %i.ag, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.6.0 = phi nsz double [ %i.al, %bb.c ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !30
  %i.bb = fneg nsz double %i.ba
  %i.bc = fmul nsz double %.sroa.6.0, %i.bb
  %i.bd = tail call nsz double @llvm.fmuladd.f64(double %.sroa.067.0, double %i.ay, double %i.bc)
  %i.be = sext i32 %i.aa to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %1, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store double %i.bd, ptr %i.bg, align 8, !tbaa !30
  %i.bh = load double, ptr %i.az, align 8, !tbaa !30
  %i.bi = fmul nsz double %.sroa.6.0, %i.ay
  %i.bj = tail call nsz double @llvm.fmuladd.f64(double %.sroa.067.0, double %i.bh, double %i.bi)
  store double %i.bj, ptr %i.bf, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !84

._crit_edge118:                                   ; preds = %.lr.ph117, %._crit_edge
  ret void

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.lr.ph117
  %indvars.iv120 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next121, %.lr.ph117 ] ; 3 uses
  %i.bk = add nuw nsw i64 %indvars.iv120, %i.x    ; 3 uses
  %i.bl = xor i64 %indvars.iv120, -1
  %i.bm = add nsw i64 %i.x, %i.bl                 ; 3 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !29 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bk ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !29 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !30 ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.bk ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !30
  %i.by = load double, ptr %i.bv, align 8, !tbaa !29
  %i.bz = fneg nsz double %i.by
  %i.ca = fmul nsz double %i.bu, %i.bz
  %i.cb = tail call nsz double @llvm.fmuladd.f64(double %i.bs, double %i.bx, double %i.ca)
  %i.cc = shl nsw i64 %i.bm, 1
  %i.cd = mul nsw i64 %i.h, %i.cc
  %i.ce = getelementptr [8 x i8], ptr %1, i64 %i.cd ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.h
  store double %i.cb, ptr %i.cf, align 8, !tbaa !24
  %i.cg = load double, ptr %i.bv, align 8, !tbaa !29
  %i.ch = load double, ptr %i.bw, align 8, !tbaa !30
  %i.ci = fmul nsz double %i.bu, %i.ch
  %i.cj = tail call nsz double @llvm.fmuladd.f64(double %i.bs, double %i.cg, double %i.ci)
  %i.ck = shl nuw nsw i64 %i.bk, 1
  %i.cl = mul nuw nsw i64 %i.h, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cl ; 2 uses
  store double %i.cj, ptr %i.cm, align 8, !tbaa !24
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.bm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !30
  %i.cq = load double, ptr %i.cn, align 8, !tbaa !29
  %i.cr = fneg nsz double %i.cq
  %i.cs = fmul nsz double %i.bq, %i.cr
  %i.ct = tail call nsz double @llvm.fmuladd.f64(double %i.bo, double %i.cp, double %i.cs)
  %i.cu = getelementptr [8 x i8], ptr %i.cm, i64 %i.h
  store double %i.ct, ptr %i.cu, align 8, !tbaa !24
  %i.cv = load double, ptr %i.cn, align 8, !tbaa !29
  %i.cw = load double, ptr %i.co, align 8, !tbaa !30
  %i.cx = fmul nsz double %i.bq, %i.cw
  %i.cy = tail call nsz double @llvm.fmuladd.f64(double %i.bo, double %i.cv, double %i.cx)
  store double %i.cy, ptr %i.ce, align 8, !tbaa !24
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !85
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_init_double_c(ptr noundef initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %.not = icmp eq i32 %5, 0                       ; 3 uses
  %i.a = select i1 %.not, i32 2, i32 1
  store i32 %i.a, ptr %7, align 4, !tbaa !36
  %i.b = load double, ptr %6, align 8, !tbaa !24  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.b, ptr %i.c, align 8, !tbaa !22
  %i.d = fptrunc nsz double %i.b to float
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.d, ptr %i.e, align 4, !tbaa !39
  %i.f = and i64 %2, 6917529027641081854          ; 2 uses
  %i.g = or disjoint i64 %i.f, 2305843009213693953
  %i.h = ashr i32 %4, 1                           ; 5 uses
  %i.i = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 2, i64 noundef %i.g, ptr noundef nonnull %7, i32 noundef %i.h, i32 noundef %5, ptr noundef nonnull %6) #16
  %.not48 = icmp eq i32 %i.i, 0
  br i1 %.not48, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i64 %i.f, 1
  %i.k = call i32 @ff_tx_init_subtx(ptr noundef nonnull %0, i32 noundef 2, i64 noundef %i.j, ptr noundef nonnull %7, i32 noundef %i.h, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
  %.not49 = icmp eq i32 %i.k, 0
  br i1 %.not49, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = sext i32 %i.h to i64
  %i.m = shl nsw i64 %i.l, 2                      ; 2 uses
  %i.n = call noalias ptr @av_malloc(i64 noundef %i.m) #16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !34
  %.not50 = icmp eq ptr %i.n, null
  br i1 %.not50, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.w, i64 %i.m, i1 false)
  br label %.loopexit54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit54, label %.lr.ph, !llvm.loop !86

.loopexit54:                                      ; preds = %.lr.ph, %.preheader53, %bb.e
  %spec.select = select i1 %.not, ptr null, ptr %i.n
  %i.z = call i32 @ff_tx_mdct_gen_exp_double(ptr noundef nonnull %0, ptr noundef %spec.select) ; 2 uses
  %.not52 = icmp ne i32 %i.z, 0
  %brmerge = or i1 %.not, %.not52
  br i1 %brmerge, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit54
  %i.aa = load i32, ptr %0, align 8, !tbaa !21
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !34
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
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !87

.loopexit:                                        ; preds = %bb.f, %.preheader, %.loopexit54, %bb.c, %bb.b
  %.044 = phi i32 [ %i.k, %bb.b ], [ -12, %bb.c ], [ %i.z, %.loopexit54 ], [ 0, %.preheader ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.044
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_inv_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.d = ashr i32 %i.c, 1                         ; 3 uses
  %i.e = ashr i32 %i.c, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = lshr i64 %3, 3                           ; 3 uses
  %i.i = and i32 %i.c, -2
  %i.j = add nsw i32 %i.i, -1
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  tail call void %i.p(ptr noundef %i.r, ptr noundef %1, ptr noundef %1, i64 noundef 16) #16
  %i.s = sext i32 %i.d to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.s ; 2 uses
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
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.ad = sext i32 %i.x to i64
  %i.ae = mul nsw i64 %i.h, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = fneg nsz double %i.ak
  %i.am = fmul nsz double %i.ag, %i.al
  %i.an = tail call nsz double @llvm.fmuladd.f64(double %i.ac, double %i.ai, double %i.am)
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store double %i.an, ptr %i.ao, align 8, !tbaa !29
  %i.ap = load double, ptr %i.ah, align 8, !tbaa !29
  %i.aq = fmul nsz double %i.ag, %i.ap
  %i.ar = tail call nsz double @llvm.fmuladd.f64(double %i.ac, double %i.ak, double %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store double %i.ar, ptr %i.as, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88

._crit_edge95:                                    ; preds = %.lr.ph94, %._crit_edge
  ret void

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %indvars.iv97 = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next98, %.lr.ph94 ] ; 3 uses
  %i.at = add nuw nsw i64 %indvars.iv97, %i.v     ; 2 uses
  %i.au = xor i64 %indvars.iv97, -1
  %i.av = add nsw i64 %i.v, %i.au                 ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %1, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !30 ; 2 uses
  %i.az = load double, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.at ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !30 ; 2 uses
  %i.bd = load double, ptr %i.ba, align 8, !tbaa !29 ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.av ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %i.bh = load double, ptr %i.be, align 8, !tbaa !29
  %i.bi = fneg nsz double %i.bh
  %i.bj = fmul nsz double %i.az, %i.bi
  %i.bk = tail call nsz double @llvm.fmuladd.f64(double %i.ay, double %i.bg, double %i.bj)
  store double %i.bk, ptr %i.aw, align 8, !tbaa !29
  %i.bl = load double, ptr %i.be, align 8, !tbaa !29
  %i.bm = fmul nsz double %i.az, %i.bg
  %i.bn = tail call nsz double @llvm.fmuladd.f64(double %i.ay, double %i.bl, double %i.bm)
  store double %i.bn, ptr %i.bb, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.at ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %i.br = load double, ptr %i.bo, align 8, !tbaa !29
  %i.bs = fneg nsz double %i.br
  %i.bt = fmul nsz double %i.bd, %i.bs
  %i.bu = tail call nsz double @llvm.fmuladd.f64(double %i.bc, double %i.bq, double %i.bt)
  store double %i.bu, ptr %i.ba, align 8, !tbaa !29
  %i.bv = load double, ptr %i.bo, align 8, !tbaa !29
  %i.bw = fmul nsz double %i.bd, %i.bq
  %i.bx = tail call nsz double @llvm.fmuladd.f64(double %i.bc, double %i.bv, double %i.bw)
  store double %i.bx, ptr %i.ax, align 8, !tbaa !30
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !89
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_3xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 3                      ; 13 uses
  %i.g = mul nuw nsw i32 %i.e, 9                  ; 9 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 4 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %..preheader136_crit_edge

..preheader136_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 15                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = zext nneg i32 %i.e to i64                ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.u, 5
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 3           ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.f
  %i.z = add nsw i32 %i.x, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.ad = xor i32 %i.x, -1                        ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.c

.preheader136:                                    ; preds = %bb.j, %..preheader136_crit_edge
  %i.ae = phi ptr [ %.pre, %..preheader136_crit_edge ], [ %i.t, %bb.j ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ah = sext i32 %i.e to i64                    ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !10
  tail call void %i.ai(ptr noundef nonnull %i.d, ptr noundef %i.ae, ptr noundef %i.ae, i64 noundef 16) #16
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 16) #16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.idx = shl nsw i64 %i.ah, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 16) #16
  %i.ar = icmp sgt i32 %i.i, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.as = add i32 %i.f, %i.ad
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = fsub nsz double %i.av, %i.ac
  %i.ax = add nsw i32 %i.x, %i.g
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !24
  %i.bb = add i32 %i.g, %i.ad
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24
  %i.bf = fadd nsz double %i.ba, %i.be
  %i.bg = fneg nsz double %i.bf
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bh = add i32 %i.r, %i.ad
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !24
  %i.bl = fadd nsz double %i.ac, %i.bk
  %i.bm = fneg nsz double %i.bl
  %i.bn = sub nuw nsw i32 %i.x, %i.f
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !24
  %i.br = add i32 %i.g, %i.ad
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = fsub nsz double %i.bq, %i.bu
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz double [ %i.aw, %bb.b ], [ %i.bm, %bb.c ]
  %.sroa.6.0 = phi nsz double [ %i.bg, %bb.b ], [ %i.bv, %bb.c ]
  %i.bw = ashr i32 %i.x, 1
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.bx
  %i.bz = load <2 x double>, ptr %i.by, align 8, !tbaa !24 ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fneg nsz <2 x double> %i.ca
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cf = fmul nsz <2 x double> %i.cc, %i.ce
  %i.cg = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ca, <2 x double> %i.cf) ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12 ; 6 uses
  %i.cm = icmp slt i32 %i.cl, %i.f
  %i.cn = add nsw i32 %i.cl, %i.f
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %i.cr = xor i32 %i.cl, -1                       ; 4 uses
  br i1 %i.cm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cs = add i32 %i.r, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !24
  %i.cw = fadd nsz double %i.cq, %i.cv
  %i.cx = fneg nsz double %i.cw
  %i.cy = sub nuw nsw i32 %i.cl, %i.f
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = add i32 %i.g, %i.cr
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !24
  %i.dg = fsub nsz double %i.db, %i.df
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dh = add i32 %i.f, %i.cr
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !24
  %i.dl = fsub nsz double %i.dk, %i.cq
  %i.dm = add nsw i32 %i.cl, %i.g
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !24
  %i.dq = add i32 %i.g, %i.cr
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !24
  %i.du = fadd nsz double %i.dp, %i.dt
  %i.dv = fneg nsz double %i.du
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz double [ %i.dl, %bb.f ], [ %i.cx, %bb.e ]
  %.sroa.6.0.1 = phi nsz double [ %i.dv, %bb.f ], [ %i.dg, %bb.e ]
  %i.dw = ashr i32 %i.cl, 1
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.dx
  %i.dz = load <2 x double>, ptr %i.dy, align 8, !tbaa !24 ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eb = insertelement <2 x double> poison, double %.sroa.6.0.1, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fneg nsz <2 x double> %i.ea
  %i.ee = shufflevector <2 x double> %i.dz, <2 x double> %i.ed, <2 x i32> <i32 0, i32 2>
  %i.ef = fmul nsz <2 x double> %i.ec, %i.ee
  %i.eg = insertelement <2 x double> poison, double %.sroa.077.0.1, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ea, <2 x double> %i.ef) ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !12 ; 6 uses
  %i.em = icmp slt i32 %i.el, %i.f
  %i.en = add nsw i32 %i.el, %i.f
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !24 ; 2 uses
  %i.er = xor i32 %i.el, -1                       ; 4 uses
  br i1 %i.em, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.es = add i32 %i.r, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !24
  %i.ew = fadd nsz double %i.eq, %i.ev
  %i.ex = fneg nsz double %i.ew
  %i.ey = sub nuw nsw i32 %i.el, %i.f
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !24
  %i.fc = add i32 %i.g, %i.er
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !24
  %i.fg = fsub nsz double %i.fb, %i.ff
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.fh = add i32 %i.f, %i.er
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !24
  %i.fl = fsub nsz double %i.fk, %i.eq
  %i.fm = add nsw i32 %i.el, %i.g
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !24
  %i.fq = add i32 %i.g, %i.er
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !24
  %i.fu = fadd nsz double %i.fp, %i.ft
  %i.fv = fneg nsz double %i.fu
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.077.0.2 = phi nsz double [ %i.fl, %bb.i ], [ %i.ex, %bb.h ]
  %.sroa.6.0.2 = phi nsz double [ %i.fv, %bb.i ], [ %i.fg, %bb.h ]
  %i.fw = ashr i32 %i.el, 1
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !12
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.gb ; 3 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.u
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i
  %i.gf = load <2 x double>, ptr %i.fy, align 8, !tbaa !24 ; 2 uses
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gh = insertelement <2 x double> poison, double %.sroa.6.0.2, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fneg nsz <2 x double> %i.gg
  %i.gk = shufflevector <2 x double> %i.gf, <2 x double> %i.gj, <2 x i32> <i32 0, i32 2>
  %i.gl = fmul nsz <2 x double> %i.gi, %i.gk
  %i.gm = insertelement <2 x double> poison, double %.sroa.077.0.2, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gg, <2 x double> %i.gl) ; 2 uses
  %i.gp = fsub nsz <2 x double> %i.ei, %i.go
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gr = fadd nsz <2 x double> %i.ei, %i.go      ; 2 uses
  %i.gs = fadd nsz <2 x double> %i.ci, %i.gr
  store <2 x double> %i.gs, ptr %i.gc, align 8, !tbaa !24
  %i.gt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24
  %i.gu = fmul nsz <2 x double> %i.gq, %i.gt      ; 2 uses
  %i.gv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fmul nsz <2 x double> %i.gr, %i.gw
  %i.gy = fsub nsz <2 x double> %i.ci, %i.gx      ; 2 uses
  %i.gz = fadd nsz <2 x double> %i.gy, %i.gu      ; 2 uses
  %i.ha = fsub nsz <2 x double> %i.gy, %i.gu      ; 2 uses
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hb, ptr %i.gd, align 8, !tbaa !24
  %i.hc = shufflevector <2 x double> %i.ha, <2 x double> %i.gz, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hc, ptr %i.ge, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.preheader136, label %.preheader137, !llvm.loop !90

.lr.ph:                                           ; preds = %.preheader136
  %i.hd = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.he = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count151 = zext nneg i32 %i.i to i64
  br label %bb.k

._crit_edge:                                      ; preds = %bb.k, %.preheader136
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv148 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next149, %bb.k ] ; 3 uses
  %i.hf = add nuw nsw i64 %indvars.iv148, %i.he   ; 3 uses
  %i.hg = xor i64 %indvars.iv148, -1
  %i.hh = add nsw i64 %i.he, %i.hg                ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hf
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !12
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.hh
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !12
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [16 x i8], ptr %i.hd, i64 %i.hm ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !29 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !30 ; 2 uses
  %i.hr = sext i32 %i.hj to i64
  %i.hs = getelementptr inbounds [16 x i8], ptr %i.hd, i64 %i.hr ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !29 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !30 ; 2 uses
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.hf ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !30
  %i.hz = load double, ptr %i.hw, align 8, !tbaa !29
  %i.ia = fneg nsz double %i.hz
  %i.ib = fmul nsz double %i.hv, %i.ia
  %i.ic = tail call nsz double @llvm.fmuladd.f64(double %i.ht, double %i.hy, double %i.ib)
  %i.id = shl nsw i64 %i.hh, 1
  %i.ie = mul nsw i64 %i.p, %i.id
  %i.if = getelementptr [8 x i8], ptr %1, i64 %i.ie ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %i.p
  store double %i.ic, ptr %i.ig, align 8, !tbaa !24
  %i.ih = load double, ptr %i.hw, align 8, !tbaa !29
  %i.ii = load double, ptr %i.hx, align 8, !tbaa !30
  %i.ij = fmul nsz double %i.hv, %i.ii
  %i.ik = tail call nsz double @llvm.fmuladd.f64(double %i.ht, double %i.ih, double %i.ij)
  %i.il = shl nuw nsw i64 %i.hf, 1
  %i.im = mul nuw nsw i64 %i.p, %i.il
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.im ; 2 uses
  store double %i.ik, ptr %i.in, align 8, !tbaa !24
  %i.io = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.hh ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !30
  %i.ir = load double, ptr %i.io, align 8, !tbaa !29
  %i.is = fneg nsz double %i.ir
  %i.it = fmul nsz double %i.hq, %i.is
  %i.iu = tail call nsz double @llvm.fmuladd.f64(double %i.ho, double %i.iq, double %i.it)
  %i.iv = getelementptr [8 x i8], ptr %i.in, i64 %i.p
  store double %i.iu, ptr %i.iv, align 8, !tbaa !24
  %i.iw = load double, ptr %i.io, align 8, !tbaa !29
  %i.ix = load double, ptr %i.ip, align 8, !tbaa !30
  %i.iy = fmul nsz double %i.hq, %i.ix
  %i.iz = tail call nsz double @llvm.fmuladd.f64(double %i.ho, double %i.iw, double %i.iy)
  store double %i.iz, ptr %i.if, align 8, !tbaa !24
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.k, !llvm.loop !91
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_pfa_init_double_c(ptr noundef initializes((140, 152)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 4 uses
  %i.a = alloca [15 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 2, ptr %7, align 4
  %i.b = ashr i32 %4, 1                           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = sdiv i32 %i.b, %i.d                      ; 3 uses
  %i.f = load double, ptr %6, align 8, !tbaa !24  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = fptrunc nsz double %i.f to float
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.h, ptr %i.i, align 4, !tbaa !39
  %i.j = and i64 %2, 6917529027641081854
  %i.k = or disjoint i64 %i.j, 2305843009213693953
  %i.l = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 2, i64 noundef %i.k, ptr noundef nonnull %7, i32 noundef %i.e, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34   ; 2 uses
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
  br i1 %i.y, label %bb.e, label %._crit_edge, !llvm.loop !92

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 5
  br i1 %exitcond74.not, label %bb.f, label %.preheader63, !llvm.loop !93

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
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !94

bb.i:                                             ; preds = %._crit_edge, %bb.c
  %.not60 = icmp eq i32 %5, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ null, %bb.i ]
  %i.ak = call i32 @ff_tx_mdct_gen_exp_double(ptr noundef nonnull %0, ptr noundef %i.aj) ; 2 uses
  %.not61 = icmp eq i32 %i.ak, 0
  br i1 %.not61, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.k
  %i.al = icmp sgt i32 %i.b, 0
  br i1 %i.al, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.l

._crit_edge69:                                    ; preds = %bb.l, %.preheader
  %i.ao = sext i32 %i.b to i64
  %i.ap = shl nsw i64 %i.ao, 4
  %i.aq = call noalias ptr @av_malloc(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !32
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
  br i1 %exitcond81.not, label %._crit_edge69, label %bb.l, !llvm.loop !95

bb.m:                                             ; preds = %._crit_edge69
  %i.av = sdiv i32 %i.b, %i.e
  call void @ff_tx_init_tabs_double(i32 noundef %i.av) #17
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge69, %bb.k, %bb.b, %bb.a, %bb.m
  %.054 = phi i32 [ %i.ak, %bb.k ], [ %i.l, %bb.a ], [ %i.p, %bb.b ], [ 0, %bb.m ], [ -12, %._crit_edge69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_5xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 5                      ; 21 uses
  %i.g = mul nuw nsw i32 %i.e, 15                 ; 15 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 6 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %..preheader136_crit_edge

..preheader136_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 25                 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = zext nneg i32 %i.e to i64                ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.u, 5
  %.idx88.i = mul nuw nsw i64 %i.u, 48
  %.idx89.i = shl nuw nsw i64 %i.u, 6
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 5           ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.f
  %i.z = add nsw i32 %i.x, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.ad = xor i32 %i.x, -1                        ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.c

.preheader136:                                    ; preds = %bb.p, %..preheader136_crit_edge
  %i.ae = phi ptr [ %.pre, %..preheader136_crit_edge ], [ %i.t, %bb.p ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ah = sext i32 %i.e to i64                    ; 4 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !10
  tail call void %i.ai(ptr noundef nonnull %i.d, ptr noundef %i.ae, ptr noundef %i.ae, i64 noundef 16) #16
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 16) #16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.idx = shl nsw i64 %i.ah, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 16) #16
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.idx165 = mul nsw i64 %i.ah, 48
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx165 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 16) #16
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.idx166 = shl nsw i64 %i.ah, 6
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx166 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 16) #16
  %i.az = icmp sgt i32 %i.i, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.ba = add i32 %i.f, %i.ad
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fsub nsz double %i.bd, %i.ac
  %i.bf = add nsw i32 %i.x, %i.g
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !24
  %i.bj = add i32 %i.g, %i.ad
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !24
  %i.bn = fadd nsz double %i.bi, %i.bm
  %i.bo = fneg nsz double %i.bn
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bp = add i32 %i.r, %i.ad
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !24
  %i.bt = fadd nsz double %i.ac, %i.bs
  %i.bu = fneg nsz double %i.bt
  %i.bv = sub nuw nsw i32 %i.x, %i.f
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !24
  %i.bz = add i32 %i.g, %i.ad
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !24
  %i.cd = fsub nsz double %i.by, %i.cc
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz double [ %i.be, %bb.b ], [ %i.bu, %bb.c ]
  %.sroa.6.0 = phi nsz double [ %i.bo, %bb.b ], [ %i.cd, %bb.c ]
  %i.ce = ashr i32 %i.x, 1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.cf
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !24 ; 2 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fneg nsz <2 x double> %i.ci
  %i.cm = shufflevector <2 x double> %i.ch, <2 x double> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.cn = fmul nsz <2 x double> %i.ck, %i.cm
  %i.co = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.ci, <2 x double> %i.cn) ; 5 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !12 ; 6 uses
  %i.cu = icmp slt i32 %i.ct, %i.f
  %i.cv = add nsw i32 %i.ct, %i.f
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !24 ; 2 uses
  %i.cz = xor i32 %i.ct, -1                       ; 4 uses
  br i1 %i.cu, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.da = add i32 %i.r, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24
  %i.de = fadd nsz double %i.cy, %i.dd
  %i.df = fneg nsz double %i.de
  %i.dg = sub nuw nsw i32 %i.ct, %i.f
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !24
  %i.dk = add i32 %i.g, %i.cz
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !24
  %i.do = fsub nsz double %i.dj, %i.dn
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dp = add i32 %i.f, %i.cz
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !24
  %i.dt = fsub nsz double %i.ds, %i.cy
  %i.du = add nsw i32 %i.ct, %i.g
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !24
  %i.dy = add i32 %i.g, %i.cz
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !24
  %i.ec = fadd nsz double %i.dx, %i.eb
  %i.ed = fneg nsz double %i.ec
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz double [ %i.dt, %bb.f ], [ %i.df, %bb.e ]
  %.sroa.6.0.1 = phi nsz double [ %i.ed, %bb.f ], [ %i.do, %bb.e ]
  %i.ee = ashr i32 %i.ct, 1
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ef
  %i.eh = load <2 x double>, ptr %i.eg, align 8, !tbaa !24 ; 2 uses
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ej = insertelement <2 x double> poison, double %.sroa.6.0.1, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fneg nsz <2 x double> %i.ei
  %i.em = shufflevector <2 x double> %i.eh, <2 x double> %i.el, <2 x i32> <i32 0, i32 2>
  %i.en = fmul nsz <2 x double> %i.ek, %i.em
  %i.eo = insertelement <2 x double> poison, double %.sroa.077.0.1, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.ei, <2 x double> %i.en) ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !12 ; 6 uses
  %i.eu = icmp slt i32 %i.et, %i.f
  %i.ev = add nsw i32 %i.et, %i.f
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !24 ; 2 uses
  %i.ez = xor i32 %i.et, -1                       ; 4 uses
  br i1 %i.eu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fa = add i32 %i.r, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !24
  %i.fe = fadd nsz double %i.ey, %i.fd
  %i.ff = fneg nsz double %i.fe
  %i.fg = sub nuw nsw i32 %i.et, %i.f
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !24
  %i.fk = add i32 %i.g, %i.ez
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !24
  %i.fo = fsub nsz double %i.fj, %i.fn
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.fp = add i32 %i.f, %i.ez
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24
  %i.ft = fsub nsz double %i.fs, %i.ey
  %i.fu = add nsw i32 %i.et, %i.g
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !24
  %i.fy = add i32 %i.g, %i.ez
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !24
  %i.gc = fadd nsz double %i.fx, %i.gb
  %i.gd = fneg nsz double %i.gc
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.077.0.2 = phi nsz double [ %i.ft, %bb.i ], [ %i.ff, %bb.h ]
  %.sroa.6.0.2 = phi nsz double [ %i.gd, %bb.i ], [ %i.fo, %bb.h ]
  %i.ge = ashr i32 %i.et, 1
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.gf
  %i.gh = load <2 x double>, ptr %i.gg, align 8, !tbaa !24 ; 2 uses
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gj = insertelement <2 x double> poison, double %.sroa.6.0.2, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = fneg nsz <2 x double> %i.gi
  %i.gm = shufflevector <2 x double> %i.gh, <2 x double> %i.gl, <2 x i32> <i32 0, i32 2>
  %i.gn = fmul nsz <2 x double> %i.gk, %i.gm
  %i.go = insertelement <2 x double> poison, double %.sroa.077.0.2, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.gi, <2 x double> %i.gn) ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !12 ; 6 uses
  %i.gu = icmp slt i32 %i.gt, %i.f
  %i.gv = add nsw i32 %i.gt, %i.f
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !24 ; 2 uses
  %i.gz = xor i32 %i.gt, -1                       ; 4 uses
  br i1 %i.gu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ha = add i32 %i.r, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !24
  %i.he = fadd nsz double %i.gy, %i.hd
  %i.hf = fneg nsz double %i.he
  %i.hg = sub nuw nsw i32 %i.gt, %i.f
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !24
  %i.hk = add i32 %i.g, %i.gz
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !24
  %i.ho = fsub nsz double %i.hj, %i.hn
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hp = add i32 %i.f, %i.gz
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hq
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !24
  %i.ht = fsub nsz double %i.hs, %i.gy
  %i.hu = add nsw i32 %i.gt, %i.g
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !24
  %i.hy = add i32 %i.g, %i.gz
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !24
  %i.ic = fadd nsz double %i.hx, %i.ib
  %i.id = fneg nsz double %i.ic
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.077.0.3 = phi nsz double [ %i.ht, %bb.l ], [ %i.hf, %bb.k ]
  %.sroa.6.0.3 = phi nsz double [ %i.id, %bb.l ], [ %i.ho, %bb.k ]
  %i.ie = ashr i32 %i.gt, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.if
  %i.ih = load <2 x double>, ptr %i.ig, align 8, !tbaa !24 ; 2 uses
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ij = insertelement <2 x double> poison, double %.sroa.6.0.3, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fneg nsz <2 x double> %i.ii
  %i.im = shufflevector <2 x double> %i.ih, <2 x double> %i.il, <2 x i32> <i32 0, i32 2>
  %i.in = fmul nsz <2 x double> %i.ik, %i.im
  %i.io = insertelement <2 x double> poison, double %.sroa.077.0.3, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ii, <2 x double> %i.in) ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !12 ; 6 uses
  %i.iu = icmp slt i32 %i.it, %i.f
  %i.iv = add nsw i32 %i.it, %i.f
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %2, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !24 ; 2 uses
  %i.iz = xor i32 %i.it, -1                       ; 4 uses
  br i1 %i.iu, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ja = add i32 %i.r, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !24
  %i.je = fadd nsz double %i.iy, %i.jd
  %i.jf = fneg nsz double %i.je
  %i.jg = sub nuw nsw i32 %i.it, %i.f
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !24
  %i.jk = add i32 %i.g, %i.iz
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jl
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !24
  %i.jo = fsub nsz double %i.jj, %i.jn
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.jp = add i32 %i.f, %i.iz
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !24
  %i.jt = fsub nsz double %i.js, %i.iy
  %i.ju = add nsw i32 %i.it, %i.g
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jv
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !24
  %i.jy = add i32 %i.g, %i.iz
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !24
  %i.kc = fadd nsz double %i.jx, %i.kb
  %i.kd = fneg nsz double %i.kc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.077.0.4 = phi nsz double [ %i.jt, %bb.o ], [ %i.jf, %bb.n ]
  %.sroa.6.0.4 = phi nsz double [ %i.kd, %bb.o ], [ %i.jo, %bb.n ]
  %i.ke = ashr i32 %i.it, 1
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !12
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.kj ; 5 uses
  %i.kl = fsub nsz <2 x double> %i.gq, %i.iq      ; 2 uses
  %i.km = fadd nsz <2 x double> %i.gq, %i.iq      ; 3 uses
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.u
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx88.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx89.i
  %i.kr = load <2 x double>, ptr %i.kg, align 8, !tbaa !24 ; 2 uses
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kt = insertelement <2 x double> poison, double %.sroa.6.0.4, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = fneg nsz <2 x double> %i.ks
  %i.kw = shufflevector <2 x double> %i.kr, <2 x double> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.kx = fmul nsz <2 x double> %i.ku, %i.kw
  %i.ky = insertelement <2 x double> poison, double %.sroa.077.0.4, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kz, <2 x double> %i.ks, <2 x double> %i.kx) ; 2 uses
  %i.lb = fsub nsz <2 x double> %i.eq, %i.la      ; 2 uses
  %i.lc = fadd nsz <2 x double> %i.eq, %i.la      ; 3 uses
  %i.ld = fadd nsz <2 x double> %i.cq, %i.lc
  %i.le = fadd nsz <2 x double> %i.ld, %i.km
  store <2 x double> %i.le, ptr %i.kk, align 8, !tbaa !24
  %i.lf = load <2 x double>, ptr @ff_tx_tab_53_double, align 16
  %i.lg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.lh = fneg nsz <2 x double> %i.km
  %i.li = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lj = fmul nsz <2 x double> %i.li, %i.lh
  %i.lk = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ll = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.lc, <2 x double> %i.lj) ; 2 uses
  %i.lm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %i.ln = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lp = fmul nsz <2 x double> %i.kl, %i.lo
  %i.lq = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> %i.lb, <2 x double> %i.lp)
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lt = fsub nsz <2 x double> %i.ll, %i.ls      ; 2 uses
  %i.lu = fadd nsz <2 x double> %i.ll, %i.ls      ; 2 uses
  %i.lv = shufflevector <2 x double> %i.lt, <2 x double> %i.lu, <2 x i32> <i32 0, i32 3>
  %i.lw = shufflevector <2 x double> %i.lu, <2 x double> %i.lt, <2 x i32> <i32 0, i32 3>
  %i.lx = fadd nsz <2 x double> %i.cq, %i.lw
  store <2 x double> %i.lx, ptr %i.kn, align 8, !tbaa !24
  %i.ly = fneg nsz <2 x double> %i.lc
  %i.lz = fmul nsz <2 x double> %i.li, %i.ly
  %i.ma = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.km, <2 x double> %i.lz) ; 2 uses
  %i.mb = fneg nsz <2 x double> %i.lb
  %i.mc = fmul nsz <2 x double> %i.lo, %i.mb
  %i.md = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> %i.kl, <2 x double> %i.mc)
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mf = fadd nsz <2 x double> %i.ma, %i.me      ; 2 uses
  %i.mg = fsub nsz <2 x double> %i.ma, %i.me      ; 2 uses
  %i.mh = shufflevector <2 x double> %i.mf, <2 x double> %i.mg, <2 x i32> <i32 0, i32 3>
  %i.mi = shufflevector <2 x double> %i.mg, <2 x double> %i.mf, <2 x i32> <i32 0, i32 3>
  %i.mj = fadd nsz <2 x double> %i.cq, %i.mi
  store <2 x double> %i.mj, ptr %i.ko, align 8, !tbaa !24
  %i.mk = fadd nsz <2 x double> %i.cq, %i.mh
  store <2 x double> %i.mk, ptr %i.kp, align 8, !tbaa !24
  %i.ml = fadd nsz <2 x double> %i.cq, %i.lv
  store <2 x double> %i.ml, ptr %i.kq, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.preheader136, label %.preheader137, !llvm.loop !96

.lr.ph:                                           ; preds = %.preheader136
  %i.mm = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.mn = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count151 = zext nneg i32 %i.i to i64
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q, %.preheader136
  ret void

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv148 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next149, %bb.q ] ; 3 uses
  %i.mo = add nuw nsw i64 %indvars.iv148, %i.mn   ; 3 uses
  %i.mp = xor i64 %indvars.iv148, -1
  %i.mq = add nsw i64 %i.mn, %i.mp                ; 3 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mo
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !12
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.mq
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !12
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [16 x i8], ptr %i.mm, i64 %i.mv ; 2 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !29 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.mz = load double, ptr %i.my, align 8, !tbaa !30 ; 2 uses
  %i.na = sext i32 %i.ms to i64
  %i.nb = getelementptr inbounds [16 x i8], ptr %i.mm, i64 %i.na ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !29 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !30 ; 2 uses
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.mo ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !30
  %i.ni = load double, ptr %i.nf, align 8, !tbaa !29
  %i.nj = fneg nsz double %i.ni
  %i.nk = fmul nsz double %i.ne, %i.nj
  %i.nl = tail call nsz double @llvm.fmuladd.f64(double %i.nc, double %i.nh, double %i.nk)
  %i.nm = shl nsw i64 %i.mq, 1
  %i.nn = mul nsw i64 %i.p, %i.nm
  %i.no = getelementptr [8 x i8], ptr %1, i64 %i.nn ; 2 uses
  %i.np = getelementptr [8 x i8], ptr %i.no, i64 %i.p
  store double %i.nl, ptr %i.np, align 8, !tbaa !24
  %i.nq = load double, ptr %i.nf, align 8, !tbaa !29
  %i.nr = load double, ptr %i.ng, align 8, !tbaa !30
  %i.ns = fmul nsz double %i.ne, %i.nr
  %i.nt = tail call nsz double @llvm.fmuladd.f64(double %i.nc, double %i.nq, double %i.ns)
  %i.nu = shl nuw nsw i64 %i.mo, 1
  %i.nv = mul nuw nsw i64 %i.p, %i.nu
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nv ; 2 uses
  store double %i.nt, ptr %i.nw, align 8, !tbaa !24
  %i.nx = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.mq ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !30
  %i.oa = load double, ptr %i.nx, align 8, !tbaa !29
  %i.ob = fneg nsz double %i.oa
  %i.oc = fmul nsz double %i.mz, %i.ob
  %i.od = tail call nsz double @llvm.fmuladd.f64(double %i.mx, double %i.nz, double %i.oc)
  %i.oe = getelementptr [8 x i8], ptr %i.nw, i64 %i.p
  store double %i.od, ptr %i.oe, align 8, !tbaa !24
  %i.of = load double, ptr %i.nx, align 8, !tbaa !29
  %i.og = load double, ptr %i.ny, align 8, !tbaa !30
  %i.oh = fmul nsz double %i.mz, %i.og
  %i.oi = tail call nsz double @llvm.fmuladd.f64(double %i.mx, double %i.of, double %i.oh)
  store double %i.oi, ptr %i.no, align 8, !tbaa !24
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.q, !llvm.loop !97
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_7xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %.sroa.6 = alloca [4 x %struct.AVComplexDouble], align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 7                      ; 29 uses
  %i.g = mul nuw nsw i32 %i.e, 21                 ; 21 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 35                 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 7 uses
  %.idx.i = shl nuw nsw i64 %i.u, 5
  %.idx163.i = mul nuw nsw i64 %i.u, 48
  %.idx164.i = shl nuw nsw i64 %i.u, 6
  %.idx165.i = mul nuw nsw i64 %i.u, 80
  %.idx166.i = mul nuw nsw i64 %i.u, 96
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  %.sroa.6.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 32
  %.sroa.6.48..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 48
  %.sroa.6.48..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 48
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8
  %.sroa.6.40..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 40
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 24
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.v
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.v ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 28
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 7 uses
  %i.v = load i32, ptr %invariant.gep, align 4, !tbaa !12 ; 6 uses
  %i.w = icmp slt i32 %i.v, %i.f
  %i.x = add nsw i32 %i.v, %i.f
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.ab = xor i32 %i.v, -1                        ; 4 uses
  br i1 %i.w, label %bb.b, label %bb.c

.preheader136.loopexit:                           ; preds = %bb.v
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ac = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.af = sext i32 %i.e to i64                    ; 6 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  tail call void %i.ag(ptr noundef %i.ac, ptr noundef %i.ah, ptr noundef %i.ah, i64 noundef 16) #16
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.af ; 2 uses
  tail call void %i.ai(ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.al, i64 noundef 16) #16
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx160 = shl nsw i64 %i.af, 5
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx160 ; 2 uses
  tail call void %i.am(ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ap, i64 noundef 16) #16
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx161 = mul nsw i64 %i.af, 48
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.idx161 ; 2 uses
  tail call void %i.aq(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.at, i64 noundef 16) #16
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx162 = shl nsw i64 %i.af, 6
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx162 ; 2 uses
  tail call void %i.au(ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.ax, i64 noundef 16) #16
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx163 = mul nsw i64 %i.af, 80
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %.idx163 ; 2 uses
  tail call void %i.ay(ptr noundef %i.az, ptr noundef %i.bb, ptr noundef %i.bb, i64 noundef 16) #16
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx164 = mul nsw i64 %i.af, 96
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %.idx164 ; 2 uses
  tail call void %i.bc(ptr noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bf, i64 noundef 16) #16
  %i.bg = icmp sgt i32 %i.i, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.bh = add i32 %i.f, %i.ab
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !24
  %i.bl = fsub nsz double %i.bk, %i.aa
  %i.bm = add nsw i32 %i.v, %i.g
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = add i32 %i.g, %i.ab
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !24
  %i.bu = fadd nsz double %i.bp, %i.bt
  %i.bv = fneg nsz double %i.bu
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bw = add i32 %i.r, %i.ab
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !24
  %i.ca = fadd nsz double %i.aa, %i.bz
  %i.cb = fneg nsz double %i.ca
  %i.cc = sub nuw nsw i32 %i.v, %i.f
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !24
  %i.cg = add i32 %i.g, %i.ab
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !24
  %i.ck = fsub nsz double %i.cf, %i.cj
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz double [ %i.bl, %bb.b ], [ %i.cb, %bb.c ]
  %.sroa.6.0 = phi nsz double [ %i.bv, %bb.b ], [ %i.ck, %bb.c ]
  %i.cl = ashr i32 %i.v, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.cm
  %i.co = load <2 x double>, ptr %i.cn, align 8, !tbaa !24 ; 2 uses
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fneg nsz <2 x double> %i.cp
  %i.ct = shufflevector <2 x double> %i.co, <2 x double> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.cu = fmul nsz <2 x double> %i.cr, %i.ct
  %i.cv = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cp, <2 x double> %i.cu) ; 7 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.cy = load i32, ptr %gep.1, align 4, !tbaa !12 ; 6 uses
  %i.cz = icmp slt i32 %i.cy, %i.f
  %i.da = add nsw i32 %i.cy, %i.f
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24 ; 2 uses
  %i.de = xor i32 %i.cy, -1                       ; 4 uses
  br i1 %i.cz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = add i32 %i.r, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !24
  %i.dj = fadd nsz double %i.dd, %i.di
  %i.dk = fneg nsz double %i.dj
  %i.dl = sub nuw nsw i32 %i.cy, %i.f
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = add i32 %i.g, %i.de
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !24
  %i.dt = fsub nsz double %i.do, %i.ds
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.du = add i32 %i.f, %i.de
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !24
  %i.dy = fsub nsz double %i.dx, %i.dd
  %i.dz = add nsw i32 %i.cy, %i.g
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !24
  %i.ed = add i32 %i.g, %i.de
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !24
  %i.eh = fadd nsz double %i.ec, %i.eg
  %i.ei = fneg nsz double %i.eh
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz double [ %i.dy, %bb.f ], [ %i.dk, %bb.e ]
  %.sroa.6.0.1 = phi nsz double [ %i.ei, %bb.f ], [ %i.dt, %bb.e ]
  %i.ej = ashr i32 %i.cy, 1
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ek
  %i.em = load <2 x double>, ptr %i.el, align 8, !tbaa !24 ; 2 uses
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eo = insertelement <2 x double> poison, double %.sroa.6.0.1, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fneg nsz <2 x double> %i.en
  %i.er = shufflevector <2 x double> %i.em, <2 x double> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.es = fmul nsz <2 x double> %i.ep, %i.er
  %i.et = insertelement <2 x double> poison, double %.sroa.077.0.1, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.en, <2 x double> %i.es) ; 3 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.ew = load i32, ptr %gep.2, align 4, !tbaa !12 ; 6 uses
  %i.ex = icmp slt i32 %i.ew, %i.f
  %i.ey = add nsw i32 %i.ew, %i.f
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !24 ; 2 uses
  %i.fc = xor i32 %i.ew, -1                       ; 4 uses
  br i1 %i.ex, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fd = add i32 %i.r, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !24
  %i.fh = fadd nsz double %i.fb, %i.fg
  %i.fi = fneg nsz double %i.fh
  %i.fj = sub nuw nsw i32 %i.ew, %i.f
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !24
  %i.fn = add i32 %i.g, %i.fc
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !24
  %i.fr = fsub nsz double %i.fm, %i.fq
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.fs = add i32 %i.f, %i.fc
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !24
  %i.fw = fsub nsz double %i.fv, %i.fb
  %i.fx = add nsw i32 %i.ew, %i.g
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !24
  %i.gb = add i32 %i.g, %i.fc
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !24
  %i.gf = fadd nsz double %i.ga, %i.ge
  %i.gg = fneg nsz double %i.gf
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.077.0.2 = phi nsz double [ %i.fw, %bb.i ], [ %i.fi, %bb.h ]
  %.sroa.6.0.2 = phi nsz double [ %i.gg, %bb.i ], [ %i.fr, %bb.h ]
  %i.gh = ashr i32 %i.ew, 1
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.gi
  %i.gk = load <2 x double>, ptr %i.gj, align 8, !tbaa !24 ; 2 uses
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gm = insertelement <2 x double> poison, double %.sroa.6.0.2, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fneg nsz <2 x double> %i.gl
  %i.gp = shufflevector <2 x double> %i.gk, <2 x double> %i.go, <2 x i32> <i32 0, i32 2>
  %i.gq = fmul nsz <2 x double> %i.gn, %i.gp
  %i.gr = insertelement <2 x double> poison, double %.sroa.077.0.2, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gl, <2 x double> %i.gq)
  store <2 x double> %i.gt, ptr %.sroa.6, align 16, !tbaa !24
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  %i.gu = load i32, ptr %gep.3, align 4, !tbaa !12 ; 6 uses
  %i.gv = icmp slt i32 %i.gu, %i.f
  %i.gw = add nsw i32 %i.gu, %i.f
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gx
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !24 ; 2 uses
  %i.ha = xor i32 %i.gu, -1                       ; 4 uses
  br i1 %i.gv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hb = add i32 %i.r, %i.ha
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hc
  %i.he = load double, ptr %i.hd, align 8, !tbaa !24
  %i.hf = fadd nsz double %i.gz, %i.he
  %i.hg = fneg nsz double %i.hf
  %i.hh = sub nuw nsw i32 %i.gu, %i.f
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !24
  %i.hl = add i32 %i.g, %i.ha
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !24
  %i.hp = fsub nsz double %i.hk, %i.ho
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hq = add i32 %i.f, %i.ha
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !24
  %i.hu = fsub nsz double %i.ht, %i.gz
  %i.hv = add nsw i32 %i.gu, %i.g
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !24
  %i.hz = add i32 %i.g, %i.ha
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !24
  %i.id = fadd nsz double %i.hy, %i.ic
  %i.ie = fneg nsz double %i.id
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.077.0.3 = phi nsz double [ %i.hu, %bb.l ], [ %i.hg, %bb.k ]
  %.sroa.6.0.3 = phi nsz double [ %i.ie, %bb.l ], [ %i.hp, %bb.k ]
  %i.if = ashr i32 %i.gu, 1
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ig
  %i.ii = load <2 x double>, ptr %i.ih, align 8, !tbaa !24 ; 2 uses
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ik = insertelement <2 x double> poison, double %.sroa.6.0.3, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = fneg nsz <2 x double> %i.ij
  %i.in = shufflevector <2 x double> %i.ii, <2 x double> %i.im, <2 x i32> <i32 0, i32 2>
  %i.io = fmul nsz <2 x double> %i.il, %i.in
  %i.ip = insertelement <2 x double> poison, double %.sroa.077.0.3, i64 0
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.ij, <2 x double> %i.io)
  store <2 x double> %i.ir, ptr %.sroa.6.16..sroa_idx, align 16, !tbaa !24
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.is = load i32, ptr %gep.4, align 4, !tbaa !12 ; 6 uses
  %i.it = icmp slt i32 %i.is, %i.f
  %i.iu = add nsw i32 %i.is, %i.f
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !24 ; 2 uses
  %i.iy = xor i32 %i.is, -1                       ; 4 uses
  br i1 %i.it, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.iz = add i32 %i.r, %i.iy
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !24
  %i.jd = fadd nsz double %i.ix, %i.jc
  %i.je = fneg nsz double %i.jd
  %i.jf = sub nuw nsw i32 %i.is, %i.f
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !24
  %i.jj = add i32 %i.g, %i.iy
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jk
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !24
  %i.jn = fsub nsz double %i.ji, %i.jm
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.jo = add i32 %i.f, %i.iy
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !24
  %i.js = fsub nsz double %i.jr, %i.ix
  %i.jt = add nsw i32 %i.is, %i.g
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !24
  %i.jx = add i32 %i.g, %i.iy
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !24
  %i.kb = fadd nsz double %i.jw, %i.ka
  %i.kc = fneg nsz double %i.kb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.077.0.4 = phi nsz double [ %i.js, %bb.o ], [ %i.je, %bb.n ]
  %.sroa.6.0.4 = phi nsz double [ %i.kc, %bb.o ], [ %i.jn, %bb.n ]
  %i.kd = ashr i32 %i.is, 1
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ke
  %i.kg = load <2 x double>, ptr %i.kf, align 8, !tbaa !24 ; 2 uses
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ki = insertelement <2 x double> poison, double %.sroa.6.0.4, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = fneg nsz <2 x double> %i.kh
  %i.kl = shufflevector <2 x double> %i.kg, <2 x double> %i.kk, <2 x i32> <i32 0, i32 2>
  %i.km = fmul nsz <2 x double> %i.kj, %i.kl
  %i.kn = insertelement <2 x double> poison, double %.sroa.077.0.4, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> %i.kh, <2 x double> %i.km)
  store <2 x double> %i.kp, ptr %.sroa.6.32..sroa_idx, align 16, !tbaa !24
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 20
  %i.kq = load i32, ptr %gep.5, align 4, !tbaa !12 ; 6 uses
  %i.kr = icmp slt i32 %i.kq, %i.f
  %i.ks = add nsw i32 %i.kq, %i.f
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %2, i64 %i.kt
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !24 ; 2 uses
  %i.kw = xor i32 %i.kq, -1                       ; 4 uses
  br i1 %i.kr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kx = add i32 %i.r, %i.kw
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !24
  %i.lb = fadd nsz double %i.kv, %i.la
  %i.lc = fneg nsz double %i.lb
  %i.ld = sub nuw nsw i32 %i.kq, %i.f
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.le
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !24
  %i.lh = add i32 %i.g, %i.kw
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !24
  %i.ll = fsub nsz double %i.lg, %i.lk
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.lm = add i32 %i.f, %i.kw
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ln
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !24
  %i.lq = fsub nsz double %i.lp, %i.kv
  %i.lr = add nsw i32 %i.kq, %i.g
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !24
  %i.lv = add i32 %i.g, %i.kw
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lw
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !24
  %i.lz = fadd nsz double %i.lu, %i.ly
  %i.ma = fneg nsz double %i.lz
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.077.0.5 = phi nsz double [ %i.lq, %bb.r ], [ %i.lc, %bb.q ]
  %.sroa.6.0.5 = phi nsz double [ %i.ma, %bb.r ], [ %i.ll, %bb.q ]
  %i.mb = ashr i32 %i.kq, 1
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.mc
  %i.me = load <2 x double>, ptr %i.md, align 8, !tbaa !24 ; 2 uses
  %i.mf = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mg = insertelement <2 x double> poison, double %.sroa.6.0.5, i64 0
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mi = fneg nsz <2 x double> %i.mf
  %i.mj = shufflevector <2 x double> %i.me, <2 x double> %i.mi, <2 x i32> <i32 0, i32 2>
  %i.mk = fmul nsz <2 x double> %i.mh, %i.mj
  %i.ml = insertelement <2 x double> poison, double %.sroa.077.0.5, i64 0
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> %i.mf, <2 x double> %i.mk)
  store <2 x double> %i.mn, ptr %.sroa.6.48..sroa_idx168, align 16, !tbaa !24
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %i.mo = load i32, ptr %gep.6, align 4, !tbaa !12 ; 6 uses
  %i.mp = icmp slt i32 %i.mo, %i.f
  %i.mq = add nsw i32 %i.mo, %i.f
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mr
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !24 ; 2 uses
  %i.mu = xor i32 %i.mo, -1                       ; 4 uses
  br i1 %i.mp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.mv = add i32 %i.r, %i.mu
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !24
  %i.mz = fadd nsz double %i.mt, %i.my
  %i.na = fneg nsz double %i.mz
  %i.nb = sub nuw nsw i32 %i.mo, %i.f
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nc
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !24
  %i.nf = add i32 %i.g, %i.mu
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ng
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !24
  %i.nj = fsub nsz double %i.ne, %i.ni
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.nk = add i32 %i.f, %i.mu
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nl
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !24
  %i.no = fsub nsz double %i.nn, %i.mt
  %i.np = add nsw i32 %i.mo, %i.g
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nq
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !24
  %i.nt = add i32 %i.g, %i.mu
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !24
  %i.nx = fadd nsz double %i.ns, %i.nw
  %i.ny = fneg nsz double %i.nx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.077.0.6 = phi nsz double [ %i.no, %bb.u ], [ %i.na, %bb.t ]
  %.sroa.6.0.6 = phi nsz double [ %i.ny, %bb.u ], [ %i.nj, %bb.t ]
  %i.nz = ashr i32 %i.mo, 1
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.oa
  %i.oc = load <2 x double>, ptr %i.ob, align 8, !tbaa !24 ; 2 uses
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.oe = insertelement <2 x double> poison, double %.sroa.6.0.6, i64 0
  %i.of = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.og = fneg nsz <2 x double> %i.od
  %i.oh = shufflevector <2 x double> %i.oc, <2 x double> %i.og, <2 x i32> <i32 0, i32 2>
  %i.oi = fmul nsz <2 x double> %i.of, %i.oh
  %i.oj = insertelement <2 x double> poison, double %.sroa.077.0.6, i64 0
  %i.ok = shufflevector <2 x double> %i.oj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ok, <2 x double> %i.od, <2 x double> %i.oi) ; 3 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.on = load i32, ptr %i.om, align 4, !tbaa !12
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.oo ; 7 uses
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %i.op, i64 %i.u
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx163.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx164.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx165.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx166.i
  %i.ow = fadd nsz <2 x double> %i.ev, %i.ol      ; 3 uses
  %.sroa.6.0..sroa.6.32. = load <2 x double>, ptr %.sroa.6, align 16, !tbaa !24 ; 2 uses
  %.sroa.6.48..sroa.6.80. = load <2 x double>, ptr %.sroa.6.48..sroa_idx167, align 16, !tbaa !24 ; 2 uses
  %.sroa.6.8..sroa.6.40. = load <2 x double>, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !24 ; 2 uses
  %.sroa.6.40..sroa.6.72. = load <2 x double>, ptr %.sroa.6.40..sroa_idx166, align 8, !tbaa !24 ; 2 uses
  %i.ox = fsub nsz <2 x double> %.sroa.6.0..sroa.6.32., %.sroa.6.48..sroa.6.80. ; 4 uses
  %.sroa.6.24..sroa.6.56. = load <2 x double>, ptr %.sroa.6.24..sroa_idx, align 8, !tbaa !24 ; 4 uses
  %i.oy = shufflevector <2 x double> %i.ev, <2 x double> %.sroa.6.8..sroa.6.40., <2 x i32> <i32 1, i32 3>
  %i.oz = shufflevector <2 x double> %i.ol, <2 x double> %.sroa.6.24..sroa.6.56., <2 x i32> <i32 1, i32 3>
  %i.pa = fsub nsz <2 x double> %i.oy, %i.oz      ; 4 uses
  %i.pb = shufflevector <2 x double> %.sroa.6.48..sroa.6.80., <2 x double> %.sroa.6.24..sroa.6.56., <2 x i32> <i32 1, i32 3>
  %i.pc = fadd nsz <2 x double> %.sroa.6.8..sroa.6.40., %i.pb ; 3 uses
  %i.pd = shufflevector <2 x double> %.sroa.6.24..sroa.6.56., <2 x double> %i.ev, <2 x i32> <i32 0, i32 2>
  %i.pe = shufflevector <2 x double> %.sroa.6.40..sroa.6.72., <2 x double> %i.ol, <2 x i32> <i32 0, i32 2>
  %i.pf = fsub nsz <2 x double> %i.pd, %i.pe      ; 4 uses
  %i.pg = shufflevector <2 x double> %.sroa.6.24..sroa.6.56., <2 x double> %.sroa.6.0..sroa.6.32., <2 x i32> <i32 2, i32 0>
  %i.ph = shufflevector <2 x double> %.sroa.6.40..sroa.6.72., <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pi = fadd nsz <2 x double> %i.pg, %i.ph      ; 3 uses
  %i.pj = fadd nsz <2 x double> %i.cx, %i.ow
  %i.pk = shufflevector <2 x double> %i.pi, <2 x double> %i.pc, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pl = fadd nsz <2 x double> %i.pj, %i.pk
  %i.pm = shufflevector <2 x double> %i.pc, <2 x double> %i.pi, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.pn = fadd nsz <2 x double> %i.pl, %i.pm
  store <2 x double> %i.pn, ptr %i.op, align 8, !tbaa !24
  %i.po = load <2 x double>, ptr @ff_tx_tab_7_double, align 16
  %i.pp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 8), align 8, !tbaa !24 ; 6 uses
  %i.pq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 16), align 16
  %i.pr = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 32), align 16, !tbaa !24 ; 4 uses
  %i.ps = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 40), align 8, !tbaa !30 ; 3 uses
  %i.pt = shufflevector <2 x double> %i.pp, <2 x double> %i.pr, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pu = fneg nsz <2 x double> %i.pt             ; 3 uses
  %i.pv = fneg nsz <2 x double> %i.pc
  %i.pw = fmul nsz <2 x double> %i.pt, %i.pv
  %i.px = shufflevector <2 x double> %i.pw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.py = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.pz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.ow, <2 x double> %i.px)
  %i.qa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> %i.pi, <2 x double> %i.pz) ; 2 uses
  %i.qb = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 24), align 8, !tbaa !30 ; 2 uses
  %i.qc = extractelement <2 x double> %i.pp, i64 0
  %i.qd = fneg nsz double %i.qc
  %i.qe = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qf = fneg nsz double %i.qb
  %i.qg = insertelement <2 x double> poison, double %i.qb, i64 0
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qi = fmul nsz <2 x double> %i.ox, %i.qh
  %i.qj = shufflevector <2 x double> %i.qi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qk = shufflevector <2 x double> %i.pr, <2 x double> %i.pp, <2 x i32> <i32 1, i32 2>
  %i.ql = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qk, <2 x double> %i.pf, <2 x double> %i.qj)
  %i.qm = shufflevector <2 x double> %i.pp, <2 x double> %i.pr, <2 x i32> <i32 0, i32 3>
  %i.qn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qm, <2 x double> %i.pa, <2 x double> %i.ql) ; 2 uses
  %i.qo = fsub nsz <2 x double> %i.qa, %i.qn      ; 2 uses
  %i.qp = fadd nsz <2 x double> %i.qa, %i.qn      ; 2 uses
  %i.qq = shufflevector <2 x double> %i.qo, <2 x double> %i.qp, <2 x i32> <i32 0, i32 3>
  %i.qr = shufflevector <2 x double> %i.qp, <2 x double> %i.qo, <2 x i32> <i32 0, i32 3>
  %i.qs = fadd nsz <2 x double> %i.cx, %i.qr
  store <2 x double> %i.qs, ptr %i.oq, align 8, !tbaa !24
  %i.qt = fneg nsz <2 x double> %i.ow             ; 2 uses
  %i.qu = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qv = fmul nsz <2 x double> %i.qu, %i.qt
  %i.qw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.pm, <2 x double> %i.qv)
  %i.qx = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qx, <2 x double> %i.pk, <2 x double> %i.qw) ; 2 uses
  %i.qz = shufflevector <2 x double> %i.ox, <2 x double> %i.pa, <2 x i32> <i32 1, i32 3>
  %i.ra = shufflevector <2 x double> %i.pp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.rb = insertelement <2 x double> %i.ra, double %i.ps, i64 0
  %i.rc = fmul nsz <2 x double> %i.qz, %i.rb
  %i.rd = insertelement <2 x double> %i.pp, double %i.ps, i64 1
  %i.re = shufflevector <2 x double> %i.pf, <2 x double> %i.ox, <2 x i32> <i32 0, i32 2>
  %i.rf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rd, <2 x double> %i.re, <2 x double> %i.rc)
  %i.rg = insertelement <2 x double> poison, double %i.qf, i64 0
  %i.rh = shufflevector <2 x double> %i.rg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ri = shufflevector <2 x double> %i.pa, <2 x double> %i.pf, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.rj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rh, <2 x double> %i.ri, <2 x double> %i.rf) ; 2 uses
  %i.rk = fadd nsz <2 x double> %i.qy, %i.rj      ; 2 uses
  %i.rl = fsub nsz <2 x double> %i.qy, %i.rj      ; 2 uses
  %i.rm = shufflevector <2 x double> %i.rk, <2 x double> %i.rl, <2 x i32> <i32 0, i32 3>
  %i.rn = shufflevector <2 x double> %i.rl, <2 x double> %i.rk, <2 x i32> <i32 0, i32 3>
  %i.ro = fadd nsz <2 x double> %i.cx, %i.rn
  store <2 x double> %i.ro, ptr %i.or, align 8, !tbaa !24
  %i.rp = shufflevector <2 x double> %i.pf, <2 x double> %i.pa, <2 x i32> <i32 0, i32 3>
  %i.rq = fmul nsz <2 x double> %i.rp, %i.qh
  %i.rr = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.ri, <2 x double> %i.rq)
  %i.ru = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rv, <2 x double> %i.qe, <2 x double> %i.rt) ; 2 uses
  %i.rx = shufflevector <2 x double> %i.pr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ry = fmul nsz <2 x double> %i.rx, %i.qt
  %i.rz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.pk, <2 x double> %i.ry)
  %i.sa = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sa, <2 x double> %i.pm, <2 x double> %i.rz) ; 2 uses
  %i.sc = fsub nsz <2 x double> %i.sb, %i.rw      ; 2 uses
  %i.sd = fadd nsz <2 x double> %i.sb, %i.rw      ; 2 uses
  %i.se = shufflevector <2 x double> %i.sc, <2 x double> %i.sd, <2 x i32> <i32 0, i32 3>
  %i.sf = shufflevector <2 x double> %i.sd, <2 x double> %i.sc, <2 x i32> <i32 0, i32 3>
  %i.sg = fadd nsz <2 x double> %i.cx, %i.sf
  store <2 x double> %i.sg, ptr %i.os, align 8, !tbaa !24
  %i.sh = fadd nsz <2 x double> %i.cx, %i.se
  store <2 x double> %i.sh, ptr %i.ot, align 8, !tbaa !24
  %i.si = fadd nsz <2 x double> %i.cx, %i.rm
  store <2 x double> %i.si, ptr %i.ou, align 8, !tbaa !24
  %i.sj = fadd nsz <2 x double> %i.cx, %i.qq
  store <2 x double> %i.sj, ptr %i.ov, align 8, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !98

.lr.ph:                                           ; preds = %.preheader136
  %i.sk = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %i.sl = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.w

._crit_edge:                                      ; preds = %bb.w, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.w ] ; 3 uses
  %i.sm = add nuw nsw i64 %indvars.iv151, %i.sl   ; 3 uses
  %i.sn = xor i64 %indvars.iv151, -1
  %i.so = add nsw i64 %i.sl, %i.sn                ; 3 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.sm
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !12
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.so
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !12
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [16 x i8], ptr %i.sk, i64 %i.st ; 2 uses
  %i.sv = load double, ptr %i.su, align 8, !tbaa !29 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !30 ; 2 uses
  %i.sy = sext i32 %i.sq to i64
  %i.sz = getelementptr inbounds [16 x i8], ptr %i.sk, i64 %i.sy ; 2 uses
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !29 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !30 ; 2 uses
  %i.td = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.sm ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  %i.tf = load double, ptr %i.te, align 8, !tbaa !30
  %i.tg = load double, ptr %i.td, align 8, !tbaa !29
  %i.th = fneg nsz double %i.tg
  %i.ti = fmul nsz double %i.tc, %i.th
  %i.tj = tail call nsz double @llvm.fmuladd.f64(double %i.ta, double %i.tf, double %i.ti)
  %i.tk = shl nsw i64 %i.so, 1
  %i.tl = mul nsw i64 %i.p, %i.tk
  %i.tm = getelementptr [8 x i8], ptr %1, i64 %i.tl ; 2 uses
  %i.tn = getelementptr [8 x i8], ptr %i.tm, i64 %i.p
  store double %i.tj, ptr %i.tn, align 8, !tbaa !24
  %i.to = load double, ptr %i.td, align 8, !tbaa !29
  %i.tp = load double, ptr %i.te, align 8, !tbaa !30
  %i.tq = fmul nsz double %i.tc, %i.tp
  %i.tr = tail call nsz double @llvm.fmuladd.f64(double %i.ta, double %i.to, double %i.tq)
  %i.ts = shl nuw nsw i64 %i.sm, 1
  %i.tt = mul nuw nsw i64 %i.p, %i.ts
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.tt ; 2 uses
  store double %i.tr, ptr %i.tu, align 8, !tbaa !24
  %i.tv = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.so ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8 ; 2 uses
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !30
  %i.ty = load double, ptr %i.tv, align 8, !tbaa !29
  %i.tz = fneg nsz double %i.ty
  %i.ua = fmul nsz double %i.sx, %i.tz
  %i.ub = tail call nsz double @llvm.fmuladd.f64(double %i.sv, double %i.tx, double %i.ua)
  %i.uc = getelementptr [8 x i8], ptr %i.tu, i64 %i.p
  store double %i.ub, ptr %i.uc, align 8, !tbaa !24
  %i.ud = load double, ptr %i.tv, align 8, !tbaa !29
  %i.ue = load double, ptr %i.tw, align 8, !tbaa !30
  %i.uf = fmul nsz double %i.sx, %i.ue
  %i.ug = tail call nsz double @llvm.fmuladd.f64(double %i.sv, double %i.ud, double %i.uf)
  store double %i.ug, ptr %i.tm, align 8, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.w, !llvm.loop !99
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [9 x %struct.AVComplexDouble], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 9                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 27                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.idx.i = shl nuw nsw i64 %i.u, 5
  %.idx196.i = mul nuw nsw i64 %i.u, 48
  %.idx197.i = shl nuw nsw i64 %i.u, 6
  %.idx198.i = mul nuw nsw i64 %i.u, 80
  %.idx199.i = mul nuw nsw i64 %i.u, 96
  %.idx200.i = mul nuw nsw i64 %i.u, 112
  %.idx201.i = shl nuw nsw i64 %i.u, 7
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 36
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ad = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ag = sext i32 %i.e to i64                    ; 8 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  tail call void %i.ah(ptr noundef %i.ad, ptr noundef %i.ai, ptr noundef %i.ai, i64 noundef 16) #16
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ag ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 16) #16
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx160 = shl nsw i64 %i.ag, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx160 ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 16) #16
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx161 = mul nsw i64 %i.ag, 48
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx161 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 16) #16
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx162 = shl nsw i64 %i.ag, 6
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx162 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 16) #16
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx163 = mul nsw i64 %i.ag, 80
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.idx163 ; 2 uses
  tail call void %i.az(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef %i.bc, i64 noundef 16) #16
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx164 = mul nsw i64 %i.ag, 96
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %.idx164 ; 2 uses
  tail call void %i.bd(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bg, i64 noundef 16) #16
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx165 = mul nsw i64 %i.ag, 112
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx165 ; 2 uses
  tail call void %i.bh(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk, i64 noundef 16) #16
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx166 = shl nsw i64 %i.ag, 7
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %.idx166 ; 2 uses
  tail call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bo, i64 noundef 16) #16
  %i.bp = icmp sgt i32 %i.i, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.bs ; 9 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx196.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx197.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx198.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx199.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx200.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx201.i
  %i.cc = load <2 x double>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.v, align 16, !tbaa !24 ; 2 uses
  %i.ce = load <2 x double>, ptr %i.w, align 16, !tbaa !24 ; 2 uses
  %i.cf = fsub nsz <2 x double> %i.cd, %i.ce      ; 2 uses
  %i.cg = fadd nsz <2 x double> %i.cd, %i.ce      ; 2 uses
  %i.ch = load <2 x double>, ptr %i.x, align 16, !tbaa !24 ; 2 uses
  %i.ci = load <2 x double>, ptr %i.y, align 16, !tbaa !24 ; 2 uses
  %i.cj = fsub nsz <2 x double> %i.ch, %i.ci      ; 2 uses
  %i.ck = fadd nsz <2 x double> %i.ch, %i.ci      ; 2 uses
  %i.cl = load <2 x double>, ptr %i.z, align 16, !tbaa !24 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.cn = fsub nsz <2 x double> %i.cl, %i.cm
  %i.co = fadd nsz <2 x double> %i.cl, %i.cm      ; 2 uses
  %i.cp = load <2 x double>, ptr %i.ab, align 16, !tbaa !24 ; 2 uses
  %i.cq = load <2 x double>, ptr %i.ac, align 16, !tbaa !24 ; 2 uses
  %i.cr = fsub nsz <2 x double> %i.cp, %i.cq      ; 3 uses
  %i.cs = fadd nsz <2 x double> %i.cp, %i.cq      ; 3 uses
  %i.ct = fsub nsz <2 x double> %i.cg, %i.cs      ; 2 uses
  %i.cu = fsub nsz <2 x double> %i.ck, %i.cs      ; 2 uses
  %i.cv = fsub nsz <2 x double> %i.cf, %i.cr      ; 2 uses
  %i.cw = fadd nsz <2 x double> %i.cj, %i.cr      ; 2 uses
  %i.cx = fneg nsz <2 x double> %i.cu
  %i.cy = fneg nsz <2 x double> %i.cw
  %i.cz = fadd nsz <2 x double> %i.cc, %i.co      ; 2 uses
  %i.da = fadd nsz <2 x double> %i.cg, %i.ck
  %i.db = fadd nsz <2 x double> %i.da, %i.cs      ; 2 uses
  %i.dc = fadd nsz <2 x double> %i.cz, %i.db
  store <2 x double> %i.dc, ptr %i.bt, align 8, !tbaa !24
  %i.dd = load <6 x double>, ptr @ff_tx_tab_9_double, align 16, !tbaa !24 ; 6 uses
  %i.de = fsub nsz <2 x double> %i.cf, %i.cj
  %i.df = fadd nsz <2 x double> %i.de, %i.cr
  %i.dg = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dh = fmul nsz <2 x double> %i.df, %i.dg
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dj = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.db, <2 x double> %i.cz) ; 2 uses
  %i.dl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.co, <2 x double> %i.cc) ; 3 uses
  %i.dm = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.dn = fmul nsz <2 x double> %i.cu, %i.dm
  %i.do = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.dp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.ct, <2 x double> %i.dn) ; 2 uses
  %i.dq = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.dr = fmul nsz <2 x double> %i.cw, %i.dq
  %i.ds = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.dt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.cv, <2 x double> %i.dr) ; 2 uses
  %i.du = fmul nsz <2 x double> %i.cn, %i.dg      ; 3 uses
  %i.dv = fadd nsz <2 x double> %i.dl, %i.dp      ; 2 uses
  %i.dw = fadd nsz <2 x double> %i.du, %i.dt
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dy = fsub nsz <2 x double> %i.dk, %i.di      ; 2 uses
  %i.dz = fadd nsz <2 x double> %i.dk, %i.di      ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dy, <2 x double> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.eb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 48), align 16, !tbaa !24 ; 2 uses
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul nsz <2 x double> %i.ec, %i.cx
  %i.ee = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.ct, <2 x double> %i.ed) ; 2 uses
  %i.ef = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = fmul nsz <2 x double> %i.ef, %i.cy
  %i.eh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.cv, <2 x double> %i.eg) ; 2 uses
  %i.ei = fadd nsz <2 x double> %i.dl, %i.ee      ; 2 uses
  %i.ej = fsub nsz <2 x double> %i.eh, %i.du
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.el = fadd nsz <2 x double> %i.dv, %i.dx      ; 2 uses
  %i.em = fsub nsz <2 x double> %i.dv, %i.dx      ; 2 uses
  %i.en = shufflevector <2 x double> %i.el, <2 x double> %i.em, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.en, ptr %i.bu, align 8, !tbaa !24
  %i.eo = fadd nsz <2 x double> %i.ei, %i.ek      ; 2 uses
  %i.ep = fsub nsz <2 x double> %i.ei, %i.ek      ; 2 uses
  %i.eq = shufflevector <2 x double> %i.eo, <2 x double> %i.ep, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.eq, ptr %i.bv, align 8, !tbaa !24
  %i.er = shufflevector <2 x double> %i.dz, <2 x double> %i.dy, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.er, ptr %i.bw, align 8, !tbaa !24
  %i.es = fadd nsz <2 x double> %i.dp, %i.ee
  %i.et = fsub nsz <2 x double> %i.dl, %i.es      ; 2 uses
  %i.eu = fsub nsz <2 x double> %i.eh, %i.dt
  %i.ev = fadd nsz <2 x double> %i.du, %i.eu
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ex = fadd nsz <2 x double> %i.et, %i.ew      ; 2 uses
  %i.ey = fsub nsz <2 x double> %i.et, %i.ew      ; 2 uses
  %i.ez = shufflevector <2 x double> %i.ex, <2 x double> %i.ey, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ez, ptr %i.bx, align 8, !tbaa !24
  %i.fa = shufflevector <2 x double> %i.ey, <2 x double> %i.ex, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fa, ptr %i.by, align 8, !tbaa !24
  store <2 x double> %i.ea, ptr %i.bz, align 8, !tbaa !24
  %i.fb = shufflevector <2 x double> %i.ep, <2 x double> %i.eo, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fb, ptr %i.ca, align 8, !tbaa !24
  %i.fc = shufflevector <2 x double> %i.em, <2 x double> %i.el, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fc, ptr %i.cb, align 8, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !100

bb.c:                                             ; preds = %.preheader137, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fd = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.fe = icmp slt i32 %i.fd, %i.f
  %i.ff = add nsw i32 %i.fd, %i.f
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !24 ; 2 uses
  %i.fj = xor i32 %i.fd, -1                       ; 4 uses
  br i1 %i.fe, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fk = add i32 %i.f, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !24
  %i.fo = fsub nsz double %i.fn, %i.fi
  %i.fp = add nsw i32 %i.fd, %i.g
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24
  %i.ft = add i32 %i.g, %i.fj
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !24
  %i.fx = fadd nsz double %i.fs, %i.fw
  %i.fy = fneg nsz double %i.fx
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.fz = add i32 %i.r, %i.fj
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !24
  %i.gd = fadd nsz double %i.fi, %i.gc
  %i.ge = fneg nsz double %i.gd
  %i.gf = sub nuw nsw i32 %i.fd, %i.f
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !24
  %i.gj = add i32 %i.g, %i.fj
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gk
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !24
  %i.gn = fsub nsz double %i.gi, %i.gm
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.077.0 = phi nsz double [ %i.fo, %bb.d ], [ %i.ge, %bb.e ]
  %.sroa.6.0 = phi nsz double [ %i.fy, %bb.d ], [ %i.gn, %bb.e ]
  %i.go = ashr i32 %i.fd, 1
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.gs = load <2 x double>, ptr %i.gq, align 8, !tbaa !24 ; 2 uses
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gu = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fneg nsz <2 x double> %i.gt
  %i.gx = shufflevector <2 x double> %i.gs, <2 x double> %i.gw, <2 x i32> <i32 0, i32 2>
  %i.gy = fmul nsz <2 x double> %i.gv, %i.gx
  %i.gz = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gt, <2 x double> %i.gy)
  store <2 x double> %i.hb, ptr %i.gr, align 16, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !101

.lr.ph:                                           ; preds = %.preheader136
  %i.hc = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.hd = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.he = add nuw nsw i64 %indvars.iv151, %i.hd   ; 3 uses
  %i.hf = xor i64 %indvars.iv151, -1
  %i.hg = add nsw i64 %i.hd, %i.hf                ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.he
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !12
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.hg
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !12
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [16 x i8], ptr %i.hc, i64 %i.hl ; 2 uses
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !29 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !30 ; 2 uses
  %i.hq = sext i32 %i.hi to i64
  %i.hr = getelementptr inbounds [16 x i8], ptr %i.hc, i64 %i.hq ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !29 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !30 ; 2 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.he ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !30
  %i.hy = load double, ptr %i.hv, align 8, !tbaa !29
  %i.hz = fneg nsz double %i.hy
  %i.ia = fmul nsz double %i.hu, %i.hz
  %i.ib = tail call nsz double @llvm.fmuladd.f64(double %i.hs, double %i.hx, double %i.ia)
  %i.ic = shl nsw i64 %i.hg, 1
  %i.id = mul nsw i64 %i.p, %i.ic
  %i.ie = getelementptr [8 x i8], ptr %1, i64 %i.id ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %i.p
  store double %i.ib, ptr %i.if, align 8, !tbaa !24
  %i.ig = load double, ptr %i.hv, align 8, !tbaa !29
  %i.ih = load double, ptr %i.hw, align 8, !tbaa !30
  %i.ii = fmul nsz double %i.hu, %i.ih
  %i.ij = tail call nsz double @llvm.fmuladd.f64(double %i.hs, double %i.ig, double %i.ii)
  %i.ik = shl nuw nsw i64 %i.he, 1
  %i.il = mul nuw nsw i64 %i.p, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.il ; 2 uses
  store double %i.ij, ptr %i.im, align 8, !tbaa !24
  %i.in = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.hg ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !30
  %i.iq = load double, ptr %i.in, align 8, !tbaa !29
  %i.ir = fneg nsz double %i.iq
  %i.is = fmul nsz double %i.hp, %i.ir
  %i.it = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double %i.ip, double %i.is)
  %i.iu = getelementptr [8 x i8], ptr %i.im, i64 %i.p
  store double %i.it, ptr %i.iu, align 8, !tbaa !24
  %i.iv = load double, ptr %i.in, align 8, !tbaa !29
  %i.iw = load double, ptr %i.io, align 8, !tbaa !30
  %i.ix = fmul nsz double %i.hp, %i.iw
  %i.iy = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double %i.iv, double %i.ix)
  store double %i.iy, ptr %i.ie, align 8, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !102
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexDouble], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 15                     ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 45                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader151.lr.ph, label %.preheader150

.preheader151.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 15 uses
  %.idx.i = mul nuw nsw i64 %i.u, 96
  %.idx88.i = mul nuw nsw i64 %i.u, 192
  %.idx89.i = mul nuw nsw i64 %i.u, 48
  %.idx90.i = mul nuw nsw i64 %i.u, 144
  %.idx.i139 = mul nuw nsw i64 %i.u, 160
  %.idx88.i140 = mul nuw nsw i64 %i.u, 112
  %.idx89.i141 = mul nuw nsw i64 %i.u, 208
  %.idx90.i142 = shl nuw nsw i64 %i.u, 6
  %.idx.i146 = mul nuw nsw i64 %i.u, 80
  %.idx88.i147 = mul nuw nsw i64 %i.u, 176
  %.idx89.i148 = shl nuw nsw i64 %i.u, 5
  %.idx90.i149 = shl nuw nsw i64 %i.u, 7
  %.idx91.i = mul nuw nsw i64 %i.u, 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 224
  br label %.preheader151

.preheader151:                                    ; preds = %.preheader151.lr.ph, %fft15.exit
  %indvars.iv162 = phi i64 [ 0, %.preheader151.lr.ph ], [ %indvars.iv.next163, %fft15.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv162, 60
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.b

.preheader150.loopexit:                           ; preds = %fft15.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.loopexit, %bb.a
  %i.aj = phi ptr [ %.pre, %.preheader150.loopexit ], [ %i.d, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.am = sext i32 %i.e to i64                    ; 14 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  tail call void %i.an(ptr noundef %i.aj, ptr noundef %i.ao, ptr noundef %i.ao, i64 noundef 16) #16
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.am ; 2 uses
  tail call void %i.ap(ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.as, i64 noundef 16) #16
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx179 = shl nsw i64 %i.am, 5
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %.idx179 ; 2 uses
  tail call void %i.at(ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.aw, i64 noundef 16) #16
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx180 = mul nsw i64 %i.am, 48
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %.idx180 ; 2 uses
  tail call void %i.ax(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.ba, i64 noundef 16) #16
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx181 = shl nsw i64 %i.am, 6
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %.idx181 ; 2 uses
  tail call void %i.bb(ptr noundef %i.bc, ptr noundef %i.be, ptr noundef %i.be, i64 noundef 16) #16
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx182 = mul nsw i64 %i.am, 80
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.idx182 ; 2 uses
  tail call void %i.bf(ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bi, i64 noundef 16) #16
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx183 = mul nsw i64 %i.am, 96
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx183 ; 2 uses
  tail call void %i.bj(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bm, i64 noundef 16) #16
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx184 = mul nsw i64 %i.am, 112
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx184 ; 2 uses
  tail call void %i.bn(ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.bq, i64 noundef 16) #16
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx185 = shl nsw i64 %i.am, 7
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.idx185 ; 2 uses
  tail call void %i.br(ptr noundef %i.bs, ptr noundef %i.bu, ptr noundef %i.bu, i64 noundef 16) #16
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx186 = mul nsw i64 %i.am, 144
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx186 ; 2 uses
  tail call void %i.bv(ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.by, i64 noundef 16) #16
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx187 = mul nsw i64 %i.am, 160
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %.idx187 ; 2 uses
  tail call void %i.bz(ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.cc, i64 noundef 16) #16
  %i.cd = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cf = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx188 = mul nsw i64 %i.am, 176
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %.idx188 ; 2 uses
  tail call void %i.cd(ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.cg, i64 noundef 16) #16
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cj = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx189 = mul nsw i64 %i.am, 192
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.idx189 ; 2 uses
  tail call void %i.ch(ptr noundef %i.ci, ptr noundef %i.ck, ptr noundef %i.ck, i64 noundef 16) #16
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cn = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx190 = mul nsw i64 %i.am, 208
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.idx190 ; 2 uses
  tail call void %i.cl(ptr noundef %i.cm, ptr noundef %i.co, ptr noundef %i.co, i64 noundef 16) #16
  %i.cp = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx191 = mul nsw i64 %i.am, 224
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.idx191 ; 2 uses
  tail call void %i.cp(ptr noundef %i.cq, ptr noundef %i.cs, ptr noundef %i.cs, i64 noundef 16) #16
  %i.ct = icmp sgt i32 %i.i, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

fft15.exit:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv162
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.cx ; 15 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i
end_hunk_0
begin_hunk_1_@ff_tx_mdct_pfa_15xM_fwd_double_c:bb.a
  %i.fe = fadd nsz <2 x double> %i.fa, %i.fb      ; 2 uses
  %i.ff = fmul nsz <2 x double> %i.fd, %i.dn      ; 2 uses
  %i.fg = fmul nsz <2 x double> %i.fe, %i.dv
  %i.fh = fsub nsz <2 x double> %i.ez, %i.fg      ; 2 uses
  %i.fi = fsub nsz <2 x double> %i.fh, %i.ff      ; 4 uses
  %i.fj = fadd nsz <2 x double> %i.fh, %i.ff      ; 4 uses
  %i.fk = shufflevector <2 x double> %i.fi, <2 x double> %i.fj, <2 x i32> <i32 0, i32 3>
  %i.fl = load <2 x double>, ptr %i.ag, align 16, !tbaa !24 ; 2 uses
  %i.fm = load <2 x double>, ptr %i.ah, align 16, !tbaa !24 ; 2 uses
  %i.fn = load <2 x double>, ptr %i.ai, align 16, !tbaa !24 ; 2 uses
  %i.fo = fsub nsz <2 x double> %i.fm, %i.fn
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = fadd nsz <2 x double> %i.fm, %i.fn      ; 2 uses
  %i.fr = fmul nsz <2 x double> %i.fp, %i.dn      ; 2 uses
  %i.fs = fmul nsz <2 x double> %i.fq, %i.dv
  %i.ft = fsub nsz <2 x double> %i.fl, %i.fs      ; 2 uses
  %i.fu = fsub nsz <2 x double> %i.ft, %i.fr      ; 4 uses
  %i.fv = fadd nsz <2 x double> %i.ft, %i.fr      ; 4 uses
  %i.fw = shufflevector <2 x double> %i.fu, <2 x double> %i.fv, <2 x i32> <i32 0, i32 3>
  %i.fx = fadd nsz <2 x double> %i.do, %i.dt      ; 5 uses
  %i.fy = fadd nsz <2 x double> %i.eb, %i.eg      ; 2 uses
  %i.fz = fadd nsz <2 x double> %i.en, %i.es      ; 2 uses
  %i.ga = fadd nsz <2 x double> %i.ez, %i.fe      ; 2 uses
  %i.gb = fadd nsz <2 x double> %i.fl, %i.fq      ; 2 uses
  %i.gc = fsub nsz <2 x double> %i.fy, %i.gb      ; 2 uses
  %i.gd = fadd nsz <2 x double> %i.fy, %i.gb      ; 3 uses
  %i.ge = fsub nsz <2 x double> %i.fz, %i.ga      ; 2 uses
  %i.gf = fadd nsz <2 x double> %i.fz, %i.ga      ; 3 uses
  %i.gg = fadd nsz <2 x double> %i.fx, %i.gd
  %i.gh = fadd nsz <2 x double> %i.gg, %i.gf
  store <2 x double> %i.gh, ptr %i.cy, align 8, !tbaa !24
  %i.gi = load <2 x double>, ptr @ff_tx_tab_53_double, align 16
  %i.gj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.gk = fneg nsz <2 x double> %i.gf
  %i.gl = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = fmul nsz <2 x double> %i.gl, %i.gk
  %i.gn = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.go = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gd, <2 x double> %i.gm) ; 2 uses
  %i.gp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %i.gq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gs = fmul nsz <2 x double> %i.ge, %i.gr
  %i.gt = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.gc, <2 x double> %i.gs)
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gw = fsub nsz <2 x double> %i.go, %i.gv      ; 2 uses
  %i.gx = fadd nsz <2 x double> %i.go, %i.gv      ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gw, <2 x double> %i.gx, <2 x i32> <i32 0, i32 3>
  %i.gz = shufflevector <2 x double> %i.gx, <2 x double> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.ha = fadd nsz <2 x double> %i.fx, %i.gz
  store <2 x double> %i.ha, ptr %i.cz, align 8, !tbaa !24
  %i.hb = fneg nsz <2 x double> %i.gd
  %i.hc = fmul nsz <2 x double> %i.gl, %i.hb
  %i.hd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gf, <2 x double> %i.hc) ; 2 uses
  %i.he = fneg nsz <2 x double> %i.gc
  %i.hf = fmul nsz <2 x double> %i.gr, %i.he
  %i.hg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.ge, <2 x double> %i.hf)
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hi = fadd nsz <2 x double> %i.hd, %i.hh      ; 2 uses
  %i.hj = fsub nsz <2 x double> %i.hd, %i.hh      ; 2 uses
  %i.hk = shufflevector <2 x double> %i.hi, <2 x double> %i.hj, <2 x i32> <i32 0, i32 3>
  %i.hl = shufflevector <2 x double> %i.hj, <2 x double> %i.hi, <2 x i32> <i32 0, i32 3>
  %i.hm = fadd nsz <2 x double> %i.fx, %i.hl
  store <2 x double> %i.hm, ptr %i.da, align 8, !tbaa !24
  %i.hn = fadd nsz <2 x double> %i.fx, %i.hk
  store <2 x double> %i.hn, ptr %i.db, align 8, !tbaa !24
  %i.ho = fadd nsz <2 x double> %i.fx, %i.gy
  store <2 x double> %i.ho, ptr %i.dc, align 8, !tbaa !24
  %i.hp = shufflevector <2 x double> %i.dz, <2 x double> %i.dy, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.hq = shufflevector <2 x double> %i.el, <2 x double> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.hr = shufflevector <2 x double> %i.ex, <2 x double> %i.ew, <2 x i32> <i32 0, i32 3>
  %i.hs = shufflevector <2 x double> %i.fj, <2 x double> %i.fi, <2 x i32> <i32 0, i32 3>
  %i.ht = shufflevector <2 x double> %i.fv, <2 x double> %i.fu, <2 x i32> <i32 0, i32 3>
  %i.hu = shufflevector <2 x double> %i.ek, <2 x double> %i.el, <2 x i32> <i32 1, i32 2>
  %i.hv = shufflevector <2 x double> %i.fu, <2 x double> %i.fv, <2 x i32> <i32 1, i32 2>
  %i.hw = fsub nsz <2 x double> %i.hu, %i.hv      ; 2 uses
  %i.hx = fadd nsz <2 x double> %i.hq, %i.ht      ; 3 uses
  %i.hy = shufflevector <2 x double> %i.ew, <2 x double> %i.ex, <2 x i32> <i32 1, i32 2>
  %i.hz = shufflevector <2 x double> %i.fi, <2 x double> %i.fj, <2 x i32> <i32 1, i32 2>
  %i.ia = fsub nsz <2 x double> %i.hy, %i.hz      ; 2 uses
  %i.ib = fadd nsz <2 x double> %i.hr, %i.hs      ; 3 uses
  %i.ic = fadd nsz <2 x double> %i.hp, %i.hx
  %i.id = fadd nsz <2 x double> %i.ic, %i.ib
  store <2 x double> %i.id, ptr %i.dd, align 8, !tbaa !24
  %i.ie = load <2 x double>, ptr @ff_tx_tab_53_double, align 16
  %i.if = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.ig = fneg nsz <2 x double> %i.ib
  %i.ih = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ii = fmul nsz <2 x double> %i.ih, %i.ig
  %i.ij = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ik = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.hx, <2 x double> %i.ii) ; 2 uses
  %i.il = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %i.im = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.io = fmul nsz <2 x double> %i.ia, %i.in
  %i.ip = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.hw, <2 x double> %i.io) ; 2 uses
  %i.ir = fsub nsz <2 x double> %i.ik, %i.iq      ; 2 uses
  %i.is = fadd nsz <2 x double> %i.ik, %i.iq      ; 2 uses
  %i.it = shufflevector <2 x double> %i.ir, <2 x double> %i.is, <2 x i32> <i32 0, i32 3>
  %i.iu = shufflevector <2 x double> %i.is, <2 x double> %i.ir, <2 x i32> <i32 0, i32 3>
  %i.iv = fadd nsz <2 x double> %i.hp, %i.iu
  store <2 x double> %i.iv, ptr %i.de, align 8, !tbaa !24
  %i.iw = fneg nsz <2 x double> %i.hx
  %i.ix = fmul nsz <2 x double> %i.ih, %i.iw
  %i.iy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.ib, <2 x double> %i.ix) ; 2 uses
  %i.iz = fneg nsz <2 x double> %i.hw
  %i.ja = fmul nsz <2 x double> %i.in, %i.iz
  %i.jb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ia, <2 x double> %i.ja) ; 2 uses
  %i.jc = fadd nsz <2 x double> %i.iy, %i.jb      ; 2 uses
  %i.jd = fsub nsz <2 x double> %i.iy, %i.jb      ; 2 uses
  %i.je = shufflevector <2 x double> %i.jc, <2 x double> %i.jd, <2 x i32> <i32 0, i32 3>
  %i.jf = shufflevector <2 x double> %i.jd, <2 x double> %i.jc, <2 x i32> <i32 0, i32 3>
  %i.jg = fadd nsz <2 x double> %i.hp, %i.jf
  store <2 x double> %i.jg, ptr %i.df, align 8, !tbaa !24
  %i.jh = fadd nsz <2 x double> %i.hp, %i.je
  store <2 x double> %i.jh, ptr %i.dg, align 8, !tbaa !24
  %i.ji = fadd nsz <2 x double> %i.hp, %i.it
  store <2 x double> %i.ji, ptr %i.dh, align 8, !tbaa !24
  %i.jj = shufflevector <2 x double> %i.el, <2 x double> %i.ek, <2 x i32> <i32 1, i32 2>
  %i.jk = shufflevector <2 x double> %i.fv, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.jl = fsub nsz <2 x double> %i.jj, %i.jk      ; 2 uses
  %i.jm = fadd nsz <2 x double> %i.em, %i.fw      ; 3 uses
  %i.jn = shufflevector <2 x double> %i.ex, <2 x double> %i.ew, <2 x i32> <i32 1, i32 2>
  %i.jo = shufflevector <2 x double> %i.fj, <2 x double> %i.fi, <2 x i32> <i32 1, i32 2>
  %i.jp = fsub nsz <2 x double> %i.jn, %i.jo      ; 2 uses
  %i.jq = fadd nsz <2 x double> %i.ey, %i.fk      ; 3 uses
  %i.jr = fadd nsz <2 x double> %i.ea, %i.jm
  %i.js = fadd nsz <2 x double> %i.jr, %i.jq
  store <2 x double> %i.js, ptr %i.di, align 8, !tbaa !24
  %i.jt = load <2 x double>, ptr @ff_tx_tab_53_double, align 16
  %i.ju = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.jv = fneg nsz <2 x double> %i.jq
  %i.jw = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jx = fmul nsz <2 x double> %i.jw, %i.jv
  %i.jy = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.jm, <2 x double> %i.jx) ; 2 uses
  %i.ka = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %i.kb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = fmul nsz <2 x double> %i.jp, %i.kc
  %i.ke = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.jl, <2 x double> %i.kd) ; 2 uses
  %i.kg = fsub nsz <2 x double> %i.jz, %i.kf      ; 2 uses
  %i.kh = fadd nsz <2 x double> %i.jz, %i.kf      ; 2 uses
  %i.ki = shufflevector <2 x double> %i.kg, <2 x double> %i.kh, <2 x i32> <i32 0, i32 3>
  %i.kj = shufflevector <2 x double> %i.kh, <2 x double> %i.kg, <2 x i32> <i32 0, i32 3>
  %i.kk = fadd nsz <2 x double> %i.ea, %i.kj
  store <2 x double> %i.kk, ptr %i.dj, align 8, !tbaa !24
  %i.kl = fneg nsz <2 x double> %i.jm
  %i.km = fmul nsz <2 x double> %i.jw, %i.kl
  %i.kn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.jq, <2 x double> %i.km) ; 2 uses
  %i.ko = fneg nsz <2 x double> %i.jl
  %i.kp = fmul nsz <2 x double> %i.kc, %i.ko
  %i.kq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.jp, <2 x double> %i.kp) ; 2 uses
  %i.kr = fadd nsz <2 x double> %i.kn, %i.kq      ; 2 uses
  %i.ks = fsub nsz <2 x double> %i.kn, %i.kq      ; 2 uses
  %i.kt = shufflevector <2 x double> %i.kr, <2 x double> %i.ks, <2 x i32> <i32 0, i32 3>
  %i.ku = shufflevector <2 x double> %i.ks, <2 x double> %i.kr, <2 x i32> <i32 0, i32 3>
  %i.kv = fadd nsz <2 x double> %i.ea, %i.ku
  store <2 x double> %i.kv, ptr %i.dk, align 8, !tbaa !24
  %i.kw = fadd nsz <2 x double> %i.ea, %i.kt
  store <2 x double> %i.kw, ptr %i.dl, align 8, !tbaa !24
  %i.kx = fadd nsz <2 x double> %i.ea, %i.ki
  store <2 x double> %i.kx, ptr %i.dm, align 8, !tbaa !24
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next163, %i.u
  br i1 %exitcond165.not, label %.preheader150.loopexit, label %.preheader151, !llvm.loop !103

bb.b:                                             ; preds = %.preheader151, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader151 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ky = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.kz = icmp slt i32 %i.ky, %i.f
  %i.la = add nsw i32 %i.ky, %i.f
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lb
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !24 ; 2 uses
  %i.le = xor i32 %i.ky, -1                       ; 4 uses
  br i1 %i.kz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.lf = add i32 %i.f, %i.le
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !24
  %i.lj = fsub nsz double %i.li, %i.ld
  %i.lk = add nsw i32 %i.ky, %i.g
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !24
  %i.lo = add i32 %i.g, %i.le
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lp
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !24
  %i.ls = fadd nsz double %i.ln, %i.lr
  %i.lt = fneg nsz double %i.ls
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.lu = add i32 %i.r, %i.le
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lv
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !24
  %i.ly = fadd nsz double %i.ld, %i.lx
  %i.lz = fneg nsz double %i.ly
  %i.ma = sub nuw nsw i32 %i.ky, %i.f
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mb
  %i.md = load double, ptr %i.mc, align 8, !tbaa !24
  %i.me = add i32 %i.g, %i.le
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !24
  %i.mi = fsub nsz double %i.md, %i.mh
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.077.0 = phi nsz double [ %i.lj, %bb.c ], [ %i.lz, %bb.d ]
  %.sroa.6.0 = phi nsz double [ %i.lt, %bb.c ], [ %i.mi, %bb.d ]
  %i.mj = ashr i32 %i.ky, 1
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.mk
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.mn = load <2 x double>, ptr %i.ml, align 8, !tbaa !24 ; 2 uses
  %i.mo = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mp = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = fneg nsz <2 x double> %i.mo
  %i.ms = shufflevector <2 x double> %i.mn, <2 x double> %i.mr, <2 x i32> <i32 0, i32 2>
  %i.mt = fmul nsz <2 x double> %i.mq, %i.ms
  %i.mu = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.mv = shufflevector <2 x double> %i.mu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.mo, <2 x double> %i.mt)
  store <2 x double> %i.mw, ptr %i.mm, align 16, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %fft15.exit, label %bb.b, !llvm.loop !104

.lr.ph:                                           ; preds = %.preheader150
  %i.mx = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  %i.my = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count173 = zext nneg i32 %i.i to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader150
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv170 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next171, %bb.f ] ; 3 uses
  %i.mz = add nuw nsw i64 %indvars.iv170, %i.my   ; 3 uses
  %i.na = xor i64 %indvars.iv170, -1
  %i.nb = add nsw i64 %i.my, %i.na                ; 3 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mz
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !12
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.nb
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !12
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [16 x i8], ptr %i.mx, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !29 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !30 ; 2 uses
  %i.nl = sext i32 %i.nd to i64
  %i.nm = getelementptr inbounds [16 x i8], ptr %i.mx, i64 %i.nl ; 2 uses
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !29 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.np = load double, ptr %i.no, align 8, !tbaa !30 ; 2 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.mz ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !30
  %i.nt = load double, ptr %i.nq, align 8, !tbaa !29
  %i.nu = fneg nsz double %i.nt
  %i.nv = fmul nsz double %i.np, %i.nu
  %i.nw = tail call nsz double @llvm.fmuladd.f64(double %i.nn, double %i.ns, double %i.nv)
  %i.nx = shl nsw i64 %i.nb, 1
  %i.ny = mul nsw i64 %i.p, %i.nx
  %i.nz = getelementptr [8 x i8], ptr %1, i64 %i.ny ; 2 uses
  %i.oa = getelementptr [8 x i8], ptr %i.nz, i64 %i.p
  store double %i.nw, ptr %i.oa, align 8, !tbaa !24
  %i.ob = load double, ptr %i.nq, align 8, !tbaa !29
  %i.oc = load double, ptr %i.nr, align 8, !tbaa !30
  %i.od = fmul nsz double %i.np, %i.oc
  %i.oe = tail call nsz double @llvm.fmuladd.f64(double %i.nn, double %i.ob, double %i.od)
  %i.of = shl nuw nsw i64 %i.mz, 1
  %i.og = mul nuw nsw i64 %i.p, %i.of
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.og ; 2 uses
  store double %i.oe, ptr %i.oh, align 8, !tbaa !24
  %i.oi = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.nb ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8 ; 2 uses
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !30
  %i.ol = load double, ptr %i.oi, align 8, !tbaa !29
  %i.om = fneg nsz double %i.ol
  %i.on = fmul nsz double %i.nk, %i.om
  %i.oo = tail call nsz double @llvm.fmuladd.f64(double %i.ni, double %i.ok, double %i.on)
  %i.op = getelementptr [8 x i8], ptr %i.oh, i64 %i.p
  store double %i.oo, ptr %i.op, align 8, !tbaa !24
  %i.oq = load double, ptr %i.oi, align 8, !tbaa !29
  %i.or = load double, ptr %i.oj, align 8, !tbaa !30
  %i.os = fmul nsz double %i.nk, %i.or
  %i.ot = tail call nsz double @llvm.fmuladd.f64(double %i.ni, double %i.oq, double %i.os)
  store double %i.ot, ptr %i.nz, align 8, !tbaa !24
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %._crit_edge, label %bb.f, !llvm.loop !105
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_3xM_inv_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = mul nsw i32 %i.h, 3
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 3                           ; 7 uses
  %i.o = mul nsw i32 %i.h, 6
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader113.lr.ph, label %..preheader112_crit_edge

..preheader112_crit_edge:                         ; preds = %bb.a
  %.pre124 = sext i32 %i.h to i64
  br label %.preheader112

.preheader113.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = sext i32 %i.h to i64                     ; 3 uses
  %.idx.i = shl nsw i64 %i.y, 5
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph, %.preheader113
  %.0118 = phi ptr [ %i.b, %.preheader113.lr.ph ], [ %i.dl, %.preheader113 ] ; 7 uses
  %.0107117 = phi ptr [ %i.j, %.preheader113.lr.ph ], [ %i.dm, %.preheader113 ] ; 4 uses
  %.0109116 = phi i32 [ 0, %.preheader113.lr.ph ], [ %i.dn, %.preheader113 ]
  %.0110115 = phi ptr [ %i.v, %.preheader113.lr.ph ], [ %i.bk, %.preheader113 ] ; 2 uses
  %i.z = load i32, ptr %.0107117, align 4, !tbaa !12 ; 2 uses
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.n, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24
  %i.af = sext i32 %i.z to i64
  %i.ag = mul nsw i64 %i.n, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0107117, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = sub nsw i32 0, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !24
  %i.ar = sext i32 %i.al to i64
  %i.as = mul nsw i64 %i.n, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %2, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0118, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %.0107117, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12 ; 2 uses
  %i.az = sub nsw i32 0, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.n, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = sext i32 %i.ay to i64
  %i.bf = mul nsw i64 %i.n, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.0118, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0118, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.0110115, i64 4
  %i.bl = load i32, ptr %.0110115, align 4, !tbaa !12
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bn, i64 %i.y
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %.idx.i
  %i.bq = load double, ptr %i.aj, align 8, !tbaa !30
  %i.br = load <2 x double>, ptr %.0118, align 8, !tbaa !24 ; 2 uses
  %i.bs = fneg nsz double %i.bq
  %i.bt = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = insertelement <2 x double> %i.bv, double %i.bs, i64 0
  %i.bx = fmul nsz <2 x double> %i.bu, %i.bw
  %i.by = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.br, <2 x double> %i.bx) ; 2 uses
  %i.cb = load double, ptr %i.aw, align 8, !tbaa !30
  %i.cc = load <2 x double>, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %i.cd = fneg nsz double %i.cb
  %i.ce = insertelement <2 x double> poison, double %i.au, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ch = insertelement <2 x double> %i.cg, double %i.cd, i64 0
  %i.ci = fmul nsz <2 x double> %i.cf, %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cc, <2 x double> %i.ci) ; 2 uses
  %i.cm = load double, ptr %i.bj, align 8, !tbaa !30
  %i.cn = load <2 x double>, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.co = fneg nsz double %i.cm
  %i.cp = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cs = insertelement <2 x double> %i.cr, double %i.co, i64 0
  %i.ct = fmul nsz <2 x double> %i.cq, %i.cs
  %i.cu = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.cn, <2 x double> %i.ct) ; 2 uses
  %i.cx = fsub nsz <2 x double> %i.cl, %i.cw
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = fadd nsz <2 x double> %i.cl, %i.cw      ; 2 uses
  %i.da = fadd nsz <2 x double> %i.ca, %i.cz
  store <2 x double> %i.da, ptr %i.bn, align 8, !tbaa !24
  %i.db = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24
  %i.dc = fmul nsz <2 x double> %i.cy, %i.db      ; 2 uses
  %i.dd = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul nsz <2 x double> %i.cz, %i.de
  %i.dg = fsub nsz <2 x double> %i.ca, %i.df      ; 2 uses
  %i.dh = fadd nsz <2 x double> %i.dg, %i.dc      ; 2 uses
  %i.di = fsub nsz <2 x double> %i.dg, %i.dc      ; 2 uses
  %i.dj = shufflevector <2 x double> %i.dh, <2 x double> %i.di, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dj, ptr %i.bo, align 8, !tbaa !24
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.dh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dk, ptr %i.bp, align 8, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %.0118, i64 48 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0107117, i64 12
  %i.dn = add nuw nsw i32 %.0109116, 3            ; 2 uses
  %i.do = icmp slt i32 %i.dn, %i.e
  br i1 %i.do, label %.preheader113, label %.preheader112.loopexit, !llvm.loop !106

.preheader112.loopexit:                           ; preds = %.preheader113
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %.preheader112

.preheader112:                                    ; preds = %..preheader112_crit_edge, %.preheader112.loopexit
  %.pre-phi = phi i64 [ %.pre124, %..preheader112_crit_edge ], [ %i.y, %.preheader112.loopexit ] ; 2 uses
  %i.dp = phi ptr [ %i.g, %..preheader112_crit_edge ], [ %.pre, %.preheader112.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader112_crit_edge ], [ %i.dl, %.preheader112.loopexit ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !10
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !32 ; 2 uses
  tail call void %i.ds(ptr noundef %i.dp, ptr noundef %i.dt, ptr noundef %i.dt, i64 noundef 16) #16
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !10
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !32
  %i.dx = getelementptr inbounds [16 x i8], ptr %i.dw, i64 %.pre-phi ; 2 uses
  tail call void %i.du(ptr noundef %i.dv, ptr noundef %i.dx, ptr noundef %i.dx, i64 noundef 16) #16
  %i.dy = load ptr, ptr %i.dq, align 8, !tbaa !10
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !32
  %.idx = shl nsw i64 %.pre-phi, 5
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %.idx ; 2 uses
  tail call void %i.dy(ptr noundef %i.dz, ptr noundef %i.eb, ptr noundef %i.eb, i64 noundef 16) #16
  %i.ec = icmp sgt i32 %i.d, 0
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader112
end_hunk_1
