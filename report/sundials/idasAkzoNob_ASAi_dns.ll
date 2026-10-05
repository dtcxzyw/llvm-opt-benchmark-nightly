Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idasAkzoNob_ASAi_dns?download=true
inline.NumInlined: 30
inline.NumDeleted: 1
begin_hunk_0_@main:bb.a
  call void @N_VDestroy(ptr noundef nonnull %i.gs) #11
  call void @N_VDestroy(ptr noundef nonnull %i.ds) #11
  call void @free(ptr noundef nonnull %i.l) #11
  %i.jb = call i32 @SUNContext_Free(ptr noundef nonnull %i.g) #11 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %check_retval.exit161, %check_retval.exit159, %check_retval.exit157, %check_retval.exit155, %check_retval.exit153, %check_retval.exit151, %check_retval.exit149, %check_retval.exit147, %check_retval.exit145, %check_retval.exit143, %check_retval.exit141, %check_retval.exit139, %check_retval.exit137, %check_retval.exit135, %check_retval.exit133, %check_retval.exit131, %check_retval.exit129, %check_retval.exit127, %check_retval.exit125, %check_retval.exit123, %check_retval.exit121, %check_retval.exit119, %check_retval.exit117, %check_retval.exit115, %check_retval.exit113, %check_retval.exit111, %check_retval.exit109, %check_retval.exit107, %check_retval.exit, %bb.ad
  %.0 = phi i32 [ 0, %bb.ad ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit107 ], [ 1, %check_retval.exit109 ], [ 1, %check_retval.exit111 ], [ 1, %check_retval.exit113 ], [ 1, %check_retval.exit115 ], [ 1, %check_retval.exit117 ], [ 1, %check_retval.exit119 ], [ 1, %check_retval.exit121 ], [ 1, %check_retval.exit123 ], [ 1, %check_retval.exit125 ], [ 1, %check_retval.exit127 ], [ 1, %check_retval.exit129 ], [ 1, %check_retval.exit131 ], [ 1, %check_retval.exit133 ], [ 1, %check_retval.exit135 ], [ 1, %check_retval.exit137 ], [ 1, %check_retval.exit139 ], [ 1, %check_retval.exit141 ], [ 1, %check_retval.exit143 ], [ 1, %check_retval.exit145 ], [ 1, %check_retval.exit147 ], [ 1, %check_retval.exit149 ], [ 1, %check_retval.exit151 ], [ 1, %check_retval.exit153 ], [ 1, %check_retval.exit155 ], [ 1, %check_retval.exit157 ], [ 1, %check_retval.exit159 ], [ 1, %check_retval.exit161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #3

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @res(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load double, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %1, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %2, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 4 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load double, ptr %i.v, align 8, !tbaa !11
  %i.x = load <2 x double>, ptr %4, align 8, !tbaa !11 ; 3 uses
  %i.y = load <2 x double>, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %i.z = load <2 x double>, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.k, align 8, !tbaa !11 ; 3 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ac = load <4 x double>, ptr %i.l, align 8, !tbaa !11 ; 3 uses
  %i.ad = load double, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %i.ae = load double, ptr %i.m, align 8, !tbaa !11
  %i.af = load <2 x double>, ptr %i.s, align 8, !tbaa !11
  %i.ag = extractelement <2 x double> %i.aa, i64 0 ; 3 uses
  %i.ah = tail call double @SUNRpowerI(double noundef %i.ag, i32 noundef 4) #11
  %i.ai = extractelement <2 x double> %i.aa, i64 1
  %i.aj = tail call double @sqrt(double noundef %i.ai) #11
  %i.ak = fmul double %i.b, %i.ag
  %i.al = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 0
  %i.an = shufflevector <4 x double> %i.ac, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = insertelement <2 x double> %i.an, double %i.ah, i64 1 ; 2 uses
  %i.ap = fmul <2 x double> %i.am, %i.ao
  %i.aq = insertelement <2 x double> %i.ao, double %i.aj, i64 1 ; 2 uses
  %i.ar = fmul <2 x double> %i.aq, %i.ap          ; 5 uses
  %i.as = fmul double %i.d, %i.ad
  %i.at = shufflevector <4 x double> %i.ac, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.au = insertelement <2 x double> %i.x, double %i.as, i64 0
  %i.av = fmul <2 x double> %i.at, %i.au
  %i.aw = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = fmul <2 x double> %i.av, %i.aw          ; 4 uses
  %i.ay = shufflevector <2 x double> %i.z, <2 x double> %i.x, <2 x i32> <i32 0, i32 3>
  %i.az = shufflevector <2 x double> %i.z, <2 x double> %i.y, <2 x i32> <i32 1, i32 2>
  %i.ba = fdiv <2 x double> %i.ay, %i.az          ; 2 uses
  %i.bb = fsub <2 x double> %i.ba, %i.ab
  %i.bc = fmul <2 x double> %i.ba, %i.ab
  %i.bd = shufflevector <2 x double> %i.bb, <2 x double> %i.bc, <2 x i32> <i32 0, i32 3>
  %i.be = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x double> %i.be, <4 x double> %i.ac, <2 x i32> <i32 1, i32 6>
  %i.bg = fmul <2 x double> %i.bf, %i.bd          ; 3 uses
  %i.bh = extractelement <2 x double> %i.ax, i64 1 ; 2 uses
  %i.bi = extractelement <2 x double> %i.bg, i64 1 ; 2 uses
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20 ; 5 uses
  %i.bm = shufflevector <2 x double> %i.ar, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> <double 5.000000e-01, double 0.000000e+00>, <2 x double> %i.af) ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = fadd <2 x double> %i.bn, %i.ar
  %i.bq = fsub <2 x double> %i.bn, %i.ar
  %i.br = shufflevector <2 x double> %i.bp, <2 x double> %i.bq, <2 x i32> <i32 0, i32 3>
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> <double 5.000000e-01, double 1.000000e+00>, <2 x double> %i.br)
  %i.bt = fsub <2 x double> %i.bs, %i.bg
  store <2 x double> %i.bt, ptr %i.bo, align 8, !tbaa !11
  %i.bu = fadd double %i.bh, %i.u
  %i.bv = fsub double %i.bu, %i.bi
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.r, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bx) ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.by, %i.ax
  %foldExtExtBinop76 = fadd <2 x double> %i.bg, %foldExtExtBinop
  %shift = shufflevector <2 x double> %foldExtExtBinop76, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop78 = fadd <2 x double> %i.ar, %shift
  %i.bz = extractelement <2 x double> %foldExtExtBinop78, i64 0
  store double %i.bz, ptr %i.bl, align 8, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cb = extractelement <2 x double> %i.by, i64 0
  store double %i.cb, ptr %i.ca, align 8, !tbaa !11
  %i.cc = fsub double %i.w, %i.bh
  %i.cd = fadd double %i.bi, %i.cc
  %i.ce = extractelement <2 x double> %i.ax, i64 0
  %i.cf = fsub double %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store double %i.cf, ptr %i.cg, align 8, !tbaa !11
  %i.ch = fmul double %i.g, %i.ag
  %i.ci = fneg double %i.ad
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ae, double %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store double %i.cj, ptr %i.ck, align 8, !tbaa !11
  ret i32 0
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #3

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #3

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IDAQuadInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @rhsQ(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = load double, ptr %i.c, align 8, !tbaa !11
  %i.e = load ptr, ptr %3, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  store double %i.d, ptr %i.g, align 8, !tbaa !11
  ret i32 0
}

declare i32 @IDAQuadSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @IDASetQuadErrCon(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @IDAAdjInit(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @IDASolveF(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IDAGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IDAGetQuad(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IDACreateB(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IDAInitB(ptr noundef, i32 noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @resB(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #5 {
bb.a:
  %i.a = load double, ptr %6, align 8, !tbaa !31  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !21 ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 6 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !11 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !11 ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ae = load ptr, ptr %4, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.al = load double, ptr %i.ak, align 8, !tbaa !11
  %i.am = tail call double @sqrt(double noundef %i.p) #11 ; 3 uses
  %i.an = fmul double %i.n, %i.n
  %i.ao = fmul double %i.n, %i.an                 ; 2 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20 ; 3 uses
  %i.as = fmul double %i.a, %i.n
  %i.at = fdiv double %i.am, %i.p                 ; 2 uses
  %i.au = load <2 x double>, ptr %i.aa, align 8, !tbaa !11 ; 3 uses
  %i.av = load double, ptr %i.ab, align 8, !tbaa !11 ; 3 uses
  %i.aw = load <2 x double>, ptr %i.ac, align 8, !tbaa !11 ; 5 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = load <2 x double>, ptr %i.ad, align 8, !tbaa !11 ; 4 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ba = load double, ptr %i.ag, align 8, !tbaa !11
  %i.bb = load double, ptr %i.ah, align 8, !tbaa !11
  %7 = fadd double %i.ba, 1.000000e+00
  %i.bc = insertelement <2 x double> poison, double %i.e, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.as, i64 1
  %i.be = insertelement <2 x double> poison, double %i.t, i64 0 ; 2 uses
  %i.bf = insertelement <2 x double> %i.be, double %i.ao, i64 1 ; 2 uses
  %i.bg = fmul <2 x double> %i.bd, %i.bf
  %i.bh = insertelement <2 x double> %i.bf, double %i.at, i64 1 ; 2 uses
  %i.bi = fmul <2 x double> %i.bh, %i.bg          ; 5 uses
  %i.bj = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.bk = extractelement <2 x double> %i.ay, i64 0 ; 3 uses
  %i.bl = extractelement <2 x double> %i.aw, i64 1 ; 2 uses
  %i.bm = fsub double %i.bl, %i.bk
  %i.bn = shufflevector <2 x double> %i.aw, <2 x double> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bo = insertelement <2 x double> %i.au, double %i.bm, i64 0
  %i.bp = fmul <2 x double> %i.bi, <double -2.000000e+00, double 5.000000e-01>
  %i.bq = insertelement <2 x double> poison, double %i.j, i64 0
  %i.br = insertelement <2 x double> %i.bh, double 5.000000e-01, i64 1
  %i.bs = extractelement <2 x double> %i.aw, i64 0 ; 2 uses
  %i.bt = fsub double %i.bj, %i.bs
  %i.bu = fsub double %i.bt, %i.bl
  %i.bv = fadd double %i.bu, %i.bk                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bx = fmul double %i.c, %i.r                  ; 4 uses
  %i.by = fneg double %i.bx
  %i.bz = insertelement <2 x double> poison, double %i.a, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.e, i64 1
  %i.cb = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.n, i64 1
  %i.cd = fmul <2 x double> %i.ca, %i.cc
  %i.ce = insertelement <2 x double> poison, double %i.am, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.t, i64 1
  %i.cg = fmul <2 x double> %i.cd, %i.cf          ; 4 uses
  %i.ch = insertelement <2 x double> %i.bi, double %i.bx, i64 1
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double> %i.ch)
  %i.cj = extractelement <2 x double> %i.cg, i64 1 ; 2 uses
  %i.ck = fmul double %i.cj, -2.000000e+00
  %i.cl = fneg <2 x double> %i.ci                 ; 2 uses
  %i.cm = load double, ptr %i.ai, align 8, !tbaa !11
  %i.cn = load double, ptr %i.aj, align 8, !tbaa !11
  %i.co = insertelement <2 x double> poison, double %i.c, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.j, i64 1
  %i.cq = insertelement <2 x double> %i.be, double %i.n, i64 1
  %i.cr = fmul <2 x double> %i.cp, %i.cq
  %i.cs = insertelement <2 x double> %i.ay, double %i.bv, i64 0
  %i.ct = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cu = fneg double %i.n
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.cw = fneg double %i.av
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cj, double -2.000000e+00, double %i.bx)
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.bj, double %i.cn)
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.av, double %i.cy)
  %i.da = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bs, double %i.cz)
  %i.db = shufflevector <2 x double> <double poison, double 2.000000e+00>, <2 x double> %i.cl, <2 x i32> <i32 3, i32 1>
  %i.dc = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 1, i32 2>
  %i.dd = insertelement <2 x double> poison, double %i.da, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.cw, i64 1
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.dc, <2 x double> %i.de) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bk, double %i.dg)
  %i.di = insertelement <2 x double> %i.ct, double %i.dh, i64 1
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.cs, <2 x double> %i.di)
  %i.dk = load double, ptr %i.f, align 8, !tbaa !23
  %8 = extractelement <2 x double> %i.cg, i64 0
  %9 = fmul double %i.dk, %i.x                    ; 2 uses
  %i.dl = fmul double %i.x, %9
  %10 = extractelement <2 x double> %i.cl, i64 0
  %11 = load double, ptr %i.h, align 8, !tbaa !33
  %12 = load double, ptr %i.g, align 8, !tbaa !34
  %13 = fdiv double %i.c, %12
  %i.dm = fmul double %i.dl, %i.at                ; 2 uses
  %14 = insertelement <2 x double> poison, double %13, i64 0 ; 2 uses
  %15 = insertelement <2 x double> %14, double %i.dm, i64 1
  %16 = insertelement <2 x double> <double poison, double 2.500000e-01>, double %i.v, i64 0
  %17 = fmul <2 x double> %15, %16                ; 3 uses
  %18 = shufflevector <2 x double> %i.cg, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> <double 8.000000e+00, double 2.500000e-01>, <2 x double> %17)
  %i.dn = insertelement <2 x double> %i.bi, double %11, i64 1
  %20 = fadd <2 x double> %i.dn, %19              ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %22 = fneg double %21
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %i.bj, double %7)
  %24 = tail call double @llvm.fmuladd.f64(double %10, double %i.av, double %23)
  %25 = extractelement <2 x double> %17, i64 0
  %26 = tail call double @llvm.fmuladd.f64(double %8, double 4.000000e+00, double %25)
  %27 = fneg <2 x double> %i.bi
  %28 = insertelement <2 x double> %27, double %26, i64 0
  %29 = insertelement <2 x double> poison, double %24, i64 0
  %30 = insertelement <2 x double> %29, double %i.bb, i64 1
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %i.bn, <2 x double> %30)
  %32 = fneg <2 x double> %20
  %33 = shufflevector <2 x double> %17, <2 x double> %32, <2 x i32> <i32 0, i32 3>
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> %i.bo, <2 x double> %31)
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.ax, <2 x double> %i.do)
  %i.dq = insertelement <2 x double> %i.bq, double %i.dm, i64 1
  %i.dr = fmul <2 x double> %i.dq, %i.br
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.az, <2 x double> %i.dp)
  store <2 x double> %i.ds, ptr %i.ar, align 8, !tbaa !11
  store <2 x double> %i.dj, ptr %i.bw, align 8, !tbaa !11
  %i.dt = insertelement <2 x double> %14, double %9, i64 1
  %i.du = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.am, i64 1
  %i.dw = fmul <2 x double> %i.dt, %i.dv
  %i.dx = insertelement <2 x double> %i.df, double %i.bv, i64 0
  %i.dy = insertelement <2 x double> poison, double %i.al, i64 0
  %i.dz = fneg <2 x double> %i.az
  %i.ea = shufflevector <2 x double> %i.dy, <2 x double> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dx, <2 x double> %i.ea)
  store <2 x double> %i.eb, ptr %i.cv, align 8, !tbaa !11
  ret i32 0
}

declare i32 @IDASStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @IDASetUserDataB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IDASetMaxNumStepsB(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @IDASetLinearSolverB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IDASolveB(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare ptr @IDAGetAdjIDABmem(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @IDAGetB(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintOutput(ptr nofree readonly captures(none) %.0.val.16.val) unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr %.0.val.16.val, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val.16.val, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val.16.val, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val.16.val, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val.16.val, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, double noundef %i.a, double noundef %i.c, double noundef %i.e, double noundef %i.g, double noundef %i.i) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  ret void
}

declare void @IDAFree(ptr noundef) local_unnamed_addr #3

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #3

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare double @SUNRpowerI(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64}
!13 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!14 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!15 = !{!"_generic_N_Vector", !9, i64 0, !14, i64 8, !13, i64 16}
!16 = !{!15, !9, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 double", !9, i64 0}
!19 = !{!"_N_VectorContent_Serial", !17, i64 0, !6, i64 8, !18, i64 16}
!20 = !{!19, !18, i64 16}
!21 = !{!12, !10, i64 48}
!22 = !{!12, !10, i64 16}
!23 = !{!12, !10, i64 24}
!24 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!12, !10, i64 64}
!27 = !{!13, !13, i64 0}
!28 = !{!9, !9, i64 0}
!29 = !{!17, !17, i64 0}
!30 = !{!6, !6, i64 0}
!31 = !{!12, !10, i64 0}
!32 = !{!12, !10, i64 8}
!33 = !{!12, !10, i64 40}
!34 = !{!12, !10, i64 32}
end_hunk_0
