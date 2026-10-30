Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft11e-radix2?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@mkplan:bb.a
  br i1 %i.n, label %bb.e, label %applicable.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !44
  switch i32 %i.p, label %applicable.exit.thread [
    i32 12, label %applicable.exit.thread46
    i32 16, label %applicable.exit.thread46
  ]

applicable.exit.thread46:                         ; preds = %bb.e, %bb.e
  %i.q = shl i64 %i.l, 3
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #5 ; 3 uses
  %i.s = ashr exact i64 %i.l, 1                   ; 4 uses
  %i.t = tail call ptr @fftw_mktensor_1d(i64 noundef %i.s, i64 noundef 1, i64 noundef 1) #5
  %i.u = tail call ptr @fftw_mktensor_1d(i64 noundef 2, i64 noundef %i.s, i64 noundef %i.s) #5
  %i.v = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.r, ptr noundef %i.r, i32 noundef 0) #5
  %i.w = tail call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.v) #5 ; 3 uses
  tail call void @fftw_ifree(ptr noundef %i.r) #5
  %.not44 = icmp eq ptr %i.w, null
  br i1 %.not44, label %applicable.exit.thread, label %bb.f

bb.f:                                             ; preds = %applicable.exit.thread46
  %i.x = load i32, ptr %i.o, align 8, !tbaa !44
  %i.y = icmp eq i32 %i.x, 12
  %i.z = select i1 %i.y, ptr @apply_re11, ptr @apply_ro11
  %i.aa = tail call ptr @fftw_mkplan_rdft(i64 noundef 144, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull %i.z) #5 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store i64 %i.l, ptr %i.ab, align 8, !tbaa !19
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !45
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !21
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 112 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ao = tail call i32 @fftw_tensor_tornk1(ptr noundef %i.ak, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an) #5 ; 0 uses
  call void @fftw_ops_zero(ptr noundef nonnull %3) #5
  %i.ap = add nsw i64 %i.s, -1
  %i.aq = sdiv i64 %i.ap, 2                       ; 3 uses
  %i.ar = mul nsw i64 %i.aq, 20
  %i.as = or disjoint i64 %i.ar, 2
  %i.at = sitofp i64 %i.as to double              ; 2 uses
  store double %i.at, ptr %3, align 16, !tbaa !46
  %i.au = shl nsw i64 %i.aq, 4
  %i.av = or disjoint i64 %i.au, 6
  %i.aw = sitofp i64 %i.av to double              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.aw, ptr %i.ax, align 8, !tbaa !47
  %i.ay = shl nsw i64 %i.l, 2
  %i.az = or disjoint i64 %i.ay, 2
  %i.ba = mul nsw i64 %i.aq, 6
  %i.bb = add nsw i64 %i.az, %i.ba
  %i.bc = sitofp i64 %i.bb to double              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store double %i.bc, ptr %i.bd, align 8, !tbaa !48
  %i.be = and i64 %i.l, 2
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.aw, i64 1
  %i.bi = fadd <2 x double> %i.bh, <double 4.000000e+00, double 8.000000e+00>
  store <2 x double> %i.bi, ptr %3, align 16, !tbaa !22
  %i.bj = fadd double %i.bc, 4.000000e+00
  store double %i.bj, ptr %i.bd, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  call void @fftw_ops_zero(ptr noundef nonnull %i.bk) #5
  %i.bl = load i64, ptr %i.al, align 8, !tbaa !23
  call void @fftw_ops_madd2(i64 noundef %i.bl, ptr noundef nonnull %3, ptr noundef nonnull %i.bk) #5
  %i.bm = load i64, ptr %i.al, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bk) #5
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a, %applicable.exit.thread46, %bb.h
  %.0 = phi ptr [ %i.aa, %bb.h ], [ null, %bb.e ], [ null, %applicable.exit.thread46 ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = shl nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.e, 4
  %i.h = add nsw i64 %i.g, 1
  tail call void @fftw_twiddle_awake(i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull @awake.reodft010e_tw, i64 noundef %i.f, i64 noundef 1, i64 noundef %i.h) #5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.k = shl nsw i64 %i.j, 3
  tail call void @fftw_twiddle_awake(i32 noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull @awake.reodft11e_tw, i64 noundef %i.k, i64 noundef 1, i64 noundef %i.j) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call ptr @fftw_rdft_kind_str(i32 noundef %i.c) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, ptr noundef %i.j) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #5
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_re11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 17 uses
  %i.g = sdiv i64 %i.f, 2                         ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 6 uses
  %i.q = shl i64 %i.f, 3
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #5 ; 26 uses
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %.lr.ph251, label %._crit_edge252

.lr.ph251:                                        ; preds = %bb.a
  %i.t = add nsw i64 %i.f, -1                     ; 3 uses
  %i.u = mul nsw i64 %i.t, %i.b
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.g ; 11 uses
  %i.w = icmp sgt i64 %i.f, 5                     ; 2 uses
  %i.x = add nsw i64 %i.g, -1                     ; 2 uses
  %i.y = mul nsw i64 %i.x, %i.b
  %i.z = mul nsw i64 %i.g, %i.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = mul nsw i64 %i.t, %i.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.ad = add nsw i64 %smax, -3
  %i.ae = lshr i64 %i.ad, 1                       ; 4 uses
  %i.af = add nuw nsw i64 %i.ae, 2                ; 5 uses
  %i.ag = mul nsw i64 %i.x, %i.d
  %i.ah = sub nsw i64 %i.f, %i.g
  %i.ai = mul nsw i64 %i.ah, %i.d
  %scevgep = getelementptr i8, ptr %i.r, i64 8    ; 4 uses
  %i.aj = shl nuw i64 %i.ae, 3                    ; 4 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.aj   ; 2 uses
  %scevgep272 = getelementptr i8, ptr %i.ak, i64 16 ; 4 uses
  %i.al = shl i64 %i.g, 3                         ; 3 uses
  %i.am = add i64 %i.al, -8
  %i.an = sub i64 %i.am, %i.aj
  %scevgep273 = getelementptr i8, ptr %i.r, i64 %i.an ; 5 uses
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.al
  %scevgep274 = getelementptr i8, ptr %i.ao, i64 8 ; 5 uses
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.aj
  %scevgep275 = getelementptr i8, ptr %i.aq, i64 16 ; 5 uses
  %i.ar = shl i64 %i.f, 3                         ; 4 uses
  %i.as = add i64 %i.ar, -8
  %i.at = sub i64 %i.as, %i.aj
  %scevgep276 = getelementptr i8, ptr %i.r, i64 %i.at ; 4 uses
  %scevgep277 = getelementptr i8, ptr %i.r, i64 %i.ar ; 4 uses
  %i.au = add i64 %i.f, 2305843009213693950
  %i.av = mul i64 %i.b, %i.au
  %i.aw = shl i64 %i.av, 3
  %i.ax = shl i64 %i.k, 3
  %i.ay = add i64 %i.ar, -16
  %i.az = shl i64 %i.ae, 4                        ; 5 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = mul i64 %i.b, %i.ba
  %i.bc = add i64 %i.f, 2305843009213693949
  %i.bd = mul i64 %i.b, %i.bc
  %i.be = shl i64 %i.bd, 3
  %i.bf = add i64 %i.ar, -24
  %i.bg = sub i64 %i.bf, %i.az
  %i.bh = mul i64 %i.b, %i.bg
  %i.bi = add i64 %i.az, 16
  %i.bj = mul i64 %i.b, %i.bi
  %i.bk = shl i64 %i.b, 4
  %i.bl = or disjoint i64 %i.az, 8
  %i.bm = mul i64 %i.b, %i.bl
  %i.bn = shl i64 %i.b, 3
  %i.bo = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.p, i64 1
  %i.bq = getelementptr i8, <2 x ptr> %i.bp, <2 x i64> <i64 8, i64 16>
  %scevgep296 = getelementptr i8, ptr %i.p, i64 16 ; 3 uses
  %i.br = getelementptr i8, ptr %i.p, i64 %i.az   ; 2 uses
  %i.bs = insertelement <2 x ptr> poison, ptr %i.ak, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.br, i64 1
  %i.bu = getelementptr i8, <2 x ptr> %i.bt, <2 x i64> <i64 16, i64 32>
  %scevgep297 = getelementptr i8, ptr %i.br, i64 32 ; 3 uses
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = insertelement <4 x ptr> poison, ptr %scevgep272, i64 0
  %i.by = shufflevector <4 x ptr> %i.bx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep273, i64 0
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cd = insertelement <4 x ptr> poison, ptr %scevgep274, i64 0
  %i.ce = shufflevector <4 x ptr> %i.cd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <4 x ptr> poison, ptr %scevgep275, i64 0
  %i.cg = shufflevector <4 x ptr> %i.cf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ch = insertelement <4 x ptr> poison, ptr %scevgep276, i64 0 ; 2 uses
  %i.ci = shufflevector <4 x ptr> %i.ch, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cj = insertelement <4 x ptr> poison, ptr %scevgep277, i64 0 ; 2 uses
  %i.ck = shufflevector <4 x ptr> %i.cj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cl = insertelement <4 x ptr> %i.ch, ptr %scevgep, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %scevgep274, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %scevgep273, i64 3
  %i.co = insertelement <4 x ptr> %i.cj, ptr %scevgep272, i64 1
  %i.cp = insertelement <4 x ptr> %i.co, ptr %scevgep275, i64 2
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %i.v, i64 3
  %i.cr = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = getelementptr i8, ptr %1, i64 %i.aw
  %i.cu = getelementptr i8, ptr %1, i64 %i.bb
  %i.cv = getelementptr i8, ptr %1, i64 %i.be
  %i.cw = getelementptr i8, ptr %1, i64 %i.bh
  %i.cx = getelementptr i8, ptr %1, i64 %i.bj
  %i.cy = getelementptr i8, ptr %1, i64 %i.bk
  %i.cz = getelementptr i8, ptr %1, i64 %i.bm
  %i.da = getelementptr i8, ptr %1, i64 %i.bn
  %i.db = add nuw nsw i64 %i.ae, 1                ; 4 uses
  %min.iters.check = icmp slt i64 %i.f, 34
  %bound0 = icmp ult ptr %scevgep, %i.v
  %bound1 = icmp ult ptr %scevgep273, %scevgep272
  %found.conflict = and i1 %bound0, %bound1
  %bound0298 = icmp ult ptr %scevgep, %scevgep275
  %bound1299 = icmp ult ptr %scevgep274, %scevgep272
  %found.conflict300 = and i1 %bound0298, %bound1299
  %i.dc = insertelement <4 x ptr> %i.cs, ptr %scevgep273, i64 2
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %scevgep276, i64 3
  %i.de = icmp ult <4 x ptr> %i.dd, %i.cq
  %i.df = insertelement <4 x ptr> %i.cr, ptr %i.v, i64 2
  %i.dg = insertelement <4 x ptr> %i.df, ptr %scevgep277, i64 3
  %i.dh = icmp ult <4 x ptr> %i.cn, %i.dg
  %i.di = and <4 x i1> %i.dh, %i.de
  %bound0349 = icmp ult ptr %scevgep273, %scevgep297
  %bound1350 = icmp ult ptr %scevgep296, %i.v
  %found.conflict351 = and i1 %bound0349, %bound1350
  %bound0353 = icmp ult ptr %scevgep274, %scevgep277
  %bound1354 = icmp ult ptr %scevgep276, %scevgep275
  %found.conflict355 = and i1 %bound0353, %bound1354
  %bound0373 = icmp ult ptr %scevgep274, %scevgep297
  %bound1374 = icmp ult ptr %scevgep296, %scevgep275
  %found.conflict375 = and i1 %bound0373, %bound1374
  %bound0393 = icmp ult ptr %scevgep276, %scevgep297
  %bound1394 = icmp ult ptr %scevgep296, %scevgep277
  %found.conflict395 = and i1 %bound0393, %bound1394
  %i.dj = bitcast <4 x i1> %i.di to i4
  %i.dk = icmp ne i4 %i.dj, 0
  %op.rdx411 = or i1 %i.dk, %found.conflict
  %op.rdx412 = or i1 %found.conflict300, %found.conflict351
  %op.rdx413 = or i1 %found.conflict355, %found.conflict375
  %op.rdx415 = or i1 %op.rdx411, %op.rdx412
  %invariant.op = or i1 %found.conflict395, %op.rdx413
  %invariant.op425 = or i1 %invariant.op, %op.rdx415
  %n.vec = and i64 %i.db, 9223372036854775806     ; 2 uses
  %i.dl = shl nuw i64 %i.db, 1
  %i.dm = or i64 %i.dl, 2                         ; 2 uses
  %i.dn = or i64 %i.db, 1
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph251, %bb.f
  %.0249 = phi ptr [ %1, %.lr.ph251 ], [ %i.no, %bb.f ] ; 17 uses
  %.0226248 = phi ptr [ %2, %.lr.ph251 ], [ %i.np, %bb.f ] ; 9 uses
  %.0228247 = phi i64 [ 0, %.lr.ph251 ], [ %i.nn, %bb.f ] ; 2 uses
  %i.do = mul i64 %i.ax, %.0228247                ; 8 uses
  %scevgep278 = getelementptr i8, ptr %i.ct, i64 %i.do ; 4 uses
  %scevgep279 = getelementptr i8, ptr %i.cu, i64 %i.do ; 4 uses
  %scevgep281 = getelementptr i8, ptr %i.cv, i64 %i.do ; 4 uses
  %scevgep282 = getelementptr i8, ptr %i.cw, i64 %i.do ; 4 uses
  %scevgep286 = getelementptr i8, ptr %i.cx, i64 %i.do ; 4 uses
  %scevgep287 = getelementptr i8, ptr %i.cy, i64 %i.do ; 4 uses
  %scevgep291 = getelementptr i8, ptr %i.cz, i64 %i.do ; 4 uses
  %scevgep292 = getelementptr i8, ptr %i.da, i64 %i.do ; 4 uses
  %i.dp = icmp ult ptr %scevgep278, %scevgep279
  %umin = select i1 %i.dp, ptr %scevgep278, ptr %scevgep279
  %i.dq = icmp ugt ptr %scevgep278, %scevgep279
  %umax = select i1 %i.dq, ptr %scevgep278, ptr %scevgep279
  %scevgep280 = getelementptr i8, ptr %umax, i64 8
  %i.dr = icmp ult ptr %scevgep281, %scevgep282
  %umin283 = select i1 %i.dr, ptr %scevgep281, ptr %scevgep282
  %i.ds = icmp ugt ptr %scevgep281, %scevgep282
  %umax284 = select i1 %i.ds, ptr %scevgep281, ptr %scevgep282
  %scevgep285 = getelementptr i8, ptr %umax284, i64 8
  %i.dt = icmp ult ptr %scevgep286, %scevgep287
  %umin288 = select i1 %i.dt, ptr %scevgep286, ptr %scevgep287
  %i.du = icmp ugt ptr %scevgep286, %scevgep287
  %umax289 = select i1 %i.du, ptr %scevgep286, ptr %scevgep287
  %scevgep290 = getelementptr i8, ptr %umax289, i64 8
  %i.dv = icmp ult ptr %scevgep291, %scevgep292
  %umin293 = select i1 %i.dv, ptr %scevgep291, ptr %scevgep292
  %i.dw = icmp ugt ptr %scevgep291, %scevgep292
  %umax294 = select i1 %i.dw, ptr %scevgep291, ptr %scevgep292
  %scevgep295 = getelementptr i8, ptr %umax294, i64 8
  %i.dx = load double, ptr %.0249, align 8, !tbaa !22
  %i.dy = fmul double %i.dx, 2.000000e+00
  store double %i.dy, ptr %i.r, align 8, !tbaa !22
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.u
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !22
  %i.eb = fmul double %i.ea, 2.000000e+00
  store double %i.eb, ptr %i.v, align 8, !tbaa !22
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.preheader418, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ec = insertelement <4 x ptr> poison, ptr %scevgep280, i64 0
  %i.ed = insertelement <4 x ptr> %i.ec, ptr %scevgep285, i64 1
  %i.ee = insertelement <4 x ptr> %i.ed, ptr %scevgep290, i64 2
  %i.ef = insertelement <4 x ptr> %i.ee, ptr %scevgep295, i64 3 ; 4 uses
  %i.eg = icmp ult <4 x ptr> %i.bw, %i.ef
  %i.eh = insertelement <4 x ptr> poison, ptr %umin, i64 0
  %i.ei = insertelement <4 x ptr> %i.eh, ptr %umin283, i64 1
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %umin288, i64 2
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %umin293, i64 3 ; 4 uses
  %i.el = icmp ult <4 x ptr> %i.ek, %i.by
  %i.em = and <4 x i1> %i.eg, %i.el
  %i.en = icmp ult <4 x ptr> %i.ca, %i.ef
  %i.eo = icmp ult <4 x ptr> %i.ek, %i.cc
  %i.ep = and <4 x i1> %i.en, %i.eo
  %i.eq = icmp ult <4 x ptr> %i.ce, %i.ef
  %i.er = icmp ult <4 x ptr> %i.ek, %i.cg
  %i.es = and <4 x i1> %i.eq, %i.er
  %i.et = icmp ult <4 x ptr> %i.ci, %i.ef
  %i.eu = icmp ult <4 x ptr> %i.ek, %i.ck
  %i.ev = and <4 x i1> %i.et, %i.eu
  %rdx.op = or <4 x i1> %i.em, %i.ep
  %rdx.op400 = or <4 x i1> %rdx.op, %i.es
  %rdx.op401 = or <4 x i1> %rdx.op400, %i.ev
  %i.ew = bitcast <4 x i1> %rdx.op401 to i4
  %i.ex = icmp ne i4 %i.ew, 0
  %op.rdx417.reass = or i1 %i.ex, %invariant.op425
  br i1 %op.rdx417.reass, label %.lr.ph.preheader418, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ey = shl i64 %index, 1                       ; 4 uses
  %i.ez = or disjoint i64 %i.ey, 2                ; 3 uses
  %i.fa = add i64 %i.ey, 4                        ; 2 uses
  %i.fb = or disjoint i64 %index, 1               ; 4 uses
  %i.fc = or disjoint i64 %i.ey, 1
  %i.fd = or disjoint i64 %i.ey, 3
  %i.fe = mul nsw i64 %i.fc, %i.b
  %i.ff = mul nsw i64 %i.fd, %i.b
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fe
  %i.fh = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ff
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !22, !alias.scope !65
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !22, !alias.scope !65
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1 ; 2 uses
  %i.fm = mul nsw i64 %i.ez, %i.b
  %i.fn = mul nsw i64 %i.fa, %i.b
  %i.fo = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fm
  %i.fp = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fn
  %i.fq = load double, ptr %i.fo, align 8, !tbaa !22, !alias.scope !66
  %i.fr = load double, ptr %i.fp, align 8, !tbaa !22, !alias.scope !66
  %i.fs = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.fr, i64 1 ; 2 uses
  %i.fu = fadd <2 x double> %i.fl, %i.ft          ; 2 uses
  %i.fv = fsub <2 x double> %i.fl, %i.ft          ; 2 uses
  %i.fw = sub nsw i64 %i.f, %i.ez                 ; 2 uses
  %i.fx = sub nsw i64 %i.f, %i.fa                 ; 2 uses
  %i.fy = add nsw i64 %i.fw, -1
  %i.fz = add nsw i64 %i.fx, -1
  %i.ga = mul nsw i64 %i.fy, %i.b
  %i.gb = mul nsw i64 %i.fz, %i.b
  %i.gc = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ga
  %i.gd = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gb
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !22, !alias.scope !67
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !22, !alias.scope !67
  %i.gg = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.gf, i64 1 ; 2 uses
  %i.gi = mul nsw i64 %i.fw, %i.b
  %i.gj = mul nsw i64 %i.fx, %i.b
  %i.gk = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gi
  %i.gl = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gj
  %i.gm = load double, ptr %i.gk, align 8, !tbaa !22, !alias.scope !68
  %i.gn = load double, ptr %i.gl, align 8, !tbaa !22, !alias.scope !68
  %i.go = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gn, i64 1 ; 2 uses
  %i.gq = fadd <2 x double> %i.gh, %i.gp          ; 2 uses
  %i.gr = fsub <2 x double> %i.gh, %i.gp          ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ez
  %wide.vec = load <4 x double>, ptr %i.gs, align 8, !tbaa !22, !alias.scope !69 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 4 uses
  %strided.vec397 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.gt = fadd <2 x double> %i.fu, %i.gq          ; 2 uses
  %i.gu = fsub <2 x double> %i.fu, %i.gq          ; 2 uses
  %i.gv = fmul <2 x double> %strided.vec397, %i.gt
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gu, <2 x double> %i.gv)
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fb
  store <2 x double> %i.gw, ptr %i.gx, align 8, !tbaa !22, !alias.scope !70, !noalias !71
  %i.gy = fneg <2 x double> %i.gu
  %i.gz = fmul <2 x double> %strided.vec397, %i.gy
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gt, <2 x double> %i.gz)
  %i.hb = sub nuw nsw i64 %i.g, %i.fb
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.hb
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %reverse = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse, ptr %i.hd, align 8, !tbaa !22, !alias.scope !72, !noalias !73
  %i.he = fadd <2 x double> %i.fv, %i.gr          ; 2 uses
  %i.hf = fsub <2 x double> %i.gr, %i.fv          ; 2 uses
  %i.hg = fmul <2 x double> %strided.vec397, %i.he
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.hf, <2 x double> %i.hg)
  %i.hi = getelementptr [8 x i8], ptr %i.v, i64 %i.fb
  store <2 x double> %i.hh, ptr %i.hi, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.hj = fneg <2 x double> %i.hf
  %i.hk = fmul <2 x double> %strided.vec397, %i.hj
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.he, <2 x double> %i.hk)
  %i.hm = sub nsw i64 %i.f, %i.fb
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.hm
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -8
  %reverse398 = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse398, ptr %i.ho, align 8, !tbaa !22, !alias.scope !76, !noalias !77
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader418

.lr.ph.preheader418:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph.preheader ], [ %i.dm, %middle.block ]
  %.0227237.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.dn, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader418, %.lr.ph
  %i.hq = phi i64 [ %i.jj, %.lr.ph ], [ %.ph, %.lr.ph.preheader418 ] ; 4 uses
  %.0227237 = phi i64 [ %i.ji, %.lr.ph ], [ %.0227237.ph, %.lr.ph.preheader418 ] ; 5 uses
  %i.hr = add nsw i64 %i.hq, -1
  %i.hs = mul nsw i64 %i.hr, %i.b
  %i.ht = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !22 ; 2 uses
  %i.hv = mul nsw i64 %i.hq, %i.b
  %i.hw = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !22 ; 2 uses
  %i.hy = fadd double %i.hu, %i.hx                ; 2 uses
  %i.hz = fsub double %i.hu, %i.hx                ; 2 uses
  %i.ia = sub nsw i64 %i.f, %i.hq                 ; 2 uses
  %i.ib = add nsw i64 %i.ia, -1
  %i.ic = mul nsw i64 %i.ib, %i.b
  %i.id = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !22 ; 2 uses
  %i.if = mul nsw i64 %i.ia, %i.b
  %i.ig = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !22 ; 2 uses
  %i.ii = fadd double %i.ie, %i.ih                ; 2 uses
  %i.ij = fsub double %i.ie, %i.ih                ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !22 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = load double, ptr %i.im, align 8, !tbaa !22 ; 4 uses
  %i.io = fadd double %i.hy, %i.ii                ; 2 uses
  %i.ip = fsub double %i.hy, %i.ii                ; 2 uses
  %i.iq = fmul double %i.in, %i.io
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.il, double %i.ip, double %i.iq)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227237
  store double %i.ir, ptr %i.is, align 8, !tbaa !22
  %i.it = fneg double %i.ip
  %i.iu = fmul double %i.in, %i.it
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.il, double %i.io, double %i.iu)
  %i.iw = sub nuw nsw i64 %i.g, %.0227237
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.iw
  store double %i.iv, ptr %i.ix, align 8, !tbaa !22
  %i.iy = fadd double %i.hz, %i.ij                ; 2 uses
  %i.iz = fsub double %i.ij, %i.hz                ; 2 uses
  %i.ja = fmul double %i.in, %i.iy
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.il, double %i.iz, double %i.ja)
  %i.jc = getelementptr [8 x i8], ptr %i.v, i64 %.0227237
  store double %i.jb, ptr %i.jc, align 8, !tbaa !22
  %i.jd = fneg double %i.iz
  %i.je = fmul double %i.in, %i.jd
  %i.jf = tail call double @llvm.fmuladd.f64(double %i.il, double %i.iy, double %i.je)
  %i.jg = sub nsw i64 %i.f, %.0227237
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.jg
  store double %i.jf, ptr %i.jh, align 8, !tbaa !22
  %i.ji = add nuw nsw i64 %.0227237, 1            ; 3 uses
  %i.jj = shl nuw nsw i64 %i.ji, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.0227.lcssa.a = phi i64 [ 1, %bb.b ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph ] ; 3 uses
  %.lcssa = phi i64 [ 2, %bb.b ], [ %i.dm, %middle.block ], [ %i.jj, %.lr.ph ]
  %i.jk = icmp eq i64 %.lcssa, %i.g
  br i1 %i.jk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.jl = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.y
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !22 ; 2 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.z
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !22 ; 2 uses
  %i.jp = fadd double %i.jm, %i.jo
  %.idx = shl nuw nsw i64 %.0227.lcssa.a, 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !22
  %i.js = fmul double %i.jr, 2.000000e+00
  %i.jt = fmul double %i.jp, %i.js
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227.lcssa.a
  store double %i.jt, ptr %i.ju, align 8, !tbaa !22
  %i.jv = fsub double %i.jm, %i.jo
  %i.jw = load double, ptr %i.jq, align 8, !tbaa !22
  %i.jx = fmul double %i.jw, 2.000000e+00
  %i.jy = fmul double %i.jv, %i.jx
  %i.jz = sub nsw i64 %i.f, %.0227.lcssa.a
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.jz
  store double %i.jy, ptr %i.ka, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.kb = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !34
  tail call void %i.kd(ptr noundef %i.kb, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r) #5
  %i.ke = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !30 ; 2 uses
  %i.kg = load double, ptr %i.r, align 8, !tbaa !22
  %i.kh = load double, ptr %i.v, align 8, !tbaa !22 ; 2 uses
  %i.ki = fneg double %i.kh
  %i.kj = load <2 x double>, ptr %i.kf, align 8, !tbaa !22 ; 2 uses
  %i.kk = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kl = insertelement <2 x double> %i.kk, double %i.kh, i64 1
  %i.km = fmul <2 x double> %i.kj, %i.kl
  %i.kn = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ko = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.kp = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.kp, <2 x double> %i.kn) ; 2 uses
  %i.kr = extractelement <2 x double> %i.kq, i64 0
  store double %i.kr, ptr %.0226248, align 8, !tbaa !22
  %i.ks = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ac
  %i.kt = extractelement <2 x double> %i.kq, i64 1
  store double %i.kt, ptr %i.ks, align 8, !tbaa !22
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  br i1 %i.w, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %bb.d, %.lr.ph242
  %i.kv = phi i64 [ %i.mu, %.lr.ph242 ], [ 2, %bb.d ] ; 4 uses
  %.1240 = phi i64 [ %i.ms, %.lr.ph242 ], [ 1, %bb.d ] ; 5 uses
  %.0229239 = phi ptr [ %i.mt, %.lr.ph242 ], [ %i.ku, %bb.d ] ; 3 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.1240
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !22 ; 2 uses
  %i.ky = sub nuw nsw i64 %i.g, %.1240
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !22 ; 2 uses
  %i.lb = getelementptr [8 x i8], ptr %i.v, i64 %.1240
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !22 ; 2 uses
  %i.ld = sub nsw i64 %i.f, %.1240
  %i.le = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ld
  %i.lf = load double, ptr %i.le, align 8, !tbaa !22 ; 2 uses
  %i.lg = add nsw i64 %i.kv, -1
  %i.lh = fsub double %i.kx, %i.la
  %i.li = fsub double %i.lf, %i.lc                ; 2 uses
  %i.lj = mul nsw i64 %i.lg, %i.d
  %i.lk = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.lj
  %i.ll = fneg double %i.li
  %i.lm = load <2 x double>, ptr %.0229239, align 8, !tbaa !22 ; 2 uses
  %i.ln = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.lo = insertelement <2 x double> %i.ln, double %i.li, i64 1
  %i.lp = fmul <2 x double> %i.lo, %i.lm
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lr = insertelement <2 x double> poison, double %i.lh, i64 0
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.ls, <2 x double> %i.lq) ; 2 uses
  %i.lu = extractelement <2 x double> %i.lt, i64 0
  store double %i.lu, ptr %i.lk, align 8, !tbaa !22
  %i.lv = sub nsw i64 %i.f, %i.kv
  %i.lw = mul nsw i64 %i.lv, %i.d
  %i.lx = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.lw
  %i.ly = extractelement <2 x double> %i.lt, i64 1
  store double %i.ly, ptr %i.lx, align 8, !tbaa !22
  %i.lz = getelementptr inbounds nuw i8, ptr %.0229239, i64 16
  %i.ma = fadd double %i.kx, %i.la
  %i.mb = fadd double %i.lc, %i.lf                ; 2 uses
  %i.mc = mul nsw i64 %i.kv, %i.d
  %i.md = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.mc
  %i.me = fneg double %i.mb
  %i.mf = load <2 x double>, ptr %i.lz, align 8, !tbaa !22 ; 2 uses
  %i.mg = insertelement <2 x double> poison, double %i.me, i64 0
  %i.mh = insertelement <2 x double> %i.mg, double %i.mb, i64 1
  %i.mi = fmul <2 x double> %i.mh, %i.mf
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mk = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.ml, <2 x double> %i.mj) ; 2 uses
  %i.mn = extractelement <2 x double> %i.mm, i64 0
  store double %i.mn, ptr %i.md, align 8, !tbaa !22
  %i.mo = sub nsw i64 %i.t, %i.kv
  %i.mp = mul nsw i64 %i.mo, %i.d
  %i.mq = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.mp
  %i.mr = extractelement <2 x double> %i.mm, i64 1
  store double %i.mr, ptr %i.mq, align 8, !tbaa !22
  %i.ms = add nuw nsw i64 %.1240, 1               ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0229239, i64 32 ; 2 uses
  %i.mu = shl nuw nsw i64 %i.ms, 1                ; 2 uses
  %exitcond259.not = icmp eq i64 %i.ms, %i.af
  br i1 %exitcond259.not, label %._crit_edge243, label %.lr.ph242, !llvm.loop !63

._crit_edge243:                                   ; preds = %.lr.ph242, %bb.d
  %.0229.lcssa = phi ptr [ %i.ku, %bb.d ], [ %i.mt, %.lr.ph242 ]
  %.1.lcssa = phi i64 [ 1, %bb.d ], [ %i.af, %.lr.ph242 ] ; 2 uses
  %.lcssa236 = phi i64 [ 2, %bb.d ], [ %i.mu, %.lr.ph242 ]
  %i.mv = icmp eq i64 %.lcssa236, %i.g
  br i1 %i.mv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge243
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.1.lcssa
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !22
  %i.my = getelementptr [8 x i8], ptr %i.v, i64 %.1.lcssa
  %i.mz = load double, ptr %i.my, align 8, !tbaa !22 ; 2 uses
  %i.na = fneg double %i.mz
  %i.nb = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ag
  %i.nc = load <2 x double>, ptr %.0229.lcssa, align 8, !tbaa !22 ; 2 uses
  %i.nd = insertelement <2 x double> poison, double %i.mz, i64 0
  %i.ne = insertelement <2 x double> %i.nd, double %i.na, i64 1
  %i.nf = fmul <2 x double> %i.nc, %i.ne
  %i.ng = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nh = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.ni, <2 x double> %i.ng) ; 2 uses
  %i.nk = extractelement <2 x double> %i.nj, i64 0
  store double %i.nk, ptr %i.nb, align 8, !tbaa !22
  %i.nl = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ai
  %i.nm = extractelement <2 x double> %i.nj, i64 1
  store double %i.nm, ptr %i.nl, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge243, %bb.e
  %i.nn = add nuw nsw i64 %.0228247, 1            ; 2 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.k
  %i.np = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.m
  %exitcond260.not = icmp eq i64 %i.nn, %i.i
  br i1 %exitcond260.not, label %._crit_edge252, label %bb.b, !llvm.loop !64

._crit_edge252:                                   ; preds = %bb.f, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.r) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_ro11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 17 uses
  %i.g = sdiv i64 %i.f, 2                         ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 6 uses
  %i.q = shl i64 %i.f, 3
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #5 ; 26 uses
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %.lr.ph251, label %._crit_edge252

.lr.ph251:                                        ; preds = %bb.a
  %i.t = add nsw i64 %i.f, -1                     ; 6 uses
  %i.u = mul nsw i64 %i.t, %i.b
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.g ; 11 uses
  %i.w = icmp sgt i64 %i.f, 5                     ; 2 uses
  %i.x = mul nsw i64 %i.g, %i.b
  %i.y = add nsw i64 %i.g, -1                     ; 2 uses
  %i.z = mul nsw i64 %i.y, %i.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = mul nsw i64 %i.t, %i.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.ad = add nsw i64 %smax, -3
  %i.ae = lshr i64 %i.ad, 1                       ; 4 uses
  %i.af = add nuw nsw i64 %i.ae, 2                ; 5 uses
  %i.ag = mul nsw i64 %i.y, %i.d
  %i.ah = sub nsw i64 %i.f, %i.g
  %i.ai = mul nsw i64 %i.ah, %i.d
  %scevgep = getelementptr i8, ptr %i.r, i64 8    ; 4 uses
  %i.aj = shl nuw i64 %i.ae, 3                    ; 4 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.aj   ; 2 uses
  %scevgep272 = getelementptr i8, ptr %i.ak, i64 16 ; 4 uses
  %i.al = shl i64 %i.g, 3                         ; 3 uses
  %i.am = add i64 %i.al, -8
  %i.an = sub i64 %i.am, %i.aj
  %scevgep273 = getelementptr i8, ptr %i.r, i64 %i.an ; 5 uses
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.al
  %scevgep274 = getelementptr i8, ptr %i.ao, i64 8 ; 5 uses
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.aj
  %scevgep275 = getelementptr i8, ptr %i.aq, i64 16 ; 5 uses
  %i.ar = shl i64 %i.f, 3                         ; 4 uses
  %i.as = add i64 %i.ar, -8
  %i.at = sub i64 %i.as, %i.aj
  %scevgep276 = getelementptr i8, ptr %i.r, i64 %i.at ; 4 uses
  %scevgep277 = getelementptr i8, ptr %i.r, i64 %i.ar ; 4 uses
  %i.au = shl i64 %i.ae, 4                        ; 5 uses
  %i.av = or disjoint i64 %i.au, 8
  %i.aw = mul i64 %i.b, %i.av
  %i.ax = shl i64 %i.k, 3
  %i.ay = shl i64 %i.b, 3
  %i.az = add i64 %i.au, 16
  %i.ba = mul i64 %i.b, %i.az
  %i.bb = shl i64 %i.b, 4
  %i.bc = add i64 %i.f, 2305843009213693949
  %i.bd = mul i64 %i.b, %i.bc
  %i.be = shl i64 %i.bd, 3
  %i.bf = add i64 %i.ar, -24
  %i.bg = sub i64 %i.bf, %i.au
  %i.bh = mul i64 %i.b, %i.bg
  %i.bi = add i64 %i.f, 2305843009213693950
  %i.bj = mul i64 %i.b, %i.bi
  %i.bk = shl i64 %i.bj, 3
  %i.bl = add i64 %i.ar, -16
  %i.bm = sub i64 %i.bl, %i.au
  %i.bn = mul i64 %i.b, %i.bm
  %i.bo = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.p, i64 1
  %i.bq = getelementptr i8, <2 x ptr> %i.bp, <2 x i64> <i64 8, i64 16>
  %scevgep296 = getelementptr i8, ptr %i.p, i64 16 ; 3 uses
  %i.br = getelementptr i8, ptr %i.p, i64 %i.au   ; 2 uses
  %i.bs = insertelement <2 x ptr> poison, ptr %i.ak, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.br, i64 1
  %i.bu = getelementptr i8, <2 x ptr> %i.bt, <2 x i64> <i64 16, i64 32>
  %scevgep297 = getelementptr i8, ptr %i.br, i64 32 ; 3 uses
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = insertelement <4 x ptr> poison, ptr %scevgep272, i64 0
  %i.by = shufflevector <4 x ptr> %i.bx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep273, i64 0
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cd = insertelement <4 x ptr> poison, ptr %scevgep274, i64 0
  %i.ce = shufflevector <4 x ptr> %i.cd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <4 x ptr> poison, ptr %scevgep275, i64 0
  %i.cg = shufflevector <4 x ptr> %i.cf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ch = insertelement <4 x ptr> poison, ptr %scevgep276, i64 0 ; 2 uses
  %i.ci = shufflevector <4 x ptr> %i.ch, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cj = insertelement <4 x ptr> poison, ptr %scevgep277, i64 0 ; 2 uses
  %i.ck = shufflevector <4 x ptr> %i.cj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cl = insertelement <4 x ptr> %i.ch, ptr %scevgep, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %scevgep274, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %scevgep273, i64 3
  %i.co = insertelement <4 x ptr> %i.cj, ptr %scevgep272, i64 1
  %i.cp = insertelement <4 x ptr> %i.co, ptr %scevgep275, i64 2
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %i.v, i64 3
  %i.cr = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = getelementptr i8, ptr %1, i64 %i.aw
  %i.cu = getelementptr i8, ptr %1, i64 %i.ay
  %i.cv = getelementptr i8, ptr %1, i64 %i.ba
  %i.cw = getelementptr i8, ptr %1, i64 %i.bb
  %i.cx = getelementptr i8, ptr %1, i64 %i.be
  %i.cy = getelementptr i8, ptr %1, i64 %i.bh
  %i.cz = getelementptr i8, ptr %1, i64 %i.bk
  %i.da = getelementptr i8, ptr %1, i64 %i.bn
  %i.db = add nuw nsw i64 %i.ae, 1                ; 4 uses
  %min.iters.check = icmp slt i64 %i.f, 34
  %bound0 = icmp ult ptr %scevgep, %i.v
  %bound1 = icmp ult ptr %scevgep273, %scevgep272
  %found.conflict = and i1 %bound0, %bound1
  %bound0298 = icmp ult ptr %scevgep, %scevgep275
  %bound1299 = icmp ult ptr %scevgep274, %scevgep272
  %found.conflict300 = and i1 %bound0298, %bound1299
  %i.dc = insertelement <4 x ptr> %i.cs, ptr %scevgep273, i64 2
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %scevgep276, i64 3
  %i.de = icmp ult <4 x ptr> %i.dd, %i.cq
  %i.df = insertelement <4 x ptr> %i.cr, ptr %i.v, i64 2
  %i.dg = insertelement <4 x ptr> %i.df, ptr %scevgep277, i64 3
  %i.dh = icmp ult <4 x ptr> %i.cn, %i.dg
  %i.di = and <4 x i1> %i.dh, %i.de
  %bound0349 = icmp ult ptr %scevgep273, %scevgep297
  %bound1350 = icmp ult ptr %scevgep296, %i.v
  %found.conflict351 = and i1 %bound0349, %bound1350
  %bound0353 = icmp ult ptr %scevgep274, %scevgep277
  %bound1354 = icmp ult ptr %scevgep276, %scevgep275
  %found.conflict355 = and i1 %bound0353, %bound1354
  %bound0373 = icmp ult ptr %scevgep274, %scevgep297
  %bound1374 = icmp ult ptr %scevgep296, %scevgep275
  %found.conflict375 = and i1 %bound0373, %bound1374
  %bound0393 = icmp ult ptr %scevgep276, %scevgep297
  %bound1394 = icmp ult ptr %scevgep296, %scevgep277
  %found.conflict395 = and i1 %bound0393, %bound1394
  %i.dj = bitcast <4 x i1> %i.di to i4
  %i.dk = icmp ne i4 %i.dj, 0
  %op.rdx411 = or i1 %i.dk, %found.conflict
  %op.rdx412 = or i1 %found.conflict300, %found.conflict351
  %op.rdx413 = or i1 %found.conflict355, %found.conflict375
  %op.rdx415 = or i1 %op.rdx411, %op.rdx412
  %invariant.op = or i1 %found.conflict395, %op.rdx413
  %invariant.op425 = or i1 %invariant.op, %op.rdx415
  %n.vec = and i64 %i.db, 9223372036854775806     ; 2 uses
  %i.dl = shl nuw i64 %i.db, 1
  %i.dm = or i64 %i.dl, 2                         ; 2 uses
  %i.dn = or i64 %i.db, 1
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph251, %bb.f
  %.0249 = phi ptr [ %1, %.lr.ph251 ], [ %i.np, %bb.f ] ; 17 uses
  %.0226248 = phi ptr [ %2, %.lr.ph251 ], [ %i.nq, %bb.f ] ; 9 uses
  %.0228247 = phi i64 [ 0, %.lr.ph251 ], [ %i.no, %bb.f ] ; 2 uses
  %i.do = mul i64 %i.ax, %.0228247                ; 8 uses
  %scevgep278 = getelementptr i8, ptr %i.ct, i64 %i.do ; 4 uses
  %scevgep279 = getelementptr i8, ptr %i.cu, i64 %i.do ; 4 uses
  %scevgep281 = getelementptr i8, ptr %i.cv, i64 %i.do ; 4 uses
  %scevgep282 = getelementptr i8, ptr %i.cw, i64 %i.do ; 4 uses
  %scevgep286 = getelementptr i8, ptr %i.cx, i64 %i.do ; 4 uses
  %scevgep287 = getelementptr i8, ptr %i.cy, i64 %i.do ; 4 uses
  %scevgep291 = getelementptr i8, ptr %i.cz, i64 %i.do ; 4 uses
  %scevgep292 = getelementptr i8, ptr %i.da, i64 %i.do ; 4 uses
  %i.dp = icmp ult ptr %scevgep278, %scevgep279
  %umin = select i1 %i.dp, ptr %scevgep278, ptr %scevgep279
  %i.dq = icmp ugt ptr %scevgep278, %scevgep279
  %umax = select i1 %i.dq, ptr %scevgep278, ptr %scevgep279
  %scevgep280 = getelementptr i8, ptr %umax, i64 8
  %i.dr = icmp ult ptr %scevgep281, %scevgep282
  %umin283 = select i1 %i.dr, ptr %scevgep281, ptr %scevgep282
  %i.ds = icmp ugt ptr %scevgep281, %scevgep282
  %umax284 = select i1 %i.ds, ptr %scevgep281, ptr %scevgep282
  %scevgep285 = getelementptr i8, ptr %umax284, i64 8
  %i.dt = icmp ult ptr %scevgep286, %scevgep287
  %umin288 = select i1 %i.dt, ptr %scevgep286, ptr %scevgep287
  %i.du = icmp ugt ptr %scevgep286, %scevgep287
  %umax289 = select i1 %i.du, ptr %scevgep286, ptr %scevgep287
  %scevgep290 = getelementptr i8, ptr %umax289, i64 8
  %i.dv = icmp ult ptr %scevgep291, %scevgep292
  %umin293 = select i1 %i.dv, ptr %scevgep291, ptr %scevgep292
  %i.dw = icmp ugt ptr %scevgep291, %scevgep292
  %umax294 = select i1 %i.dw, ptr %scevgep291, ptr %scevgep292
  %scevgep295 = getelementptr i8, ptr %umax294, i64 8
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.u
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !22
  %i.dz = fmul double %i.dy, 2.000000e+00
  store double %i.dz, ptr %i.r, align 8, !tbaa !22
  %i.ea = load double, ptr %.0249, align 8, !tbaa !22
  %i.eb = fmul double %i.ea, 2.000000e+00
  store double %i.eb, ptr %i.v, align 8, !tbaa !22
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.preheader418, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ec = insertelement <4 x ptr> poison, ptr %scevgep280, i64 0
  %i.ed = insertelement <4 x ptr> %i.ec, ptr %scevgep285, i64 1
  %i.ee = insertelement <4 x ptr> %i.ed, ptr %scevgep290, i64 2
  %i.ef = insertelement <4 x ptr> %i.ee, ptr %scevgep295, i64 3 ; 4 uses
  %i.eg = icmp ult <4 x ptr> %i.bw, %i.ef
  %i.eh = insertelement <4 x ptr> poison, ptr %umin, i64 0
  %i.ei = insertelement <4 x ptr> %i.eh, ptr %umin283, i64 1
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %umin288, i64 2
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %umin293, i64 3 ; 4 uses
  %i.el = icmp ult <4 x ptr> %i.ek, %i.by
  %i.em = and <4 x i1> %i.eg, %i.el
  %i.en = icmp ult <4 x ptr> %i.ca, %i.ef
  %i.eo = icmp ult <4 x ptr> %i.ek, %i.cc
  %i.ep = and <4 x i1> %i.en, %i.eo
  %i.eq = icmp ult <4 x ptr> %i.ce, %i.ef
  %i.er = icmp ult <4 x ptr> %i.ek, %i.cg
  %i.es = and <4 x i1> %i.eq, %i.er
  %i.et = icmp ult <4 x ptr> %i.ci, %i.ef
  %i.eu = icmp ult <4 x ptr> %i.ek, %i.ck
  %i.ev = and <4 x i1> %i.et, %i.eu
  %rdx.op = or <4 x i1> %i.em, %i.ep
  %rdx.op400 = or <4 x i1> %rdx.op, %i.es
  %rdx.op401 = or <4 x i1> %rdx.op400, %i.ev
  %i.ew = bitcast <4 x i1> %rdx.op401 to i4
  %i.ex = icmp ne i4 %i.ew, 0
  %op.rdx417.reass = or i1 %i.ex, %invariant.op425
  br i1 %op.rdx417.reass, label %.lr.ph.preheader418, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ey = shl i64 %index, 1                       ; 4 uses
  %i.ez = or disjoint i64 %i.ey, 2                ; 4 uses
  %i.fa = add i64 %i.ey, 4                        ; 3 uses
  %i.fb = or disjoint i64 %index, 1               ; 4 uses
  %i.fc = sub nsw i64 %i.f, %i.ez
  %i.fd = sub nsw i64 %i.f, %i.fa
  %i.fe = mul nsw i64 %i.fc, %i.b
  %i.ff = mul nsw i64 %i.fd, %i.b
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fe
  %i.fh = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ff
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !22, !alias.scope !92
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !22, !alias.scope !92
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1 ; 2 uses
  %i.fm = sub nsw i64 %i.t, %i.ez
  %i.fn = sub nsw i64 %i.t, %i.fa
  %i.fo = mul nsw i64 %i.fm, %i.b
  %i.fp = mul nsw i64 %i.fn, %i.b
  %i.fq = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fo
  %i.fr = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fp
  %i.fs = load double, ptr %i.fq, align 8, !tbaa !22, !alias.scope !93
  %i.ft = load double, ptr %i.fr, align 8, !tbaa !22, !alias.scope !93
  %i.fu = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.ft, i64 1 ; 2 uses
  %i.fw = fadd <2 x double> %i.fl, %i.fv          ; 2 uses
  %i.fx = fsub <2 x double> %i.fl, %i.fv          ; 2 uses
  %i.fy = mul nsw i64 %i.ez, %i.b
  %i.fz = mul nsw i64 %i.fa, %i.b
  %i.ga = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fy
  %i.gb = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fz
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !22, !alias.scope !94
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !22, !alias.scope !94
  %i.ge = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gd, i64 1 ; 2 uses
  %i.gg = or disjoint i64 %i.ey, 1
  %i.gh = or disjoint i64 %i.ey, 3
  %i.gi = mul nsw i64 %i.gg, %i.b
  %i.gj = mul nsw i64 %i.gh, %i.b
  %i.gk = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gi
  %i.gl = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gj
  %i.gm = load double, ptr %i.gk, align 8, !tbaa !22, !alias.scope !95
  %i.gn = load double, ptr %i.gl, align 8, !tbaa !22, !alias.scope !95
  %i.go = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gn, i64 1 ; 2 uses
  %i.gq = fadd <2 x double> %i.gf, %i.gp          ; 2 uses
  %i.gr = fsub <2 x double> %i.gf, %i.gp          ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ez
  %wide.vec = load <4 x double>, ptr %i.gs, align 8, !tbaa !22, !alias.scope !96 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 4 uses
  %strided.vec397 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.gt = fadd <2 x double> %i.fw, %i.gq          ; 2 uses
  %i.gu = fsub <2 x double> %i.fw, %i.gq          ; 2 uses
  %i.gv = fmul <2 x double> %strided.vec397, %i.gt
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gu, <2 x double> %i.gv)
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fb
  store <2 x double> %i.gw, ptr %i.gx, align 8, !tbaa !22, !alias.scope !97, !noalias !98
  %i.gy = fneg <2 x double> %i.gu
  %i.gz = fmul <2 x double> %strided.vec397, %i.gy
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gt, <2 x double> %i.gz)
  %i.hb = sub nuw nsw i64 %i.g, %i.fb
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.hb
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %reverse = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse, ptr %i.hd, align 8, !tbaa !22, !alias.scope !99, !noalias !100
  %i.he = fadd <2 x double> %i.fx, %i.gr          ; 2 uses
  %i.hf = fsub <2 x double> %i.gr, %i.fx          ; 2 uses
  %i.hg = fmul <2 x double> %strided.vec397, %i.he
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.hf, <2 x double> %i.hg)
  %i.hi = getelementptr [8 x i8], ptr %i.v, i64 %i.fb
  store <2 x double> %i.hh, ptr %i.hi, align 8, !tbaa !22, !alias.scope !101, !noalias !102
  %i.hj = fneg <2 x double> %i.hf
  %i.hk = fmul <2 x double> %strided.vec397, %i.hj
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.he, <2 x double> %i.hk)
  %i.hm = sub nsw i64 %i.f, %i.fb
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.hm
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -8
  %reverse398 = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse398, ptr %i.ho, align 8, !tbaa !22, !alias.scope !103, !noalias !104
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader418

.lr.ph.preheader418:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph.preheader ], [ %i.dm, %middle.block ]
  %.0227237.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.dn, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader418, %.lr.ph
  %i.hq = phi i64 [ %i.jj, %.lr.ph ], [ %.ph, %.lr.ph.preheader418 ] ; 5 uses
  %.0227237 = phi i64 [ %i.ji, %.lr.ph ], [ %.0227237.ph, %.lr.ph.preheader418 ] ; 5 uses
  %i.hr = sub nsw i64 %i.f, %i.hq
  %i.hs = mul nsw i64 %i.hr, %i.b
  %i.ht = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !22 ; 2 uses
  %i.hv = sub nsw i64 %i.t, %i.hq
  %i.hw = mul nsw i64 %i.hv, %i.b
  %i.hx = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !22 ; 2 uses
  %i.hz = fadd double %i.hu, %i.hy                ; 2 uses
  %i.ia = fsub double %i.hu, %i.hy                ; 2 uses
  %i.ib = mul nsw i64 %i.hq, %i.b
  %i.ic = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !22 ; 2 uses
  %i.ie = add nsw i64 %i.hq, -1
  %i.if = mul nsw i64 %i.ie, %i.b
  %i.ig = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !22 ; 2 uses
  %i.ii = fadd double %i.id, %i.ih                ; 2 uses
  %i.ij = fsub double %i.id, %i.ih                ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !22 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = load double, ptr %i.im, align 8, !tbaa !22 ; 4 uses
  %i.io = fadd double %i.hz, %i.ii                ; 2 uses
  %i.ip = fsub double %i.hz, %i.ii                ; 2 uses
  %i.iq = fmul double %i.in, %i.io
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.il, double %i.ip, double %i.iq)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227237
  store double %i.ir, ptr %i.is, align 8, !tbaa !22
  %i.it = fneg double %i.ip
  %i.iu = fmul double %i.in, %i.it
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.il, double %i.io, double %i.iu)
  %i.iw = sub nuw nsw i64 %i.g, %.0227237
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.iw
  store double %i.iv, ptr %i.ix, align 8, !tbaa !22
  %i.iy = fadd double %i.ia, %i.ij                ; 2 uses
  %i.iz = fsub double %i.ij, %i.ia                ; 2 uses
  %i.ja = fmul double %i.in, %i.iy
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.il, double %i.iz, double %i.ja)
  %i.jc = getelementptr [8 x i8], ptr %i.v, i64 %.0227237
  store double %i.jb, ptr %i.jc, align 8, !tbaa !22
  %i.jd = fneg double %i.iz
  %i.je = fmul double %i.in, %i.jd
  %i.jf = tail call double @llvm.fmuladd.f64(double %i.il, double %i.iy, double %i.je)
  %i.jg = sub nsw i64 %i.f, %.0227237
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.jg
  store double %i.jf, ptr %i.jh, align 8, !tbaa !22
  %i.ji = add nuw nsw i64 %.0227237, 1            ; 3 uses
  %i.jj = shl nuw nsw i64 %i.ji, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.0227.lcssa.a = phi i64 [ 1, %bb.b ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph ] ; 3 uses
  %.lcssa = phi i64 [ 2, %bb.b ], [ %i.dm, %middle.block ], [ %i.jj, %.lr.ph ]
  %i.jk = icmp eq i64 %.lcssa, %i.g
  br i1 %i.jk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.jl = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.x
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !22 ; 2 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.z
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !22 ; 2 uses
  %i.jp = fadd double %i.jm, %i.jo
  %.idx = shl nuw nsw i64 %.0227.lcssa.a, 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !22
  %i.js = fmul double %i.jr, 2.000000e+00
  %i.jt = fmul double %i.jp, %i.js
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227.lcssa.a
  store double %i.jt, ptr %i.ju, align 8, !tbaa !22
  %i.jv = fsub double %i.jm, %i.jo
  %i.jw = load double, ptr %i.jq, align 8, !tbaa !22
  %i.jx = fmul double %i.jw, 2.000000e+00
  %i.jy = fmul double %i.jv, %i.jx
  %i.jz = sub nsw i64 %i.f, %.0227.lcssa.a
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.jz
  store double %i.jy, ptr %i.ka, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.kb = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !34
  tail call void %i.kd(ptr noundef %i.kb, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r) #5
  %i.ke = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !30 ; 2 uses
  %i.kg = load double, ptr %i.r, align 8, !tbaa !22 ; 2 uses
  %i.kh = load double, ptr %i.v, align 8, !tbaa !22 ; 2 uses
  %i.ki = fneg double %i.kg
  %i.kj = load <2 x double>, ptr %i.kf, align 8, !tbaa !22 ; 2 uses
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kl = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.km = insertelement <2 x double> %i.kl, double %i.ki, i64 1
  %i.kn = fmul <2 x double> %i.kk, %i.km
  %i.ko = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.kq = insertelement <2 x double> %i.kp, double %i.kh, i64 1
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> %i.kq, <2 x double> %i.kn) ; 2 uses
  %i.ks = extractelement <2 x double> %i.kr, i64 0
  store double %i.ks, ptr %.0226248, align 8, !tbaa !22
  %i.kt = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ac
  %i.ku = extractelement <2 x double> %i.kr, i64 1
  store double %i.ku, ptr %i.kt, align 8, !tbaa !22
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  br i1 %i.w, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %bb.d, %.lr.ph242
  %i.kw = phi i64 [ %i.mv, %.lr.ph242 ], [ 2, %bb.d ] ; 4 uses
  %.1240 = phi i64 [ %i.mt, %.lr.ph242 ], [ 1, %bb.d ] ; 5 uses
  %.0229239 = phi ptr [ %i.mu, %.lr.ph242 ], [ %i.kv, %bb.d ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.1240
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !22
  %i.kz = sub nuw nsw i64 %i.g, %.1240
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.kz
  %i.lb = load double, ptr %i.la, align 8, !tbaa !22
  %i.lc = getelementptr [8 x i8], ptr %i.v, i64 %.1240
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !22 ; 2 uses
  %i.le = sub nsw i64 %i.f, %.1240
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.le
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !22 ; 2 uses
  %i.lh = add nsw i64 %i.kw, -1
  %i.li = mul nsw i64 %i.lh, %i.d
  %i.lj = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.li
  %i.lk = load <2 x double>, ptr %.0229239, align 8, !tbaa !22 ; 2 uses
  %i.ll = insertelement <2 x double> poison, double %i.lb, i64 0 ; 2 uses
  %i.lm = insertelement <2 x double> %i.ll, double %i.ld, i64 1
  %i.ln = insertelement <2 x double> poison, double %i.ky, i64 0 ; 2 uses
  %i.lo = insertelement <2 x double> %i.ln, double %i.lg, i64 1
  %i.lp = fsub <2 x double> %i.lm, %i.lo          ; 3 uses
  %i.lq = fneg <2 x double> %i.lp
  %i.lr = shufflevector <2 x double> %i.lp, <2 x double> %i.lq, <2 x i32> <i32 1, i32 2>
  %i.ls = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lt = fmul <2 x double> %i.lr, %i.ls
  %i.lu = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.lp, <2 x double> %i.lt) ; 2 uses
  %i.lw = extractelement <2 x double> %i.lv, i64 0
  store double %i.lw, ptr %i.lj, align 8, !tbaa !22
  %i.lx = sub nsw i64 %i.f, %i.kw
  %i.ly = mul nsw i64 %i.lx, %i.d
  %i.lz = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ly
  %i.ma = extractelement <2 x double> %i.lv, i64 1
  store double %i.ma, ptr %i.lz, align 8, !tbaa !22
  %i.mb = getelementptr inbounds nuw i8, ptr %.0229239, i64 16
  %i.mc = mul nsw i64 %i.kw, %i.d
  %i.md = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.mc
  %i.me = load <2 x double>, ptr %i.mb, align 8, !tbaa !22 ; 2 uses
  %i.mf = insertelement <2 x double> %i.ln, double %i.ld, i64 1
  %i.mg = insertelement <2 x double> %i.ll, double %i.lg, i64 1
  %i.mh = fadd <2 x double> %i.mf, %i.mg          ; 3 uses
  %i.mi = fneg <2 x double> %i.mh
  %i.mj = shufflevector <2 x double> %i.mh, <2 x double> %i.mi, <2 x i32> <i32 1, i32 2>
  %i.mk = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ml = fmul <2 x double> %i.mj, %i.mk
  %i.mm = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> %i.mh, <2 x double> %i.ml) ; 2 uses
  %i.mo = extractelement <2 x double> %i.mn, i64 0
  store double %i.mo, ptr %i.md, align 8, !tbaa !22
  %i.mp = sub nsw i64 %i.t, %i.kw
  %i.mq = mul nsw i64 %i.mp, %i.d
  %i.mr = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.mq
  %i.ms = extractelement <2 x double> %i.mn, i64 1
  store double %i.ms, ptr %i.mr, align 8, !tbaa !22
  %i.mt = add nuw nsw i64 %.1240, 1               ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.0229239, i64 32 ; 2 uses
  %i.mv = shl nuw nsw i64 %i.mt, 1                ; 2 uses
  %exitcond259.not = icmp eq i64 %i.mt, %i.af
  br i1 %exitcond259.not, label %._crit_edge243, label %.lr.ph242, !llvm.loop !90

._crit_edge243:                                   ; preds = %.lr.ph242, %bb.d
  %.0229.lcssa = phi ptr [ %i.kv, %bb.d ], [ %i.mu, %.lr.ph242 ]
  %.1.lcssa = phi i64 [ 1, %bb.d ], [ %i.af, %.lr.ph242 ] ; 2 uses
  %.lcssa236 = phi i64 [ 2, %bb.d ], [ %i.mv, %.lr.ph242 ]
  %i.mw = icmp eq i64 %.lcssa236, %i.g
  br i1 %i.mw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge243
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.1.lcssa
  %i.my = load double, ptr %i.mx, align 8, !tbaa !22 ; 2 uses
  %i.mz = getelementptr [8 x i8], ptr %i.v, i64 %.1.lcssa
  %i.na = load double, ptr %i.mz, align 8, !tbaa !22
  %i.nb = fneg double %i.my
  %i.nc = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ag
  %i.nd = load <2 x double>, ptr %.0229.lcssa, align 8, !tbaa !22 ; 2 uses
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nf = insertelement <2 x double> poison, double %i.nb, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.my, i64 1
  %i.nh = fmul <2 x double> %i.nd, %i.ng
  %i.ni = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nj = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.nj, <2 x double> %i.nh) ; 2 uses
  %i.nl = extractelement <2 x double> %i.nk, i64 0
  store double %i.nl, ptr %i.nc, align 8, !tbaa !22
  %i.nm = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ai
  %i.nn = extractelement <2 x double> %i.nk, i64 1
  store double %i.nn, ptr %i.nm, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge243, %bb.e
  %i.no = add nuw nsw i64 %.0228247, 1            ; 2 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.k
  %i.nq = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.m
  %exitcond260.not = icmp eq i64 %i.no, %i.i
  br i1 %exitcond260.not, label %._crit_edge252, label %bb.b, !llvm.loop !91

._crit_edge252:                                   ; preds = %bb.f, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.r) #5
  ret void
}

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_zero(ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_madd2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fftw_twiddle_awake(i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_rdft_kind_str(i32 noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!14 = !{!"plan_s", !9, i64 0, !13, i64 8, !12, i64 40, !6, i64 48, !6, i64 52}
!15 = !{!"", !14, i64 0, !9, i64 56}
!16 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!17 = !{!"p1 _ZTS6twid_s", !9, i64 0}
!18 = !{!"", !15, i64 0, !16, i64 64, !17, i64 72, !17, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !6, i64 136}
end_hunk_0
