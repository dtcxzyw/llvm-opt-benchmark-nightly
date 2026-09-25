Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/idas?download=true
inline.NumInlined: 65
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@IDACreate:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 1272
  store <4 x i32> <i32 10, i32 4, i32 10, i32 5>, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %calloc, i64 1288
  store i32 5, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 1104
  store double f0x3F6B089A02752547, ptr %i.j, align 8, !tbaa !176
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 1080
  store i32 5, ptr %i.k, align 8, !tbaa !177
  %i.l = getelementptr inbounds nuw i8, ptr %calloc, i64 1084
  store i32 4, ptr %i.l, align 4, !tbaa !178
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 1088
  store i32 10, ptr %i.m, align 8, !tbaa !179
  %i.n = tail call double @SUNRpowerR(double noundef f0x3CB0000000000000, double noundef 6.670000e-01) #12
  %i.o = getelementptr inbounds nuw i8, ptr %calloc, i64 1112
  store double %i.n, ptr %i.o, align 8, !tbaa !180
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 80
  store i32 0, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %calloc, i64 88
  store ptr null, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %calloc, i64 104
  store i32 0, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %calloc, i64 108
  store i32 0, ptr %i.s, align 4, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %calloc, i64 136
  store i32 0, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %calloc, i64 160
  store ptr %calloc, ptr %i.u, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %calloc, i64 152
  store ptr @IDASensResDQ, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %calloc, i64 168
  store i32 1, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %calloc, i64 200
  store i32 1, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %calloc, i64 208
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %calloc, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc, i64 216
  store i32 0, ptr %i.aa, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %calloc, i64 1312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 4, ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc, i64 220
  store i32 4, ptr %i.ac, align 4, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %calloc, i64 248
  store i32 0, ptr %i.ad, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc, i64 264
  store ptr %calloc, ptr %i.ae, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %calloc, i64 256
  store ptr @IDAQuadSensRhsInternalDQ, ptr %i.af, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %calloc, i64 272
  store i32 1, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %calloc, i64 276
  store i32 0, ptr %i.ah, align 4, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %calloc, i64 280
  store i32 4, ptr %i.ai, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %calloc, i64 1812
  store i32 0, ptr %i.aj, align 4, !tbaa !181
  %i.ak = getelementptr inbounds nuw i8, ptr %calloc, i64 1816
  store ptr null, ptr %i.ak, align 8, !tbaa !182
  %i.al = getelementptr inbounds nuw i8, ptr %calloc, i64 1496
  store i64 55, ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %calloc, i64 1504
  store i64 38, ptr %i.am, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %calloc, i64 1540
  %i.ao = getelementptr inbounds nuw i8, ptr %calloc, i64 1824
  store i32 0, ptr %i.ao, align 8, !tbaa !183
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.an, i8 0, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %calloc
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @IDAProcessError(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ...) local_unnamed_addr #0 {
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
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.e = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.107, ptr noundef %2, ptr noundef %3) #13 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  call void %i.i(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.k) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.va_end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind uwtable
define void @IDAErrHandler(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #4 {
bb.a:
  %i.a = alloca [10 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq i32 %0, 99
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 20070800100049239, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.110, i64 6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 1528 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.111, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %2) #12 ; 0 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.112, ptr noundef %3) #12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare double @SUNRpowerR(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @IDASensResDQ(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %IDASensRes1DQ.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 600
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 1360 ; 18 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51   ; 7 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51   ; 6 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51   ; 16 uses
  %i.r = load double, ptr %i.b, align 8, !tbaa !52 ; 2 uses
  %i.s = load double, ptr %8, align 8, !tbaa !21  ; 2 uses
  %i.t = fcmp ogt double %i.r, %i.s
  %..i = select i1 %i.t, double %i.r, double %i.s
  %i.u = tail call double @SUNRsqrt(double noundef %..i) #12 ; 2 uses
  %i.v = fdiv double 1.000000e+00, %i.u           ; 2 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !54 ; 3 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.ad = sext i32 %i.ab to i64                   ; 8 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !54 ; 7 uses
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.ah = tail call double @N_VWrmsNorm(ptr noundef %i.m, ptr noundef %i.ag) #12
  %i.ai = fmul double %i.y, %i.ah                 ; 2 uses
  %i.aj = fcmp ogt double %i.ai, %i.v
  %i.ak = select i1 %i.aj, double %i.ai, double %i.v
  %12 = fmul double %i.u, %i.y                    ; 9 uses
  %13 = fdiv double %i.ak, %i.y                   ; 3 uses
  %i.al = insertelement <2 x double> poison, double %13, i64 0
  %i.am = insertelement <2 x double> %i.al, double %12, i64 1
  %i.an = fdiv <2 x double> splat (double 1.000000e+00), %i.am ; 3 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 10 uses
  %i.ap = load double, ptr %i.g, align 8, !tbaa !39 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !38
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %select.unfold.i, label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.at = extractelement <2 x double> %i.an, i64 1 ; 3 uses
  %i.au = fmul double %i.at, %i.ao                ; 3 uses
  %i.av = fdiv double 1.000000e+00, %i.au         ; 2 uses
  %i.aw = fcmp ogt double %i.av, %i.au
  %i.ax = select i1 %i.aw, double %i.av, double %i.au
  %i.ay = fcmp ugt double %i.ax, %i.ap
  %i.az = load i32, ptr %i.h, align 8, !tbaa !38
  %i.ba = icmp eq i32 %i.az, 1                    ; 2 uses
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ba, label %select.unfold.i, label %bb.n

bb.f:                                             ; preds = %bb.d
  br i1 %i.ba, label %bb.i, label %bb.p

select.unfold.i:                                  ; preds = %bb.e, %bb.c
  %i.bb = fcmp olt double %i.ao, %12
  %i.bc = select i1 %i.bb, double %i.ao, double %12 ; 6 uses
  %i.bd = fdiv double 5.000000e-01, %i.bc         ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.bc, ptr noundef %i.m, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef %i.bc, ptr noundef %i.o, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #12
  %i.be = fadd double %i.af, %i.bc
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ad
  store double %i.be, ptr %i.bg, align 8, !tbaa !54
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.bj = tail call i32 %i.bh(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.q, ptr noundef %i.bi) #12, !inline_history !184 ; 2 uses
  %i.bk = load i64, ptr %i.k, align 8, !tbaa !60
  %i.bl = add nsw i64 %i.bk, 1
  store i64 %i.bl, ptr %i.k, align 8, !tbaa !60
  %.not259.i = icmp eq i32 %i.bj, 0
  br i1 %.not259.i, label %bb.g, label %IDASensRes1DQ.exit.thread

bb.g:                                             ; preds = %select.unfold.i
  %i.bm = fneg double %i.bc                       ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.bm, ptr noundef %i.m, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef %i.bm, ptr noundef %i.o, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #12
  %i.bn = fsub double %i.af, %i.bc
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.ad
  store double %i.bn, ptr %i.bp, align 8, !tbaa !54
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.bs = tail call i32 %i.bq(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %i.br) #12, !inline_history !184 ; 2 uses
  %i.bt = load i64, ptr %i.k, align 8, !tbaa !60
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !60
  %.not260.i = icmp eq i32 %i.bs, 0
  br i1 %.not260.i, label %bb.h, label %IDASensRes1DQ.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bv = fneg double %i.bd
  tail call void @N_VLinearSum(double noundef %i.bd, ptr noundef %i.q, double noundef %i.bv, ptr noundef %11, ptr noundef %i.q) #12
  br label %bb.s

bb.i:                                             ; preds = %bb.f
  %i.bw = insertelement <2 x double> poison, double %12, i64 0
  %14 = shufflevector <2 x double> %i.bw, <2 x double> %i.an, <2 x i32> <i32 0, i32 2>
  %i.bx = fdiv <2 x double> splat (double 5.000000e-01), %14 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ao, ptr noundef %i.m, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef %i.ao, ptr noundef %i.o, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #12
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.ca = tail call i32 %i.by(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.q, ptr noundef %i.bz) #12, !inline_history !184 ; 2 uses
  %i.cb = load i64, ptr %i.k, align 8, !tbaa !60
  %i.cc = add nsw i64 %i.cb, 1
  store i64 %i.cc, ptr %i.k, align 8, !tbaa !60
  %.not255.i = icmp eq i32 %i.ca, 0
  br i1 %.not255.i, label %bb.j, label %IDASensRes1DQ.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.cd = fneg double %i.ao                       ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.cd, ptr noundef %i.m, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef %i.cd, ptr noundef %i.o, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #12
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.cg = tail call i32 %i.ce(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %i.cf) #12, !inline_history !184 ; 2 uses
  %i.ch = load i64, ptr %i.k, align 8, !tbaa !60
  %i.ci = add nsw i64 %i.ch, 1
  store i64 %i.ci, ptr %i.k, align 8, !tbaa !60
  %.not256.i = icmp eq i32 %i.cg, 0
  br i1 %.not256.i, label %bb.k, label %IDASensRes1DQ.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cj = extractelement <2 x double> %i.bx, i64 1 ; 2 uses
  %i.ck = fneg double %i.cj
  tail call void @N_VLinearSum(double noundef %i.cj, ptr noundef %i.q, double noundef %i.ck, ptr noundef %11, ptr noundef %i.q) #12
  %i.cl = fadd double %12, %i.af
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.ad
  store double %i.cl, ptr %i.cn, align 8, !tbaa !54
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.cp = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.cq = tail call i32 %i.co(double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %9, ptr noundef %i.cp) #12, !inline_history !184 ; 2 uses
  %i.cr = load i64, ptr %i.k, align 8, !tbaa !60
  %i.cs = add nsw i64 %i.cr, 1
  store i64 %i.cs, ptr %i.k, align 8, !tbaa !60
  %.not257.i = icmp eq i32 %i.cq, 0
  br i1 %.not257.i, label %bb.l, label %IDASensRes1DQ.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ct = fsub double %i.af, %12
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ad
  store double %i.ct, ptr %i.cv, align 8, !tbaa !54
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.cy = tail call i32 %i.cw(double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %10, ptr noundef %i.cx) #12, !inline_history !184 ; 2 uses
  %i.cz = load i64, ptr %i.k, align 8, !tbaa !60
  %i.da = add nsw i64 %i.cz, 1
  store i64 %i.da, ptr %i.k, align 8, !tbaa !60
  %.not258.i = icmp eq i32 %i.cy, 0
  br i1 %.not258.i, label %bb.m, label %IDASensRes1DQ.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.db = extractelement <2 x double> %i.bx, i64 0 ; 2 uses
  %i.dc = fneg double %i.db
  tail call void @N_VLinearSum(double noundef %i.db, ptr noundef %9, double noundef %i.dc, ptr noundef %10, ptr noundef %11) #12
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.q, double noundef 1.000000e+00, ptr noundef %11, ptr noundef %i.q) #12
  br label %bb.s

bb.n:                                             ; preds = %bb.e, %bb.c
  %i.dd = fcmp olt double %i.ao, %12
  %i.de = select i1 %i.dd, double %i.ao, double %12 ; 4 uses
  tail call void @N_VLinearSum(double noundef %i.de, ptr noundef %i.m, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef %i.de, ptr noundef %i.o, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #12
  %i.df = fadd double %i.af, %i.de
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.ad
  store double %i.df, ptr %i.dh, align 8, !tbaa !54
  %i.di = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.dj = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.dk = tail call i32 %i.di(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.q, ptr noundef %i.dj) #12, !inline_history !184 ; 2 uses
  %i.dl = load i64, ptr %i.k, align 8, !tbaa !60
  %i.dm = add nsw i64 %i.dl, 1
  store i64 %i.dm, ptr %i.k, align 8, !tbaa !60
  %.not254.i = icmp eq i32 %i.dk, 0
  br i1 %.not254.i, label %bb.o, label %IDASensRes1DQ.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.dn = fdiv double 1.000000e+00, %i.de         ; 2 uses
  %i.do = fneg double %i.dn
  tail call void @N_VLinearSum(double noundef %i.dn, ptr noundef %i.q, double noundef %i.do, ptr noundef %4, ptr noundef %i.q) #12
  br label %bb.s

bb.p:                                             ; preds = %bb.f
  tail call void @N_VLinearSum(double noundef %i.ao, ptr noundef %i.m, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef %i.ao, ptr noundef %i.o, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #12
  %i.dp = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.dr = tail call i32 %i.dp(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.q, ptr noundef %i.dq) #12, !inline_history !184 ; 2 uses
  %i.ds = load i64, ptr %i.k, align 8, !tbaa !60
  %i.dt = add nsw i64 %i.ds, 1
  store i64 %i.dt, ptr %i.k, align 8, !tbaa !60
  %.not.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i, label %bb.q, label %IDASensRes1DQ.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.du = fneg double %13
  tail call void @N_VLinearSum(double noundef %13, ptr noundef %i.q, double noundef %i.du, ptr noundef %4, ptr noundef %i.q) #12
  %i.dv = fadd double %12, %i.af
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ad
  store double %i.dv, ptr %i.dx, align 8, !tbaa !54
  %i.dy = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.dz = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.ea = tail call i32 %i.dy(double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %11, ptr noundef %i.dz) #12, !inline_history !184 ; 2 uses
  %i.eb = load i64, ptr %i.k, align 8, !tbaa !60
  %i.ec = add nsw i64 %i.eb, 1
  store i64 %i.ec, ptr %i.k, align 8, !tbaa !60
  %.not253.i = icmp eq i32 %i.ea, 0
  br i1 %.not253.i, label %bb.r, label %IDASensRes1DQ.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ed = fneg double %i.at
  tail call void @N_VLinearSum(double noundef %i.at, ptr noundef %11, double noundef %i.ed, ptr noundef %4, ptr noundef %11) #12
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.q, double noundef 1.000000e+00, ptr noundef %11, ptr noundef %i.q) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.m, %bb.h
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ad
  store double %i.af, ptr %i.ef, align 8, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %IDASensRes1DQ.exit.thread, label %bb.b, !llvm.loop !185

IDASensRes1DQ.exit.thread:                        ; preds = %bb.s, %bb.p, %select.unfold.i, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.n, %bb.q, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ %i.dr, %bb.p ], [ %i.ea, %bb.q ], [ %i.dk, %bb.n ], [ %i.cy, %bb.l ], [ %i.cq, %bb.k ], [ %i.cg, %bb.j ], [ %i.ca, %bb.i ], [ %i.bs, %bb.g ], [ %i.bj, %select.unfold.i ], [ 0, %bb.s ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal i32 @IDAQuadSensRhsInternalDQ(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %IDAQuadSensRhs1InternalDQ.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 600
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 1368 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 6 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51   ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51   ; 6 uses
  %i.q = load double, ptr %i.b, align 8, !tbaa !52 ; 2 uses
  %i.r = load double, ptr %8, align 8, !tbaa !21  ; 2 uses
  %i.s = fcmp ogt double %i.q, %i.r
  %..i = select i1 %i.s, double %i.q, double %i.r
  %i.t = tail call double @SUNRsqrt(double noundef %..i) #12 ; 2 uses
  %i.u = fdiv double 1.000000e+00, %i.t           ; 2 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !54 ; 3 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.ac = sext i32 %i.aa to i64                   ; 5 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !54 ; 4 uses
  %i.af = fmul double %i.t, %i.x                  ; 2 uses
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.ah = tail call double @N_VWrmsNorm(ptr noundef %i.l, ptr noundef %i.ag) #12
  %i.ai = fmul double %i.x, %i.ah                 ; 2 uses
  %i.aj = fcmp ogt double %i.ai, %i.u
  %i.ak = select i1 %i.aj, double %i.ai, double %i.u
  %i.al = fdiv double %i.ak, %i.x
  %i.am = fdiv double 1.000000e+00, %i.al         ; 2 uses
  %i.an = load i32, ptr %i.g, align 8, !tbaa !38
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = fcmp olt double %i.am, %i.af
  %i.aq = select i1 %i.ap, double %i.am, double %i.af ; 10 uses
  br i1 %i.ao, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ar = fdiv double 5.000000e-01, %i.aq         ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.aq, ptr noundef %i.l, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef %i.aq, ptr noundef %i.n, ptr noundef %10) #12
  %i.as = fadd double %i.ae, %i.aq
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ac
  store double %i.as, ptr %i.au, align 8, !tbaa !54
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.ax = tail call i32 %i.av(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.p, ptr noundef %i.aw) #12, !inline_history !186 ; 2 uses
  %.not119.i = icmp eq i32 %i.ax, 0
  br i1 %.not119.i, label %bb.d, label %IDAQuadSensRhs1InternalDQ.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ay = fneg double %i.aq                       ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ay, ptr noundef %i.l, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef %i.ay, ptr noundef %i.n, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %10) #12
  %i.az = fsub double %i.ae, %i.aq
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ac
  store double %i.az, ptr %i.bb, align 8, !tbaa !54
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.be = tail call i32 %i.bc(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %i.bd) #12, !inline_history !186 ; 2 uses
  %.not120.i = icmp eq i32 %i.be, 0
  br i1 %.not120.i, label %bb.e, label %IDAQuadSensRhs1InternalDQ.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bf = fneg double %i.ar
  tail call void @N_VLinearSum(double noundef %i.ar, ptr noundef %i.p, double noundef %i.bf, ptr noundef %11, ptr noundef %i.p) #12
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.aq, ptr noundef %i.l, ptr noundef %9) #12
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef %i.aq, ptr noundef %i.n, ptr noundef %10) #12
  %i.bg = fadd double %i.ae, %i.aq
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ac
  store double %i.bg, ptr %i.bi, align 8, !tbaa !54
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.bl = tail call i32 %i.bj(double noundef %1, ptr noundef %9, ptr noundef %10, ptr noundef %i.p, ptr noundef %i.bk) #12, !inline_history !186 ; 2 uses
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.g, label %IDAQuadSensRhs1InternalDQ.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bm = fdiv double 1.000000e+00, %i.aq         ; 2 uses
  %i.bn = fneg double %i.bm
  tail call void @N_VLinearSum(double noundef %i.bm, ptr noundef %i.p, double noundef %i.bn, ptr noundef %6, ptr noundef %i.p) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i = phi i64 [ 1, %bb.g ], [ 2, %bb.e ]
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.ac
  store double %i.ae, ptr %i.bp, align 8, !tbaa !54
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !62
  %i.br = add nsw i64 %i.bq, %.0.i
  store i64 %i.br, ptr %i.j, align 8, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %IDAQuadSensRhs1InternalDQ.exit.thread, label %bb.b, !llvm.loop !187

IDAQuadSensRhs1InternalDQ.exit.thread:            ; preds = %bb.h, %bb.d, %bb.c, %bb.f, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ %i.be, %bb.d ], [ %i.bl, %bb.f ], [ %i.ax, %bb.c ], [ 0, %bb.h ]
  ret i32 %.021
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @IDAInit(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5)
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %4, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6)
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7)
  br label %bb.ah

bb.i:                                             ; preds = %bb.g
  %i.g = getelementptr i8, ptr %3, i64 8
end_hunk_0
