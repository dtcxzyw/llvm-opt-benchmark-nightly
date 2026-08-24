Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fp-bench?download=true
inline.NumInlined: 241
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumUnrolled: 71
begin_hunk_0_@bench_fma_float128:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  %i.cr = call { i64, i64 } @float128_muladd(i64 %i.ay, i64 %i.ar, i64 %i.bp, i64 %i.bi, i64 %i.cg, i64 %i.bz, i32 noundef 0, ptr noundef nonnull @soft_status) #13 ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0
  store volatile i64 %i.cs, ptr %.sroa.01.i, align 8
  %i.ct = extractvalue { i64, i64 } %i.cr, 1
  store volatile i64 %i.ct, ptr %.sroa.42.i, align 8
  %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0.copyload.i = load volatile i64, ptr %.sroa.01.i, align 8
  store volatile i64 %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0.copyload.i, ptr @res, align 8
  %.sroa.42.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0.copyload.i = load volatile i64, ptr %.sroa.42.i, align 8
  store volatile i64 %.sroa.42.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0.copyload.i, ptr getelementptr inbounds nuw (i8, ptr @res, i64 8), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  %i.cu = add nuw nsw i32 %.4.i11, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cu, 50000
  br i1 %exitcond.not, label %bb.m, label %bb.l, !llvm.loop !20

bb.m:                                             ; preds = %bb.l
  %i.cv = load i32, ptr @use_rt_clock, align 4
  %.not.i7 = icmp eq i32 %i.cv, 0
  br i1 %.not.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !10
  %i.cw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #13 ; 0 uses
  %i.cx = load i64, ptr %1, align 8
  %i.cy = mul i64 %i.cx, 1000000000
  %i.cz = load i64, ptr %i.w, align 8
  %i.da = add i64 %i.cy, %i.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %get_clock.exit9

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !10
  %i.db = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #13 ; 0 uses
  %i.dc = load i64, ptr %0, align 8
  %i.dd = mul i64 %i.dc, 1000000000
  %i.de = load i64, ptr %i.x, align 8
  %i.df = mul i64 %i.de, 1000
  %i.dg = add i64 %i.df, %i.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  br label %get_clock.exit9

get_clock.exit9:                                  ; preds = %bb.n, %bb.o
  %.0.i8 = phi i64 [ %i.da, %bb.n ], [ %i.dg, %bb.o ]
  %i.dh = add i64 %.0.i8, %.0.i5.neg16
  %i.di = load i64, ptr @ns_elapsed, align 8
  %i.dj = add i64 %i.dh, %i.di
  store i64 %i.dj, ptr @ns_elapsed, align 8
  %i.dk = load i64, ptr @n_completed_ops, align 8
  %i.dl = add i64 %i.dk, 50000
  store i64 %i.dl, ptr @n_completed_ops, align 8
  br label %bb.d, !llvm.loop !14

bench.exit:                                       ; preds = %get_clock.exit3
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bench_sqrt_float() #3 {
bb.a:
  %0 = alloca %struct.timeval, align 8            ; 6 uses
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %2 = alloca %struct.timeval, align 8            ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %4 = alloca %struct.timeval, align 8            ; 6 uses
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  %6 = alloca %struct.timeval, align 8            ; 6 uses
  %7 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = load i32, ptr @use_rt_clock, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !annotation !10
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #13 ; 0 uses
  %i.c = load i64, ptr %7, align 8
  %i.d = mul i64 %i.c, 1000000000
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.d, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %get_clock.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !10
  %i.h = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #13 ; 0 uses
  %i.i = load i64, ptr %6, align 8
  %i.j = mul i64 %i.i, 1000000000
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = mul i64 %i.l, 1000
  %i.n = add i64 %i.m, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %get_clock.exit

get_clock.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i1 = phi i64 [ %i.g, %bb.b ], [ %i.n, %bb.c ]
  %i.o = load i32, ptr @duration, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, 1000000000
  %i.r = add i64 %i.q, %.0.i1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %get_clock.exit10, %get_clock.exit
  %i.y = load i32, ptr @use_rt_clock, align 4
  %.not.i2 = icmp eq i32 %i.y, 0
  br i1 %.not.i2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !10
  %i.z = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #13 ; 0 uses
  %i.aa = load i64, ptr %5, align 8
  %i.ab = mul i64 %i.aa, 1000000000
  %i.ac = load i64, ptr %i.s, align 8
  %i.ad = add i64 %i.ab, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %get_clock.exit4

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !10
  %i.ae = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #13 ; 0 uses
  %i.af = load i64, ptr %4, align 8
  %i.ag = mul i64 %i.af, 1000000000
  %i.ah = load i64, ptr %i.t, align 8
  %i.ai = mul i64 %i.ah, 1000
  %i.aj = add i64 %i.ai, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %get_clock.exit4

get_clock.exit4:                                  ; preds = %bb.e, %bb.f
  %.0.i3 = phi i64 [ %i.ad, %bb.e ], [ %i.aj, %bb.f ]
  %i.ak = icmp slt i64 %.0.i3, %i.r
  br i1 %i.ak, label %bb.g, label %bench.exit

bb.g:                                             ; preds = %get_clock.exit4
  %i.al = load i64, ptr @random_ops.0, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.028.us.i = phi i64 [ %i.al, %bb.g ], [ %i.as, %bb.h ] ; 2 uses
  %i.am = lshr i64 %.028.us.i, 12
  %i.an = xor i64 %i.am, %.028.us.i               ; 2 uses
  %i.ao = shl i64 %i.an, 25
  %i.ap = xor i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 27
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, 2685821657736338717      ; 3 uses
  %i.at = trunc i64 %i.as to i32                  ; 4 uses
  %i.au = lshr i32 %i.at, 23
  %i.av = add nuw nsw i32 %i.au, 1
  %i.aw = and i32 %i.av, 254
  %.not33.us.i = icmp eq i32 %i.aw, 0
  br i1 %.not33.us.i, label %bb.h, label %.split.us.split.i.preheader, !llvm.loop !11

.split.us.split.i.preheader:                      ; preds = %bb.h
  store i64 %i.as, ptr @random_ops.0, align 16
  %i.ax = icmp slt i32 %i.at, 0
  %i.ay = and i32 %i.at, 2147483647
  %spec.select.i = select i1 %i.ax, i32 %i.ay, i32 %i.at
  %i.az = load i32, ptr @use_rt_clock, align 4
  %.not.i5 = icmp eq i32 %i.az, 0
  br i1 %.not.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split.us.split.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !10
  %i.ba = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #13 ; 0 uses
  %i.bb = load i64, ptr %3, align 8
  %.neg = mul i64 %i.bb, -1000000000
  %i.bc = load i64, ptr %i.u, align 8
  %.neg12 = sub i64 %.neg, %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %get_clock.exit7

bb.j:                                             ; preds = %.split.us.split.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !10
  %i.bd = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #13 ; 0 uses
  %i.be = load i64, ptr %2, align 8
  %.neg14 = mul i64 %i.be, -1000000000
  %i.bf = load i64, ptr %i.v, align 8
  %.neg13 = mul i64 %i.bf, -1000
  %.neg15 = add i64 %.neg13, %.neg14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %get_clock.exit7

get_clock.exit7:                                  ; preds = %bb.i, %bb.j
  %.0.i6.neg16 = phi i64 [ %.neg12, %bb.i ], [ %.neg15, %bb.j ]
  %i.bg = bitcast i32 %spec.select.i to float     ; 8 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %get_clock.exit7
  %.0.i11 = phi i32 [ 0, %get_clock.exit7 ], [ %i.bh, %bb.k ]
  %8 = call float @sqrtf(float noundef %i.bg) #13
  store volatile float %8, ptr @res, align 8
  %9 = call float @sqrtf(float noundef %i.bg) #13
  store volatile float %9, ptr @res, align 8
  %10 = call float @sqrtf(float noundef %i.bg) #13
  store volatile float %10, ptr @res, align 8
  %11 = call float @sqrtf(float noundef %i.bg) #13
  store volatile float %11, ptr @res, align 8
  %12 = call float @sqrtf(float noundef %i.bg) #13
  store volatile float %12, ptr @res, align 8
  %13 = call float @sqrtf(float noundef %i.bg) #13
  store volatile float %13, ptr @res, align 8
  %14 = call float @sqrtf(float noundef %i.bg) #13
  store volatile float %14, ptr @res, align 8
  %15 = call float @sqrtf(float noundef %i.bg) #13
  store volatile float %15, ptr @res, align 8
  %i.bh = add nuw nsw i32 %.0.i11, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.bh, 50000
  br i1 %exitcond.not.7, label %bb.l, label %bb.k, !llvm.loop !13

bb.l:                                             ; preds = %bb.k
  %i.bi = load i32, ptr @use_rt_clock, align 4
  %.not.i8 = icmp eq i32 %i.bi, 0
  br i1 %.not.i8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !10
  %i.bj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #13 ; 0 uses
  %i.bk = load i64, ptr %1, align 8
  %i.bl = mul i64 %i.bk, 1000000000
  %i.bm = load i64, ptr %i.w, align 8
  %i.bn = add i64 %i.bl, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %get_clock.exit10

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !10
  %i.bo = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #13 ; 0 uses
  %i.bp = load i64, ptr %0, align 8
  %i.bq = mul i64 %i.bp, 1000000000
  %i.br = load i64, ptr %i.x, align 8
  %i.bs = mul i64 %i.br, 1000
  %i.bt = add i64 %i.bs, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  br label %get_clock.exit10

get_clock.exit10:                                 ; preds = %bb.m, %bb.n
  %.0.i9 = phi i64 [ %i.bn, %bb.m ], [ %i.bt, %bb.n ]
  %i.bu = add i64 %.0.i9, %.0.i6.neg16
  %i.bv = load i64, ptr @ns_elapsed, align 8
  %i.bw = add i64 %i.bu, %i.bv
  store i64 %i.bw, ptr @ns_elapsed, align 8
  %i.bx = load i64, ptr @n_completed_ops, align 8
  %i.by = add i64 %i.bx, 50000
  store i64 %i.by, ptr @n_completed_ops, align 8
  br label %bb.d, !llvm.loop !14

bench.exit:                                       ; preds = %get_clock.exit4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bench_sqrt_double() #3 {
bb.a:
  %0 = alloca %struct.timeval, align 8            ; 6 uses
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %2 = alloca %struct.timeval, align 8            ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %4 = alloca %struct.timeval, align 8            ; 6 uses
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  %6 = alloca %struct.timeval, align 8            ; 6 uses
  %7 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = load i32, ptr @use_rt_clock, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !annotation !10
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #13 ; 0 uses
  %i.c = load i64, ptr %7, align 8
  %i.d = mul i64 %i.c, 1000000000
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.d, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %get_clock.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !10
  %i.h = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #13 ; 0 uses
  %i.i = load i64, ptr %6, align 8
  %i.j = mul i64 %i.i, 1000000000
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = mul i64 %i.l, 1000
  %i.n = add i64 %i.m, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %get_clock.exit

get_clock.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.n, %bb.c ]
  %i.o = load i32, ptr @duration, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, 1000000000
  %i.r = add i64 %i.q, %.0.i
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %get_clock.exit9, %get_clock.exit
  %i.y = load i32, ptr @use_rt_clock, align 4
  %.not.i1 = icmp eq i32 %i.y, 0
  br i1 %.not.i1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !10
  %i.z = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #13 ; 0 uses
  %i.aa = load i64, ptr %5, align 8
  %i.ab = mul i64 %i.aa, 1000000000
  %i.ac = load i64, ptr %i.s, align 8
  %i.ad = add i64 %i.ab, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %get_clock.exit3

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !10
  %i.ae = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #13 ; 0 uses
  %i.af = load i64, ptr %4, align 8
  %i.ag = mul i64 %i.af, 1000000000
  %i.ah = load i64, ptr %i.t, align 8
  %i.ai = mul i64 %i.ah, 1000
  %i.aj = add i64 %i.ai, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %get_clock.exit3

get_clock.exit3:                                  ; preds = %bb.e, %bb.f
  %.0.i2 = phi i64 [ %i.ad, %bb.e ], [ %i.aj, %bb.f ]
  %i.ak = icmp slt i64 %.0.i2, %i.r
  br i1 %i.ak, label %bb.g, label %bench.exit

bb.g:                                             ; preds = %get_clock.exit3
  %i.al = load i64, ptr @random_ops.0, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.031.us.i = phi i64 [ %i.al, %bb.g ], [ %i.as, %bb.h ] ; 2 uses
  %i.am = lshr i64 %.031.us.i, 12
  %i.an = xor i64 %i.am, %.031.us.i               ; 2 uses
  %i.ao = shl i64 %i.an, 25
  %i.ap = xor i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 27
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, 2685821657736338717      ; 4 uses
  %i.at = lshr i64 %i.as, 52
  %i.au = add nuw nsw i64 %i.at, 1
  %i.av = and i64 %i.au, 2046
  %.not32.us.i = icmp eq i64 %i.av, 0
  br i1 %.not32.us.i, label %bb.h, label %.split.us37.split.i.preheader, !llvm.loop !15

.split.us37.split.i.preheader:                    ; preds = %bb.h
  store i64 %i.as, ptr @random_ops.0, align 16
  %i.aw = and i64 %i.as, 9223372036854775807
  %i.ax = load i32, ptr @use_rt_clock, align 4
  %.not.i4 = icmp eq i32 %i.ax, 0
  br i1 %.not.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split.us37.split.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !10
  %i.ay = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #13 ; 0 uses
  %i.az = load i64, ptr %3, align 8
  %.neg = mul i64 %i.az, -1000000000
  %i.ba = load i64, ptr %i.u, align 8
  %.neg11 = sub i64 %.neg, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %get_clock.exit6

bb.j:                                             ; preds = %.split.us37.split.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !10
  %i.bb = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #13 ; 0 uses
  %i.bc = load i64, ptr %2, align 8
  %.neg13 = mul i64 %i.bc, -1000000000
  %i.bd = load i64, ptr %i.v, align 8
  %.neg12 = mul i64 %i.bd, -1000
  %.neg14 = add i64 %.neg12, %.neg13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %get_clock.exit6

get_clock.exit6:                                  ; preds = %bb.i, %bb.j
  %.0.i5.neg15 = phi i64 [ %.neg11, %bb.i ], [ %.neg14, %bb.j ]
  %i.be = bitcast i64 %i.aw to double
  %i.bf = call double @sqrt(double noundef %i.be) #13 ; 10 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %get_clock.exit6
  %.1.i10 = phi i32 [ 0, %get_clock.exit6 ], [ %i.bg, %bb.k ]
  store volatile double %i.bf, ptr @res, align 8
  store volatile double %i.bf, ptr @res, align 8
  store volatile double %i.bf, ptr @res, align 8
  store volatile double %i.bf, ptr @res, align 8
  store volatile double %i.bf, ptr @res, align 8
  store volatile double %i.bf, ptr @res, align 8
  store volatile double %i.bf, ptr @res, align 8
  store volatile double %i.bf, ptr @res, align 8
  store volatile double %i.bf, ptr @res, align 8
  store volatile double %i.bf, ptr @res, align 8
end_hunk_0
