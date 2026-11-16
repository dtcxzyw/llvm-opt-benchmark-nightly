Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/arrows?download=true
inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@arrow_type_normal0:bb.a
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %i.ae, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %9, double %.sroa.085.0, double %.sroa.789.0, double %i.z, double %i.aa, double %.sroa.077.0, double %.sroa.7.0, double noundef %4)
  %i.bs = load <2 x double>, ptr %9, align 16, !tbaa !19
  %i.bt = fsub <2 x double> %i.bs, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.bu = phi <2 x double> [ %i.ba, %bb.c ], [ %i.br, %bb.e ], [ %i.bt, %bb.f ]
  %i.bv = fmul double %4, 5.000000e-01
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.bx, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %i.bz = phi <2 x double> [ %i.bu, %bb.g ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.ca = phi <2 x double> [ %i.by, %bb.g ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 4 uses
  br i1 %.not189, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = fadd <2 x double> %i.l, %i.ca           ; 2 uses
  %i.cd = fadd <2 x double> %i.m, %i.ca           ; 2 uses
  store <2 x double> %i.cc, ptr %i.cb, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !22
  %i.ce = fadd <2 x double> %i.bz, %i.cd
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cf = fsub <2 x double> %i.l, %i.bz
  %i.cg = fsub <2 x double> %i.m, %i.bz           ; 3 uses
  store <2 x double> %i.cg, ptr %i.cb, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !22
  %i.ch = fsub <2 x double> %i.cg, %i.ca
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ci = phi <2 x double> [ %i.cg, %bb.j ], [ %i.cc, %bb.i ] ; 2 uses
  %i.cj = phi <2 x double> [ %i.cf, %bb.j ], [ %i.cd, %bb.i ]
  %i.ck = phi <2 x double> [ %i.ch, %bb.j ], [ %i.ce, %bb.i ] ; 2 uses
  %i.cl = fsub <2 x double> %i.ci, %i.j
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x double> %i.cl, ptr %i.cm, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <2 x double> %i.cj, ptr %i.cn, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cp = fadd <2 x double> %i.j, %i.ci
  store <2 x double> %i.cp, ptr %i.co, align 8, !tbaa !19
  %i.cq = extractelement <2 x double> %i.ck, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cq, 0
  %i.cr = extractelement <2 x double> %i.ck, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.cr, 1
  ret { double, double } %.fca.1.insert
}

declare void @gvrender_polygon(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define internal fastcc void @miter_shape(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 48)) %0, double %1, double %2, double %3, double %4, double %5, double %6, double noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = fcmp oeq double %1, %3
  %i.b = fcmp oeq double %2, %4
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %5, %3
  %i.d = fcmp oeq double %6, %4
  %or.cond76 = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond76, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store double %3, ptr %0, align 8, !tbaa !19
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %4, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.e, align 8, !tbaa !19
  %.sroa.10.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %.sroa.10.0..sroa_idx67, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %3, ptr %i.f, align 8, !tbaa !19
  %.sroa.10.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %4, ptr %.sroa.10.0..sroa_idx69, align 8, !tbaa !19
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = insertelement <2 x double> poison, double %4, i64 0
  %i.h = insertelement <2 x double> %i.g, double %3, i64 1 ; 2 uses
  %i.i = insertelement <2 x double> poison, double %2, i64 0
  %i.j = insertelement <2 x double> %i.i, double %1, i64 1
  %i.k = fsub <2 x double> %i.h, %i.j             ; 3 uses
  %i.l = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  %i.m = extractelement <2 x double> %i.k, i64 1
  %i.n = tail call double @hypot(double noundef %i.m, double noundef %i.l) #11
  %i.o = fcmp ogt double %i.l, 0.000000e+00
  %i.p = fmul double %7, 5.000000e-01             ; 3 uses
  %i.q = fneg double %i.p
  %i.r = fsub double %5, %3                       ; 2 uses
  %i.s = fsub double %6, %4                       ; 3 uses
  %i.t = fcmp ogt double %i.s, 0.000000e+00
  %i.u = fneg double %i.s
  %i.v = insertelement <2 x double> poison, double %i.n, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x double> %i.k, %i.w             ; 3 uses
  %i.y = extractelement <2 x double> %i.x, i64 1
  %i.z = tail call double @acos(double noundef %i.y) #11 ; 2 uses
  %i.aa = fneg double %i.z
  %i.ab = select i1 %i.o, double %i.z, double %i.aa
  %i.ac = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.p, i64 1 ; 2 uses
  %i.ae = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.x, <2 x double> %i.ae) ; 5 uses
  %i.ag = tail call double @hypot(double noundef %i.r, double noundef %i.s) #11
  %i.ah = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.r, i64 1
  %i.aj = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fdiv <2 x double> %i.ai, %i.ak          ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 1
  %i.an = tail call double @acos(double noundef %i.am) #11 ; 2 uses
  %i.ao = fneg double %i.an
  %i.ap = select i1 %i.t, double %i.an, double %i.ao
  %i.aq = fadd double %i.ap, f0xC00921FB54442D18
  %i.ar = fsub double %i.aq, %i.ab                ; 2 uses
  %i.as = fcmp ole double %i.ar, f0xC00921FB54442D18
  %i.at = select i1 %i.as, double f0x401921FB54442D18, double 0.000000e+00
  %i.au = fadd double %i.ar, %i.at
  %i.av = fmul double %i.au, 5.000000e-01         ; 2 uses
  %i.aw = tail call double @sin(double noundef %i.av) #11
  %i.ax = fdiv double 1.000000e+00, %i.aw
  %i.ay = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.al, <2 x double> %i.ae) ; 4 uses
  %i.ba = fcmp ogt double %i.ax, 4.000000e+00
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = fadd <2 x double> %i.af, %i.az
  %i.be = fmul <2 x double> %i.bd, splat (double 5.000000e-01)
  store <2 x double> %i.be, ptr %0, align 8, !tbaa !19
  %i.bf = extractelement <2 x double> %i.af, i64 0
  store double %i.bf, ptr %i.bb, align 8, !tbaa !19
  %i.bg = extractelement <2 x double> %i.af, i64 1
  store double %i.bg, ptr %.sroa.732.0..sroa_idx, align 8, !tbaa !19
  %i.bh = extractelement <2 x double> %i.az, i64 0
  store double %i.bh, ptr %i.bc, align 8, !tbaa !19
  %i.bi = extractelement <2 x double> %i.az, i64 1
  store double %i.bi, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bj = tail call double @tan(double noundef %i.av) #11
  %i.bk = fdiv double %i.p, %i.bj
  %i.bl = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bl, <2 x double> %i.af)
  store <2 x double> %i.bo, ptr %0, align 8, !tbaa !19
  store <2 x double> %i.af, ptr %i.bb, align 8, !tbaa !19
  store <2 x double> %i.az, ptr %i.bc, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc { double, double } @arrow_type_crow0(double %0, double %1, double %2, double %3, double noundef %4, double noundef %5, i32 noundef %6, ptr nofree noundef nonnull captures(none) initializes((128, 144)) %7) unnamed_addr #10 {
bb.a:
  %8 = alloca %struct.triangle, align 8           ; 4 uses
  %9 = alloca %struct.triangle, align 8           ; 4 uses
  %10 = alloca %struct.triangle, align 16         ; 4 uses
  %11 = alloca %struct.triangle, align 8          ; 5 uses
  %i.a = and i32 %6, 32
  %.not = icmp eq i32 %i.a, 0                     ; 10 uses
  %12 = fcmp ule double %5, 1.000000e+00
  %or.cond307 = or i1 %12, %.not
  %i.b = fadd nnan double %5, -1.000000e+00
  %i.c = fmul nnan double %i.b, 5.000000e-02
  %i.d = insertelement <2 x double> poison, double %4, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.e, <double 4.000000e+00, double 1.000000e+00> ; 2 uses
  %13 = extractelement <2 x double> %i.f, i64 0
  %14 = fcmp ule double %5, %13
  %or.cond306 = or i1 %14, %.not
  %15 = insertelement <2 x double> poison, double %5, i64 0
  %i.g = insertelement <2 x double> %15, double %i.c, i64 1
  %16 = fdiv <2 x double> %i.g, %i.f              ; 2 uses
  %17 = extractelement <2 x double> %16, i64 0
  %18 = fmul double %17, 4.500000e-01
  %.0 = select i1 %or.cond306, double 4.500000e-01, double %18
  %19 = extractelement <2 x double> %16, i64 1
  %.0298 = select i1 %or.cond307, double 0.000000e+00, double %19
  %i.h = insertelement <2 x double> poison, double %2, i64 0 ; 2 uses
  %i.i = insertelement <2 x double> %i.h, double %3, i64 1 ; 3 uses
  %i.j = fneg <2 x double> %i.i                   ; 3 uses
  %20 = insertelement <2 x double> poison, double %.0, i64 0
  %i.k = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = shufflevector <2 x double> %i.j, <2 x double> %i.h, <2 x i32> <i32 1, i32 2>
  %i.m = fmul <2 x double> %i.k, %i.l             ; 5 uses
  %21 = insertelement <2 x double> poison, double %.0298, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = insertelement <2 x double> poison, double %2, i64 1
  %i.o = shufflevector <2 x double> %i.n, <2 x double> %i.j, <2 x i32> <i32 3, i32 1>
  %i.p = fmul <2 x double> %22, %i.o              ; 5 uses
  %i.q = insertelement <2 x double> poison, double %0, i64 0
  %i.r = insertelement <2 x double> %i.q, double %1, i64 1 ; 4 uses
  %i.s = fadd <2 x double> %i.r, %i.i             ; 3 uses
  %i.t = insertelement <2 x double> poison, double %2, i64 0
  %i.u = insertelement <2 x double> %i.t, double %3, i64 1
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 5.000000e-01), <2 x double> %i.r) ; 3 uses
  %i.w = extractelement <2 x double> %i.m, i64 0  ; 3 uses
  %i.x = fneg double %i.w
  %i.y = extractelement <2 x double> %i.m, i64 1  ; 3 uses
  %i.z = fneg double %i.y
  %i.aa = and i32 %6, 128
  %.not302 = icmp eq i32 %i.aa, 0                 ; 3 uses
  %.sroa.0128.0 = select i1 %.not302, double %i.w, double 0.000000e+00 ; 2 uses
  %.sroa.6130.0 = select i1 %.not302, double %i.y, double 0.000000e+00 ; 2 uses
  %i.ab = and i32 %6, 64
  %.not303 = icmp eq i32 %i.ab, 0                 ; 3 uses
  %.sroa.0124.0 = select i1 %.not303, double %i.x, double 0.000000e+00 ; 2 uses
  %.sroa.6.0 = select i1 %.not303, double %i.z, double 0.000000e+00 ; 2 uses
  %.sroa.7119.0 = select i1 %.not, double %.sroa.6130.0, double %.sroa.6.0 ; 3 uses
  %.sroa.0115.0 = select i1 %.not, double %.sroa.0128.0, double %.sroa.0124.0 ; 3 uses
  %.sroa.7.0 = select i1 %.not, double %.sroa.6.0, double %.sroa.6130.0 ; 3 uses
  %.sroa.0107.0 = select i1 %.not, double %.sroa.0124.0, double %.sroa.0128.0 ; 3 uses
  %23 = insertelement <2 x i1> poison, i1 %.not, i64 0
  %24 = shufflevector <2 x i1> %23, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ac = select <2 x i1> %24, <2 x double> %i.i, <2 x double> %i.j ; 6 uses
  %i.ad = fcmp une double %2, 0.000000e+00
  %i.ae = fcmp une double %3, 0.000000e+00
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.af = extractelement <2 x double> %i.ac, i64 0 ; 4 uses
  %i.ag = extractelement <2 x double> %i.ac, i64 1 ; 5 uses
  %i.ah = tail call double @hypot(double noundef %i.af, double noundef %i.ag) #11
  %i.ai = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x double> %i.ac, %i.aj          ; 4 uses
  %i.al = fcmp ogt double %i.ag, 0.000000e+00
  %i.am = extractelement <2 x double> %i.ak, i64 0
  %i.an = tail call double @acos(double noundef %i.am) #11 ; 2 uses
  %i.ao = fneg double %i.an
  %i.ap = select i1 %i.al, double %i.an, double %i.ao ; 3 uses
  %i.aq = and i32 %6, 96
  %brmerge = icmp ne i32 %i.aq, 96
  %.not304.not = xor i1 %.not, true               ; 2 uses
  %brmerge308 = or i1 %.not302, %.not304.not
  %or.cond312 = and i1 %brmerge, %brmerge308
  br i1 %or.cond312, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %8, double %.sroa.0115.0, double %.sroa.7119.0, double %i.af, double %i.ag, double %.sroa.0107.0, double %.sroa.7.0, double noundef %5)
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !19
  %i.at = fsub <2 x double> %i.as, %i.ac          ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0 ; 2 uses
  %i.av = extractelement <2 x double> %i.at, i64 1 ; 2 uses
  %i.aw = tail call double @hypot(double noundef %i.au, double noundef %i.av) #11 ; 2 uses
  %i.ax = fdiv double %i.au, %i.aw
  %i.ay = fcmp ogt double %i.av, 0.000000e+00
  %i.az = tail call double @acos(double noundef %i.ax) #11 ; 2 uses
  %i.ba = fneg double %i.az
  %i.bb = select i1 %i.ay, double %i.az, double %i.ba
  %i.bc = fsub double %i.bb, %i.ap
  %i.bd = tail call double @cos(double noundef %i.bc) #11
  %i.be = fmul double %i.aw, %i.bd
  %i.bf = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x double> %i.ak, %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %brmerge310 = or i1 %.not303, %.not304.not
  %i.bi = and i32 %6, 160
  %brmerge311 = icmp ne i32 %i.bi, 160
  %or.cond313 = and i1 %brmerge311, %brmerge310
  br i1 %or.cond313, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %9, double %.sroa.0115.0, double %.sroa.7119.0, double %i.af, double %i.ag, double %.sroa.0107.0, double %.sroa.7.0, double noundef %5)
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bk = load <2 x double>, ptr %i.bj, align 8, !tbaa !19
  %i.bl = fsub <2 x double> %i.bk, %i.ac          ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0 ; 2 uses
  %i.bn = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bo = tail call double @hypot(double noundef %i.bm, double noundef %i.bn) #11 ; 2 uses
  %i.bp = fdiv double %i.bm, %i.bo
  %i.bq = fcmp ogt double %i.bn, 0.000000e+00
  %i.br = tail call double @acos(double noundef %i.bp) #11 ; 2 uses
  %i.bs = fneg double %i.br
  %i.bt = select i1 %i.bq, double %i.br, double %i.bs
  %i.bu = fsub double %i.bt, %i.ap
  %i.bv = tail call double @cos(double noundef %i.bu) #11
  %i.bw = fmul double %i.bo, %i.bv
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x double> %i.ak, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %10, double %.sroa.0115.0, double %.sroa.7119.0, double %i.af, double %i.ag, double %.sroa.0107.0, double %.sroa.7.0, double noundef %5)
  %i.ca = load <2 x double>, ptr %10, align 16, !tbaa !19
  %i.cb = fsub <2 x double> %i.ca, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.cc = phi <2 x double> [ %i.bh, %bb.c ], [ %i.bz, %bb.e ], [ %i.cb, %bb.f ]
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = fmul double %5, 5.000000e-01
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ce = fsub <2 x double> %i.v, %i.s
  %i.cf = fadd <2 x double> %i.ce, %i.p           ; 2 uses
  %i.cg = fsub double %i.w, %2                    ; 2 uses
  %i.ch = fsub double %i.y, %3                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.ci = extractelement <2 x double> %i.cf, i64 0
  %i.cj = extractelement <2 x double> %i.cf, i64 1
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %11, double %i.ci, double %i.cj, double %i.cg, double %i.ch, double 0.000000e+00, double 0.000000e+00, double noundef %5)
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.015.0.copyload = load double, ptr %i.ck, align 8, !tbaa !19
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.416.0.copyload = load double, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !19
  %i.cl = fsub double %.sroa.015.0.copyload, %i.cg ; 2 uses
  %i.cm = fsub double %.sroa.416.0.copyload, %i.ch ; 2 uses
  %i.cn = tail call double @hypot(double noundef %i.cl, double noundef %i.cm) #11 ; 2 uses
  %i.co = fdiv double %i.cl, %i.cn
  %i.cp = fcmp ogt double %i.cm, 0.000000e+00
  %i.cq = tail call double @acos(double noundef %i.co) #11 ; 2 uses
  %i.cr = fneg double %i.cq
  %i.cs = select i1 %i.cp, double %i.cq, double %i.cr
  %i.ct = fsub double %i.cs, %i.ap
  %i.cu = fneg double %i.cn
  %i.cv = tail call double @cos(double noundef %i.ct) #11
  %i.cw = fmul double %i.cv, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi double [ %i.cd, %bb.h ], [ %i.cw, %bb.i ]
  %i.cx = insertelement <2 x double> poison, double %.pn, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.ak, %i.cy
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %i.da = phi <2 x double> [ %i.cz, %bb.j ], [ zeroinitializer, %bb.a ] ; 4 uses
  %i.db = phi <2 x double> [ %i.cc, %bb.j ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.df = fsub <2 x double> %i.v, %i.p            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.di = fsub <2 x double> %i.s, %i.db           ; 6 uses
  %i.dj = fsub <2 x double> %i.r, %i.db
  store <2 x double> %i.dj, ptr %i.dc, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false), !tbaa.struct !22
  %i.dk = fsub <2 x double> %i.di, %i.m
  store <2 x double> %i.dk, ptr %i.dd, align 8, !tbaa !19
  store <2 x double> %i.df, ptr %i.de, align 8, !tbaa !19
  %i.dl = fsub <2 x double> %i.di, %i.p
  store <2 x double> %i.dl, ptr %i.dg, align 8, !tbaa !19
  store <2 x double> %i.di, ptr %i.dh, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.dn = fadd <2 x double> %i.p, %i.di
  store <2 x double> %i.dn, ptr %i.dm, align 8, !tbaa !19
  %i.do = fsub <2 x double> %i.di, %i.da
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dp = fadd <2 x double> %i.r, %i.da           ; 3 uses
  %i.dq = fadd <2 x double> %i.s, %i.da           ; 2 uses
  store <2 x double> %i.dq, ptr %i.dc, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false), !tbaa.struct !22
  %i.dr = fsub <2 x double> %i.dp, %i.m
  store <2 x double> %i.dr, ptr %i.dd, align 8, !tbaa !19
  store <2 x double> %i.df, ptr %i.de, align 8, !tbaa !19
  %i.ds = fadd <2 x double> %i.da, %i.dp          ; 2 uses
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x double> %i.dt, ptr %i.dg, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 80
  store <2 x double> %i.ds, ptr %i.du, align 8, !tbaa !19
  %i.dv = fadd <2 x double> %i.db, %i.dq
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dw = phi <2 x double> [ %i.dp, %bb.m ], [ %i.di, %bb.l ]
  %i.dx = phi <2 x double> [ %i.dv, %bb.m ], [ %i.do, %bb.l ] ; 2 uses
  %i.dy = fadd <2 x double> %i.m, %i.dw
  %i.dz = fadd <2 x double> %i.v, %i.p
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 96
  store <2 x double> %i.dz, ptr %i.ea, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 112
  store <2 x double> %i.dy, ptr %i.eb, align 8, !tbaa !19
  %i.ec = extractelement <2 x double> %i.dx, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ec, 0
  %i.ed = extractelement <2 x double> %i.dx, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ed, 1
  ret { double, double } %.fca.1.insert
}

declare void @gvrender_polyline(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @gvrender_ellipse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare { double, double } @Bezier(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gvrender_beziercurve(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
