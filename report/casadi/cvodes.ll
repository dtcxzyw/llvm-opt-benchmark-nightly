Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@CVodeCreate:bb.a
  %i.c = icmp eq ptr %calloc, null
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.d = icmp eq i32 %0, 1
  %i.e = select i1 %i.d, i32 12, i32 5            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store i32 %0, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 28
  store i32 %1, ptr %i.g, align 4, !tbaa !26
  store double f0x3CB0000000000000, ptr %calloc, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 1824
  store ptr @cvErrHandler, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %calloc, i64 1832
  store ptr %calloc, ptr %i.i, align 8, !tbaa !29
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 1840
  store ptr %i.j, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %calloc, i64 1368
  store i32 %i.e, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 1376
  store i64 500, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %calloc, i64 1384
  %i.o = getelementptr inbounds nuw i8, ptr %calloc, i64 1400
  store i32 10, ptr %i.o, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 1344
  store double 1.000000e-01, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %calloc, i64 2184
  store i32 1, ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %calloc, i64 152
  store ptr @cvSensRhsInternalDQ, ptr %i.r, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %calloc, i64 160
  store ptr @cvSensRhs1InternalDQ, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %calloc, i64 176
  store i32 1, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %calloc, i64 180
  store i32 1, ptr %i.u, align 4, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %calloc, i64 208
  store i32 1, ptr %i.v, align 8, !tbaa !41
  store <4 x i32> <i32 3, i32 3, i32 10, i32 7>, ptr %i.n, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %calloc, i64 280
  store i32 1, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %calloc, i64 1760
  store i32 %i.e, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %calloc, i64 1764
  store i32 %i.e, ptr %i.y, align 4, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %calloc, i64 1768
  store i32 %i.e, ptr %i.z, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc, i64 1624
  store i64 96, ptr %i.aa, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %calloc, i64 1632
  store i64 52, ptr %i.ab, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %calloc, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @cvProcessError(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ...) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.va_start.p0(ptr nonnull %5)
  %i.b = call i32 @vsprintf(ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull %5) #12 ; 0 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.e = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.101, ptr noundef %2, ptr noundef %3) #13 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.102, ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  call void %i.i(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.k) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.va_end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind uwtable
define void @cvErrHandler(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #4 {
bb.a:
  %i.a = alloca [10 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq i32 %0, 99
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 20070800100049239, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.104, i64 6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 1840 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.105, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %2) #12 ; 0 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.106, ptr noundef %3) #12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
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
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.b = load double, ptr %i.a, align 8, !tbaa !51 ; 2 uses
  %i.c = load double, ptr %7, align 8, !tbaa !27  ; 2 uses
  %i.d = fcmp ogt double %i.b, %i.c
  %. = select i1 %i.d, double %i.b, double %i.c
  %i.e = tail call double @SUNRsqrt(double noundef %.) #12 ; 2 uses
  %i.f = fdiv double 1.000000e+00, %i.e           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = sext i32 %4 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !53 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.r = sext i32 %i.o to i64                     ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !53 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 424
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56
  %i.w = tail call double @N_VWrmsNorm(ptr noundef %5, ptr noundef %i.v) #12
  %i.x = fmul double %i.k, %i.w                   ; 2 uses
  %i.y = fcmp ogt double %i.x, %i.f
  %i.z = select i1 %i.y, double %i.x, double %i.f
  %10 = fmul double %i.e, %i.k                    ; 9 uses
  %11 = fdiv double %i.z, %i.k                    ; 3 uses
  %i.aa = insertelement <2 x double> poison, double %11, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %10, i64 1
  %i.ac = fdiv <2 x double> splat (double 1.000000e+00), %i.ab ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 216
  %i.af = load double, ptr %i.ae, align 8, !tbaa !188 ; 2 uses
  %i.ag = fcmp oeq double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 208
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !41
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %select.unfold, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.ak = extractelement <2 x double> %i.ac, i64 1 ; 3 uses
  %i.al = fmul double %i.ak, %i.ad                ; 3 uses
  %i.am = fdiv double 1.000000e+00, %i.al         ; 2 uses
  %i.an = fcmp ogt double %i.am, %i.al
  %i.ao = select i1 %i.an, double %i.am, double %i.al
  %i.ap = fcmp ugt double %i.ao, %i.af
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 208
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !41
  %i.as = icmp eq i32 %i.ar, 1                    ; 2 uses
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.as, label %select.unfold, label %bb.m

bb.e:                                             ; preds = %bb.c
  br i1 %i.as, label %bb.h, label %bb.o

select.unfold:                                    ; preds = %bb.d, %bb.b
  %i.at = fcmp olt double %i.ad, %10
  %i.au = select i1 %i.at, double %i.ad, double %10 ; 5 uses
  %i.av = fdiv double 5.000000e-01, %i.au         ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.au, ptr noundef %5, ptr noundef %8) #12
  %i.aw = fadd double %i.t, %i.au
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.r
  store double %i.aw, ptr %i.ay, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !58
  %i.bd = tail call i32 %i.ba(double noundef %1, ptr noundef %8, ptr noundef %6, ptr noundef %i.bc) #12 ; 2 uses
  %.not229 = icmp eq i32 %i.bd, 0
  br i1 %.not229, label %bb.f, label %bb.s

bb.f:                                             ; preds = %select.unfold
  %i.be = fneg double %i.au
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.be, ptr noundef %5, ptr noundef %8) #12
  %i.bf = fsub double %i.t, %i.au
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.r
  store double %i.bf, ptr %i.bh, align 8, !tbaa !53
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !58
  %i.bk = tail call i32 %i.bi(double noundef %1, ptr noundef %8, ptr noundef %9, ptr noundef %i.bj) #12 ; 2 uses
  %.not230 = icmp eq i32 %i.bk, 0
  br i1 %.not230, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.bl = fneg double %i.av
  tail call void @N_VLinearSum(double noundef %i.av, ptr noundef %6, double noundef %i.bl, ptr noundef %9, ptr noundef %6) #12
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.bm = insertelement <2 x double> poison, double %10, i64 0
  %12 = shufflevector <2 x double> %i.bm, <2 x double> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.bn = fdiv <2 x double> splat (double 5.000000e-01), %12 ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.ad, ptr noundef %5, ptr noundef %8) #12
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !58
  %i.bs = tail call i32 %i.bp(double noundef %1, ptr noundef %8, ptr noundef %6, ptr noundef %i.br) #12 ; 2 uses
  %.not225 = icmp eq i32 %i.bs, 0
  br i1 %.not225, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.bt = fneg double %i.ad
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.bt, ptr noundef %5, ptr noundef %8) #12
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !58
  %i.bw = tail call i32 %i.bu(double noundef %1, ptr noundef %8, ptr noundef %9, ptr noundef %i.bv) #12 ; 2 uses
  %.not226 = icmp eq i32 %i.bw, 0
  br i1 %.not226, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.bx = extractelement <2 x double> %i.bn, i64 1 ; 2 uses
  %i.by = fneg double %i.bx
  tail call void @N_VLinearSum(double noundef %i.bx, ptr noundef %6, double noundef %i.by, ptr noundef %9, ptr noundef %6) #12
  %i.bz = fadd double %10, %i.t
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.r
  store double %i.bz, ptr %i.cb, align 8, !tbaa !53
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !58
  %i.ce = tail call i32 %i.cc(double noundef %1, ptr noundef %2, ptr noundef %8, ptr noundef %i.cd) #12 ; 2 uses
  %.not227 = icmp eq i32 %i.ce, 0
  br i1 %.not227, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.cf = fsub double %i.t, %10
  %i.cg = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.r
  store double %i.cf, ptr %i.ch, align 8, !tbaa !53
  %i.ci = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.cj = load ptr, ptr %i.bq, align 8, !tbaa !58
  %i.ck = tail call i32 %i.ci(double noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef %i.cj) #12 ; 2 uses
  %.not228 = icmp eq i32 %i.ck, 0
  br i1 %.not228, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.cl = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.cm = fneg double %i.cl
  tail call void @N_VLinearSum(double noundef %i.cl, ptr noundef %8, double noundef %i.cm, ptr noundef %9, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %6, double noundef 1.000000e+00, ptr noundef %9, ptr noundef %6) #12
  br label %bb.r

bb.m:                                             ; preds = %bb.b, %bb.d
  %i.cn = fcmp olt double %i.ad, %10
  %i.co = select i1 %i.cn, double %i.ad, double %10 ; 3 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.co, ptr noundef %5, ptr noundef %8) #12
  %i.cp = fadd double %i.t, %i.co
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.r
  store double %i.cp, ptr %i.cr, align 8, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !57
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !58
  %i.cw = tail call i32 %i.ct(double noundef %1, ptr noundef %8, ptr noundef %6, ptr noundef %i.cv) #12 ; 2 uses
  %.not224 = icmp eq i32 %i.cw, 0
  br i1 %.not224, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.cx = fdiv double 1.000000e+00, %i.co         ; 2 uses
  %i.cy = fneg double %i.cx
  tail call void @N_VLinearSum(double noundef %i.cx, ptr noundef %6, double noundef %i.cy, ptr noundef %3, ptr noundef %6) #12
  br label %bb.r

bb.o:                                             ; preds = %bb.e
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.ad, ptr noundef %5, ptr noundef %8) #12
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !58
  %i.dd = tail call i32 %i.da(double noundef %1, ptr noundef %8, ptr noundef %6, ptr noundef %i.dc) #12 ; 2 uses
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.de = fneg double %11
  tail call void @N_VLinearSum(double noundef %11, ptr noundef %6, double noundef %i.de, ptr noundef %3, ptr noundef %6) #12
  %i.df = fadd double %10, %i.t
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.r
  store double %i.df, ptr %i.dh, align 8, !tbaa !53
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !57
  %i.dj = load ptr, ptr %i.db, align 8, !tbaa !58
  %i.dk = tail call i32 %i.di(double noundef %1, ptr noundef %2, ptr noundef %8, ptr noundef %i.dj) #12 ; 2 uses
  %.not223 = icmp eq i32 %i.dk, 0
  br i1 %.not223, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dl = fneg double %i.ak
  tail call void @N_VLinearSum(double noundef %i.ak, ptr noundef %8, double noundef %i.dl, ptr noundef %3, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %6, double noundef 1.000000e+00, ptr noundef %9, ptr noundef %6) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.l, %bb.g
  %.0 = phi i64 [ 2, %bb.q ], [ 2, %bb.g ], [ 4, %bb.l ], [ 1, %bb.n ]
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.r
  store double %i.t, ptr %i.dn, align 8, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 1464 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !189
  %i.dq = add nsw i64 %i.dp, %.0
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !189
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %select.unfold, %bb.r
  %.0210 = phi i32 [ 0, %bb.r ], [ %i.dd, %bb.o ], [ %i.bd, %select.unfold ], [ %i.bk, %bb.f ], [ %i.bs, %bb.h ], [ %i.bw, %bb.i ], [ %i.ce, %bb.j ], [ %i.ck, %bb.k ], [ %i.cw, %bb.m ], [ %i.dk, %bb.p ]
  ret i32 %.0210
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @CVodeInit(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7)
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8)
  br label %bb.ad

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !194 ; 14 uses
  %i.g = load ptr, ptr %.val, align 8, !tbaa !196
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cvCheckNvector.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !197
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %cvCheckNvector.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !198
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %cvCheckNvector.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !199
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %cvCheckNvector.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !200
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %cvCheckNvector.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !201
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %cvCheckNvector.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !202
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %cvCheckNvector.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !203
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %cvCheckNvector.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !204
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %cvCheckNvector.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !205
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %cvCheckNvector.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !206
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %cvCheckNvector.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !207
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %cvCheckNvector.exit.thread, label %cvCheckNvector.exit

cvCheckNvector.exit:                              ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !208
  %.not71 = icmp eq ptr %i.aq, null
  br i1 %.not71, label %cvCheckNvector.exit.thread, label %bb.s

cvCheckNvector.exit.thread:                       ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.g, %cvCheckNvector.exit
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9)
  br label %bb.ad

bb.s:                                             ; preds = %cvCheckNvector.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !209
  %.not65 = icmp eq ptr %i.as, null
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @N_VSpace(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %.pre = load i64, ptr %i.a, align 8, !tbaa !59
  %.pre81 = load i64, ptr %i.b, align 8, !tbaa !59
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i64 0, ptr %i.a, align 8, !tbaa !59
  store i64 0, ptr %i.b, align 8, !tbaa !59
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.at = phi i64 [ 0, %bb.u ], [ %.pre81, %bb.t ]
  %i.au = phi i64 [ 0, %bb.u ], [ %.pre, %bb.t ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  store i64 %i.at, ptr %i.aw, align 8, !tbaa !61
  %i.ax = call ptr @N_VClone(ptr noundef nonnull %3) #12 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !56
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = call ptr @N_VClone(ptr noundef nonnull %3) #12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !62
  %i.bc = icmp eq ptr %i.ba, null
  br i1 %i.bc, label %.loopexit.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = call ptr @N_VClone(ptr noundef nonnull %3) #12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !63
  %i.bf = icmp eq ptr %i.bd, null
  br i1 %i.bf, label %.loopexit.sink.split.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = call ptr @N_VClone(ptr noundef nonnull %3) #12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !64
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %bb.z, label %.preheader.i

.preheader.i:                                     ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
end_hunk_0
begin_hunk_1_@cvStep:bb.a
  %i.cyt = tail call double @llvm.fmuladd.f64(double %i.cyg, double %i.cyr, double %i.cys)
  %i.cyu = fneg double %i.cyt
  %i.cyv = fdiv double %i.cyu, %i.cyh             ; 9 uses
  %i.cyw = fcmp olt double %i.cyv, 1.000000e-10
  %i.cyx = fcmp ogt double %i.cyv, 1.000000e+02
  %or.cond.i.i301 = or i1 %i.cyw, %i.cyx
  br i1 %or.cond.i.i301, label %cvSLdet.exit.thread.i, label %.preheader338.i.i

.preheader338.i.i:                                ; preds = %bb.jl
  %i.cyy = fmul double %i.cyv, %i.cyv             ; 2 uses
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.cza = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.czb = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.czc = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.czd = load <2 x double>, ptr %i.cyz, align 8, !tbaa !53 ; 5 uses
  %i.cze = load <2 x double>, ptr %i.cza, align 8, !tbaa !53 ; 6 uses
  %i.czf = load <2 x double>, ptr %i.czb, align 8, !tbaa !53 ; 6 uses
  %i.czg = load <2 x double>, ptr %i.czc, align 8, !tbaa !53 ; 6 uses
  %i.czh = insertelement <2 x double> poison, double %i.cyv, i64 0
  %i.czi = shufflevector <2 x double> %i.czh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.czj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czi, <2 x double> %i.czg, <2 x double> %i.czf)
  %i.czk = insertelement <2 x double> poison, double %i.cyy, i64 0
  %i.czl = shufflevector <2 x double> %i.czk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.czm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czl, <2 x double> %i.czj, <2 x double> %i.cze)
  %i.czn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czi, <2 x double> %i.czm, <2 x double> %i.czd) ; 3 uses
  %i.czo = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.czp = load double, ptr %i.czo, align 8, !tbaa !53 ; 3 uses
  %i.czq = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.czr = load double, ptr %i.czq, align 8, !tbaa !53 ; 4 uses
  %i.czs = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.czt = load double, ptr %i.czs, align 8, !tbaa !53 ; 4 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.czv = load double, ptr %i.czu, align 8, !tbaa !53 ; 4 uses
  %i.czw = tail call double @llvm.fmuladd.f64(double %i.cyv, double %i.czv, double %i.czt)
  %i.czx = tail call double @llvm.fmuladd.f64(double %i.cyy, double %i.czw, double %i.czr)
  %i.czy = tail call double @llvm.fmuladd.f64(double %i.cyv, double %i.czx, double %i.czp) ; 2 uses
  %i.czz = extractelement <2 x double> %i.czn, i64 0
  %i.daa = tail call double @SUNRabs(double noundef %i.czz) #12
  %i.dab = fdiv double %i.daa, %i.cwv             ; 2 uses
  %i.dac = fcmp ogt double %i.dab, 0.000000e+00
  %.1292.i.i = select i1 %i.dac, double %i.dab, double 0.000000e+00 ; 2 uses
  %i.dad = extractelement <2 x double> %i.czn, i64 1
  %i.dae = tail call double @SUNRabs(double noundef %i.dad) #12
  %i.daf = fdiv double %i.dae, %i.cxx             ; 2 uses
  %i.dag = fcmp ogt double %i.daf, %.1292.i.i
  %.1292.1.i.i = select i1 %i.dag, double %i.daf, double %.1292.i.i ; 2 uses
  %i.dah = tail call double @SUNRabs(double noundef %i.czy) #12
  %i.dai = fdiv double %i.dah, %i.cyk             ; 2 uses
  %i.daj = fcmp ogt double %i.dai, %.1292.1.i.i
  %.1292.2.i.i = select i1 %i.daj, double %i.dai, double %.1292.1.i.i
  %i.dak = fcmp olt double %.1292.2.i.i, 1.000000e-03
  br i1 %i.dak, label %.loopexit333.i.i, label %.preheader336.i.i

.preheader336.i.i:                                ; preds = %.preheader338.i.i
  %i.dal = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dam = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dan = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.2422.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.1.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %gep364.2.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.dao = insertelement <2 x double> poison, double %i.cww, i64 0
  %i.dap = insertelement <2 x double> %i.dao, double %i.cxy, i64 1
  %i.daq = shufflevector <2 x double> %i.czg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dar = shufflevector <2 x double> %i.czf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.das = shufflevector <2 x double> %i.cze, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dat = shufflevector <2 x double> %i.czd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dau = extractelement <2 x double> %i.czg, i64 0
  %i.dav = extractelement <2 x double> %i.czf, i64 0
  %i.daw = extractelement <2 x double> %i.cze, i64 0
  %i.dax = extractelement <2 x double> %i.cze, i64 1
  %i.day = extractelement <2 x double> %i.czd, i64 1
  %i.daz = shufflevector <2 x double> %i.czg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dba = shufflevector <2 x double> %i.czf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbb = shufflevector <2 x double> %i.cze, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbc = shufflevector <2 x double> %i.czd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbd = insertelement <2 x double> poison, double %i.czv, i64 0
  %i.dbe = shufflevector <2 x double> %i.dbd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbf = insertelement <2 x double> poison, double %i.czt, i64 0
  %i.dbg = shufflevector <2 x double> %i.dbf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbh = insertelement <2 x double> poison, double %i.czr, i64 0
  %i.dbi = shufflevector <2 x double> %i.dbh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbj = insertelement <2 x double> poison, double %i.czp, i64 0
  %i.dbk = shufflevector <2 x double> %i.dbj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbl = insertelement <2 x double> poison, double %i.cwv, i64 0 ; 2 uses
  %i.dbm = insertelement <2 x double> %i.dbl, double %i.cxx, i64 1
  %i.dbn = insertelement <2 x double> poison, double %i.cxx, i64 0
  %i.dbo = insertelement <2 x double> %i.dbn, double %i.cyk, i64 1
  %i.dbp = shufflevector <2 x double> %i.dbl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbq = shufflevector <2 x double> %i.czd, <2 x double> %i.czf, <2 x i32> <i32 0, i32 3>
  %i.dbr = insertelement <2 x double> poison, double %i.cxx, i64 1
  br label %.preheader335.i.i

.preheader335.i.i:                                ; preds = %.preheader.i.i303, %.preheader336.i.i
  %.sroa.10.0.i.i = phi double [ %i.czy, %.preheader336.i.i ], [ %i.dfw, %.preheader.i.i303 ]
  %.0298376.i.i = phi double [ %i.cyv, %.preheader336.i.i ], [ %i.dfs, %.preheader.i.i303 ] ; 5 uses
  %.0304375.i.i = phi i32 [ 0, %.preheader336.i.i ], [ %.2306.2.i.i, %.preheader.i.i303 ]
  %.0307374.i.i = phi i32 [ 1, %.preheader336.i.i ], [ %i.dfx, %.preheader.i.i303 ]
  %i.dbs = phi <2 x double> [ %i.czn, %.preheader336.i.i ], [ %i.dfz, %.preheader.i.i303 ]
  %i.dbt = fmul double %.0298376.i.i, %.0298376.i.i ; 2 uses
  %i.dbu = fmul double %.0298376.i.i, 4.000000e+00 ; 2 uses
  %i.dbv = fneg <2 x double> %i.dbs
  %i.dbw = fmul double %i.czv, %i.dbu
  %i.dbx = fneg double %.sroa.10.0.i.i
  %i.dby = insertelement <2 x double> poison, double %i.dbu, i64 0
  %i.dbz = shufflevector <2 x double> %i.dby, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dca = fmul <2 x double> %i.czg, %i.dbz
  %i.dcb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czf, <2 x double> splat (double 3.000000e+00), <2 x double> %i.dca)
  %i.dcc = insertelement <2 x double> poison, double %i.dbt, i64 0
  %i.dcd = shufflevector <2 x double> %i.dcc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcd, <2 x double> %i.dcb, <2 x double> %i.cze) ; 3 uses
  %i.dcf = extractelement <2 x double> %i.dce, i64 0
  %i.dcg = tail call double @SUNRabs(double noundef %i.dcf) #12
  %i.dch = extractelement <2 x double> %i.dce, i64 1
  %i.dci = tail call double @SUNRabs(double noundef %i.dch) #12
  %i.dcj = insertelement <2 x double> poison, double %i.dcg, i64 0
  %i.dck = insertelement <2 x double> %i.dcj, double %i.dci, i64 1
  %i.dcl = fcmp ogt <2 x double> %i.dck, %i.dap
  %i.dcm = fdiv <2 x double> %i.dbv, %i.dce
  %i.dcn = select <2 x i1> %i.dcl, <2 x double> %i.dcm, <2 x double> zeroinitializer
  %i.dco = insertelement <2 x double> poison, double %.0298376.i.i, i64 0
  %i.dcp = shufflevector <2 x double> %i.dco, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dcq = fadd <2 x double> %i.dcp, %i.dcn       ; 10 uses
  %i.dcr = extractelement <2 x double> %i.dcq, i64 0
  store double %i.dcr, ptr %i.dal, align 8, !tbaa !53
  %i.dcs = extractelement <2 x double> %i.dcq, i64 1
  store double %i.dcs, ptr %i.dam, align 16, !tbaa !53
  %i.dct = fmul <2 x double> %i.dcq, %i.dcq       ; 3 uses
  %i.dcu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcq, <2 x double> %i.daq, <2 x double> %i.dar)
  %i.dcv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dct, <2 x double> %i.dcu, <2 x double> %i.das)
  %i.dcw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcq, <2 x double> %i.dcv, <2 x double> %i.dat) ; 3 uses
  %i.dcx = extractelement <2 x double> %i.dcw, i64 0
  %i.dcy = extractelement <2 x double> %i.dcw, i64 1
  %i.dcz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcq, <2 x double> %i.daz, <2 x double> %i.dba)
  %i.dda = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dct, <2 x double> %i.dcz, <2 x double> %i.dbb)
  %i.ddb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcq, <2 x double> %i.dda, <2 x double> %i.dbc) ; 3 uses
  %i.ddc = extractelement <2 x double> %i.ddb, i64 0
  %i.ddd = tail call double @llvm.fmuladd.f64(double %i.czt, double 3.000000e+00, double %i.dbw)
  %i.dde = tail call double @llvm.fmuladd.f64(double %i.dbt, double %i.ddd, double %i.czr) ; 2 uses
  %i.ddf = tail call double @SUNRabs(double noundef %i.dde) #12
  %i.ddg = fcmp ogt double %i.ddf, %i.cyl
  %i.ddh = tail call double @SUNRabs(double noundef %i.dcx) #12
  %i.ddi = tail call double @SUNRabs(double noundef %i.ddc) #12
  %i.ddj = insertelement <2 x double> poison, double %i.dbx, i64 0
  %i.ddk = insertelement <2 x double> %i.ddj, double %i.ddi, i64 1
  %i.ddl = insertelement <2 x double> %i.dbr, double %i.dde, i64 0
  %i.ddm = fdiv <2 x double> %i.ddk, %i.ddl       ; 2 uses
  %i.ddn = extractelement <2 x double> %i.ddm, i64 0
  %.sroa.8.0.i.i = select i1 %i.ddg, double %i.ddn, double 0.000000e+00
  %i.ddo = fadd double %.0298376.i.i, %.sroa.8.0.i.i ; 8 uses
  store double %i.ddo, ptr %i.dan, align 8, !tbaa !53
  %i.ddp = extractelement <2 x double> %i.ddb, i64 1
  %i.ddq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcq, <2 x double> %i.dbe, <2 x double> %i.dbg)
  %i.ddr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dct, <2 x double> %i.ddq, <2 x double> %i.dbi)
  %i.dds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcq, <2 x double> %i.ddr, <2 x double> %i.dbk) ; 3 uses
  %i.ddt = extractelement <2 x double> %i.dds, i64 0
  %i.ddu = tail call double @SUNRabs(double noundef %i.ddt) #12
  store <2 x double> %i.dcw, ptr %gep364.i.i, align 8, !tbaa !53
  %i.ddv = tail call double @SUNRabs(double noundef %i.dcy) #12
  %i.ddw = insertelement <2 x double> poison, double %i.ddv, i64 0
  %i.ddx = insertelement <2 x double> %i.ddw, double %i.ddh, i64 1
  %i.ddy = fdiv <2 x double> %i.ddx, %i.dbp       ; 3 uses
  %i.ddz = fcmp ogt <2 x double> %i.ddy, zeroinitializer ; 2 uses
  %i.dea = extractelement <2 x i1> %i.ddz, i64 1
  %i.deb = extractelement <2 x double> %i.ddy, i64 1
  %.1290.i.i = select i1 %i.dea, double %i.deb, double 0.000000e+00 ; 2 uses
  %i.dec = extractelement <2 x double> %i.ddm, i64 1 ; 2 uses
  %i.ded = fcmp ogt double %i.dec, %.1290.i.i
  %.1290.1.i.i = select i1 %i.ded, double %i.dec, double %.1290.i.i ; 2 uses
  %i.dee = extractelement <2 x i1> %i.ddz, i64 0
  %i.def = extractelement <2 x double> %i.ddy, i64 0
  %.1290.1421.i.i = select i1 %i.dee, double %i.def, double 0.000000e+00
  store <2 x double> %i.ddb, ptr %gep364.1.i.i, align 8, !tbaa !53
  %i.deg = tail call double @SUNRabs(double noundef %i.ddp) #12
  store <2 x double> %i.dds, ptr %gep364.2.i.i, align 8, !tbaa !53
  %i.deh = extractelement <2 x double> %i.dds, i64 1
  %i.dei = tail call double @SUNRabs(double noundef %i.deh) #12
  %i.dej = fmul double %i.ddo, %i.ddo             ; 3 uses
  %i.dek = tail call double @llvm.fmuladd.f64(double %i.ddo, double %i.dau, double %i.dav)
  %i.del = tail call double @llvm.fmuladd.f64(double %i.dej, double %i.dek, double %i.daw)
  %i.dem = insertelement <2 x double> poison, double %i.ddo, i64 0
  %i.den = shufflevector <2 x double> %i.dem, <2 x double> poison, <2 x i32> zeroinitializer
  %i.deo = insertelement <2 x double> %i.czg, double %i.del, i64 0
  %i.dep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.den, <2 x double> %i.deo, <2 x double> %i.dbq) ; 2 uses
  %i.deq = extractelement <2 x double> %i.dep, i64 0 ; 2 uses
  store double %i.deq, ptr %gep364.2422.i.i, align 8, !tbaa !53
  %i.der = tail call double @SUNRabs(double noundef %i.deq) #12
  %i.des = extractelement <2 x double> %i.dep, i64 1
  %i.det = tail call double @llvm.fmuladd.f64(double %i.dej, double %i.des, double %i.dax)
  %i.deu = tail call double @llvm.fmuladd.f64(double %i.ddo, double %i.det, double %i.day) ; 2 uses
  store double %i.deu, ptr %gep364.1.2.i.i, align 8, !tbaa !53
  %i.dev = tail call double @SUNRabs(double noundef %i.deu) #12
  %i.dew = tail call double @llvm.fmuladd.f64(double %i.ddo, double %i.czv, double %i.czt)
  %i.dex = tail call double @llvm.fmuladd.f64(double %i.dej, double %i.dew, double %i.czr)
  %i.dey = tail call double @llvm.fmuladd.f64(double %i.ddo, double %i.dex, double %i.czp) ; 2 uses
  store double %i.dey, ptr %gep364.2.2.i.i, align 8, !tbaa !53
  %i.dez = tail call double @SUNRabs(double noundef %i.dey) #12
  %i.dfa = fdiv double %i.dez, %i.cyk             ; 2 uses
  %1 = insertelement <2 x double> poison, double %i.der, i64 0
  %2 = insertelement <2 x double> %1, double %i.deg, i64 1
  %3 = fdiv <2 x double> %2, %i.dbm               ; 2 uses
  %4 = fdiv double %i.ddu, %i.cyk                 ; 2 uses
  %i.dfb = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1290.1421.i.i, i64 1 ; 2 uses
  %5 = fcmp ogt <2 x double> %3, %i.dfb
  %6 = fcmp ogt double %4, %.1290.1.i.i
  %7 = select <2 x i1> %5, <2 x double> %3, <2 x double> %i.dfb ; 2 uses
  %.1290.2.i.i = select i1 %6, double %4, double %.1290.1.i.i ; 3 uses
  %i.dfc = insertelement <2 x double> poison, double %i.dev, i64 0
  %i.dfd = insertelement <2 x double> %i.dfc, double %i.dei, i64 1
  %i.dfe = fdiv <2 x double> %i.dfd, %i.dbo       ; 2 uses
  %i.dff = fcmp ogt <2 x double> %i.dfe, %7
  %8 = fadd double %.1290.2.i.i, 1.000000e+00     ; 2 uses
  %9 = fcmp olt double %.1290.2.i.i, %8           ; 2 uses
  %10 = select <2 x i1> %i.dff, <2 x double> %i.dfe, <2 x double> %7 ; 3 uses
  %.2306.i.i = select i1 %9, i32 1, i32 %.0304375.i.i
  %.2.i.i302 = select i1 %9, double %.1290.2.i.i, double %8 ; 2 uses
  %i.dfg = insertelement <2 x double> poison, double %i.dfa, i64 0
  %i.dfh = insertelement <2 x double> %i.dfg, double %.2.i.i302, i64 1
  %i.dfi = fcmp ogt <2 x double> %i.dfh, %10      ; 2 uses
  %i.dfj = extractelement <2 x i1> %i.dfi, i64 1
  %.2306.1.i.i = select i1 %i.dfj, i32 2, i32 %.2306.i.i
  %i.dfk = insertelement <2 x double> %10, double %i.dfa, i64 0
  %i.dfl = insertelement <2 x double> %10, double %.2.i.i302, i64 1
  %i.dfm = select <2 x i1> %i.dfi, <2 x double> %i.dfk, <2 x double> %i.dfl ; 2 uses
  %i.dfn = extractelement <2 x double> %i.dfm, i64 0 ; 2 uses
  %i.dfo = extractelement <2 x double> %i.dfm, i64 1 ; 2 uses
  %i.dfp = fcmp olt double %i.dfn, %i.dfo         ; 2 uses
  %.2306.2.i.i = select i1 %i.dfp, i32 3, i32 %.2306.1.i.i ; 2 uses
  %.2.2.i.i = select i1 %i.dfp, double %i.dfn, double %i.dfo ; 2 uses
  %i.dfq = zext nneg i32 %.2306.2.i.i to i64      ; 2 uses
  %i.dfr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dfq
  %i.dfs = load double, ptr %i.dfr, align 8, !tbaa !53 ; 2 uses
  %i.dft = fcmp olt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dft, label %bb.jm, label %.preheader.i.i303

.preheader.i.i303:                                ; preds = %.preheader335.i.i
  %invariant.gep371.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dfq ; 3 uses
  %gep372.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 32
  %i.dfu = load double, ptr %gep372.i.i, align 8, !tbaa !53
  %gep372.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 64
  %i.dfv = load double, ptr %gep372.1.i.i, align 8, !tbaa !53
  %gep372.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 96
  %i.dfw = load double, ptr %gep372.2.i.i, align 8, !tbaa !53
  %i.dfx = add nuw nsw i32 %.0307374.i.i, 1       ; 2 uses
  %exitcond432.not.i.i = icmp eq i32 %i.dfx, 4
  %i.dfy = insertelement <2 x double> poison, double %i.dfu, i64 0
  %i.dfz = insertelement <2 x double> %i.dfy, double %i.dfv, i64 1
  br i1 %exitcond432.not.i.i, label %bb.jm, label %.preheader335.i.i, !llvm.loop !375

bb.jm:                                            ; preds = %.preheader.i.i303, %.preheader335.i.i
  %.0301.i.i = phi i32 [ 0, %.preheader.i.i303 ], [ 3, %.preheader335.i.i ]
  %i.dga = fcmp ogt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dga, label %cvSLdet.exit.thread.i, label %.loopexit333.i.i

.loopexit333.i.i:                                 ; preds = %bb.jm, %.preheader338.i.i, %.loopexit333.loopexit.i.i
  %.1302.i.i = phi i32 [ 2, %.preheader338.i.i ], [ %.0301.i.i, %bb.jm ], [ 1, %.loopexit333.loopexit.i.i ] ; 2 uses
  %.2300.i.i = phi double [ %i.cyv, %.preheader338.i.i ], [ %i.dfs, %bb.jm ], [ %i.cwk, %.loopexit333.loopexit.i.i ] ; 22 uses
  %i.dgb = fmul double %.2300.i.i, %.2300.i.i     ; 3 uses
  %i.dgc = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.dgd = load double, ptr %i.dgc, align 8, !tbaa !53
  %i.dge = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.dgf = load double, ptr %i.dge, align 8, !tbaa !53
  %i.dgg = fmul double %.2300.i.i, %i.dgf         ; 2 uses
  %i.dgh = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.dgi = load double, ptr %i.dgh, align 8, !tbaa !53
  %i.dgj = fmul double %.2300.i.i, %i.dgi
  %i.dgk = fmul double %.2300.i.i, %i.dgj         ; 2 uses
  %i.dgl = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.dgm = load double, ptr %i.dgl, align 8, !tbaa !53
  %i.dgn = fmul double %.2300.i.i, %i.dgm
  %i.dgo = fmul double %.2300.i.i, %i.dgn
  %i.dgp = fmul double %.2300.i.i, %i.dgo
  %i.dgq = fsub double %i.dgg, %i.dgk             ; 4 uses
  %i.dgr = fsub double %i.dgk, %i.dgp
  %i.dgs = fsub double %i.dgq, %i.dgr             ; 2 uses
  %i.dgt = tail call double @SUNRabs(double noundef %i.dgq) #12
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dgv = load double, ptr %i.dgu, align 8, !tbaa !53
  %i.dgw = fmul double %i.dgv, 1.000000e-10
  %i.dgx = fcmp olt double %i.dgt, %i.dgw
  br i1 %i.dgx, label %cvSLdet.exit.thread.i, label %bb.jn

bb.jn:                                            ; preds = %.loopexit333.i.i
  %i.dgy = fsub double %i.dgd, %i.dgg
  %i.dgz = fsub double %i.dgy, %i.dgq
  %i.dha = fsub double %i.dgz, %i.dgs
  %i.dhb = fneg double %i.dha
  %i.dhc = fdiv double %i.dhb, %i.dgq             ; 3 uses
  %i.dhd = fcmp olt double %i.dhc, 1.000000e-10
  %i.dhe = fcmp ogt double %i.dhc, 4.000000e+00
  %or.cond3.i.i = or i1 %i.dhd, %i.dhe
  br i1 %or.cond3.i.i, label %cvSLdet.exit.thread.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.dhf = fdiv double %i.dgs, %i.dhc
  %i.dhg = fdiv double %i.dhf, %i.dgb
  %i.dhh = load double, ptr %i.dgh, align 8, !tbaa !53
  %i.dhi = fadd double %i.dhg, %i.dhh
  %i.dhj = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.dhk = load double, ptr %i.dhj, align 8, !tbaa !53
  %i.dhl = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dhm = load double, ptr %i.dhl, align 8, !tbaa !53
  %i.dhn = fmul double %.2300.i.i, %i.dhm         ; 2 uses
  %i.dho = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.dhp = load double, ptr %i.dho, align 8, !tbaa !53
  %i.dhq = fmul double %.2300.i.i, %i.dhp
  %i.dhr = fmul double %.2300.i.i, %i.dhq         ; 2 uses
  %i.dhs = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.dht = load double, ptr %i.dhs, align 8, !tbaa !53
  %i.dhu = fmul double %.2300.i.i, %i.dht
  %i.dhv = fmul double %.2300.i.i, %i.dhu
  %i.dhw = fmul double %.2300.i.i, %i.dhv
  %i.dhx = fsub double %i.dhn, %i.dhr             ; 4 uses
  %i.dhy = fsub double %i.dhr, %i.dhw
  %i.dhz = fsub double %i.dhx, %i.dhy             ; 2 uses
  %i.dia = tail call double @SUNRabs(double noundef %i.dhx) #12
  %i.dib = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dic = load double, ptr %i.dib, align 16, !tbaa !53
  %i.did = fmul double %i.dic, 1.000000e-10
  %i.die = fcmp olt double %i.dia, %i.did
  br i1 %i.die, label %cvSLdet.exit.thread.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.dif = fsub double %i.dhk, %i.dhn
  %i.dig = fsub double %i.dif, %i.dhx
  %i.dih = fsub double %i.dig, %i.dhz
  %i.dii = fneg double %i.dih
  %i.dij = fdiv double %i.dii, %i.dhx             ; 3 uses
  %i.dik = fcmp olt double %i.dij, 1.000000e-10
  %i.dil = fcmp ogt double %i.dij, 4.000000e+00
  %or.cond3.1.i.i = or i1 %i.dik, %i.dil
  br i1 %or.cond3.1.i.i, label %cvSLdet.exit.thread.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.dim = fdiv double %i.dhz, %i.dij
  %i.din = fdiv double %i.dim, %i.dgb
  %i.dio = load double, ptr %i.dho, align 8, !tbaa !53
  %i.dip = fadd double %i.din, %i.dio             ; 3 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.dir = load double, ptr %i.diq, align 8, !tbaa !53
  %i.dis = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.dit = load double, ptr %i.dis, align 8, !tbaa !53
  %i.diu = fmul double %.2300.i.i, %i.dit         ; 2 uses
  %i.div = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.diw = load double, ptr %i.div, align 8, !tbaa !53
  %i.dix = fmul double %.2300.i.i, %i.diw
  %i.diy = fmul double %.2300.i.i, %i.dix         ; 2 uses
  %i.diz = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.dja = load double, ptr %i.diz, align 8, !tbaa !53
  %i.djb = fmul double %.2300.i.i, %i.dja
  %i.djc = fmul double %.2300.i.i, %i.djb
  %i.djd = fmul double %.2300.i.i, %i.djc
  %i.dje = fsub double %i.diu, %i.diy             ; 4 uses
  %i.djf = fsub double %i.diy, %i.djd
  %i.djg = fsub double %i.dje, %i.djf             ; 2 uses
  %i.djh = tail call double @SUNRabs(double noundef %i.dje) #12
  %i.dji = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.djj = load double, ptr %i.dji, align 8, !tbaa !53
  %i.djk = fmul double %i.djj, 1.000000e-10
  %i.djl = fcmp olt double %i.djh, %i.djk
  br i1 %i.djl, label %cvSLdet.exit.thread.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.djm = fsub double %i.dir, %i.diu
  %i.djn = fsub double %i.djm, %i.dje
  %i.djo = fsub double %i.djn, %i.djg
  %i.djp = fneg double %i.djo
  %i.djq = fdiv double %i.djp, %i.dje             ; 3 uses
  %i.djr = fcmp olt double %i.djq, 1.000000e-10
  %i.djs = fcmp ogt double %i.djq, 4.000000e+00
  %or.cond3.2.i.i = or i1 %i.djr, %i.djs
  %i.djt = fcmp olt double %i.dip, 1.000000e-10
  %or.cond.i304 = select i1 %or.cond3.2.i.i, i1 true, i1 %i.djt
  br i1 %or.cond.i304, label %cvSLdet.exit.thread.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.dju = fdiv double %i.djg, %i.djq
  %i.djv = fdiv double %i.dju, %i.dgb
  %i.djw = load double, ptr %i.div, align 8, !tbaa !53
  %i.djx = fadd double %i.djv, %i.djw
  %i.djy = fdiv double %i.djx, %i.dip             ; 2 uses
  %i.djz = fdiv double %i.dhi, %i.dip
  %i.dka = load i32, ptr %i.bg, align 8, !tbaa !66 ; 3 uses
  %i.dkb = mul nsw i32 %i.dka, %i.dka
  %i.dkc = add nsw i32 %i.dkb, -1
  %i.dkd = sitofp i32 %i.dkc to double
  %i.dke = sitofp i32 %i.dka to double
  %i.dkf = fadd double %i.dke, -1.000000e+00
  %i.dkg = tail call double @llvm.fmuladd.f64(double %i.djy, double %i.djz, double -1.000000e+00)
  %i.dkh = fmul nnan double %i.dkd, -2.500000e-01
  %i.dki = tail call double @llvm.fmuladd.f64(double %i.dkh, double %i.djy, double %i.dkg)
  %i.dkj = fdiv double -2.000000e+00, %i.dkf
  %i.dkk = tail call double @llvm.fmuladd.f64(double %i.dkj, double %i.dki, double 1.000000e+00) ; 2 uses
  %i.dkl = tail call double @SUNRabs(double noundef %i.dkk) #12
  %i.dkm = fcmp olt double %i.dkl, 1.000000e-10
  br i1 %i.dkm, label %cvSLdet.exit.thread.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.dkn = fdiv double 1.000000e+00, %i.dkk
  %i.dko = fsub double %i.dkn, %.2300.i.i
  %i.dkp = tail call double @SUNRabs(double noundef %i.dko) #12
  %i.dkq = fcmp ule double %i.dkp, 1.000000e-02
  %i.dkr = fcmp ogt double %.2300.i.i, f0x3FEF5C28F5C28F5C
  %or.cond79.i = and i1 %i.dkr, %i.dkq
  br i1 %or.cond79.i, label %bb.ju, label %cvSLdet.exit.thread.i

bb.ju:                                            ; preds = %bb.jt
  %i.dks = icmp eq i32 %.1302.i.i, 1              ; 2 uses
  %spec.store.select.i.i = select i1 %i.dks, i32 4, i32 %.1302.i.i ; 2 uses
  %i.dkt = icmp eq i32 %spec.store.select.i.i, 3
  br i1 %i.dkt, label %cvSLdet.exit.thread77.i, label %cvSLdet.exit.i

cvSLdet.exit.thread77.i:                          ; preds = %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.jv

end_hunk_1
