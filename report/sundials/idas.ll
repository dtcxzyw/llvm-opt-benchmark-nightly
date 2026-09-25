Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idas?download=true
inline.NumInlined: 61
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@IDACreate:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 2056
  store i32 10, ptr %i.m, align 8, !tbaa !28
  store <4 x i32> <i32 10, i32 10, i32 5, i32 5>, ptr %i.k, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %calloc, i64 1160
  %i.o = getelementptr inbounds nuw i8, ptr %calloc, i64 1136
  store i32 5, ptr %i.o, align 8, !tbaa !197
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 1140
  store i32 4, ptr %i.p, align 4, !tbaa !198
  %i.q = getelementptr inbounds nuw i8, ptr %calloc, i64 1144
  store i32 10, ptr %i.q, align 8, !tbaa !199
  %i.r = getelementptr inbounds nuw i8, ptr %calloc, i64 1156
  store i32 100, ptr %i.r, align 4, !tbaa !200
  store <2 x double> <double f0x3F6B089A02752547, double f0x3DC3EB013F099739>, ptr %i.n, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %calloc, i64 152
  store i32 1, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %calloc, i64 176
  store ptr %calloc, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %calloc, i64 168
  store ptr @IDASensResDQ, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %calloc, i64 184
  store i32 1, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %calloc, i64 216
  store i32 1, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %calloc, i64 236
  store i32 4, ptr %i.x, align 4, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %calloc, i64 164
  store i32 -1, ptr %i.y, align 4, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %calloc, i64 288
  store ptr %calloc, ptr %i.z, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc, i64 280
  store ptr @IDAQuadSensRhsInternalDQ, ptr %i.aa, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %calloc, i64 296
  store i32 1, ptr %i.ab, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc, i64 304
  store i32 4, ptr %i.ac, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %calloc, i64 1664
  store i64 55, ptr %i.ad, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc, i64 1672
  store i64 38, ptr %i.ae, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %calloc, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @IDAProcessError(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ...) local_unnamed_addr #0 {
bb.a:
  %6 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.va_start.p0(ptr nonnull %6)
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.c, %bb.b ], [ 1, %bb.a ]     ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %6)
  %i.d = call noalias ptr @malloc(i64 noundef %.0) #15 ; 6 uses
  call void @llvm.va_start.p0(ptr nonnull %6)
  %i.e = call i32 @vsnprintf(ptr noundef %i.d, i64 noundef %.0, ptr noundef %5, ptr noundef nonnull %6) #14 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %6)
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ptr, ptr, i32, ...) @SUNGlobalFallbackErrHandler(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.d, i32 noundef %1) #14
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %1, 99
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %i.i = add i64 %i.h, 6                          ; 2 uses
  %i.j = call noalias ptr @malloc(i64 noundef %i.i) #15 ; 3 uses
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.j, i64 noundef %i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %4, i32 noundef %2) #14 ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.o = call i32 (ptr, i32, ptr, ptr, ptr, ...) @SUNLogger_QueueMsg(ptr noundef %i.n, i32 noundef 2, ptr noundef %i.j, ptr noundef %3, ptr noundef %i.d) #14 ; 0 uses
  call void @free(ptr noundef %i.j) #14
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !20     ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ptr, ptr, i32, ...) @SUNGlobalFallbackErrHandler(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.d, i32 noundef range(i32 100, 99) %1) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 %1, ptr %i.q, align 4, !tbaa !207
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.019.i = load ptr, ptr %i.r, align 8, !tbaa !208 ; 2 uses
  %.not1820.i = icmp eq ptr %.019.i, null
  br i1 %.not1820.i, label %SUNHandleErrWithMsg.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.021.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.019.i, %bb.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !210
  %i.u = getelementptr inbounds nuw i8, ptr %.021.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !211
  call void %i.t(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.d, i32 noundef range(i32 100, 99) %1, ptr noundef %i.v, ptr noundef nonnull %i.p) #14, !inline_history !201
  %.0.i = load ptr, ptr %.021.i, align 8, !tbaa !208 ; 2 uses
  %.not18.i = icmp eq ptr %.0.i, null
  br i1 %.not18.i, label %SUNHandleErrWithMsg.exit, label %.lr.ph.i

SUNHandleErrWithMsg.exit:                         ; preds = %.lr.ph.i, %bb.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !20
  %i.x = call i32 @SUNContext_GetLastError(ptr noundef %i.w) #14 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %SUNHandleErrWithMsg.exit, %bb.f, %bb.d
  call void @free(ptr noundef %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @IDASensResDQ(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %IDASensRes1DQ.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 632
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 216 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 1512 ; 18 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 6 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 16 uses
  %i.s = load double, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.t = load double, ptr %i.c, align 8, !tbaa !21 ; 2 uses
  %i.u = fcmp ogt double %i.s, %i.t
  %..i = select i1 %i.u, double %i.s, double %i.t ; 2 uses
  %i.v = fcmp ugt double %..i, 0.000000e+00
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = tail call double @sqrt(double noundef %..i) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi double [ %i.w, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.y = fdiv double 1.000000e+00, %i.x           ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !24 ; 3 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.ag = sext i32 %i.ae to i64                   ; 8 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24 ; 7 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.ak = tail call double @N_VWrmsNorm(ptr noundef %i.n, ptr noundef %i.aj) #14
  %i.al = fmul double %i.ab, %i.ak                ; 2 uses
  %i.am = fcmp ogt double %i.al, %i.y
  %i.an = select i1 %i.am, double %i.al, double %i.y
  %12 = fmul double %i.x, %i.ab                   ; 9 uses
  %13 = fdiv double %i.an, %i.ab                  ; 3 uses
  %i.ao = insertelement <2 x double> poison, double %13, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %12, i64 1
  %i.aq = fdiv <2 x double> splat (double 1.000000e+00), %i.ap ; 3 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0 ; 10 uses
  %i.as = load double, ptr %i.h, align 8, !tbaa !213 ; 2 uses
  %i.at = fcmp oeq double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr %i.i, align 8, !tbaa !34
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %select.unfold.i, label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.aw = extractelement <2 x double> %i.aq, i64 1 ; 3 uses
  %i.ax = fmul double %i.aw, %i.ar                ; 3 uses
  %i.ay = fdiv double 1.000000e+00, %i.ax         ; 2 uses
  %i.az = fcmp ogt double %i.ay, %i.ax
  %i.ba = select i1 %i.az, double %i.ay, double %i.ax
  %i.bb = fcmp ugt double %i.ba, %i.as
  %i.bc = load i32, ptr %i.i, align 8, !tbaa !34
  %i.bd = icmp eq i32 %i.bc, 1                    ; 2 uses
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.bd, label %select.unfold.i, label %bb.p

bb.h:                                             ; preds = %bb.f
  br i1 %i.bd, label %bb.k, label %bb.r

select.unfold.i:                                  ; preds = %bb.g, %bb.e
  %i.be = fcmp olt double %i.ar, %12
  %i.bf = select i1 %i.be, double %i.ar, double %12 ; 6 uses
  %i.bg = fdiv double 5.000000e-01, %i.bf         ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.bf, ptr noundef %i.n, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #14
  tail call void @N_VLinearSum(double noundef %i.bf, ptr noundef %i.p, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #14
  %i.bh = fadd double %i.ai, %i.bf
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ag
  store double %i.bh, ptr %i.bj, align 8, !tbaa !24
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.bm = tail call i32 %i.bk(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.r, ptr noundef %i.bl) #14, !inline_history !212 ; 2 uses
  %i.bn = load i64, ptr %i.l, align 8, !tbaa !51
  %i.bo = add nsw i64 %i.bn, 1
  store i64 %i.bo, ptr %i.l, align 8, !tbaa !51
  %.not265.i = icmp eq i32 %i.bm, 0
  br i1 %.not265.i, label %bb.i, label %IDASensRes1DQ.exit.thread

bb.i:                                             ; preds = %select.unfold.i
  %i.bp = fneg double %i.bf                       ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.bp, ptr noundef %i.n, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #14
  tail call void @N_VLinearSum(double noundef %i.bp, ptr noundef %i.p, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #14
  %i.bq = fsub double %i.ai, %i.bf
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ag
  store double %i.bq, ptr %i.bs, align 8, !tbaa !24
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.bv = tail call i32 %i.bt(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %i.bu) #14, !inline_history !212 ; 2 uses
  %i.bw = load i64, ptr %i.l, align 8, !tbaa !51
  %i.bx = add nsw i64 %i.bw, 1
  store i64 %i.bx, ptr %i.l, align 8, !tbaa !51
  %.not266.i = icmp eq i32 %i.bv, 0
  br i1 %.not266.i, label %bb.j, label %IDASensRes1DQ.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.by = fneg double %i.bg
  tail call void @N_VLinearSum(double noundef %i.bg, ptr noundef %i.r, double noundef %i.by, ptr noundef %11, ptr noundef %i.r) #14
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.bz = insertelement <2 x double> poison, double %12, i64 0
  %14 = shufflevector <2 x double> %i.bz, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.ca = fdiv <2 x double> splat (double 5.000000e-01), %14 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ar, ptr noundef %i.n, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #14
  tail call void @N_VLinearSum(double noundef %i.ar, ptr noundef %i.p, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #14
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.cd = tail call i32 %i.cb(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.r, ptr noundef %i.cc) #14, !inline_history !212 ; 2 uses
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !51
  %i.cf = add nsw i64 %i.ce, 1
  store i64 %i.cf, ptr %i.l, align 8, !tbaa !51
  %.not261.i = icmp eq i32 %i.cd, 0
  br i1 %.not261.i, label %bb.l, label %IDASensRes1DQ.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cg = fneg double %i.ar                       ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.cg, ptr noundef %i.n, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #14
  tail call void @N_VLinearSum(double noundef %i.cg, ptr noundef %i.p, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #14
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.cj = tail call i32 %i.ch(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %i.ci) #14, !inline_history !212 ; 2 uses
  %i.ck = load i64, ptr %i.l, align 8, !tbaa !51
  %i.cl = add nsw i64 %i.ck, 1
  store i64 %i.cl, ptr %i.l, align 8, !tbaa !51
  %.not262.i = icmp eq i32 %i.cj, 0
  br i1 %.not262.i, label %bb.m, label %IDASensRes1DQ.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cm = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.cn = fneg double %i.cm
  tail call void @N_VLinearSum(double noundef %i.cm, ptr noundef %i.r, double noundef %i.cn, ptr noundef %11, ptr noundef %i.r) #14
  %i.co = fadd double %12, %i.ai
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ag
  store double %i.co, ptr %i.cq, align 8, !tbaa !24
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.ct = tail call i32 %i.cr(double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %9, ptr noundef %i.cs) #14, !inline_history !212 ; 2 uses
  %i.cu = load i64, ptr %i.l, align 8, !tbaa !51
  %i.cv = add nsw i64 %i.cu, 1
  store i64 %i.cv, ptr %i.l, align 8, !tbaa !51
  %.not263.i = icmp eq i32 %i.ct, 0
  br i1 %.not263.i, label %bb.n, label %IDASensRes1DQ.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cw = fsub double %i.ai, %12
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ag
  store double %i.cw, ptr %i.cy, align 8, !tbaa !24
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.db = tail call i32 %i.cz(double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %10, ptr noundef %i.da) #14, !inline_history !212 ; 2 uses
  %i.dc = load i64, ptr %i.l, align 8, !tbaa !51
  %i.dd = add nsw i64 %i.dc, 1
  store i64 %i.dd, ptr %i.l, align 8, !tbaa !51
  %.not264.i = icmp eq i32 %i.db, 0
  br i1 %.not264.i, label %bb.o, label %IDASensRes1DQ.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.de = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.df = fneg double %i.de
  tail call void @N_VLinearSum(double noundef %i.de, ptr noundef %9, double noundef %i.df, ptr noundef %10, ptr noundef %11) #14
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.r, double noundef 1.000000e+00, ptr noundef %11, ptr noundef %i.r) #14
  br label %bb.u

bb.p:                                             ; preds = %bb.g, %bb.e
  %i.dg = fcmp olt double %i.ar, %12
  %i.dh = select i1 %i.dg, double %i.ar, double %12 ; 4 uses
  tail call void @N_VLinearSum(double noundef %i.dh, ptr noundef %i.n, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #14
  tail call void @N_VLinearSum(double noundef %i.dh, ptr noundef %i.p, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #14
  %i.di = fadd double %i.ai, %i.dh
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.ag
  store double %i.di, ptr %i.dk, align 8, !tbaa !24
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.dm = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.dn = tail call i32 %i.dl(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.r, ptr noundef %i.dm) #14, !inline_history !212 ; 2 uses
  %i.do = load i64, ptr %i.l, align 8, !tbaa !51
  %i.dp = add nsw i64 %i.do, 1
  store i64 %i.dp, ptr %i.l, align 8, !tbaa !51
  %.not260.i = icmp eq i32 %i.dn, 0
  br i1 %.not260.i, label %bb.q, label %IDASensRes1DQ.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.dq = fdiv double 1.000000e+00, %i.dh         ; 2 uses
  %i.dr = fneg double %i.dq
  tail call void @N_VLinearSum(double noundef %i.dq, ptr noundef %i.r, double noundef %i.dr, ptr noundef %4, ptr noundef %i.r) #14
  br label %bb.u

bb.r:                                             ; preds = %bb.h
  tail call void @N_VLinearSum(double noundef %i.ar, ptr noundef %i.n, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #14
  tail call void @N_VLinearSum(double noundef %i.ar, ptr noundef %i.p, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #14
  %i.ds = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.dt = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.du = tail call i32 %i.ds(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.r, ptr noundef %i.dt) #14, !inline_history !212 ; 2 uses
  %i.dv = load i64, ptr %i.l, align 8, !tbaa !51
  %i.dw = add nsw i64 %i.dv, 1
  store i64 %i.dw, ptr %i.l, align 8, !tbaa !51
  %.not.i = icmp eq i32 %i.du, 0
  br i1 %.not.i, label %bb.s, label %IDASensRes1DQ.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.dx = fneg double %13
  tail call void @N_VLinearSum(double noundef %13, ptr noundef %i.r, double noundef %i.dx, ptr noundef %4, ptr noundef %i.r) #14
  %i.dy = fadd double %12, %i.ai
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ag
  store double %i.dy, ptr %i.ea, align 8, !tbaa !24
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ec = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.ed = tail call i32 %i.eb(double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %11, ptr noundef %i.ec) #14, !inline_history !212 ; 2 uses
  %i.ee = load i64, ptr %i.l, align 8, !tbaa !51
  %i.ef = add nsw i64 %i.ee, 1
  store i64 %i.ef, ptr %i.l, align 8, !tbaa !51
  %.not259.i = icmp eq i32 %i.ed, 0
  br i1 %.not259.i, label %bb.t, label %IDASensRes1DQ.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.eg = fneg double %i.aw
  tail call void @N_VLinearSum(double noundef %i.aw, ptr noundef %11, double noundef %i.eg, ptr noundef %4, ptr noundef %11) #14
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.r, double noundef 1.000000e+00, ptr noundef %11, ptr noundef %i.r) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.o, %bb.j
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ag
  store double %i.ai, ptr %i.ei, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %IDASensRes1DQ.exit.thread, label %bb.b

IDASensRes1DQ.exit.thread:                        ; preds = %bb.u, %bb.r, %select.unfold.i, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.p, %bb.s, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ %i.du, %bb.r ], [ %i.ed, %bb.s ], [ %i.dn, %bb.p ], [ %i.db, %bb.n ], [ %i.ct, %bb.m ], [ %i.cj, %bb.l ], [ %i.cd, %bb.k ], [ %i.bv, %bb.i ], [ %i.bm, %select.unfold.i ], [ 0, %bb.u ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal i32 @IDAQuadSensRhsInternalDQ(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %IDAQuadSensRhs1InternalDQ.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 632
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 1520 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43   ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43   ; 6 uses
  %i.r = load double, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.s = load double, ptr %i.c, align 8, !tbaa !21 ; 2 uses
  %i.t = fcmp ogt double %i.r, %i.s
  %..i = select i1 %i.t, double %i.r, double %i.s ; 2 uses
  %i.u = fcmp ugt double %..i, 0.000000e+00
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call double @sqrt(double noundef %..i) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi double [ %i.v, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.x = fdiv double 1.000000e+00, %i.w           ; 2 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !24 ; 3 uses
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.af = sext i32 %i.ad to i64                   ; 5 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !24 ; 4 uses
  %i.ai = fmul double %i.w, %i.aa                 ; 2 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.ak = tail call double @N_VWrmsNorm(ptr noundef %i.m, ptr noundef %i.aj) #14
  %i.al = fmul double %i.aa, %i.ak                ; 2 uses
  %i.am = fcmp ogt double %i.al, %i.x
  %i.an = select i1 %i.am, double %i.al, double %i.x
  %i.ao = fdiv double %i.an, %i.aa
  %i.ap = fdiv double 1.000000e+00, %i.ao         ; 2 uses
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !34
  %i.ar = icmp eq i32 %i.aq, 1
  %i.as = fcmp olt double %i.ap, %i.ai
  %i.at = select i1 %i.as, double %i.ap, double %i.ai ; 10 uses
  br i1 %i.ar, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.au = fdiv double 5.000000e-01, %i.at         ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.at, ptr noundef %i.m, ptr noundef %9) #14
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef %i.at, ptr noundef %i.o, ptr noundef %10) #14
  %i.av = fadd double %i.ah, %i.at
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.af
  store double %i.av, ptr %i.ax, align 8, !tbaa !24
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.ba = tail call i32 %i.ay(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.q, ptr noundef %i.az) #14, !inline_history !214 ; 2 uses
  %.not124.i = icmp eq i32 %i.ba, 0
  br i1 %.not124.i, label %bb.f, label %IDAQuadSensRhs1InternalDQ.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bb = fneg double %i.at                       ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.bb, ptr noundef %i.m, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #14
  tail call void @N_VLinearSum(double noundef %i.bb, ptr noundef %i.o, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #14
  %i.bc = fsub double %i.ah, %i.at
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.af
  store double %i.bc, ptr %i.be, align 8, !tbaa !24
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.bh = tail call i32 %i.bf(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %i.bg) #14, !inline_history !214 ; 2 uses
  %.not125.i = icmp eq i32 %i.bh, 0
  br i1 %.not125.i, label %bb.g, label %IDAQuadSensRhs1InternalDQ.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bi = fneg double %i.au
  tail call void @N_VLinearSum(double noundef %i.au, ptr noundef %i.q, double noundef %i.bi, ptr noundef %11, ptr noundef %i.q) #14
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.at, ptr noundef %i.m, ptr noundef %9) #14
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef %i.at, ptr noundef %i.o, ptr noundef %10) #14
  %i.bj = fadd double %i.ah, %i.at
  %i.bk = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.af
  store double %i.bj, ptr %i.bl, align 8, !tbaa !24
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.bo = tail call i32 %i.bm(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.q, ptr noundef %i.bn) #14, !inline_history !214 ; 2 uses
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %bb.i, label %IDAQuadSensRhs1InternalDQ.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bp = fdiv double 1.000000e+00, %i.at         ; 2 uses
  %i.bq = fneg double %i.bp
  tail call void @N_VLinearSum(double noundef %i.bp, ptr noundef %i.q, double noundef %i.bq, ptr noundef %6, ptr noundef %i.q) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.0.i = phi i64 [ 1, %bb.i ], [ 2, %bb.g ]
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.af
  store double %i.ah, ptr %i.bs, align 8, !tbaa !24
  %i.bt = load i64, ptr %i.k, align 8, !tbaa !53
  %i.bu = add nsw i64 %i.bt, %.0.i
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %IDAQuadSensRhs1InternalDQ.exit.thread, label %bb.b

IDAQuadSensRhs1InternalDQ.exit.thread:            ; preds = %bb.j, %bb.f, %bb.e, %bb.h, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ %i.bh, %bb.f ], [ %i.bo, %bb.h ], [ %i.ba, %bb.e ], [ 0, %bb.j ]
  ret i32 %.021
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @IDAInit(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 589, ptr noundef nonnull @__func__.IDAInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 600, ptr noundef nonnull @__func__.IDAInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %bb.aw

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %4, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 608, ptr noundef nonnull @__func__.IDAInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5)
  br label %bb.aw

bb.g:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@IDASolve:bb.a
  store ptr %i.aag, ptr %i.aai, align 8, !tbaa !43
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv272.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !43
  %i.aam = getelementptr [8 x i8], ptr %.pre483.i, i64 %indvars.iv274.i.i
  %i.aan = getelementptr i8, ptr %i.aam, i64 16
  store ptr %i.aal, ptr %i.aan, align 8, !tbaa !43
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv272.i.i
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !43
  %i.aar = getelementptr [8 x i8], ptr %.pre483.i, i64 %indvars.iv274.i.i
  %i.aas = getelementptr i8, ptr %i.aar, i64 24
  store ptr %i.aaq, ptr %i.aas, align 8, !tbaa !43
  %indvars.iv.next275.i.i.3 = add nsw i64 %indvars.iv274.i.i, 4 ; 2 uses
  %indvars.iv.next273.i.i.3 = add nuw nsw i64 %indvars.iv272.i.i, 4 ; 2 uses
  %exitcond280.not.i.i.3 = icmp eq i64 %indvars.iv.next273.i.i.3, %wide.trip.count279.i.i
  br i1 %exitcond280.not.i.i.3, label %._crit_edge224.us.i.i, label %scalar.ph951, !llvm.loop !256

._crit_edge224.us.i.i:                            ; preds = %scalar.ph951.prol.loopexit, %scalar.ph951, %middle.block960
  %indvars.iv.next275.i.i.lcssa = phi i64 [ %i.zp, %middle.block960 ], [ %indvars.iv.next275.i.i.lcssa1012.unr, %scalar.ph951.prol.loopexit ], [ %indvars.iv.next275.i.i.3, %scalar.ph951 ] ; 2 uses
  %indvars.iv.next282.i.i = add nsw i64 %indvars.iv281.i.i, 1 ; 2 uses
  %lftr.wideiv284.i.i = trunc i64 %indvars.iv.next282.i.i to i32
  %exitcond285.not.i.i = icmp eq i32 %i.zi, %lftr.wideiv284.i.i
  br i1 %exitcond285.not.i.i, label %._crit_edge229.loopexit.i.i, label %.preheader.us.i.i

._crit_edge229.loopexit.i.i:                      ; preds = %._crit_edge224.us.i.i
  %i.aat = trunc nsw i64 %indvars.iv.next275.i.i.lcssa to i32
  br label %._crit_edge229.i.i

._crit_edge229.i.i:                               ; preds = %._crit_edge229.loopexit.i.i, %.preheader.lr.ph.i.i, %.._crit_edge229.i_crit_edge.i
  %i.aau = phi ptr [ %.pre482.i, %.._crit_edge229.i_crit_edge.i ], [ %.pre483.i, %._crit_edge229.loopexit.i.i ], [ %.pre483.i, %.preheader.lr.ph.i.i ] ; 2 uses
  %.4.lcssa.i.i = phi i32 [ 0, %.._crit_edge229.i_crit_edge.i ], [ %i.aat, %._crit_edge229.loopexit.i.i ], [ 0, %.preheader.lr.ph.i.i ]
  %i.aav = load ptr, ptr %i.ic, align 8, !tbaa !71
  %i.aaw = call i32 @N_VScaleVectorArray(i32 noundef %.4.lcssa.i.i, ptr noundef %i.aav, ptr noundef %i.aau, ptr noundef %i.aau) #14 ; 0 uses
  br label %IDASetCoeffs.exit.i

IDASetCoeffs.exit.i:                              ; preds = %._crit_edge229.i.i, %.thread.i.i, %bb.dt, %._crit_edge198.i.i
  %i.aax = load double, ptr %i.ig, align 8, !tbaa !74
  %i.aay = load double, ptr %i.ik, align 8, !tbaa !169 ; 2 uses
  %i.aaz = fadd double %i.aax, %i.aay             ; 2 uses
  store double %i.aaz, ptr %i.ig, align 8, !tbaa !74
  %i.aba = load i32, ptr %i.iw, align 8, !tbaa !175
  %.not126.i = icmp eq i32 %i.aba, 0
  br i1 %.not126.i, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %IDASetCoeffs.exit.i
  %i.abb = load double, ptr %i.ix, align 8, !tbaa !176 ; 2 uses
  %i.abc = fsub double %i.aaz, %i.abb
  %i.abd = fmul double %i.aay, %i.abc
  %i.abe = fcmp ogt double %i.abd, 0.000000e+00
  br i1 %i.abe, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store double %i.abb, ptr %i.ig, align 8, !tbaa !74
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %IDASetCoeffs.exit.i
  %i.abf = load i32, ptr %i.ih, align 8, !tbaa !177 ; 2 uses
  %.not14.i.i = icmp slt i32 %i.abf, 0
  %.pre.i141.i = load ptr, ptr %i.ic, align 8, !tbaa !71 ; 3 uses
  %.pre17.i.i = add i32 %i.abf, 1                 ; 3 uses
  br i1 %.not14.i.i, label %IDAPredict.exit.i, label %.lr.ph.i142.i

.lr.ph.i142.i:                                    ; preds = %bb.dy
  %wide.trip.count.i143.i = zext i32 %.pre17.i.i to i64 ; 3 uses
  %min.iters.check939 = icmp ult i32 %.pre17.i.i, 4
  br i1 %min.iters.check939, label %scalar.ph938.preheader, label %vector.ph940

vector.ph940:                                     ; preds = %.lr.ph.i142.i
  %n.vec941 = and i64 %wide.trip.count.i143.i, 4294967292 ; 3 uses
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next944, %vector.body942 ] ; 2 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i141.i, i64 %index943 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.abg, align 8, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.abh, align 8, !tbaa !24
  %index.next944 = add nuw i64 %index943, 4       ; 2 uses
  %i.abi = icmp eq i64 %index.next944, %n.vec941
  br i1 %i.abi, label %middle.block945, label %vector.body942, !llvm.loop !257

middle.block945:                                  ; preds = %vector.body942
  %cmp.n946 = icmp eq i64 %n.vec941, %wide.trip.count.i143.i
  br i1 %cmp.n946, label %IDAPredict.exit.i, label %scalar.ph938.preheader

scalar.ph938.preheader:                           ; preds = %.lr.ph.i142.i, %middle.block945
  %indvars.iv.i144.i.ph = phi i64 [ 0, %.lr.ph.i142.i ], [ %n.vec941, %middle.block945 ]
  br label %scalar.ph938

scalar.ph938:                                     ; preds = %scalar.ph938.preheader, %scalar.ph938
  %indvars.iv.i144.i = phi i64 [ %indvars.iv.next.i145.i, %scalar.ph938 ], [ %indvars.iv.i144.i.ph, %scalar.ph938.preheader ] ; 2 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i141.i, i64 %indvars.iv.i144.i
  store double 1.000000e+00, ptr %i.abj, align 8, !tbaa !24
  %indvars.iv.next.i145.i = add nuw nsw i64 %indvars.iv.i144.i, 1 ; 2 uses
  %exitcond.not.i146.i = icmp eq i64 %indvars.iv.next.i145.i, %wide.trip.count.i143.i
  br i1 %exitcond.not.i146.i, label %IDAPredict.exit.i, label %scalar.ph938, !llvm.loop !258

IDAPredict.exit.i:                                ; preds = %scalar.ph938, %middle.block945, %bb.dy
  %i.abk = load ptr, ptr %i.iy, align 8, !tbaa !63
  %i.abl = call i32 @N_VLinearCombination(i32 noundef %.pre17.i.i, ptr noundef %.pre.i141.i, ptr noundef nonnull %i.hm, ptr noundef %i.abk) #14 ; 0 uses
  %i.abm = load i32, ptr %i.ih, align 8, !tbaa !177
  %i.abn = load ptr, ptr %i.jb, align 8, !tbaa !64
  %i.abo = call i32 @N_VLinearCombination(i32 noundef %i.abm, ptr noundef nonnull %i.iz, ptr noundef nonnull %i.ja, ptr noundef %i.abn) #14 ; 0 uses
  br i1 %i.rn, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %IDAPredict.exit.i
  %i.abp = load ptr, ptr %i.jc, align 8, !tbaa !122
  %i.abq = load ptr, ptr %i.jd, align 8, !tbaa !123
  %i.abr = load i32, ptr %i.ih, align 8, !tbaa !177 ; 2 uses
  %.not16.i.i = icmp slt i32 %i.abr, 0
  %.pre.i149.i = load ptr, ptr %i.ic, align 8, !tbaa !71 ; 3 uses
  %.pre19.i.i = add i32 %i.abr, 1                 ; 3 uses
  br i1 %.not16.i.i, label %IDASensPredict.exit.i, label %.lr.ph.i150.i

.lr.ph.i150.i:                                    ; preds = %bb.dz
  %wide.trip.count.i151.i = zext i32 %.pre19.i.i to i64 ; 3 uses
  %min.iters.check929 = icmp ult i32 %.pre19.i.i, 4
  br i1 %min.iters.check929, label %scalar.ph928.preheader, label %vector.ph930

vector.ph930:                                     ; preds = %.lr.ph.i150.i
  %n.vec931 = and i64 %wide.trip.count.i151.i, 4294967292 ; 3 uses
  br label %vector.body932

vector.body932:                                   ; preds = %vector.body932, %vector.ph930
  %index933 = phi i64 [ 0, %vector.ph930 ], [ %index.next934, %vector.body932 ] ; 2 uses
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i149.i, i64 %index933 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.abs, align 8, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.abt, align 8, !tbaa !24
  %index.next934 = add nuw i64 %index933, 4       ; 2 uses
  %i.abu = icmp eq i64 %index.next934, %n.vec931
  br i1 %i.abu, label %middle.block935, label %vector.body932, !llvm.loop !259

middle.block935:                                  ; preds = %vector.body932
  %cmp.n936 = icmp eq i64 %n.vec931, %wide.trip.count.i151.i
  br i1 %cmp.n936, label %IDASensPredict.exit.i, label %scalar.ph928.preheader

scalar.ph928.preheader:                           ; preds = %.lr.ph.i150.i, %middle.block935
  %indvars.iv.i152.i.ph = phi i64 [ 0, %.lr.ph.i150.i ], [ %n.vec931, %middle.block935 ]
  br label %scalar.ph928

scalar.ph928:                                     ; preds = %scalar.ph928.preheader, %scalar.ph928
  %indvars.iv.i152.i = phi i64 [ %indvars.iv.next.i153.i, %scalar.ph928 ], [ %indvars.iv.i152.i.ph, %scalar.ph928.preheader ] ; 2 uses
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i149.i, i64 %indvars.iv.i152.i
  store double 1.000000e+00, ptr %i.abv, align 8, !tbaa !24
  %indvars.iv.next.i153.i = add nuw nsw i64 %indvars.iv.i152.i, 1 ; 2 uses
  %exitcond.not.i154.i = icmp eq i64 %indvars.iv.next.i153.i, %wide.trip.count.i151.i
  br i1 %exitcond.not.i154.i, label %IDASensPredict.exit.i, label %scalar.ph928, !llvm.loop !260

IDASensPredict.exit.i:                            ; preds = %scalar.ph928, %middle.block935, %bb.dz
  %i.abw = load i32, ptr %i.ib, align 8, !tbaa !116
  %i.abx = call i32 @N_VLinearCombinationVectorArray(i32 noundef %i.abw, i32 noundef %.pre19.i.i, ptr noundef %.pre.i149.i, ptr noundef nonnull %i.ht, ptr noundef %i.abp) #14 ; 0 uses
  %i.aby = load i32, ptr %i.ib, align 8, !tbaa !116
  %i.abz = load i32, ptr %i.ih, align 8, !tbaa !177
  %i.aca = call i32 @N_VLinearCombinationVectorArray(i32 noundef %i.aby, i32 noundef %i.abz, ptr noundef nonnull %i.iz, ptr noundef nonnull %i.je, ptr noundef %i.abq) #14 ; 0 uses
  br label %bb.ea

bb.ea:                                            ; preds = %IDASensPredict.exit.i, %IDAPredict.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 0, ptr %i.d, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i64 0, ptr %i.e, align 8, !tbaa !58
  %i.acb = load i32, ptr %i.r, align 4, !tbaa !134
  %.not.i156.i = icmp eq i32 %i.acb, 0
  br i1 %.not.i156.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.acc = load i32, ptr %i.if, align 4, !tbaa !36
  %i.acd = icmp eq i32 %i.acc, 1
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.ace = phi i1 [ false, %bb.ea ], [ %i.acd, %bb.eb ] ; 3 uses
  %i.acf = load i64, ptr %i.ah, align 8, !tbaa !296
  %i.acg = icmp eq i64 %i.acf, 0
  br i1 %i.acg, label %bb.ed, label %._crit_edge.i157.i

._crit_edge.i157.i:                               ; preds = %bb.ec
  %.pre.i159.i = load ptr, ptr %.phi.trans.insert.i158.i, align 8, !tbaa !304
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.ach = load double, ptr %i.im, align 8, !tbaa !181
  store double %i.ach, ptr %i.jf, align 8, !tbaa !305
  store double 2.000000e+01, ptr %i.jg, align 8, !tbaa !306
  store double 2.000000e+01, ptr %i.jh, align 8, !tbaa !307
  %i.aci = load ptr, ptr %.phi.trans.insert.i158.i, align 8, !tbaa !304 ; 2 uses
  %.not83.i.i = icmp ne ptr %i.aci, null
  %spec.select.i.i = zext i1 %.not83.i.i to i32
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge.i157.i
  %i.acj = phi ptr [ %.pre.i159.i, %._crit_edge.i157.i ], [ %i.aci, %bb.ed ]
  %.0.i.i = phi i32 [ 0, %._crit_edge.i157.i ], [ %spec.select.i.i, %bb.ed ] ; 2 uses
  %.not84.i.i = icmp eq ptr %i.acj, null
  br i1 %.not84.i.i, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ack = load double, ptr %i.im, align 8, !tbaa !181 ; 2 uses
  %i.acl = load double, ptr %i.jj, align 8, !tbaa !27 ; 2 uses
  %6 = fsub double 1.000000e+00, %i.acl
  %7 = load double, ptr %i.jf, align 8, !tbaa !305
  %i.acm = fadd double %i.acl, 1.000000e+00
  %i.acn = fdiv double %6, %i.acm
  %i.aco = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ack, i64 0
  %i.acp = insertelement <2 x double> poison, double %7, i64 0
  %i.acq = insertelement <2 x double> %i.acp, double %i.acn, i64 1 ; 2 uses
  %i.acr = fdiv <2 x double> %i.aco, %i.acq       ; 3 uses
  %i.acs = extractelement <2 x double> %i.acr, i64 0
  store double %i.acs, ptr %i.ji, align 8, !tbaa !308
  %i.act = shufflevector <2 x double> %i.acq, <2 x double> %i.acr, <2 x i32> <i32 1, i32 2>
  %i.acu = fcmp olt <2 x double> %i.acr, %i.act
  %i.acv = bitcast <2 x i1> %i.acu to i2
  %i.acw = icmp eq i2 %i.acv, 0
  %i.acx = load i32, ptr %i.jk, align 8, !tbaa !76
  %.not85.i.i = icmp eq i32 %i.acx, 0
  %i.acy = select i1 %.not85.i.i, i1 %i.acw, i1 false
  %.2.i.i = select i1 %i.acy, i32 %.0.i.i, i32 1  ; 2 uses
  %i.acz = load double, ptr %i.ip, align 8, !tbaa !303
  %i.ada = fcmp une double %i.ack, %i.acz
  br i1 %i.ada, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store double 1.000000e+02, ptr %i.jg, align 8, !tbaa !306
  store double 1.000000e+02, ptr %i.jh, align 8, !tbaa !307
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee
  %.3.i.i = phi i32 [ %.2.i.i, %bb.eg ], [ %.2.i.i, %bb.ef ], [ %.0.i.i, %bb.ee ] ; 2 uses
  br i1 %i.ace, label %bb.ei, label %.thread.i160.i

bb.ei:                                            ; preds = %bb.eh
  %i.adb = load ptr, ptr %i.jn, align 8, !tbaa !184
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.adb) #14
  %i.adc = load ptr, ptr %i.jl, align 8, !tbaa !185 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !311
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !313
  %.not86.i.i = icmp eq ptr %i.adg, null
  br i1 %.not86.i.i, label %.thread93.i.i, label %bb.ej

.thread.i160.i:                                   ; preds = %bb.eh
  %i.adh = load ptr, ptr %i.jm, align 8, !tbaa !61
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.adh) #14
  %i.adi = load ptr, ptr %i.jl, align 8, !tbaa !185 ; 3 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !311
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !313
  %.not8690.i.i = icmp eq ptr %i.adm, null
  br i1 %.not8690.i.i, label %.thread92.i.i, label %.thread91.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.adn = load ptr, ptr %i.jn, align 8, !tbaa !184
  %i.ado = call i32 @SUNNonlinSolSetup(ptr noundef nonnull %i.adc, ptr noundef %i.adn, ptr noundef nonnull %0) #14
  br label %bb.ek

.thread91.i.i:                                    ; preds = %.thread.i160.i
  %i.adp = load ptr, ptr %i.jm, align 8, !tbaa !61
  %i.adq = call i32 @SUNNonlinSolSetup(ptr noundef nonnull %i.adi, ptr noundef %i.adp, ptr noundef nonnull %0) #14
  br label %bb.ek

bb.ek:                                            ; preds = %.thread91.i.i, %bb.ej
  %.079.i.i = phi i32 [ %i.ado, %bb.ej ], [ %i.adq, %.thread91.i.i ] ; 2 uses
  %i.adr = icmp slt i32 %.079.i.i, 0
  br i1 %i.adr, label %IDANls.exit.thread.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.not87.i.i = icmp eq i32 %.079.i.i, 0
  br i1 %.not87.i.i, label %bb.em, label %IDANls.exit.thread.i

bb.em:                                            ; preds = %bb.el
  br i1 %i.ace, label %.thread93.i.i, label %..thread92_crit_edge.i.i

..thread92_crit_edge.i.i:                         ; preds = %bb.em
  %.pre96.i.i = load ptr, ptr %i.jl, align 8, !tbaa !185
  br label %.thread92.i.i

.thread93.i.i:                                    ; preds = %bb.em, %bb.ei
  %i.ads = load ptr, ptr %i.jq, align 8, !tbaa !142
  %i.adt = load ptr, ptr %i.jr, align 8, !tbaa !186
  %i.adu = load ptr, ptr %i.jn, align 8, !tbaa !184
  %i.adv = load ptr, ptr %i.js, align 8, !tbaa !187
  %i.adw = load double, ptr %i.jo, align 8, !tbaa !300
  %i.adx = call i32 @SUNNonlinSolSolve(ptr noundef %i.ads, ptr noundef %i.adt, ptr noundef %i.adu, ptr noundef %i.adv, double noundef %i.adw, i32 noundef %.3.i.i, ptr noundef nonnull %0) #14
  br label %bb.en

.thread92.i.i:                                    ; preds = %..thread92_crit_edge.i.i, %.thread.i160.i
  %i.ady = phi ptr [ %.pre96.i.i, %..thread92_crit_edge.i.i ], [ %i.adi, %.thread.i160.i ]
  %i.adz = load ptr, ptr %i.iy, align 8, !tbaa !63
  %i.aea = load ptr, ptr %i.jm, align 8, !tbaa !61
  %i.aeb = load ptr, ptr %i.hn, align 8, !tbaa !48
  %i.aec = load double, ptr %i.jo, align 8, !tbaa !300
  %i.aed = call i32 @SUNNonlinSolSolve(ptr noundef %i.ady, ptr noundef %i.adz, ptr noundef %i.aea, ptr noundef %i.aeb, double noundef %i.aec, i32 noundef %.3.i.i, ptr noundef nonnull %0) #14
  br label %bb.en

bb.en:                                            ; preds = %.thread92.i.i, %.thread93.i.i
  %.sink.in.i.i = phi ptr [ %i.jl, %.thread92.i.i ], [ %i.jq, %.thread93.i.i ] ; 2 uses
  %.180.i.i = phi i32 [ %i.aed, %.thread92.i.i ], [ %i.adx, %.thread93.i.i ] ; 2 uses
  %.sink.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !314
  %i.aee = call i32 @SUNNonlinSolGetNumIters(ptr noundef %.sink.i, ptr noundef nonnull %i.d) #14 ; 0 uses
  %i.aef = load i64, ptr %i.d, align 8, !tbaa !58
  %i.aeg = load i64, ptr %i.jp, align 8, !tbaa !79
  %i.aeh = add nsw i64 %i.aeg, %i.aef
  store i64 %i.aeh, ptr %i.jp, align 8, !tbaa !79
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !314
  %i.aei = call i32 @SUNNonlinSolGetNumConvFails(ptr noundef %.sink.i.i, ptr noundef nonnull %i.e) #14 ; 0 uses
  %i.aej = load i64, ptr %i.e, align 8, !tbaa !58
  %i.aek = load i64, ptr %i.jt, align 8, !tbaa !80
  %i.ael = add nsw i64 %i.aek, %i.aej
  store i64 %i.ael, ptr %i.jt, align 8, !tbaa !80
  %.not88.i.i = icmp eq i32 %.180.i.i, 0
  br i1 %.not88.i.i, label %bb.eo, label %IDANls.exit.thread.i

bb.eo:                                            ; preds = %bb.en
  %i.aem = load ptr, ptr %i.iy, align 8, !tbaa !63
  %i.aen = load ptr, ptr %i.jm, align 8, !tbaa !61
  %i.aeo = load ptr, ptr %i.m, align 8, !tbaa !167
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aem, double noundef 1.000000e+00, ptr noundef %i.aen, ptr noundef %i.aeo) #14
  %i.aep = load ptr, ptr %i.jb, align 8, !tbaa !64
  %i.aeq = load double, ptr %i.im, align 8, !tbaa !181
  %i.aer = load ptr, ptr %i.jm, align 8, !tbaa !61
  %i.aes = load ptr, ptr %i.o, align 8, !tbaa !168
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aep, double noundef %i.aeq, ptr noundef %i.aer, ptr noundef %i.aes) #14
  br i1 %i.ace, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.aet = load i32, ptr %i.ib, align 8, !tbaa !116
  %i.aeu = load ptr, ptr %i.jc, align 8, !tbaa !122
  %i.aev = load ptr, ptr %i.ju, align 8, !tbaa !119
  %i.aew = load ptr, ptr %i.jv, align 8, !tbaa !120
  %i.aex = call i32 @N_VLinearSumVectorArray(i32 noundef %i.aet, double noundef 1.000000e+00, ptr noundef %i.aeu, double noundef 1.000000e+00, ptr noundef %i.aev, ptr noundef %i.aew) #14 ; 0 uses
  %i.aey = load i32, ptr %i.ib, align 8, !tbaa !116
  %i.aez = load ptr, ptr %i.jd, align 8, !tbaa !123
  %i.afa = load double, ptr %i.im, align 8, !tbaa !181
  %i.afb = load ptr, ptr %i.ju, align 8, !tbaa !119
  %i.afc = load ptr, ptr %i.jw, align 8, !tbaa !121
  %i.afd = call i32 @N_VLinearSumVectorArray(i32 noundef %i.aey, double noundef 1.000000e+00, ptr noundef %i.aez, double noundef %i.afa, ptr noundef %i.afb, ptr noundef %i.afc) #14 ; 0 uses
  br label %bb.eq

IDANls.exit.thread.i:                             ; preds = %bb.en, %bb.el, %bb.ek
  %.081.i.ph.i = phi i32 [ 4, %bb.el ], [ -16, %bb.ek ], [ %.180.i.i, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %select.unfold.i

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.afe = load ptr, ptr %i.jx, align 8, !tbaa !93 ; 2 uses
  %.not127.i = icmp eq ptr %i.afe, null
  br i1 %.not127.i, label %IDACheckConstraints.exit.thread301.loopexit.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aff = load ptr, ptr %i.jy, align 8, !tbaa !67 ; 6 uses
  %i.afg = load ptr, ptr %i.jz, align 8, !tbaa !66 ; 19 uses
  %i.afh = load ptr, ptr %i.m, align 8, !tbaa !167
  %i.afi = call i32 @N_VConstrMask(ptr noundef nonnull %i.afe, ptr noundef %i.afh, ptr noundef %i.aff) #14
  %.not.i161.i = icmp eq i32 %i.afi, 0
  br i1 %.not.i161.i, label %bb.es, label %IDACheckConstraints.exit.thread301.loopexit.i

bb.es:                                            ; preds = %bb.er
  %i.afj = load ptr, ptr %i.jx, align 8, !tbaa !93
  call void @N_VCompare(double noundef 1.500000e+00, ptr noundef %i.afj, ptr noundef %i.afg) #14
  %i.afk = load ptr, ptr %i.jx, align 8, !tbaa !93
  call void @N_VProd(ptr noundef %i.afg, ptr noundef %i.afk, ptr noundef %i.afg) #14
  %i.afl = load ptr, ptr %i.hn, align 8, !tbaa !48
  call void @N_VDiv(ptr noundef %i.afg, ptr noundef %i.afl, ptr noundef %i.afg) #14
  %i.afm = load ptr, ptr %i.ka, align 8, !tbaa !68
  call void @N_VScale(double noundef -1.000000e-01, ptr noundef %i.afg, ptr noundef %i.afm) #14
  %i.afn = load ptr, ptr %i.m, align 8, !tbaa !167
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.afn, double noundef -1.000000e-01, ptr noundef %i.afg, ptr noundef %i.afg) #14
  call void @N_VProd(ptr noundef %i.afg, ptr noundef %i.aff, ptr noundef %i.afg) #14
  %i.afo = load ptr, ptr %i.hn, align 8, !tbaa !48
  %i.afp = call double @N_VWrmsNorm(ptr noundef %i.afg, ptr noundef %i.afo) #14
  %i.afq = load double, ptr %i.jo, align 8, !tbaa !300
  %i.afr = fcmp ugt double %i.afp, %i.afq
  br i1 %i.afr, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.afs = fadd double %i.uw, %i.vc
  %i.aft = extractelement <2 x double> %i.uu, i64 0
  %i.afu = fsub double %i.afs, %i.aft
  %i.afv = call double @llvm.fabs.f64(double %i.afu) ; 2 uses
  %i.afw = fcmp ogt double %i.afv, %i.vc
  %.186.i.le.i = select i1 %i.afw, double %i.afv, double %i.vc
  %i.afx = load i64, ptr %i.kf, align 8, !tbaa !315
  %i.afy = add nsw i64 %i.afx, 1
  store i64 %i.afy, ptr %i.kf, align 8, !tbaa !315
  %i.afz = load ptr, ptr %i.jm, align 8, !tbaa !61
  call void @N_VProd(ptr noundef %i.aff, ptr noundef %i.afz, ptr noundef %i.afg) #14
  %i.aga = load ptr, ptr %i.jm, align 8, !tbaa !61 ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aga, double noundef -1.000000e+00, ptr noundef %i.afg, ptr noundef %i.aga) #14
  %i.agb = load ptr, ptr %i.iy, align 8, !tbaa !63
  call void @N_VProd(ptr noundef %i.aff, ptr noundef %i.agb, ptr noundef %i.afg) #14
  %i.agc = load ptr, ptr %i.jm, align 8, !tbaa !61 ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.agc, double noundef -1.000000e+00, ptr noundef %i.afg, ptr noundef %i.agc) #14
  %i.agd = load ptr, ptr %i.ka, align 8, !tbaa !68 ; 2 uses
  call void @N_VProd(ptr noundef %i.aff, ptr noundef %i.agd, ptr noundef %i.agd) #14
  %i.age = load ptr, ptr %i.jm, align 8, !tbaa !61 ; 2 uses
  %i.agf = load ptr, ptr %i.ka, align 8, !tbaa !68
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.age, double noundef -1.000000e+00, ptr noundef %i.agf, ptr noundef %i.age) #14
  br label %IDACheckConstraints.exit.thread301.i

bb.eu:                                            ; preds = %bb.es
end_hunk_1
