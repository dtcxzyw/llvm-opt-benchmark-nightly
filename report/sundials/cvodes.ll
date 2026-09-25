Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVodeCreate:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %calloc, i64 144
  store i32 1, ptr %i.y, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %calloc, i64 160
  store ptr @cvSensRhsInternalDQ, ptr %i.z, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc, i64 168
  store ptr @cvSensRhs1InternalDQ, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %calloc, i64 184
  store i32 1, ptr %i.ab, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc, i64 188
  store i32 1, ptr %i.ac, align 4, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %calloc, i64 216
  store i32 1, ptr %i.ad, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc, i64 296
  store i32 1, ptr %i.ae, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %calloc, i64 2120
  store i32 %i.e, ptr %i.af, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %calloc, i64 2124
  store i32 %i.e, ptr %i.ag, align 4, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %calloc, i64 2128
  store i32 %i.e, ptr %i.ah, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %calloc, i64 1832
  store i64 96, ptr %i.ai, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %calloc, i64 1840
  store i64 52, ptr %i.aj, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %calloc, i64 1908
  store i32 -1, ptr %i.ak, align 4, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %calloc, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @cvProcessError(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ...) local_unnamed_addr #0 {
bb.a:
  %6 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.va_start.p0(ptr nonnull %6)
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.c, %bb.b ], [ 1, %bb.a ]     ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %6)
  %i.d = call noalias ptr @malloc(i64 noundef %.0) #14 ; 6 uses
  call void @llvm.va_start.p0(ptr nonnull %6)
  %i.e = call i32 @vsnprintf(ptr noundef %i.d, i64 noundef %.0, ptr noundef %5, ptr noundef nonnull %6) #13 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %6)
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ptr, ptr, i32, ...) @SUNGlobalFallbackErrHandler(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.d, i32 noundef %1) #13
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %1, 99
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  %i.i = add i64 %i.h, 6                          ; 2 uses
  %i.j = call noalias ptr @malloc(i64 noundef %i.i) #14 ; 3 uses
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.j, i64 noundef %i.i, ptr noundef nonnull @.str.101, ptr noundef nonnull %4, i32 noundef %2) #13 ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !219
  %i.o = call i32 (ptr, i32, ptr, ptr, ptr, ...) @SUNLogger_QueueMsg(ptr noundef %i.n, i32 noundef 2, ptr noundef %i.j, ptr noundef %3, ptr noundef %i.d) #13 ; 0 uses
  call void @free(ptr noundef %i.j) #13
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !22     ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ptr, ptr, i32, ...) @SUNGlobalFallbackErrHandler(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.d, i32 noundef range(i32 100, 99) %1) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 %1, ptr %i.q, align 4, !tbaa !220
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.019.i = load ptr, ptr %i.r, align 8, !tbaa !221 ; 2 uses
  %.not1820.i = icmp eq ptr %.019.i, null
  br i1 %.not1820.i, label %SUNHandleErrWithMsg.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.021.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.019.i, %bb.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !223
  %i.u = getelementptr inbounds nuw i8, ptr %.021.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !224
  call void %i.t(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.d, i32 noundef range(i32 100, 99) %1, ptr noundef %i.v, ptr noundef nonnull %i.p) #13, !inline_history !214
  %.0.i = load ptr, ptr %.021.i, align 8, !tbaa !221 ; 2 uses
  %.not18.i = icmp eq ptr %.0.i, null
  br i1 %.not18.i, label %SUNHandleErrWithMsg.exit, label %.lr.ph.i

SUNHandleErrWithMsg.exit:                         ; preds = %.lr.ph.i, %bb.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !22
  %i.x = call i32 @SUNContext_GetLastError(ptr noundef %i.w) #13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %SUNHandleErrWithMsg.exit, %bb.f, %bb.d
  call void @free(ptr noundef %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i32 @cvSensRhsInternalDQ(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr noundef %8) #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = tail call i32 @cvSensRhs1InternalDQ(i32 poison, double noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.f, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %6, ptr noundef %7, ptr noundef %8) ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.g, %.lr.ph ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define i32 @cvSensRhs1InternalDQ(i32 %0, double noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr noundef %9) #0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 10 uses
  %i.b = alloca [3 x ptr], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.d = load double, ptr %i.c, align 8, !tbaa !53 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.g = fcmp ogt double %i.d, %i.f
  %. = select i1 %i.g, double %i.d, double %i.f   ; 2 uses
  %i.h = fcmp ugt double %., 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call double @sqrt(double noundef %.) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi double [ %i.i, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.k = fdiv double 1.000000e+00, %i.j           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = sext i32 %4 to i64                       ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !29 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.n
  %i.t = load i32, ptr %i.s, align 4, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = sext i32 %i.t to i64                     ; 8 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !29 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 448
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ab = tail call double @N_VWrmsNorm(ptr noundef %5, ptr noundef %i.aa) #13
  %i.ac = fmul double %i.p, %i.ab                 ; 2 uses
  %i.ad = fcmp ogt double %i.ac, %i.k
  %i.ae = select i1 %i.ad, double %i.ac, double %i.k
  %10 = fmul double %i.j, %i.p                    ; 9 uses
  %11 = fdiv double %i.ae, %i.p                   ; 3 uses
  %i.af = insertelement <2 x double> poison, double %11, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %10, i64 1
  %i.ah = fdiv <2 x double> splat (double 1.000000e+00), %i.ag ; 3 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !225 ; 2 uses
  %i.al = fcmp oeq double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 216
  %i.an = load i32, ptr %i.am, align 8, !tbaa !44
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %select.unfold, label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.ap = extractelement <2 x double> %i.ah, i64 1 ; 3 uses
  %i.aq = fmul double %i.ap, %i.ai                ; 3 uses
  %i.ar = fdiv double 1.000000e+00, %i.aq         ; 2 uses
  %i.as = fcmp ogt double %i.ar, %i.aq
  %i.at = select i1 %i.as, double %i.ar, double %i.aq
  %i.au = fcmp ugt double %i.at, %i.ak
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 216
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !44
  %i.ax = icmp eq i32 %i.aw, 1                    ; 2 uses
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ax, label %select.unfold, label %bb.o

bb.g:                                             ; preds = %bb.e
  br i1 %i.ax, label %bb.j, label %bb.q

select.unfold:                                    ; preds = %bb.f, %bb.d
  %i.ay = fcmp olt double %i.ai, %10
  %i.az = select i1 %i.ay, double %i.ai, double %10 ; 5 uses
  %i.ba = fdiv double 5.000000e-01, %i.az         ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.az, ptr noundef %5, ptr noundef %8) #13
  %i.bb = fadd double %i.y, %i.az
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.w
  store double %i.bb, ptr %i.bd, align 8, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !59
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !60
  %i.bi = tail call i32 %i.bf(double noundef %1, ptr noundef %8, ptr noundef %6, ptr noundef %i.bh) #13 ; 2 uses
  %.not235 = icmp eq i32 %i.bi, 0
  br i1 %.not235, label %bb.h, label %bb.u

bb.h:                                             ; preds = %select.unfold
  %i.bj = fneg double %i.az
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.bj, ptr noundef %5, ptr noundef %8) #13
  %i.bk = fsub double %i.y, %i.az
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.w
  store double %i.bk, ptr %i.bm, align 8, !tbaa !29
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !59
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !60
  %i.bp = tail call i32 %i.bn(double noundef %1, ptr noundef %8, ptr noundef %9, ptr noundef %i.bo) #13 ; 2 uses
  %.not236 = icmp eq i32 %i.bp, 0
  br i1 %.not236, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.bq = fneg double %i.ba
  tail call void @N_VLinearSum(double noundef %i.ba, ptr noundef %6, double noundef %i.bq, ptr noundef %9, ptr noundef %6) #13
  br label %bb.t

bb.j:                                             ; preds = %bb.g
  %i.br = insertelement <2 x double> poison, double %10, i64 0
  %12 = shufflevector <2 x double> %i.br, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.bs = fdiv <2 x double> splat (double 5.000000e-01), %12 ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.ai, ptr noundef %5, ptr noundef %8) #13
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.bx = tail call i32 %i.bu(double noundef %1, ptr noundef %8, ptr noundef %6, ptr noundef %i.bw) #13 ; 2 uses
  %.not230 = icmp eq i32 %i.bx, 0
  br i1 %.not230, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.by = fneg double %i.ai
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.by, ptr noundef %5, ptr noundef %8) #13
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !59
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.cb = tail call i32 %i.bz(double noundef %1, ptr noundef %8, ptr noundef %9, ptr noundef %i.ca) #13 ; 2 uses
  %.not231 = icmp eq i32 %i.cb, 0
  br i1 %.not231, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.cc = extractelement <2 x double> %i.bs, i64 1 ; 2 uses
  %i.cd = fneg double %i.cc
  tail call void @N_VLinearSum(double noundef %i.cc, ptr noundef %6, double noundef %i.cd, ptr noundef %9, ptr noundef %6) #13
  %i.ce = fadd double %10, %i.y
  %i.cf = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.w
  store double %i.ce, ptr %i.cg, align 8, !tbaa !29
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !59
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.cj = tail call i32 %i.ch(double noundef %1, ptr noundef %2, ptr noundef %8, ptr noundef %i.ci) #13 ; 2 uses
  %.not232 = icmp eq i32 %i.cj, 0
  br i1 %.not232, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ck = fsub double %i.y, %10
  %i.cl = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.w
  store double %i.ck, ptr %i.cm, align 8, !tbaa !29
  %i.cn = load ptr, ptr %i.bt, align 8, !tbaa !59
  %i.co = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.cp = tail call i32 %i.cn(double noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef %i.co) #13 ; 2 uses
  %.not233 = icmp eq i32 %i.cp, 0
  br i1 %.not233, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !29
  store ptr %6, ptr %i.b, align 16, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cr = extractelement <2 x double> %i.bs, i64 0 ; 2 uses
  store double %i.cr, ptr %i.cq, align 8, !tbaa !29
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %8, ptr %i.cs, align 8, !tbaa !52
  %i.ct = fneg double %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.ct, ptr %i.cu, align 16, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %9, ptr %i.cv, align 16, !tbaa !52
  %i.cw = call i32 @N_VLinearCombination(i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %6) #13
  %.not234 = icmp eq i32 %i.cw, 0
  br i1 %.not234, label %bb.t, label %bb.u

bb.o:                                             ; preds = %bb.d, %bb.f
  %i.cx = fcmp olt double %i.ai, %10
  %i.cy = select i1 %i.cx, double %i.ai, double %10 ; 3 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.cy, ptr noundef %5, ptr noundef %8) #13
  %i.cz = fadd double %i.y, %i.cy
  %i.da = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.w
  store double %i.cz, ptr %i.db, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !59
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !60
  %i.dg = tail call i32 %i.dd(double noundef %1, ptr noundef %8, ptr noundef %6, ptr noundef %i.df) #13 ; 2 uses
  %.not229 = icmp eq i32 %i.dg, 0
  br i1 %.not229, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.dh = fdiv double 1.000000e+00, %i.cy         ; 2 uses
  %i.di = fneg double %i.dh
  tail call void @N_VLinearSum(double noundef %i.dh, ptr noundef %6, double noundef %i.di, ptr noundef %3, ptr noundef %6) #13
  br label %bb.t

bb.q:                                             ; preds = %bb.g
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.ai, ptr noundef %5, ptr noundef %8) #13
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !59
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !60
  %i.dn = tail call i32 %i.dk(double noundef %1, ptr noundef %8, ptr noundef %6, ptr noundef %i.dm) #13 ; 2 uses
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.do = fneg double %11
  tail call void @N_VLinearSum(double noundef %11, ptr noundef %6, double noundef %i.do, ptr noundef %3, ptr noundef %6) #13
  %i.dp = fadd double %10, %i.y
  %i.dq = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.w
  store double %i.dp, ptr %i.dr, align 8, !tbaa !29
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !59
  %i.dt = load ptr, ptr %i.dl, align 8, !tbaa !60
  %i.du = tail call i32 %i.ds(double noundef %1, ptr noundef %2, ptr noundef %8, ptr noundef %i.dt) #13 ; 2 uses
  %.not227 = icmp eq i32 %i.du, 0
  br i1 %.not227, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !29
  store ptr %6, ptr %i.b, align 16, !tbaa !52
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.ap, ptr %i.dv, align 8, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %8, ptr %i.dw, align 8, !tbaa !52
  %i.dx = fneg double %i.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.dx, ptr %i.dy, align 16, !tbaa !29
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %3, ptr %i.dz, align 16, !tbaa !52
  %i.ea = call i32 @N_VLinearCombination(i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %6) #13
  %.not228 = icmp eq i32 %i.ea, 0
  br i1 %.not228, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.n, %bb.p, %bb.i
  %.0 = phi i64 [ 2, %bb.s ], [ 2, %bb.i ], [ 4, %bb.n ], [ 1, %bb.p ]
  %i.eb = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.w
  store double %i.y, ptr %i.ec, align 8, !tbaa !29
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 1624 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !226
  %i.ef = add nsw i64 %i.ee, %.0
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !226
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %select.unfold, %bb.t
  %.0212 = phi i32 [ 0, %bb.t ], [ %i.du, %bb.r ], [ %i.bi, %select.unfold ], [ %i.bp, %bb.h ], [ %i.bx, %bb.j ], [ %i.cb, %bb.k ], [ %i.cj, %bb.l ], [ %i.cp, %bb.m ], [ -28, %bb.n ], [ %i.dg, %bb.o ], [ %i.dn, %bb.q ], [ -28, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0212
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @CVodeInit(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 707, ptr noundef nonnull @__func__.CVodeInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 718, ptr noundef nonnull @__func__.CVodeInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5)
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 726, ptr noundef nonnull @__func__.CVodeInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6)
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !63  ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !227
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %cvCheckNvector.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !228
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %cvCheckNvector.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !229
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %cvCheckNvector.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !230
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %cvCheckNvector.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !231
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %cvCheckNvector.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !232
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %cvCheckNvector.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !233
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %cvCheckNvector.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !234
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %cvCheckNvector.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !235
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %cvCheckNvector.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !236
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %cvCheckNvector.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !237
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %cvCheckNvector.exit.thread, label %cvCheckNvector.exit

cvCheckNvector.exit:                              ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !238
  %.not101 = icmp eq ptr %i.ao, null
  br i1 %.not101, label %cvCheckNvector.exit.thread, label %bb.r

cvCheckNvector.exit.thread:                       ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.g, %cvCheckNvector.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 737, ptr noundef nonnull @__func__.CVodeInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7)
  br label %bb.al

bb.r:                                             ; preds = %cvCheckNvector.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !239
  %.not94 = icmp eq ptr %i.aq, null
  br i1 %.not94, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @N_VSpace(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %.pre = load i64, ptr %i.a, align 8, !tbaa !65
  %.pre111 = load i64, ptr %i.b, align 8, !tbaa !65
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %i.a, align 8, !tbaa !65
  store i64 0, ptr %i.b, align 8, !tbaa !65
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = phi i64 [ 0, %bb.t ], [ %.pre111, %bb.s ]
  %i.as = phi i64 [ 0, %bb.t ], [ %.pre, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 2 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 2 uses
  store i64 %i.ar, ptr %i.au, align 8, !tbaa !67
  %i.av = call ptr @N_VClone(ptr noundef nonnull %3) #13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !58
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = call ptr @N_VClone(ptr noundef nonnull %3) #13 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !68
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %.loopexit.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = call ptr @N_VClone(ptr noundef nonnull %3) #13 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !69
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %.loopexit.sink.split.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = call ptr @N_VClone(ptr noundef nonnull %3) #13 ; 2 uses
end_hunk_0
begin_hunk_1_@CVode:bb.a
  store double %i.cch, ptr %i.cbt, align 8, !tbaa !29
  %i.cci = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv.i.i297.i
  %i.ccj = extractelement <2 x double> %i.ccf, i64 1 ; 2 uses
  store double %i.ccj, ptr %i.cci, align 8, !tbaa !29
  %i.cck = fneg double %i.caw
  %i.ccl = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %indvars.iv.i.i297.i
  %i.ccm = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %indvars.iv.i.i297.i
  store double 0.000000e+00, ptr %i.ccm, align 8, !tbaa !29
  %i.ccn = insertelement <2 x double> poison, double %i.cal, i64 0
  %i.cco = insertelement <2 x double> %i.ccn, double %i.cas, i64 1
  %i.ccp = insertelement <2 x double> poison, double %i.cck, i64 0
  %i.ccq = shufflevector <2 x double> %i.ccp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ccr = fmul <2 x double> %i.cco, %i.ccq
  %i.ccs = insertelement <2 x double> poison, double %i.cao, i64 0
  %i.cct = shufflevector <2 x double> %i.ccs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ccu = insertelement <2 x double> poison, double %i.cas, i64 0
  %i.ccv = insertelement <2 x double> %i.ccu, double %i.cba, i64 1
  %i.ccw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cct, <2 x double> %i.ccv, <2 x double> %i.ccr) ; 2 uses
  %i.ccx = extractelement <2 x double> %i.ccw, i64 0 ; 2 uses
  store double %i.ccx, ptr %i.ccl, align 8, !tbaa !29
  %i.ccy = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %indvars.iv.i.i297.i
  %i.ccz = extractelement <2 x double> %i.ccw, i64 1 ; 2 uses
  store double %i.ccz, ptr %i.ccy, align 8, !tbaa !29
  %i.cda = fneg double %i.cba
  %i.cdb = fmul double %i.cas, %i.cda
  %i.cdc = call double @llvm.fmuladd.f64(double %i.caw, double %i.caw, double %i.cdb) ; 2 uses
  %i.cdd = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %indvars.iv.i.i297.i
  store double %i.cdc, ptr %i.cdd, align 8, !tbaa !29
  %invariant.gep352.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297.i ; 5 uses
  %gep353.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 32
  store double %i.cdc, ptr %gep353.i.i.i, align 8, !tbaa !29
  %gep353.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 64
  store double %i.ccz, ptr %gep353.1.i.i.i, align 8, !tbaa !29
  %gep353.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i.i, align 8, !tbaa !29
  %gep353.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 128
  store double %i.ccx, ptr %gep353.3.i.i.i, align 8, !tbaa !29
  %gep353.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 160
  store double %i.ccj, ptr %gep353.4.i.i.i, align 8, !tbaa !29
  %indvars.iv.next.i.i298.i = add nuw nsw i64 %indvars.iv.i.i297.i, 1 ; 2 uses
  %exitcond.not.i.i299.i = icmp eq i64 %indvars.iv.next.i.i298.i, 4
  br i1 %exitcond.not.i.i299.i, label %bb.ni, label %bb.ng

bb.ni:                                            ; preds = %bb.nh
  %i.cde = load double, ptr %i.vp, align 8, !tbaa !29 ; 4 uses
  %i.cdf = load double, ptr %i.vq, align 16, !tbaa !29 ; 4 uses
  %i.cdg = load double, ptr %i.vr, align 8, !tbaa !29 ; 4 uses
  %i.cdh = fcmp olt double %i.cdf, %i.cdg
  %i.cdi = select i1 %i.cdh, double %i.cdf, double %i.cdg ; 2 uses
  %i.cdj = fcmp olt double %i.cde, %i.cdi
  %..i.i300.i = select i1 %i.cdj, double %i.cde, double %i.cdi
  %i.cdk = fcmp olt double %..i.i300.i, 1.000000e-08
  br i1 %i.cdk, label %bb.nj, label %bb.nl

bb.nj:                                            ; preds = %bb.ni
  %i.cdl = fcmp ogt double %i.cdf, %i.cdg
  %i.cdm = select i1 %i.cdl, double %i.cdf, double %i.cdg ; 2 uses
  %i.cdn = fcmp ogt double %i.cde, %i.cdm
  %i.cdo = select i1 %i.cdn, double %i.cde, double %i.cdm
  %i.cdp = fcmp ogt double %i.cdo, 2.500000e-07
  br i1 %i.cdp, label %cvSLdet.exit.thread.i.i, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.cdq = load double, ptr %i.wr, align 8, !tbaa !29 ; 2 uses
  %i.cdr = load double, ptr %i.ws, align 16, !tbaa !29 ; 2 uses
  %i.cds = fadd double %i.cdq, %i.cdr
  %i.cdt = load double, ptr %i.wt, align 8, !tbaa !29 ; 2 uses
  %i.cdu = fadd double %i.cds, %i.cdt
  %i.cdv = fdiv double %i.cdu, 3.000000e+00       ; 4 uses
  %i.cdw = fsub double %i.cdq, %i.cdv
  %i.cdx = call double @llvm.fabs.f64(double %i.cdw) ; 2 uses
  %i.cdy = fsub double %i.cdr, %i.cdv
  %i.cdz = call double @llvm.fabs.f64(double %i.cdy) ; 2 uses
  %i.cea = fcmp ogt double %i.cdx, %i.cdz
  %i.ceb = select i1 %i.cea, double %i.cdx, double %i.cdz ; 2 uses
  %i.cec = fsub double %i.cdt, %i.cdv
  %i.ced = call double @llvm.fabs.f64(double %i.cec) ; 2 uses
  %i.cee = fcmp ogt double %i.ceb, %i.ced
  %i.cef = select i1 %i.cee, double %i.ceb, double %i.ced
  %i.ceg = fcmp ogt double %i.cef, 5.000000e-04
  br i1 %i.ceg, label %cvSLdet.exit.thread.i.i, label %bb.nq

bb.nl:                                            ; preds = %bb.ni
  %i.ceh = load double, ptr %i.vs, align 8, !tbaa !29 ; 3 uses
  %i.cei = call double @llvm.fabs.f64(double %i.ceh)
  %i.cej = load double, ptr %i.vt, align 8, !tbaa !29 ; 2 uses
  %i.cek = fmul double %i.cej, 1.000000e-10       ; 2 uses
  %i.cel = fcmp olt double %i.cei, %i.cek
  br i1 %i.cel, label %cvSLdet.exit.thread.i.i, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.cem = load double, ptr %i.vu, align 16, !tbaa !29
  %i.cen = fneg double %i.cem
  %i.ceo = fdiv double %i.cen, %i.ceh             ; 3 uses
  %i.cep = load double, ptr %i.vv, align 16, !tbaa !29
  %i.ceq = load double, ptr %i.vw, align 8, !tbaa !29 ; 2 uses
  %i.cer = call double @llvm.fmuladd.f64(double %i.ceo, double %i.ceq, double %i.cep) ; 2 uses
  %i.ces = call double @llvm.fabs.f64(double %i.cer)
  %i.cet = load double, ptr %i.vx, align 16, !tbaa !29 ; 4 uses
  %i.ceu = fmul double %i.cet, 1.000000e-10       ; 2 uses
  %i.cev = fcmp olt double %i.ces, %i.ceu
  br i1 %i.cev, label %cvSLdet.exit.thread.i.i, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.cew = load double, ptr %i.vy, align 8, !tbaa !29
  %i.cex = fneg double %i.cew
  %i.cey = fdiv double %i.cex, %i.ceh             ; 3 uses
  %i.cez = load double, ptr %i.vz, align 8, !tbaa !29 ; 2 uses
  %i.cfa = load double, ptr %i.wa, align 8, !tbaa !29
  %i.cfb = call double @llvm.fmuladd.f64(double %i.cey, double %i.cez, double %i.cfa)
  %i.cfc = load double, ptr %i.wb, align 8, !tbaa !29
  %i.cfd = call double @llvm.fmuladd.f64(double %i.cey, double %i.ceq, double %i.cfc)
  %i.cfe = load double, ptr %i.wc, align 16, !tbaa !29
  %i.cff = call double @llvm.fmuladd.f64(double %i.ceo, double %i.cez, double %i.cfe)
  %i.cfg = fneg double %i.cfd
  %i.cfh = fdiv double %i.cfg, %i.cer             ; 2 uses
  %i.cfi = call double @llvm.fmuladd.f64(double %i.cfh, double %i.cff, double %i.cfb) ; 2 uses
  %i.cfj = call double @llvm.fabs.f64(double %i.cfi)
  %i.cfk = load double, ptr %i.wd, align 8, !tbaa !29 ; 4 uses
  %i.cfl = fmul double %i.cfk, 1.000000e-10       ; 2 uses
  %i.cfm = fcmp olt double %i.cfj, %i.cfl
  br i1 %i.cfm, label %cvSLdet.exit.thread.i.i, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.cfn = load <2 x double>, ptr %i.we, align 8
  %i.cfo = load <2 x double>, ptr %i.wf, align 16, !tbaa !29
  %i.cfp = insertelement <2 x double> poison, double %i.ceo, i64 0
  %i.cfq = insertelement <2 x double> %i.cfp, double %i.cey, i64 1
  %i.cfr = shufflevector <2 x double> %i.cfn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cfs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfq, <2 x double> %i.cfr, <2 x double> %i.cfo) ; 2 uses
  %i.cft = extractelement <2 x double> %i.cfs, i64 0
  %i.cfu = extractelement <2 x double> %i.cfs, i64 1
  %i.cfv = call double @llvm.fmuladd.f64(double %i.cfh, double %i.cft, double %i.cfu)
  %i.cfw = fneg double %i.cfv
  %i.cfx = fdiv double %i.cfw, %i.cfi             ; 9 uses
  %i.cfy = fcmp olt double %i.cfx, 1.000000e-10
  %i.cfz = fcmp ogt double %i.cfx, 1.000000e+02
  %or.cond.i.i301.i = or i1 %i.cfy, %i.cfz
  br i1 %or.cond.i.i301.i, label %cvSLdet.exit.thread.i.i, label %.preheader338.i.i.i

.preheader338.i.i.i:                              ; preds = %bb.no
  %i.cga = fmul double %i.cfx, %i.cfx             ; 2 uses
  %i.cgb = load <2 x double>, ptr %i.wg, align 8, !tbaa !29 ; 4 uses
  %i.cgc = load <2 x double>, ptr %i.wh, align 8, !tbaa !29 ; 4 uses
  %i.cgd = load <2 x double>, ptr %i.wi, align 8, !tbaa !29 ; 5 uses
  %i.cge = load <2 x double>, ptr %i.wj, align 8, !tbaa !29 ; 5 uses
  %i.cgf = insertelement <2 x double> poison, double %i.cfx, i64 0
  %i.cgg = shufflevector <2 x double> %i.cgf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cgh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgg, <2 x double> %i.cge, <2 x double> %i.cgd)
  %i.cgi = insertelement <2 x double> poison, double %i.cga, i64 0
  %i.cgj = shufflevector <2 x double> %i.cgi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cgk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgj, <2 x double> %i.cgh, <2 x double> %i.cgc)
  %i.cgl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgg, <2 x double> %i.cgk, <2 x double> %i.cgb) ; 2 uses
  %i.cgm = load double, ptr %i.wk, align 8, !tbaa !29 ; 3 uses
  %i.cgn = load double, ptr %i.wl, align 8, !tbaa !29 ; 4 uses
  %i.cgo = load double, ptr %i.wm, align 8, !tbaa !29 ; 4 uses
  %i.cgp = load double, ptr %i.wn, align 8, !tbaa !29 ; 4 uses
  %i.cgq = call double @llvm.fmuladd.f64(double %i.cfx, double %i.cgp, double %i.cgo)
  %i.cgr = call double @llvm.fmuladd.f64(double %i.cga, double %i.cgq, double %i.cgn)
  %i.cgs = call double @llvm.fmuladd.f64(double %i.cfx, double %i.cgr, double %i.cgm) ; 2 uses
  %i.cgt = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cgl)
  %i.cgu = insertelement <2 x double> poison, double %i.cej, i64 0 ; 2 uses
  %i.cgv = insertelement <2 x double> %i.cgu, double %i.cet, i64 1 ; 2 uses
  %i.cgw = fdiv <2 x double> %i.cgt, %i.cgv       ; 2 uses
  %i.cgx = extractelement <2 x double> %i.cgw, i64 0 ; 2 uses
  %i.cgy = fcmp ogt double %i.cgx, 0.000000e+00
  %.1293.i.i.i = select i1 %i.cgy, double %i.cgx, double 0.000000e+00 ; 2 uses
  %i.cgz = extractelement <2 x double> %i.cgw, i64 1 ; 2 uses
  %i.cha = fcmp ogt double %i.cgz, %.1293.i.i.i
  %.1293.1.i.i.i = select i1 %i.cha, double %i.cgz, double %.1293.i.i.i ; 2 uses
  %i.chb = call double @llvm.fabs.f64(double %i.cgs)
  %i.chc = fdiv double %i.chb, %i.cfk             ; 2 uses
  %i.chd = fcmp ogt double %i.chc, %.1293.1.i.i.i
  %.1293.2.i.i.i = select i1 %i.chd, double %i.chc, double %.1293.1.i.i.i
  %i.che = fcmp olt double %.1293.2.i.i.i, 1.000000e-03
  br i1 %i.che, label %bb.nq, label %.preheader335.i.i.i.preheader

.preheader335.i.i.i.preheader:                    ; preds = %.preheader338.i.i.i
  %i.chf = insertelement <2 x double> poison, double %i.cek, i64 0
  %i.chg = insertelement <2 x double> %i.chf, double %i.ceu, i64 1
  %i.chh = shufflevector <2 x double> %i.cge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chi = shufflevector <2 x double> %i.cgd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chj = shufflevector <2 x double> %i.cgc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.chk = shufflevector <2 x double> %i.cgb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.chl = extractelement <2 x double> %i.cgb, i64 1
  %i.chm = shufflevector <2 x double> %i.cgu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chn = shufflevector <2 x double> %i.cge, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cho = shufflevector <2 x double> %i.cgd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chp = shufflevector <2 x double> %i.cgc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.chq = shufflevector <2 x double> %i.cgb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chr = insertelement <2 x double> poison, double %i.cet, i64 1
  %i.chs = insertelement <2 x double> poison, double %i.cgp, i64 0
  %i.cht = shufflevector <2 x double> %i.chs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chu = insertelement <2 x double> poison, double %i.cgo, i64 0
  %i.chv = shufflevector <2 x double> %i.chu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chw = insertelement <2 x double> poison, double %i.cgn, i64 0
  %i.chx = shufflevector <2 x double> %i.chw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chy = insertelement <2 x double> poison, double %i.cgm, i64 0
  %i.chz = shufflevector <2 x double> %i.chy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cia = insertelement <2 x double> %i.chp, double %i.cgo, i64 1
  %i.cib = insertelement <2 x double> %i.chj, double %i.cgn, i64 0
  %5 = insertelement <2 x double> %i.chk, double %i.cgm, i64 0
  %i.cic = insertelement <2 x double> poison, double %i.cfk, i64 0
  %6 = shufflevector <2 x double> %i.cic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cid = insertelement <2 x double> poison, double %i.cet, i64 0
  %i.cie = insertelement <2 x double> %i.cid, double %i.cfk, i64 1
  br label %.preheader335.i.i.i

.preheader335.i.i.i:                              ; preds = %.preheader335.i.i.i.preheader, %.preheader.i.i303.i
  %.sroa.10.0.i.i.i = phi double [ %i.clp, %.preheader.i.i303.i ], [ %i.cgs, %.preheader335.i.i.i.preheader ]
  %.0299376.i.i.i = phi double [ %i.cll, %.preheader.i.i303.i ], [ %i.cfx, %.preheader335.i.i.i.preheader ] ; 5 uses
  %.0305375.i.i.i = phi i32 [ %.2307.2.i.i.i, %.preheader.i.i303.i ], [ 0, %.preheader335.i.i.i.preheader ]
  %.0308374.i.i.i = phi i32 [ %i.clq, %.preheader.i.i303.i ], [ 1, %.preheader335.i.i.i.preheader ]
  %i.cif = phi <2 x double> [ %i.cls, %.preheader.i.i303.i ], [ %i.cgl, %.preheader335.i.i.i.preheader ]
  %i.cig = fmul double %.0299376.i.i.i, %.0299376.i.i.i ; 2 uses
  %i.cih = fmul double %.0299376.i.i.i, 4.000000e+00 ; 2 uses
  %i.cii = fneg <2 x double> %i.cif
  %i.cij = fmul double %i.cgp, %i.cih
  %i.cik = fneg double %.sroa.10.0.i.i.i
  %i.cil = insertelement <2 x double> poison, double %i.cih, i64 0
  %i.cim = shufflevector <2 x double> %i.cil, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cin = fmul <2 x double> %i.cge, %i.cim
  %i.cio = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgd, <2 x double> splat (double 3.000000e+00), <2 x double> %i.cin)
  %i.cip = insertelement <2 x double> poison, double %i.cig, i64 0
  %i.ciq = shufflevector <2 x double> %i.cip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cir = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciq, <2 x double> %i.cio, <2 x double> %i.cgc) ; 2 uses
  %i.cis = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cir)
  %i.cit = fcmp ogt <2 x double> %i.cis, %i.chg
  %i.ciu = fdiv <2 x double> %i.cii, %i.cir
  %i.civ = select <2 x i1> %i.cit, <2 x double> %i.ciu, <2 x double> zeroinitializer
  %i.ciw = insertelement <2 x double> poison, double %.0299376.i.i.i, i64 0
  %i.cix = shufflevector <2 x double> %i.ciw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ciy = fadd <2 x double> %i.cix, %i.civ       ; 10 uses
  %i.ciz = extractelement <2 x double> %i.ciy, i64 0
  store double %i.ciz, ptr %i.wo, align 8, !tbaa !29
  %i.cja = extractelement <2 x double> %i.ciy, i64 1
  store double %i.cja, ptr %i.wp, align 16, !tbaa !29
  %i.cjb = fmul <2 x double> %i.ciy, %i.ciy       ; 3 uses
  %i.cjc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciy, <2 x double> %i.chh, <2 x double> %i.chi)
  %i.cjd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjb, <2 x double> %i.cjc, <2 x double> %i.chj)
  %i.cje = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciy, <2 x double> %i.cjd, <2 x double> %i.chk) ; 2 uses
  store <2 x double> %i.cje, ptr %gep364.i.i.i, align 8, !tbaa !29
  %i.cjf = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cje)
  %i.cjg = fdiv <2 x double> %i.cjf, %i.chm       ; 3 uses
  %i.cjh = fcmp ogt <2 x double> %i.cjg, zeroinitializer ; 2 uses
  %i.cji = extractelement <2 x i1> %i.cjh, i64 0
  %i.cjj = extractelement <2 x double> %i.cjg, i64 0
  %.1291.i.i.i = select i1 %i.cji, double %i.cjj, double 0.000000e+00 ; 2 uses
  %i.cjk = extractelement <2 x i1> %i.cjh, i64 1
  %i.cjl = extractelement <2 x double> %i.cjg, i64 1
  %.1291.1422.i.i.i = select i1 %i.cjk, double %i.cjl, double 0.000000e+00
  %i.cjm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciy, <2 x double> %i.chn, <2 x double> %i.cho)
  %i.cjn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjb, <2 x double> %i.cjm, <2 x double> %i.chp)
  %i.cjo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciy, <2 x double> %i.cjn, <2 x double> %i.chq) ; 3 uses
  %i.cjp = extractelement <2 x double> %i.cjo, i64 0
  %i.cjq = call double @llvm.fabs.f64(double %i.cjp)
  %i.cjr = call double @llvm.fmuladd.f64(double %i.cgo, double 3.000000e+00, double %i.cij)
  %i.cjs = call double @llvm.fmuladd.f64(double %i.cig, double %i.cjr, double %i.cgn) ; 2 uses
  %i.cjt = call double @llvm.fabs.f64(double %i.cjs)
  %i.cju = fcmp ogt double %i.cjt, %i.cfl
  %i.cjv = insertelement <2 x double> poison, double %i.cik, i64 0
  %i.cjw = insertelement <2 x double> %i.cjv, double %i.cjq, i64 1
  %i.cjx = insertelement <2 x double> %i.chr, double %i.cjs, i64 0
  %i.cjy = fdiv <2 x double> %i.cjw, %i.cjx       ; 2 uses
  %i.cjz = extractelement <2 x double> %i.cjy, i64 0
  %.sroa.8.0.i.i.i = select i1 %i.cju, double %i.cjz, double 0.000000e+00
  %i.cka = fadd double %.0299376.i.i.i, %.sroa.8.0.i.i.i ; 6 uses
  store double %i.cka, ptr %i.wq, align 8, !tbaa !29
  %i.ckb = extractelement <2 x double> %i.cjy, i64 1 ; 2 uses
  %i.ckc = fcmp ogt double %i.ckb, %.1291.i.i.i
  %.1291.1.i.i.i = select i1 %i.ckc, double %i.ckb, double %.1291.i.i.i ; 2 uses
  store <2 x double> %i.cjo, ptr %gep364.1.i.i.i, align 8, !tbaa !29
  %i.ckd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciy, <2 x double> %i.cht, <2 x double> %i.chv)
  %i.cke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjb, <2 x double> %i.ckd, <2 x double> %i.chx)
  %i.ckf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciy, <2 x double> %i.cke, <2 x double> %i.chz) ; 3 uses
  store <2 x double> %i.ckf, ptr %gep364.2.i.i.i, align 8, !tbaa !29
  %i.ckg = fmul double %i.cka, %i.cka
  %i.ckh = insertelement <2 x double> poison, double %i.cka, i64 0
  %i.cki = shufflevector <2 x double> %i.ckh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ckj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cki, <2 x double> %i.cge, <2 x double> %i.cgd) ; 2 uses
  %i.ckk = insertelement <2 x double> poison, double %i.ckg, i64 0 ; 2 uses
  %i.ckl = insertelement <2 x double> %i.ckk, double %i.cka, i64 1
  %i.ckm = shufflevector <2 x double> %i.ckj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ckn = insertelement <2 x double> %i.ckm, double %i.cgp, i64 1
  %i.cko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckl, <2 x double> %i.ckn, <2 x double> %i.cia) ; 2 uses
  %i.ckp = shufflevector <2 x double> %i.ckk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ckq = shufflevector <2 x double> %i.cko, <2 x double> %i.ckj, <2 x i32> <i32 1, i32 2>
  %i.ckr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckp, <2 x double> %i.ckq, <2 x double> %i.cib)
  %i.cks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cki, <2 x double> %i.ckr, <2 x double> %5) ; 4 uses
  %i.ckt = extractelement <2 x double> %i.cks, i64 0
  store double %i.ckt, ptr %gep364.2.2.i.i.i, align 8, !tbaa !29
  %7 = extractelement <2 x double> %i.cks, i64 1
  store double %7, ptr %gep364.2423.i.i.i, align 8, !tbaa !29
  %8 = shufflevector <2 x double> %i.cjo, <2 x double> %i.cks, <2 x i32> <i32 3, i32 1>
  %9 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %8)
  %10 = fdiv <2 x double> %9, %i.cgv              ; 2 uses
  %11 = shufflevector <2 x double> %i.cks, <2 x double> %i.ckf, <2 x i32> <i32 0, i32 2>
  %12 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %11)
  %13 = fdiv <2 x double> %12, %6                 ; 3 uses
  %14 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1291.1422.i.i.i, i64 1 ; 2 uses
  %15 = fcmp ogt <2 x double> %10, %14
  %16 = extractelement <2 x double> %13, i64 1    ; 2 uses
  %17 = fcmp ogt double %16, %.1291.1.i.i.i
  %18 = select <2 x i1> %15, <2 x double> %10, <2 x double> %14 ; 2 uses
  %.1291.2.i.i.i = select i1 %17, double %16, double %.1291.1.i.i.i ; 3 uses
  %i.cku = extractelement <2 x double> %i.cko, i64 0
  %i.ckv = call double @llvm.fmuladd.f64(double %i.cka, double %i.cku, double %i.chl) ; 2 uses
  store double %i.ckv, ptr %gep364.1.2.i.i.i, align 8, !tbaa !29
  %i.ckw = insertelement <2 x double> %i.ckf, double %i.ckv, i64 0
  %i.ckx = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ckw)
  %i.cky = fdiv <2 x double> %i.ckx, %i.cie       ; 2 uses
  %i.ckz = fcmp ogt <2 x double> %i.cky, %18
  %19 = fadd double %.1291.2.i.i.i, 1.000000e+00  ; 2 uses
  %20 = fcmp olt double %.1291.2.i.i.i, %19       ; 2 uses
  %21 = select <2 x i1> %i.ckz, <2 x double> %i.cky, <2 x double> %18 ; 3 uses
  %.2307.i.i.i = select i1 %20, i32 1, i32 %.0305375.i.i.i
  %.2.i.i302.i = select i1 %20, double %.1291.2.i.i.i, double %19 ; 2 uses
  %i.cla = insertelement <2 x double> %13, double %.2.i.i302.i, i64 1
  %i.clb = fcmp ogt <2 x double> %i.cla, %21      ; 2 uses
  %i.clc = extractelement <2 x i1> %i.clb, i64 1
  %.2307.1.i.i.i = select i1 %i.clc, i32 2, i32 %.2307.i.i.i
  %i.cld = shufflevector <2 x double> %13, <2 x double> %21, <2 x i32> <i32 0, i32 3>
  %i.cle = insertelement <2 x double> %21, double %.2.i.i302.i, i64 1
  %i.clf = select <2 x i1> %i.clb, <2 x double> %i.cld, <2 x double> %i.cle ; 2 uses
  %i.clg = extractelement <2 x double> %i.clf, i64 0 ; 2 uses
  %i.clh = extractelement <2 x double> %i.clf, i64 1 ; 2 uses
  %i.cli = fcmp olt double %i.clg, %i.clh         ; 2 uses
  %.2307.2.i.i.i = select i1 %i.cli, i32 3, i32 %.2307.1.i.i.i ; 2 uses
  %.2.2.i.i.i = select i1 %i.cli, double %i.clg, double %i.clh ; 2 uses
  %i.clj = zext nneg i32 %.2307.2.i.i.i to i64    ; 2 uses
  %i.clk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.clj
  %i.cll = load double, ptr %i.clk, align 8, !tbaa !29 ; 2 uses
  %i.clm = fcmp olt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.clm, label %bb.np, label %.preheader.i.i303.i

.preheader.i.i303.i:                              ; preds = %.preheader335.i.i.i
  %invariant.gep371.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.clj ; 3 uses
  %gep372.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 32
  %i.cln = load double, ptr %gep372.i.i.i, align 8, !tbaa !29
  %gep372.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 64
  %i.clo = load double, ptr %gep372.1.i.i.i, align 8, !tbaa !29
  %gep372.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 96
  %i.clp = load double, ptr %gep372.2.i.i.i, align 8, !tbaa !29
  %i.clq = add nuw nsw i32 %.0308374.i.i.i, 1     ; 2 uses
  %exitcond433.not.i.i.i = icmp eq i32 %i.clq, 4
  %i.clr = insertelement <2 x double> poison, double %i.cln, i64 0
  %i.cls = insertelement <2 x double> %i.clr, double %i.clo, i64 1
  br i1 %exitcond433.not.i.i.i, label %bb.np, label %.preheader335.i.i.i

bb.np:                                            ; preds = %.preheader.i.i303.i, %.preheader335.i.i.i
  %.0302.i.i.i = phi i32 [ 0, %.preheader.i.i303.i ], [ 3, %.preheader335.i.i.i ]
  %i.clt = fcmp ogt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.clt, label %cvSLdet.exit.thread.i.i, label %bb.nq

bb.nq:                                            ; preds = %bb.np, %.preheader338.i.i.i, %bb.nk
  %.1303.i.i.i = phi i32 [ %.0302.i.i.i, %bb.np ], [ 1, %bb.nk ], [ 2, %.preheader338.i.i.i ] ; 2 uses
  %.2301.i.i.i = phi double [ %i.cll, %bb.np ], [ %i.cdv, %bb.nk ], [ %i.cfx, %.preheader338.i.i.i ] ; 22 uses
  %i.clu = fmul double %.2301.i.i.i, %.2301.i.i.i ; 3 uses
  %i.clv = load double, ptr %i.ux, align 8, !tbaa !29
  %i.clw = fmul double %.2301.i.i.i, %i.clv       ; 2 uses
  %i.clx = load double, ptr %i.uw, align 8, !tbaa !29 ; 2 uses
  %i.cly = fmul double %.2301.i.i.i, %i.clx
  %i.clz = fmul double %.2301.i.i.i, %i.cly       ; 2 uses
  %i.cma = load double, ptr %i.uu, align 8, !tbaa !29
  %i.cmb = fmul double %.2301.i.i.i, %i.cma
  %i.cmc = fmul double %.2301.i.i.i, %i.cmb
  %i.cmd = fmul double %.2301.i.i.i, %i.cmc
  %i.cme = fsub double %i.clw, %i.clz             ; 4 uses
  %i.cmf = fsub double %i.clz, %i.cmd
  %i.cmg = fsub double %i.cme, %i.cmf             ; 2 uses
  %i.cmh = call double @llvm.fabs.f64(double %i.cme)
  %i.cmi = load double, ptr %i.wu, align 8, !tbaa !29
  %i.cmj = fmul double %i.cmi, 1.000000e-10
  %i.cmk = fcmp olt double %i.cmh, %i.cmj
  br i1 %i.cmk, label %cvSLdet.exit.thread.i.i, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.cml = load double, ptr %i.uy, align 8, !tbaa !29
  %i.cmm = fsub double %i.cml, %i.clw
  %i.cmn = fsub double %i.cmm, %i.cme
  %i.cmo = fsub double %i.cmn, %i.cmg
  %i.cmp = fneg double %i.cmo
  %i.cmq = fdiv double %i.cmp, %i.cme             ; 3 uses
  %i.cmr = fcmp olt double %i.cmq, 1.000000e-10
  %i.cms = fcmp ogt double %i.cmq, 4.000000e+00
  %or.cond3.i.i.i = or i1 %i.cmr, %i.cms
  br i1 %or.cond3.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.cmt = fdiv double %i.cmg, %i.cmq
  %i.cmu = fdiv double %i.cmt, %i.clu
  %i.cmv = fadd double %i.clx, %i.cmu
  %i.cmw = load double, ptr %i.vb, align 8, !tbaa !29
  %i.cmx = fmul double %.2301.i.i.i, %i.cmw       ; 2 uses
  %i.cmy = load double, ptr %i.va, align 8, !tbaa !29 ; 2 uses
  %i.cmz = fmul double %.2301.i.i.i, %i.cmy
  %i.cna = fmul double %.2301.i.i.i, %i.cmz       ; 2 uses
  %i.cnb = load double, ptr %i.uz, align 8, !tbaa !29
  %i.cnc = fmul double %.2301.i.i.i, %i.cnb
  %i.cnd = fmul double %.2301.i.i.i, %i.cnc
  %i.cne = fmul double %.2301.i.i.i, %i.cnd
  %i.cnf = fsub double %i.cmx, %i.cna             ; 4 uses
  %i.cng = fsub double %i.cna, %i.cne
  %i.cnh = fsub double %i.cnf, %i.cng             ; 2 uses
  %i.cni = call double @llvm.fabs.f64(double %i.cnf)
  %i.cnj = load double, ptr %i.wv, align 16, !tbaa !29
  %i.cnk = fmul double %i.cnj, 1.000000e-10
  %i.cnl = fcmp olt double %i.cni, %i.cnk
  br i1 %i.cnl, label %cvSLdet.exit.thread.i.i, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.cnm = load double, ptr %i.vc, align 8, !tbaa !29
  %i.cnn = fsub double %i.cnm, %i.cmx
  %i.cno = fsub double %i.cnn, %i.cnf
  %i.cnp = fsub double %i.cno, %i.cnh
  %i.cnq = fneg double %i.cnp
  %i.cnr = fdiv double %i.cnq, %i.cnf             ; 3 uses
  %i.cns = fcmp olt double %i.cnr, 1.000000e-10
  %i.cnt = fcmp ogt double %i.cnr, 4.000000e+00
  %or.cond3.1.i.i.i = or i1 %i.cns, %i.cnt
  br i1 %or.cond3.1.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.cnu = fdiv double %i.cnh, %i.cnr
  %i.cnv = fdiv double %i.cnu, %i.clu
  %i.cnw = fadd double %i.cmy, %i.cnv             ; 3 uses
  %i.cnx = load double, ptr %i.vg, align 8, !tbaa !29
  %i.cny = fmul double %.2301.i.i.i, %i.cnx       ; 2 uses
  %i.cnz = load double, ptr %i.vf, align 8, !tbaa !29 ; 2 uses
  %i.coa = fmul double %.2301.i.i.i, %i.cnz
  %i.cob = fmul double %.2301.i.i.i, %i.coa       ; 2 uses
  %i.coc = load double, ptr %i.vd, align 8, !tbaa !29
  %i.cod = fmul double %.2301.i.i.i, %i.coc
  %i.coe = fmul double %.2301.i.i.i, %i.cod
  %i.cof = fmul double %.2301.i.i.i, %i.coe
  %i.cog = fsub double %i.cny, %i.cob             ; 4 uses
  %i.coh = fsub double %i.cob, %i.cof
  %i.coi = fsub double %i.cog, %i.coh             ; 2 uses
  %i.coj = call double @llvm.fabs.f64(double %i.cog)
  %i.cok = load double, ptr %i.ww, align 8, !tbaa !29
  %i.col = fmul double %i.cok, 1.000000e-10
  %i.com = fcmp olt double %i.coj, %i.col
  br i1 %i.com, label %cvSLdet.exit.thread.i.i, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.con = load double, ptr %i.vh, align 8, !tbaa !29
  %i.coo = fsub double %i.con, %i.cny
  %i.cop = fsub double %i.coo, %i.cog
  %i.coq = fsub double %i.cop, %i.coi
  %i.cor = fneg double %i.coq
  %i.cos = fdiv double %i.cor, %i.cog             ; 3 uses
  %i.cot = fcmp olt double %i.cos, 1.000000e-10
  %i.cou = fcmp ogt double %i.cos, 4.000000e+00
  %or.cond3.2.i.i.i = or i1 %i.cot, %i.cou
  %i.cov = fcmp olt double %i.cnw, 1.000000e-10
  %or.cond.i304.i = select i1 %or.cond3.2.i.i.i, i1 true, i1 %i.cov
  br i1 %or.cond.i304.i, label %cvSLdet.exit.thread.i.i, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.cow = fdiv double %i.coi, %i.cos
  %i.cox = fdiv double %i.cow, %i.clu
  %i.coy = fadd double %i.cnz, %i.cox
  %i.coz = fdiv double %i.coy, %i.cnw             ; 2 uses
  %i.cpa = fdiv double %i.cmv, %i.cnw
  %i.cpb = mul nuw nsw i32 %i.caf, %i.caf
  %i.cpc = add nsw i32 %i.cpb, -1
  %i.cpd = uitofp nneg i32 %i.cpc to double
  %i.cpe = add nsw i32 %i.caf, -1                 ; 2 uses
  %i.cpf = uitofp nneg i32 %i.cpe to double
  %i.cpg = call double @llvm.fmuladd.f64(double %i.coz, double %i.cpa, double -1.000000e+00)
  %i.cph = fmul nnan double %i.cpd, -2.500000e-01
  %i.cpi = call double @llvm.fmuladd.f64(double %i.cph, double %i.coz, double %i.cpg)
  %i.cpj = fdiv double -2.000000e+00, %i.cpf
  %i.cpk = call double @llvm.fmuladd.f64(double %i.cpj, double %i.cpi, double 1.000000e+00) ; 2 uses
  %i.cpl = call double @llvm.fabs.f64(double %i.cpk)
  %i.cpm = fcmp olt double %i.cpl, 1.000000e-10
  br i1 %i.cpm, label %cvSLdet.exit.thread.i.i, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.cpn = fdiv double 1.000000e+00, %i.cpk
  %i.cpo = fsub double %i.cpn, %.2301.i.i.i
  %i.cpp = call double @llvm.fabs.f64(double %i.cpo)
  %i.cpq = fcmp ule double %i.cpp, 1.000000e-02
  %i.cpr = fcmp ogt double %.2301.i.i.i, f0x3FEF5C28F5C28F5C
  %or.cond80.i.i = select i1 %i.cpq, i1 %i.cpr, i1 false
  br i1 %or.cond80.i.i, label %bb.ny, label %cvSLdet.exit.thread.i.i

bb.ny:                                            ; preds = %bb.nx
  %i.cps = icmp eq i32 %.1303.i.i.i, 1            ; 2 uses
  %spec.store.select.i.i.i = select i1 %i.cps, i32 4, i32 %.1303.i.i.i ; 2 uses
  %i.cpt = icmp eq i32 %spec.store.select.i.i.i, 3
  br i1 %i.cpt, label %cvSLdet.exit.thread78.i.i, label %cvSLdet.exit.i.i

cvSLdet.exit.thread78.i.i:                        ; preds = %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.nz

cvSLdet.exit.thread.i.i:                          ; preds = %bb.ng, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %cvBDFStab.exit.i

cvSLdet.exit.i.i:                                 ; preds = %bb.ny
  %i.cpu = icmp eq i32 %spec.store.select.i.i.i, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
end_hunk_1
