Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft11e-radix2?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@mkplan:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %applicable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %bb.d, label %applicable.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43   ; 6 uses
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
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
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #5 ; 25 uses
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
  %scevgep = getelementptr i8, ptr %i.r, i64 8    ; 5 uses
  %i.aj = shl nuw i64 %i.ae, 3                    ; 4 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.aj
  %scevgep272 = getelementptr i8, ptr %i.ak, i64 16 ; 5 uses
  %i.al = shl i64 %i.g, 3                         ; 3 uses
  %i.am = add i64 %i.al, -8
  %i.an = sub i64 %i.am, %i.aj
  %scevgep273 = getelementptr i8, ptr %i.r, i64 %i.an ; 5 uses
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.al   ; 2 uses
  %scevgep274 = getelementptr i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.aj  ; 2 uses
  %scevgep275 = getelementptr i8, ptr %i.aq, i64 16 ; 2 uses
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
  %i.bo = insertelement <2 x ptr> poison, ptr %i.ao, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.p, i64 1
  %i.bq = getelementptr i8, <2 x ptr> %i.bp, <2 x i64> <i64 8, i64 16> ; 3 uses
  %scevgep296 = getelementptr i8, ptr %i.p, i64 16 ; 2 uses
  %i.br = getelementptr i8, ptr %i.p, i64 %i.az   ; 2 uses
  %i.bs = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.br, i64 1
  %i.bu = getelementptr i8, <2 x ptr> %i.bt, <2 x i64> <i64 16, i64 32> ; 3 uses
  %scevgep297 = getelementptr i8, ptr %i.br, i64 32 ; 2 uses
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = insertelement <4 x ptr> poison, ptr %scevgep272, i64 0
  %i.by = shufflevector <4 x ptr> %i.bx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep273, i64 0
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cd = insertelement <4 x ptr> poison, ptr %scevgep276, i64 0 ; 2 uses
  %i.ce = shufflevector <4 x ptr> %i.cd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <4 x ptr> poison, ptr %scevgep277, i64 0 ; 2 uses
  %i.cg = shufflevector <4 x ptr> %i.cf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ch = insertelement <4 x ptr> %i.cd, ptr %scevgep, i64 1
  %3 = insertelement <4 x ptr> %i.cf, ptr %scevgep272, i64 1
  %4 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %scevgep273, i64 1
  %6 = insertelement <2 x ptr> poison, ptr %scevgep272, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.v, i64 1
  %8 = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %9 = shufflevector <4 x ptr> %3, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ci = insertelement <4 x ptr> %8, ptr %scevgep272, i64 0
  %10 = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %11 = shufflevector <4 x ptr> %i.ch, <4 x ptr> %10, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %12 = insertelement <4 x ptr> %10, ptr %scevgep, i64 0
  %i.cj = getelementptr i8, ptr %1, i64 %i.aw
  %i.ck = getelementptr i8, ptr %1, i64 %i.bb
  %i.cl = getelementptr i8, ptr %1, i64 %i.be
  %i.cm = getelementptr i8, ptr %1, i64 %i.bh
  %i.cn = getelementptr i8, ptr %1, i64 %i.bj
  %i.co = getelementptr i8, ptr %1, i64 %i.bk
  %i.cp = getelementptr i8, ptr %1, i64 %i.bm
  %i.cq = getelementptr i8, ptr %1, i64 %i.bn
  %i.cr = add nuw nsw i64 %i.ae, 1                ; 4 uses
  %min.iters.check = icmp slt i64 %i.f, 34
  %bound0 = icmp ult ptr %scevgep, %i.v
  %bound1 = icmp ult ptr %scevgep273, %scevgep272
  %found.conflict = and i1 %bound0, %bound1
  %13 = icmp ult <2 x ptr> %5, %i.bu
  %14 = icmp ult <2 x ptr> %i.bq, %7
  %15 = insertelement <4 x ptr> %12, ptr %scevgep273, i64 2
  %i.cs = insertelement <4 x ptr> %15, ptr %scevgep276, i64 3
  %i.ct = insertelement <4 x ptr> %9, ptr %i.v, i64 3
  %i.cu = icmp ult <4 x ptr> %i.cs, %i.ct
  %16 = insertelement <4 x ptr> %11, ptr %scevgep273, i64 3
  %i.cv = insertelement <4 x ptr> %i.ci, ptr %i.v, i64 2
  %i.cw = insertelement <4 x ptr> %i.cv, ptr %scevgep277, i64 3
  %i.cx = icmp ult <4 x ptr> %16, %i.cw
  %i.cy = and <4 x i1> %i.cx, %i.cu
  %17 = and <2 x i1> %13, %14
  %bound0353.a = icmp ult ptr %scevgep274, %scevgep277
  %bound1354 = icmp ult ptr %scevgep276, %scevgep275
  %found.conflict355 = and i1 %bound0353.a, %bound1354
  %18 = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <4 x i32> zeroinitializer
  %19 = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <4 x i32> zeroinitializer
  %bound0373 = icmp ult ptr %scevgep274, %scevgep297
  %bound1374 = icmp ult ptr %scevgep296, %scevgep275
  %found.conflict375 = and i1 %bound0373, %bound1374
  %bound0393 = icmp ult ptr %scevgep276, %scevgep297
  %bound1394 = icmp ult ptr %scevgep296, %scevgep277
  %found.conflict395 = and i1 %bound0393, %bound1394
  %i.cz = bitcast <4 x i1> %i.cy to i4
  %i.da = icmp ne i4 %i.cz, 0
  %op.rdx411 = or i1 %i.da, %found.conflict
  %20 = bitcast <2 x i1> %17 to i2
  %21 = icmp ne i2 %20, 0
  %op.rdx413 = or i1 %found.conflict355, %found.conflict375
  %op.rdx415 = or i1 %op.rdx411, %21
  %invariant.op = or i1 %found.conflict395, %op.rdx413
  %invariant.op425 = or i1 %invariant.op, %op.rdx415
  %n.vec = and i64 %i.cr, 9223372036854775806     ; 2 uses
  %i.db = shl nuw i64 %i.cr, 1
  %i.dc = or i64 %i.db, 2                         ; 2 uses
  %i.dd = or i64 %i.cr, 1
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph251, %bb.f
  %.0249 = phi ptr [ %1, %.lr.ph251 ], [ %i.na, %bb.f ] ; 17 uses
  %.0226248 = phi ptr [ %2, %.lr.ph251 ], [ %i.nb, %bb.f ] ; 9 uses
  %.0228247 = phi i64 [ 0, %.lr.ph251 ], [ %i.mz, %bb.f ] ; 2 uses
  %i.de = mul i64 %i.ax, %.0228247                ; 8 uses
  %scevgep278 = getelementptr i8, ptr %i.cj, i64 %i.de ; 4 uses
  %scevgep279 = getelementptr i8, ptr %i.ck, i64 %i.de ; 4 uses
  %scevgep281 = getelementptr i8, ptr %i.cl, i64 %i.de ; 4 uses
  %scevgep282 = getelementptr i8, ptr %i.cm, i64 %i.de ; 4 uses
  %scevgep286 = getelementptr i8, ptr %i.cn, i64 %i.de ; 4 uses
  %scevgep287 = getelementptr i8, ptr %i.co, i64 %i.de ; 4 uses
  %scevgep291 = getelementptr i8, ptr %i.cp, i64 %i.de ; 4 uses
  %scevgep292 = getelementptr i8, ptr %i.cq, i64 %i.de ; 4 uses
  %i.df = icmp ult ptr %scevgep278, %scevgep279
  %umin = select i1 %i.df, ptr %scevgep278, ptr %scevgep279
  %i.dg = icmp ugt ptr %scevgep278, %scevgep279
  %umax = select i1 %i.dg, ptr %scevgep278, ptr %scevgep279
  %i.dh = icmp ult ptr %scevgep281, %scevgep282
  %umin283 = select i1 %i.dh, ptr %scevgep281, ptr %scevgep282
  %i.di = icmp ugt ptr %scevgep281, %scevgep282
  %umax284 = select i1 %i.di, ptr %scevgep281, ptr %scevgep282
  %i.dj = icmp ult ptr %scevgep286, %scevgep287
  %umin288 = select i1 %i.dj, ptr %scevgep286, ptr %scevgep287
  %i.dk = icmp ugt ptr %scevgep286, %scevgep287
  %umax289 = select i1 %i.dk, ptr %scevgep286, ptr %scevgep287
  %i.dl = icmp ult ptr %scevgep291, %scevgep292
  %umin293 = select i1 %i.dl, ptr %scevgep291, ptr %scevgep292
  %i.dm = icmp ugt ptr %scevgep291, %scevgep292
  %umax294 = select i1 %i.dm, ptr %scevgep291, ptr %scevgep292
  %22 = insertelement <4 x ptr> poison, ptr %umax, i64 0
  %23 = insertelement <4 x ptr> %22, ptr %umax284, i64 1
  %24 = insertelement <4 x ptr> %23, ptr %umax289, i64 2
  %25 = insertelement <4 x ptr> %24, ptr %umax294, i64 3
  %26 = getelementptr i8, <4 x ptr> %25, i64 8    ; 4 uses
  %i.dn = load double, ptr %.0249, align 8, !tbaa !22
  %i.do = fmul double %i.dn, 2.000000e+00
  store double %i.do, ptr %i.r, align 8, !tbaa !22
  %i.dp = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.u
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !22
  %i.dr = fmul double %i.dq, 2.000000e+00
  store double %i.dr, ptr %i.v, align 8, !tbaa !22
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.preheader418, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ds = icmp ult <4 x ptr> %i.bw, %26
  %i.dt = insertelement <4 x ptr> poison, ptr %umin, i64 0
  %i.du = insertelement <4 x ptr> %i.dt, ptr %umin283, i64 1
  %i.dv = insertelement <4 x ptr> %i.du, ptr %umin288, i64 2
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %umin293, i64 3 ; 4 uses
  %i.dx = icmp ult <4 x ptr> %i.dw, %i.by
  %i.dy = and <4 x i1> %i.ds, %i.dx
  %i.dz = icmp ult <4 x ptr> %i.ca, %26
  %i.ea = icmp ult <4 x ptr> %i.dw, %i.cc
  %i.eb = and <4 x i1> %i.dz, %i.ea
  %i.ec = icmp ult <4 x ptr> %18, %26
  %i.ed = icmp ult <4 x ptr> %i.dw, %19
  %i.ee = and <4 x i1> %i.ec, %i.ed
  %i.ef = icmp ult <4 x ptr> %i.ce, %26
  %i.eg = icmp ult <4 x ptr> %i.dw, %i.cg
  %i.eh = and <4 x i1> %i.ef, %i.eg
  %rdx.op = or <4 x i1> %i.dy, %i.eb
  %rdx.op400 = or <4 x i1> %rdx.op, %i.ee
  %rdx.op401 = or <4 x i1> %rdx.op400, %i.eh
  %i.ei = bitcast <4 x i1> %rdx.op401 to i4
  %i.ej = icmp ne i4 %i.ei, 0
  %op.rdx417.reass = or i1 %i.ej, %invariant.op425
  br i1 %op.rdx417.reass, label %.lr.ph.preheader418, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ek = shl i64 %index, 1                       ; 4 uses
  %i.el = or disjoint i64 %i.ek, 2                ; 3 uses
  %i.em = add i64 %i.ek, 4                        ; 2 uses
  %i.en = or disjoint i64 %index, 1               ; 4 uses
  %i.eo = or disjoint i64 %i.ek, 1
  %i.ep = or disjoint i64 %i.ek, 3
  %i.eq = mul nsw i64 %i.eo, %i.b
  %i.er = mul nsw i64 %i.ep, %i.b
  %i.es = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.eq
  %i.et = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.er
  %i.eu = load double, ptr %i.es, align 8, !tbaa !22, !alias.scope !65
  %i.ev = load double, ptr %i.et, align 8, !tbaa !22, !alias.scope !65
  %i.ew = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.ev, i64 1 ; 2 uses
  %i.ey = mul nsw i64 %i.el, %i.b
  %i.ez = mul nsw i64 %i.em, %i.b
  %i.fa = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ey
  %i.fb = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ez
  %i.fc = load double, ptr %i.fa, align 8, !tbaa !22, !alias.scope !66
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !22, !alias.scope !66
  %i.fe = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fd, i64 1 ; 2 uses
  %i.fg = fadd <2 x double> %i.ex, %i.ff          ; 2 uses
  %i.fh = fsub <2 x double> %i.ex, %i.ff          ; 2 uses
  %i.fi = sub nsw i64 %i.f, %i.el                 ; 2 uses
  %i.fj = sub nsw i64 %i.f, %i.em                 ; 2 uses
  %i.fk = add nsw i64 %i.fi, -1
  %i.fl = add nsw i64 %i.fj, -1
  %i.fm = mul nsw i64 %i.fk, %i.b
  %i.fn = mul nsw i64 %i.fl, %i.b
  %i.fo = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fm
  %i.fp = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fn
  %i.fq = load double, ptr %i.fo, align 8, !tbaa !22, !alias.scope !67
  %i.fr = load double, ptr %i.fp, align 8, !tbaa !22, !alias.scope !67
  %i.fs = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.fr, i64 1 ; 2 uses
  %i.fu = mul nsw i64 %i.fi, %i.b
  %i.fv = mul nsw i64 %i.fj, %i.b
  %i.fw = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fu
  %i.fx = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fv
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !22, !alias.scope !68
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !22, !alias.scope !68
  %i.ga = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fz, i64 1 ; 2 uses
  %i.gc = fadd <2 x double> %i.ft, %i.gb          ; 2 uses
  %i.gd = fsub <2 x double> %i.ft, %i.gb          ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.el
  %wide.vec = load <4 x double>, ptr %i.ge, align 8, !tbaa !22, !alias.scope !69 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 4 uses
  %strided.vec397 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.gf = fadd <2 x double> %i.fg, %i.gc          ; 2 uses
  %i.gg = fsub <2 x double> %i.fg, %i.gc          ; 2 uses
  %i.gh = fmul <2 x double> %strided.vec397, %i.gf
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gg, <2 x double> %i.gh)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.en
  store <2 x double> %i.gi, ptr %i.gj, align 8, !tbaa !22, !alias.scope !70, !noalias !71
  %i.gk = fneg <2 x double> %i.gg
  %i.gl = fmul <2 x double> %strided.vec397, %i.gk
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gf, <2 x double> %i.gl)
  %i.gn = sub nuw nsw i64 %i.g, %i.en
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -8
  %reverse = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse, ptr %i.gp, align 8, !tbaa !22, !alias.scope !72, !noalias !73
  %i.gq = fadd <2 x double> %i.fh, %i.gd          ; 2 uses
  %i.gr = fsub <2 x double> %i.gd, %i.fh          ; 2 uses
  %i.gs = fmul <2 x double> %strided.vec397, %i.gq
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gr, <2 x double> %i.gs)
  %i.gu = getelementptr [8 x i8], ptr %i.v, i64 %i.en
  store <2 x double> %i.gt, ptr %i.gu, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.gv = fneg <2 x double> %i.gr
  %i.gw = fmul <2 x double> %strided.vec397, %i.gv
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gq, <2 x double> %i.gw)
  %i.gy = sub nsw i64 %i.f, %i.en
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.gy
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -8
  %reverse398 = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse398, ptr %i.ha, align 8, !tbaa !22, !alias.scope !76, !noalias !77
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader418

.lr.ph.preheader418:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph.preheader ], [ %i.dc, %middle.block ]
  %.0227237.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader418, %.lr.ph
  %i.hc = phi i64 [ %i.iv, %.lr.ph ], [ %.ph, %.lr.ph.preheader418 ] ; 4 uses
  %.0227237 = phi i64 [ %i.iu, %.lr.ph ], [ %.0227237.ph, %.lr.ph.preheader418 ] ; 5 uses
  %i.hd = add nsw i64 %i.hc, -1
  %i.he = mul nsw i64 %i.hd, %i.b
  %i.hf = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !22 ; 2 uses
  %i.hh = mul nsw i64 %i.hc, %i.b
  %i.hi = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !22 ; 2 uses
  %i.hk = fadd double %i.hg, %i.hj                ; 2 uses
  %i.hl = fsub double %i.hg, %i.hj                ; 2 uses
  %i.hm = sub nsw i64 %i.f, %i.hc                 ; 2 uses
  %i.hn = add nsw i64 %i.hm, -1
  %i.ho = mul nsw i64 %i.hn, %i.b
  %i.hp = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !22 ; 2 uses
  %i.hr = mul nsw i64 %i.hm, %i.b
  %i.hs = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !22 ; 2 uses
  %i.hu = fadd double %i.hq, %i.ht                ; 2 uses
  %i.hv = fsub double %i.hq, %i.ht                ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hc ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !22 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !22 ; 4 uses
  %i.ia = fadd double %i.hk, %i.hu                ; 2 uses
  %i.ib = fsub double %i.hk, %i.hu                ; 2 uses
  %i.ic = fmul double %i.hz, %i.ia
  %i.id = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.ib, double %i.ic)
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227237
  store double %i.id, ptr %i.ie, align 8, !tbaa !22
  %i.if = fneg double %i.ib
  %i.ig = fmul double %i.hz, %i.if
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.ia, double %i.ig)
  %i.ii = sub nuw nsw i64 %i.g, %.0227237
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ii
  store double %i.ih, ptr %i.ij, align 8, !tbaa !22
  %i.ik = fadd double %i.hl, %i.hv                ; 2 uses
  %i.il = fsub double %i.hv, %i.hl                ; 2 uses
  %i.im = fmul double %i.hz, %i.ik
  %i.in = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.il, double %i.im)
  %i.io = getelementptr [8 x i8], ptr %i.v, i64 %.0227237
  store double %i.in, ptr %i.io, align 8, !tbaa !22
  %i.ip = fneg double %i.il
  %i.iq = fmul double %i.hz, %i.ip
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.ik, double %i.iq)
  %i.is = sub nsw i64 %i.f, %.0227237
  %i.it = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.is
  store double %i.ir, ptr %i.it, align 8, !tbaa !22
  %i.iu = add nuw nsw i64 %.0227237, 1            ; 3 uses
  %i.iv = shl nuw nsw i64 %i.iu, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.iu, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.0227.lcssa = phi i64 [ 1, %bb.b ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph ] ; 3 uses
  %.lcssa = phi i64 [ 2, %bb.b ], [ %i.dc, %middle.block ], [ %i.iv, %.lr.ph ]
  %i.iw = icmp eq i64 %.lcssa, %i.g
  br i1 %i.iw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ix = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.y
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !22 ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.z
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !22 ; 2 uses
  %i.jb = fadd double %i.iy, %i.ja
  %.idx = shl nuw nsw i64 %.0227.lcssa, 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 2 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !22
  %i.je = fmul double %i.jd, 2.000000e+00
  %i.jf = fmul double %i.jb, %i.je
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227.lcssa
  store double %i.jf, ptr %i.jg, align 8, !tbaa !22
  %i.jh = fsub double %i.iy, %i.ja
  %i.ji = load double, ptr %i.jc, align 8, !tbaa !22
  %i.jj = fmul double %i.ji, 2.000000e+00
  %i.jk = fmul double %i.jh, %i.jj
  %i.jl = sub nsw i64 %i.f, %.0227.lcssa
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.jl
  store double %i.jk, ptr %i.jm, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.jn = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !34
  tail call void %i.jp(ptr noundef %i.jn, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r) #5
  %i.jq = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !30 ; 2 uses
  %i.js = load double, ptr %i.r, align 8, !tbaa !22
  %i.jt = load double, ptr %i.v, align 8, !tbaa !22 ; 2 uses
  %i.ju = fneg double %i.jt
  %i.jv = load <2 x double>, ptr %i.jr, align 8, !tbaa !22 ; 2 uses
  %i.jw = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.jx = insertelement <2 x double> %i.jw, double %i.jt, i64 1
  %i.jy = fmul <2 x double> %i.jv, %i.jx
  %i.jz = shufflevector <2 x double> %i.jy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ka = insertelement <2 x double> poison, double %i.js, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.kb, <2 x double> %i.jz) ; 2 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 0
  store double %i.kd, ptr %.0226248, align 8, !tbaa !22
  %i.ke = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ac
  %i.kf = extractelement <2 x double> %i.kc, i64 1
  store double %i.kf, ptr %i.ke, align 8, !tbaa !22
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  br i1 %i.w, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %bb.d, %.lr.ph242
  %i.kh = phi i64 [ %i.mg, %.lr.ph242 ], [ 2, %bb.d ] ; 4 uses
  %.1240 = phi i64 [ %i.me, %.lr.ph242 ], [ 1, %bb.d ] ; 5 uses
  %.0229239 = phi ptr [ %i.mf, %.lr.ph242 ], [ %i.kg, %bb.d ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.1240
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !22 ; 2 uses
  %i.kk = sub nuw nsw i64 %i.g, %.1240
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.kk
  %i.km = load double, ptr %i.kl, align 8, !tbaa !22 ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr %i.v, i64 %.1240
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !22 ; 2 uses
  %i.kp = sub nsw i64 %i.f, %.1240
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !22 ; 2 uses
  %i.ks = add nsw i64 %i.kh, -1
  %i.kt = fsub double %i.kj, %i.km
  %i.ku = fsub double %i.kr, %i.ko                ; 2 uses
  %i.kv = mul nsw i64 %i.ks, %i.d
  %i.kw = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.kv
  %i.kx = fneg double %i.ku
  %i.ky = load <2 x double>, ptr %.0229239, align 8, !tbaa !22 ; 2 uses
  %i.kz = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.la = insertelement <2 x double> %i.kz, double %i.ku, i64 1
  %i.lb = fmul <2 x double> %i.la, %i.ky
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ld = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ky, <2 x double> %i.le, <2 x double> %i.lc) ; 2 uses
  %i.lg = extractelement <2 x double> %i.lf, i64 0
  store double %i.lg, ptr %i.kw, align 8, !tbaa !22
  %i.lh = sub nsw i64 %i.f, %i.kh
  %i.li = mul nsw i64 %i.lh, %i.d
  %i.lj = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.li
  %i.lk = extractelement <2 x double> %i.lf, i64 1
  store double %i.lk, ptr %i.lj, align 8, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %.0229239, i64 16
  %i.lm = fadd double %i.kj, %i.km
  %i.ln = fadd double %i.ko, %i.kr                ; 2 uses
  %i.lo = mul nsw i64 %i.kh, %i.d
  %i.lp = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.lo
  %i.lq = fneg double %i.ln
  %i.lr = load <2 x double>, ptr %i.ll, align 8, !tbaa !22 ; 2 uses
  %i.ls = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.lt = insertelement <2 x double> %i.ls, double %i.ln, i64 1
  %i.lu = fmul <2 x double> %i.lt, %i.lr
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lw = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lx = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ly = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.lx, <2 x double> %i.lv) ; 2 uses
  %i.lz = extractelement <2 x double> %i.ly, i64 0
  store double %i.lz, ptr %i.lp, align 8, !tbaa !22
  %i.ma = sub nsw i64 %i.t, %i.kh
  %i.mb = mul nsw i64 %i.ma, %i.d
  %i.mc = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.mb
  %i.md = extractelement <2 x double> %i.ly, i64 1
  store double %i.md, ptr %i.mc, align 8, !tbaa !22
  %i.me = add nuw nsw i64 %.1240, 1               ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0229239, i64 32 ; 2 uses
  %i.mg = shl nuw nsw i64 %i.me, 1                ; 2 uses
  %exitcond259.not = icmp eq i64 %i.me, %i.af
  br i1 %exitcond259.not, label %._crit_edge243, label %.lr.ph242, !llvm.loop !63

._crit_edge243:                                   ; preds = %.lr.ph242, %bb.d
  %.0229.lcssa = phi ptr [ %i.kg, %bb.d ], [ %i.mf, %.lr.ph242 ]
  %.1.lcssa = phi i64 [ 1, %bb.d ], [ %i.af, %.lr.ph242 ] ; 2 uses
  %.lcssa236 = phi i64 [ 2, %bb.d ], [ %i.mg, %.lr.ph242 ]
  %i.mh = icmp eq i64 %.lcssa236, %i.g
  br i1 %i.mh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge243
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.1.lcssa
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !22
  %i.mk = getelementptr [8 x i8], ptr %i.v, i64 %.1.lcssa
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !22 ; 2 uses
  %i.mm = fneg double %i.ml
  %i.mn = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ag
  %i.mo = load <2 x double>, ptr %.0229.lcssa, align 8, !tbaa !22 ; 2 uses
  %i.mp = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.mm, i64 1
  %i.mr = fmul <2 x double> %i.mo, %i.mq
  %i.ms = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mt = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> %i.mu, <2 x double> %i.ms) ; 2 uses
  %i.mw = extractelement <2 x double> %i.mv, i64 0
  store double %i.mw, ptr %i.mn, align 8, !tbaa !22
  %i.mx = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ai
  %i.my = extractelement <2 x double> %i.mv, i64 1
  store double %i.my, ptr %i.mx, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge243, %bb.e
  %i.mz = add nuw nsw i64 %.0228247, 1            ; 2 uses
  %i.na = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.k
  %i.nb = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.m
  %exitcond260.not = icmp eq i64 %i.mz, %i.i
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
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #5 ; 25 uses
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
  %scevgep = getelementptr i8, ptr %i.r, i64 8    ; 5 uses
  %i.aj = shl nuw i64 %i.ae, 3                    ; 4 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.aj
  %scevgep272 = getelementptr i8, ptr %i.ak, i64 16 ; 5 uses
  %i.al = shl i64 %i.g, 3                         ; 3 uses
  %i.am = add i64 %i.al, -8
  %i.an = sub i64 %i.am, %i.aj
  %scevgep273 = getelementptr i8, ptr %i.r, i64 %i.an ; 5 uses
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.al   ; 2 uses
  %scevgep274 = getelementptr i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.aj  ; 2 uses
  %scevgep275 = getelementptr i8, ptr %i.aq, i64 16 ; 2 uses
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
  %i.bo = insertelement <2 x ptr> poison, ptr %i.ao, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.p, i64 1
  %i.bq = getelementptr i8, <2 x ptr> %i.bp, <2 x i64> <i64 8, i64 16> ; 3 uses
  %scevgep296 = getelementptr i8, ptr %i.p, i64 16 ; 2 uses
  %i.br = getelementptr i8, ptr %i.p, i64 %i.au   ; 2 uses
  %i.bs = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.br, i64 1
  %i.bu = getelementptr i8, <2 x ptr> %i.bt, <2 x i64> <i64 16, i64 32> ; 3 uses
  %scevgep297 = getelementptr i8, ptr %i.br, i64 32 ; 2 uses
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = insertelement <4 x ptr> poison, ptr %scevgep272, i64 0
  %i.by = shufflevector <4 x ptr> %i.bx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep273, i64 0
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cd = insertelement <4 x ptr> poison, ptr %scevgep276, i64 0 ; 2 uses
  %i.ce = shufflevector <4 x ptr> %i.cd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <4 x ptr> poison, ptr %scevgep277, i64 0 ; 2 uses
  %i.cg = shufflevector <4 x ptr> %i.cf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ch = insertelement <4 x ptr> %i.cd, ptr %scevgep, i64 1
  %3 = insertelement <4 x ptr> %i.cf, ptr %scevgep272, i64 1
  %4 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %scevgep273, i64 1
  %6 = insertelement <2 x ptr> poison, ptr %scevgep272, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.v, i64 1
  %8 = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %9 = shufflevector <4 x ptr> %3, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ci = insertelement <4 x ptr> %8, ptr %scevgep272, i64 0
  %10 = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %11 = shufflevector <4 x ptr> %i.ch, <4 x ptr> %10, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %12 = insertelement <4 x ptr> %10, ptr %scevgep, i64 0
  %i.cj = getelementptr i8, ptr %1, i64 %i.aw
  %i.ck = getelementptr i8, ptr %1, i64 %i.ay
  %i.cl = getelementptr i8, ptr %1, i64 %i.ba
  %i.cm = getelementptr i8, ptr %1, i64 %i.bb
  %i.cn = getelementptr i8, ptr %1, i64 %i.be
  %i.co = getelementptr i8, ptr %1, i64 %i.bh
  %i.cp = getelementptr i8, ptr %1, i64 %i.bk
  %i.cq = getelementptr i8, ptr %1, i64 %i.bn
  %i.cr = add nuw nsw i64 %i.ae, 1                ; 4 uses
  %min.iters.check = icmp slt i64 %i.f, 34
  %bound0 = icmp ult ptr %scevgep, %i.v
  %bound1 = icmp ult ptr %scevgep273, %scevgep272
  %found.conflict = and i1 %bound0, %bound1
  %13 = icmp ult <2 x ptr> %5, %i.bu
  %14 = icmp ult <2 x ptr> %i.bq, %7
  %15 = insertelement <4 x ptr> %12, ptr %scevgep273, i64 2
  %i.cs = insertelement <4 x ptr> %15, ptr %scevgep276, i64 3
  %i.ct = insertelement <4 x ptr> %9, ptr %i.v, i64 3
  %i.cu = icmp ult <4 x ptr> %i.cs, %i.ct
  %16 = insertelement <4 x ptr> %11, ptr %scevgep273, i64 3
  %i.cv = insertelement <4 x ptr> %i.ci, ptr %i.v, i64 2
  %i.cw = insertelement <4 x ptr> %i.cv, ptr %scevgep277, i64 3
  %i.cx = icmp ult <4 x ptr> %16, %i.cw
  %i.cy = and <4 x i1> %i.cx, %i.cu
  %17 = and <2 x i1> %13, %14
  %bound0353.a = icmp ult ptr %scevgep274, %scevgep277
  %bound1354 = icmp ult ptr %scevgep276, %scevgep275
  %found.conflict355 = and i1 %bound0353.a, %bound1354
  %18 = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <4 x i32> zeroinitializer
  %19 = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <4 x i32> zeroinitializer
  %bound0373 = icmp ult ptr %scevgep274, %scevgep297
  %bound1374 = icmp ult ptr %scevgep296, %scevgep275
  %found.conflict375 = and i1 %bound0373, %bound1374
  %bound0393 = icmp ult ptr %scevgep276, %scevgep297
  %bound1394 = icmp ult ptr %scevgep296, %scevgep277
  %found.conflict395 = and i1 %bound0393, %bound1394
  %i.cz = bitcast <4 x i1> %i.cy to i4
  %i.da = icmp ne i4 %i.cz, 0
  %op.rdx411 = or i1 %i.da, %found.conflict
  %20 = bitcast <2 x i1> %17 to i2
  %21 = icmp ne i2 %20, 0
  %op.rdx413 = or i1 %found.conflict355, %found.conflict375
  %op.rdx415 = or i1 %op.rdx411, %21
  %invariant.op = or i1 %found.conflict395, %op.rdx413
  %invariant.op425 = or i1 %invariant.op, %op.rdx415
  %n.vec = and i64 %i.cr, 9223372036854775806     ; 2 uses
  %i.db = shl nuw i64 %i.cr, 1
  %i.dc = or i64 %i.db, 2                         ; 2 uses
  %i.dd = or i64 %i.cr, 1
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph251, %bb.f
  %.0249 = phi ptr [ %1, %.lr.ph251 ], [ %i.nb, %bb.f ] ; 17 uses
  %.0226248 = phi ptr [ %2, %.lr.ph251 ], [ %i.nc, %bb.f ] ; 9 uses
  %.0228247 = phi i64 [ 0, %.lr.ph251 ], [ %i.na, %bb.f ] ; 2 uses
  %i.de = mul i64 %i.ax, %.0228247                ; 8 uses
  %scevgep278 = getelementptr i8, ptr %i.cj, i64 %i.de ; 4 uses
  %scevgep279 = getelementptr i8, ptr %i.ck, i64 %i.de ; 4 uses
  %scevgep281 = getelementptr i8, ptr %i.cl, i64 %i.de ; 4 uses
  %scevgep282 = getelementptr i8, ptr %i.cm, i64 %i.de ; 4 uses
  %scevgep286 = getelementptr i8, ptr %i.cn, i64 %i.de ; 4 uses
  %scevgep287 = getelementptr i8, ptr %i.co, i64 %i.de ; 4 uses
  %scevgep291 = getelementptr i8, ptr %i.cp, i64 %i.de ; 4 uses
  %scevgep292 = getelementptr i8, ptr %i.cq, i64 %i.de ; 4 uses
  %i.df = icmp ult ptr %scevgep278, %scevgep279
  %umin = select i1 %i.df, ptr %scevgep278, ptr %scevgep279
  %i.dg = icmp ugt ptr %scevgep278, %scevgep279
  %umax = select i1 %i.dg, ptr %scevgep278, ptr %scevgep279
  %i.dh = icmp ult ptr %scevgep281, %scevgep282
  %umin283 = select i1 %i.dh, ptr %scevgep281, ptr %scevgep282
  %i.di = icmp ugt ptr %scevgep281, %scevgep282
  %umax284 = select i1 %i.di, ptr %scevgep281, ptr %scevgep282
  %i.dj = icmp ult ptr %scevgep286, %scevgep287
  %umin288 = select i1 %i.dj, ptr %scevgep286, ptr %scevgep287
  %i.dk = icmp ugt ptr %scevgep286, %scevgep287
  %umax289 = select i1 %i.dk, ptr %scevgep286, ptr %scevgep287
  %i.dl = icmp ult ptr %scevgep291, %scevgep292
  %umin293 = select i1 %i.dl, ptr %scevgep291, ptr %scevgep292
  %i.dm = icmp ugt ptr %scevgep291, %scevgep292
  %umax294 = select i1 %i.dm, ptr %scevgep291, ptr %scevgep292
  %22 = insertelement <4 x ptr> poison, ptr %umax, i64 0
  %23 = insertelement <4 x ptr> %22, ptr %umax284, i64 1
  %24 = insertelement <4 x ptr> %23, ptr %umax289, i64 2
  %25 = insertelement <4 x ptr> %24, ptr %umax294, i64 3
  %26 = getelementptr i8, <4 x ptr> %25, i64 8    ; 4 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.u
  %i.do = load double, ptr %i.dn, align 8, !tbaa !22
  %i.dp = fmul double %i.do, 2.000000e+00
  store double %i.dp, ptr %i.r, align 8, !tbaa !22
  %i.dq = load double, ptr %.0249, align 8, !tbaa !22
  %i.dr = fmul double %i.dq, 2.000000e+00
  store double %i.dr, ptr %i.v, align 8, !tbaa !22
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.preheader418, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ds = icmp ult <4 x ptr> %i.bw, %26
  %i.dt = insertelement <4 x ptr> poison, ptr %umin, i64 0
  %i.du = insertelement <4 x ptr> %i.dt, ptr %umin283, i64 1
  %i.dv = insertelement <4 x ptr> %i.du, ptr %umin288, i64 2
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %umin293, i64 3 ; 4 uses
  %i.dx = icmp ult <4 x ptr> %i.dw, %i.by
  %i.dy = and <4 x i1> %i.ds, %i.dx
  %i.dz = icmp ult <4 x ptr> %i.ca, %26
  %i.ea = icmp ult <4 x ptr> %i.dw, %i.cc
  %i.eb = and <4 x i1> %i.dz, %i.ea
  %i.ec = icmp ult <4 x ptr> %18, %26
  %i.ed = icmp ult <4 x ptr> %i.dw, %19
  %i.ee = and <4 x i1> %i.ec, %i.ed
  %i.ef = icmp ult <4 x ptr> %i.ce, %26
  %i.eg = icmp ult <4 x ptr> %i.dw, %i.cg
  %i.eh = and <4 x i1> %i.ef, %i.eg
  %rdx.op = or <4 x i1> %i.dy, %i.eb
  %rdx.op400 = or <4 x i1> %rdx.op, %i.ee
  %rdx.op401 = or <4 x i1> %rdx.op400, %i.eh
  %i.ei = bitcast <4 x i1> %rdx.op401 to i4
  %i.ej = icmp ne i4 %i.ei, 0
  %op.rdx417.reass = or i1 %i.ej, %invariant.op425
  br i1 %op.rdx417.reass, label %.lr.ph.preheader418, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ek = shl i64 %index, 1                       ; 4 uses
  %i.el = or disjoint i64 %i.ek, 2                ; 4 uses
  %i.em = add i64 %i.ek, 4                        ; 3 uses
  %i.en = or disjoint i64 %index, 1               ; 4 uses
  %i.eo = sub nsw i64 %i.f, %i.el
  %i.ep = sub nsw i64 %i.f, %i.em
  %i.eq = mul nsw i64 %i.eo, %i.b
  %i.er = mul nsw i64 %i.ep, %i.b
  %i.es = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.eq
  %i.et = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.er
  %i.eu = load double, ptr %i.es, align 8, !tbaa !22, !alias.scope !92
  %i.ev = load double, ptr %i.et, align 8, !tbaa !22, !alias.scope !92
  %i.ew = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.ev, i64 1 ; 2 uses
  %i.ey = sub nsw i64 %i.t, %i.el
  %i.ez = sub nsw i64 %i.t, %i.em
  %i.fa = mul nsw i64 %i.ey, %i.b
  %i.fb = mul nsw i64 %i.ez, %i.b
  %i.fc = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fa
  %i.fd = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fb
  %i.fe = load double, ptr %i.fc, align 8, !tbaa !22, !alias.scope !93
  %i.ff = load double, ptr %i.fd, align 8, !tbaa !22, !alias.scope !93
  %i.fg = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.ff, i64 1 ; 2 uses
  %i.fi = fadd <2 x double> %i.ex, %i.fh          ; 2 uses
  %i.fj = fsub <2 x double> %i.ex, %i.fh          ; 2 uses
  %i.fk = mul nsw i64 %i.el, %i.b
  %i.fl = mul nsw i64 %i.em, %i.b
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fk
  %i.fn = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fl
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !22, !alias.scope !94
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !22, !alias.scope !94
  %i.fq = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fp, i64 1 ; 2 uses
  %i.fs = or disjoint i64 %i.ek, 1
  %i.ft = or disjoint i64 %i.ek, 3
  %i.fu = mul nsw i64 %i.fs, %i.b
  %i.fv = mul nsw i64 %i.ft, %i.b
  %i.fw = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fu
  %i.fx = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fv
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !22, !alias.scope !95
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !22, !alias.scope !95
  %i.ga = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fz, i64 1 ; 2 uses
  %i.gc = fadd <2 x double> %i.fr, %i.gb          ; 2 uses
  %i.gd = fsub <2 x double> %i.fr, %i.gb          ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.el
  %wide.vec = load <4 x double>, ptr %i.ge, align 8, !tbaa !22, !alias.scope !96 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 4 uses
  %strided.vec397 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.gf = fadd <2 x double> %i.fi, %i.gc          ; 2 uses
  %i.gg = fsub <2 x double> %i.fi, %i.gc          ; 2 uses
  %i.gh = fmul <2 x double> %strided.vec397, %i.gf
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gg, <2 x double> %i.gh)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.en
  store <2 x double> %i.gi, ptr %i.gj, align 8, !tbaa !22, !alias.scope !97, !noalias !98
  %i.gk = fneg <2 x double> %i.gg
  %i.gl = fmul <2 x double> %strided.vec397, %i.gk
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gf, <2 x double> %i.gl)
  %i.gn = sub nuw nsw i64 %i.g, %i.en
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -8
  %reverse = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse, ptr %i.gp, align 8, !tbaa !22, !alias.scope !99, !noalias !100
  %i.gq = fadd <2 x double> %i.fj, %i.gd          ; 2 uses
  %i.gr = fsub <2 x double> %i.gd, %i.fj          ; 2 uses
  %i.gs = fmul <2 x double> %strided.vec397, %i.gq
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gr, <2 x double> %i.gs)
  %i.gu = getelementptr [8 x i8], ptr %i.v, i64 %i.en
  store <2 x double> %i.gt, ptr %i.gu, align 8, !tbaa !22, !alias.scope !101, !noalias !102
  %i.gv = fneg <2 x double> %i.gr
  %i.gw = fmul <2 x double> %strided.vec397, %i.gv
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gq, <2 x double> %i.gw)
  %i.gy = sub nsw i64 %i.f, %i.en
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.gy
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -8
  %reverse398 = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse398, ptr %i.ha, align 8, !tbaa !22, !alias.scope !103, !noalias !104
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader418

.lr.ph.preheader418:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph.preheader ], [ %i.dc, %middle.block ]
  %.0227237.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader418, %.lr.ph
  %i.hc = phi i64 [ %i.iv, %.lr.ph ], [ %.ph, %.lr.ph.preheader418 ] ; 5 uses
  %.0227237 = phi i64 [ %i.iu, %.lr.ph ], [ %.0227237.ph, %.lr.ph.preheader418 ] ; 5 uses
  %i.hd = sub nsw i64 %i.f, %i.hc
  %i.he = mul nsw i64 %i.hd, %i.b
  %i.hf = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !22 ; 2 uses
  %i.hh = sub nsw i64 %i.t, %i.hc
  %i.hi = mul nsw i64 %i.hh, %i.b
  %i.hj = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !22 ; 2 uses
  %i.hl = fadd double %i.hg, %i.hk                ; 2 uses
  %i.hm = fsub double %i.hg, %i.hk                ; 2 uses
  %i.hn = mul nsw i64 %i.hc, %i.b
  %i.ho = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !22 ; 2 uses
  %i.hq = add nsw i64 %i.hc, -1
  %i.hr = mul nsw i64 %i.hq, %i.b
  %i.hs = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !22 ; 2 uses
  %i.hu = fadd double %i.hp, %i.ht                ; 2 uses
  %i.hv = fsub double %i.hp, %i.ht                ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hc ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !22 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !22 ; 4 uses
  %i.ia = fadd double %i.hl, %i.hu                ; 2 uses
  %i.ib = fsub double %i.hl, %i.hu                ; 2 uses
  %i.ic = fmul double %i.hz, %i.ia
  %i.id = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.ib, double %i.ic)
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227237
  store double %i.id, ptr %i.ie, align 8, !tbaa !22
  %i.if = fneg double %i.ib
  %i.ig = fmul double %i.hz, %i.if
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.ia, double %i.ig)
  %i.ii = sub nuw nsw i64 %i.g, %.0227237
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ii
  store double %i.ih, ptr %i.ij, align 8, !tbaa !22
  %i.ik = fadd double %i.hm, %i.hv                ; 2 uses
  %i.il = fsub double %i.hv, %i.hm                ; 2 uses
  %i.im = fmul double %i.hz, %i.ik
  %i.in = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.il, double %i.im)
  %i.io = getelementptr [8 x i8], ptr %i.v, i64 %.0227237
  store double %i.in, ptr %i.io, align 8, !tbaa !22
  %i.ip = fneg double %i.il
  %i.iq = fmul double %i.hz, %i.ip
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.ik, double %i.iq)
  %i.is = sub nsw i64 %i.f, %.0227237
  %i.it = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.is
  store double %i.ir, ptr %i.it, align 8, !tbaa !22
  %i.iu = add nuw nsw i64 %.0227237, 1            ; 3 uses
  %i.iv = shl nuw nsw i64 %i.iu, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.iu, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.0227.lcssa = phi i64 [ 1, %bb.b ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph ] ; 3 uses
  %.lcssa = phi i64 [ 2, %bb.b ], [ %i.dc, %middle.block ], [ %i.iv, %.lr.ph ]
  %i.iw = icmp eq i64 %.lcssa, %i.g
  br i1 %i.iw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ix = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.x
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !22 ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.z
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !22 ; 2 uses
  %i.jb = fadd double %i.iy, %i.ja
  %.idx = shl nuw nsw i64 %.0227.lcssa, 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 2 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !22
  %i.je = fmul double %i.jd, 2.000000e+00
  %i.jf = fmul double %i.jb, %i.je
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227.lcssa
  store double %i.jf, ptr %i.jg, align 8, !tbaa !22
  %i.jh = fsub double %i.iy, %i.ja
  %i.ji = load double, ptr %i.jc, align 8, !tbaa !22
  %i.jj = fmul double %i.ji, 2.000000e+00
  %i.jk = fmul double %i.jh, %i.jj
  %i.jl = sub nsw i64 %i.f, %.0227.lcssa
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.jl
  store double %i.jk, ptr %i.jm, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.jn = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !34
  tail call void %i.jp(ptr noundef %i.jn, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r) #5
  %i.jq = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !30 ; 2 uses
  %i.js = load double, ptr %i.r, align 8, !tbaa !22 ; 2 uses
  %i.jt = load double, ptr %i.v, align 8, !tbaa !22 ; 2 uses
  %i.ju = fneg double %i.js
  %i.jv = load <2 x double>, ptr %i.jr, align 8, !tbaa !22 ; 2 uses
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jx = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.ju, i64 1
  %i.jz = fmul <2 x double> %i.jw, %i.jy
  %i.ka = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
