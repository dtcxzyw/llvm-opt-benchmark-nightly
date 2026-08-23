Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundomeigest_power?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SUNDomEigEstimator_Destroy_Power:bb.a
  %i.w = phi ptr [ %i.u, %bb.j ], [ %i.r, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %.not41 = icmp eq ptr %i.y, null
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @N_VDestroy(ptr noundef nonnull %i.y) #13
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr null, ptr %i.aa, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = phi ptr [ %i.z, %bb.l ], [ %i.w, %bb.k ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %.not42 = icmp eq ptr %i.ad, null
  br i1 %.not42, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @N_VDestroy(ptr noundef nonnull %i.ad) #13
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store ptr null, ptr %i.af, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ag = phi ptr [ %i.ae, %bb.n ], [ %i.ab, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.ag) #13
  store ptr null, ptr %i.a, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 2 uses
  %.not43 = icmp eq ptr %i.ai, null
  br i1 %.not43, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ai) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @free(ptr noundef nonnull %i.a) #13
  store ptr null, ptr %0, align 8, !tbaa !53
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #1

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -9984, 2) i32 @dee_DQJtimes_Power(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call double @N_VDotProd(ptr noundef %1, ptr noundef %1) #13 ; 2 uses
  %i.b = fcmp ugt double %i.a, f0x0010000000000000
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @N_VScale(double noundef 0.000000e+00, ptr noundef %1, ptr noundef %2) #13
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @N_VClone(ptr noundef %1) #13
  %i.h = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.g, ptr %i.i, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @N_VClone(ptr noundef %1) #13 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.n, ptr %i.p, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.n, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.z = load double, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = tail call i32 %i.x(double noundef %i.z, ptr noundef %i.t, ptr noundef %i.q, ptr noundef %i.ab) #13
  %i.ad = load ptr, ptr %0, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 136 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !52
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call double @N_VDotProd(ptr noundef %i.t, ptr noundef %1) #13 ; 2 uses
  %i.ai = tail call double @N_VL1Norm(ptr noundef %1) #13 ; 2 uses
  %i.aj = fcmp oge double %i.ah, 0.000000e+00
  %i.ak = select i1 %i.aj, double f0x3E50000000000000, double f0xBE50000000000000
  %i.al = tail call double @llvm.fabs.f64(double %i.ah) ; 2 uses
  %i.am = fcmp ogt double %i.al, %i.ai
  %i.an = select i1 %i.am, double %i.al, double %i.ai
  %i.ao = fmul double %i.ak, %i.an
  %i.ap = fdiv double %i.ao, %i.a                 ; 3 uses
  tail call void @N_VLinearSum(double noundef %i.ap, ptr noundef %1, double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.v) #13
  %i.aq = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.ax = tail call i32 %i.as(double noundef %i.au, ptr noundef %i.v, ptr noundef %2, ptr noundef %i.aw) #13 ; 2 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 136 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !52
  %i.bb = add nsw i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !52
  %i.bc = icmp eq i32 %i.ax, 0
  br i1 %i.bc, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp slt i32 %i.ax, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = fmul double %i.ap, 2.500000e-01         ; 3 uses
  tail call void @N_VLinearSum(double noundef %i.be, ptr noundef %1, double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.v) #13
  %i.bf = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !46
  %i.bm = tail call i32 %i.bh(double noundef %i.bj, ptr noundef %i.v, ptr noundef %2, ptr noundef %i.bl) #13 ; 2 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !52
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !52
  %i.br = icmp eq i32 %i.bm, 0
  br i1 %i.br, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp slt i32 %i.bm, 0
  br i1 %i.bs, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = fmul double %i.be, 2.500000e-01         ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.bt, ptr noundef %1, double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.v) #13
  %i.bu = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !45
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !46
  %i.cb = tail call i32 %i.bw(double noundef %i.by, ptr noundef %i.v, ptr noundef %2, ptr noundef %i.ca) #13 ; 2 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 136 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !52
  %i.cf = add nsw i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !52
  %i.cg = icmp eq i32 %i.cb, 0
  br i1 %i.cg, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp slt i32 %i.cb, 0
  %spec.select = select i1 %i.ch, i32 -9984, i32 1
  br label %.loopexit

.thread:                                          ; preds = %bb.l, %bb.j, %bb.h
  %.05771.lcssa = phi double [ %i.ap, %bb.h ], [ %i.be, %bb.j ], [ %i.bt, %bb.l ]
  %i.ci = fdiv double 1.000000e+00, %.05771.lcssa ; 2 uses
  %i.cj = fneg double %i.ci
  tail call void @N_VLinearSum(double noundef %i.ci, ptr noundef %2, double noundef %i.cj, ptr noundef %i.q, ptr noundef %2) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.i, %bb.k, %bb.g, %.thread, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ -9984, %bb.g ], [ 0, %.thread ], [ -9984, %bb.i ], [ %spec.select, %bb.m ], [ -9984, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNDomEigEstimator_SetIsReal_Power(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.a = zext i1 %.not to i32
  %i.b = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 %i.a, ptr %i.c, align 8, !tbaa !35
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @N_VDestroy(ptr noundef nonnull %i.e) #13
  %i.f = load ptr, ptr %0, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nounwind uwtable
define range(i32 -9984, 1) i32 @sundomeigestimator_complex_dom_eigs_from_PI(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load double, ptr %i.b, align 8, !tbaa !38
  %i.d = fmul double %i.c, 1.000000e+01           ; 2 uses
  %i.e = fcmp olt double %i.d, f0x3CE4000000000000
  %i.f = select i1 %i.e, double f0x3CE4000000000000, double %i.d
  %i.g = tail call double @N_VDotProd(ptr noundef %3, ptr noundef %4) #13 ; 2 uses
  %i.h = fcmp ogt double %i.g, 1.000000e+00
  %.0 = select i1 %i.h, double 1.000000e+00, double %i.g ; 2 uses
  %i.i = fcmp olt double %.0, -1.000000e+00
  %.1 = select i1 %i.i, double -1.000000e+00, double %.0 ; 2 uses
  %i.j = fneg double %.1                          ; 4 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %.1, double 1.000000e+00) ; 2 uses
  %i.l = fcmp ugt double %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double %1, ptr %5, align 8, !tbaa !50
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = tail call i32 %i.n(ptr noundef %i.p, ptr noundef %4, ptr noundef %i.r) #13
  %i.t = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !40
  %i.w = add nsw i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !40
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.x = fdiv double 1.000000e+00, %i.k           ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.aa = tail call double @N_VDotProd(ptr noundef %3, ptr noundef %i.z) #13 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = tail call double @N_VDotProd(ptr noundef %4, ptr noundef %i.ad) #13 ; 2 uses
  %i.af = tail call double @llvm.fmuladd.f64(double %i.j, double %i.ae, double %i.aa)
  %i.ag = fmul double %i.x, %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.j, double %1, double %2)
  %i.ai = insertelement <2 x double> poison, double %i.j, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = insertelement <2 x double> poison, double %2, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aa, i64 1
  %i.am = insertelement <2 x double> poison, double %1, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ae, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.al, <2 x double> %i.an)
  %i.ap = insertelement <2 x double> poison, double %i.x, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq          ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0 ; 2 uses
  %i.at = extractelement <2 x double> %i.ar, i64 1 ; 2 uses
  %i.au = fadd double %i.as, %i.at                ; 5 uses
  %i.av = fneg double %i.ah
  %i.aw = fmul double %i.x, %i.av
  %i.ax = fmul double %i.aw, %i.ag
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double %i.ax)
  %i.az = fmul double %i.ay, -4.000000e+00
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.au, double %i.au, double %i.az) ; 4 uses
  %i.bb = fcmp ult double %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = fcmp ugt double %i.ba, 0.000000e+00
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call double @sqrt(double noundef %i.ba) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.be = phi double [ %i.bd, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.bf = fadd double %i.au, %i.be
  %i.bg = fmul double %i.bf, 5.000000e-01         ; 2 uses
  %i.bh = fsub double %i.au, %i.be
  %i.bi = fmul double %i.bh, 5.000000e-01         ; 2 uses
  %i.bj = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bk = tail call double @llvm.fabs.f64(double %i.bi)
  %i.bl = fcmp ult double %i.bj, %i.bk
  %. = select i1 %i.bl, double %i.bi, double %i.bg
  store double %., ptr %5, align 8, !tbaa !50
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.bm = fmul double %i.au, 5.000000e-01
  store double %i.bm, ptr %5, align 8, !tbaa !50
  %i.bn = fneg double %i.ba
  %i.bo = tail call double @sqrt(double noundef %i.bn) #13
  %i.bp = fmul double %i.bo, 5.000000e-01
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.b
  %storemerge.sink = phi double [ 0.000000e+00, %bb.b ], [ %i.bp, %bb.h ], [ 0.000000e+00, %bb.g ]
  store double %storemerge.sink, ptr %6, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.c
  %.071 = phi i32 [ -9984, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.071
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare double @N_VL1Norm(ptr noundef) local_unnamed_addr #1

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 16}
!9 = !{!"SUNDomEigEstimator_", !10, i64 0, !10, i64 8, !11, i64 16, !12, i64 24}
!10 = !{!"any pointer", !6, i64 0}
end_hunk_0
