Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_color?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@TIFFCIELab16ToXYZ:bb.a
  %i.j = fdiv float %i.h, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = fadd float %i.c, 1.600000e+01
  %i.m = fdiv float %i.l, 1.160000e+02            ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !12
  %i.p = fmul float %i.m, %i.o
  %i.q = fmul float %i.m, %i.p
  %i.r = fmul float %i.m, %i.q
  store float %i.r, ptr %5, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.s = sitofp i32 %2 to float
  %i.t = fmul nnan float %i.s, 3.906250e-03
  %i.u = fdiv float %i.t, 5.000000e+02
  %i.v = fadd float %i.u, %.0                     ; 5 uses
  %i.w = fcmp olt float %i.v, 2.069000e-01
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load float, ptr %i.x, align 4, !tbaa !14 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = fadd nnan float %i.v, -1.379300e-01
  %i.aa = fmul float %i.z, %i.y
  %i.ab = fdiv float %i.aa, 7.787000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = fmul float %i.v, %i.y
  %i.ad = fmul float %i.v, %i.ac
  %i.ae = fmul float %i.v, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi float [ %i.ae, %bb.f ], [ %i.ab, %bb.e ]
  store float %storemerge, ptr %4, align 4, !tbaa !13
  %i.af = sitofp i32 %3 to float
  %i.ag = fmul nnan float %i.af, 3.906250e-03
  %i.ah = fdiv float %i.ag, 2.000000e+02
  %i.ai = fsub float %.0, %i.ah                   ; 5 uses
  %i.aj = fcmp olt float %i.ai, 2.069000e-01
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15 ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = fadd nnan float %i.ai, -1.379300e-01
  %i.an = fmul float %i.am, %i.al
  %i.ao = fdiv float %i.an, 7.787000e+00
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = fmul float %i.ai, %i.al
  %i.aq = fmul float %i.ai, %i.ap
  %i.ar = fmul float %i.ai, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge39 = phi float [ %i.ar, %bb.i ], [ %i.ao, %bb.h ]
  store float %storemerge39, ptr %6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @TIFFXYZToRGB(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, ptr nofree noundef captures(none) initializes((0, 4)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !13
  %i.g = fmul float %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load float, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load <4 x float>, ptr %i.a, align 4, !tbaa !13 ; 3 uses
  %i.l = load <2 x float>, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %i.m = insertelement <2 x float> poison, float %2, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.p = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.q = shufflevector <4 x float> %i.k, <4 x float> %i.p, <2 x i32> <i32 1, i32 4>
  %i.r = fmul <2 x float> %i.n, %i.q
  %i.s = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.t = insertelement <2 x float> poison, float %1, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> %i.r)
  %i.w = shufflevector <2 x float> %i.o, <2 x float> %i.l, <2 x i32> <i32 0, i32 3>
  %i.x = insertelement <2 x float> poison, float %3, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.v) ; 3 uses
  %i.aa = load <2 x float>, ptr %i.j, align 4, !tbaa !13 ; 4 uses
  %i.ab = fcmp ogt <2 x float> %i.z, %i.aa        ; 2 uses
  %i.ac = extractelement <2 x i1> %i.ab, i64 0
  %i.ad = extractelement <2 x float> %i.z, i64 0
  %i.ae = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %. = select i1 %i.ac, float %i.ad, float %i.ae  ; 2 uses
  %i.af = extractelement <2 x i1> %i.ab, i64 1
  %i.ag = extractelement <2 x float> %i.aa, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !16 ; 2 uses
  %i.al = fcmp olt float %., %i.ak
  %i.am = select i1 %i.al, float %., float %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ao = fsub float %i.am, %i.ae
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !17
  %i.ar = fdiv float %i.ao, %i.aq
  %i.as = fptoui float %i.ar to i64
  %i.at = load i32, ptr %0, align 4, !tbaa !18
  %i.au = sext i32 %i.at to i64
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.as)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !13 ; 2 uses
  %i.az = fcmp ogt float %i.ay, 0.000000e+00
  %i.ba = fpext float %i.ay to double
  %.v = select i1 %i.az, double 5.000000e-01, double -5.000000e-01
  %i.bb = fadd double %.v, %i.ba
  %i.bc = fptoui double %i.bb to i32
  store i32 %i.bc, ptr %4, align 4, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i32, ptr %0, align 4, !tbaa !18
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 6116
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.d, float %1, float %i.g)
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.i, float %3, float %i.bh) ; 2 uses
  %i.bj = extractelement <2 x float> %i.z, i64 1
  %i.bk = select i1 %i.af, float %i.bj, float %i.ag
  %i.bl = fcmp ogt float %i.bi, %i.ai
  %i.bm = select i1 %i.bl, float %i.bi, float %i.ai
  %i.bn = load <2 x float>, ptr %i.an, align 4, !tbaa !13 ; 2 uses
  %i.bo = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bm, i64 1 ; 2 uses
  %i.bq = fcmp olt <2 x float> %i.bp, %i.bn
  %i.br = select <2 x i1> %i.bq, <2 x float> %i.bp, <2 x float> %i.bn
  %i.bs = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x float> %i.bs, float %i.ai, i64 1
  %i.bu = fsub <2 x float> %i.br, %i.bt
  %i.bv = load <2 x float>, ptr %i.bd, align 4, !tbaa !13
  %i.bw = fdiv <2 x float> %i.bu, %i.bv           ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %i.by = fptoui float %i.bx to i64
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.by)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13 ; 2 uses
  %i.cc = fcmp ogt float %i.cb, 0.000000e+00
  %i.cd = fpext float %i.cb to double
  %.v127 = select i1 %i.cc, double 5.000000e-01, double -5.000000e-01
  %i.ce = fadd double %.v127, %i.cd
  %i.cf = fptoui double %i.ce to i32
  store i32 %i.cf, ptr %5, align 4, !tbaa !19
  %i.cg = extractelement <2 x float> %i.bw, i64 1
  %i.ch = fptoui float %i.cg to i64
  %i.ci = load i32, ptr %0, align 4, !tbaa !18
  %i.cj = sext i32 %i.ci to i64
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.ch)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12120
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !13 ; 2 uses
  %i.co = fcmp ogt float %i.cn, 0.000000e+00
  %i.cp = fpext float %i.cn to double
  %.v128 = select i1 %i.co, double 5.000000e-01, double -5.000000e-01
  %i.cq = fadd double %.v128, %i.cp
  %i.cr = fptoui double %i.cq to i32
  store i32 %i.cr, ptr %6, align 4, !tbaa !19
  %i.cs = load i32, ptr %4, align 4, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !20
  %i.cv = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 %i.cu)
  store i32 %i.cv, ptr %4, align 4, !tbaa !19
  %i.cw = load i32, ptr %5, align 4, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !21
  %i.cz = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.cy)
  store i32 %i.cz, ptr %5, align 4, !tbaa !19
  %i.da = load i32, ptr %6, align 4, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !22
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.da, i32 %i.dc)
  store i32 %i.dd, ptr %6, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFCIELabToRGBInit(ptr noundef initializes((0, 4)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  store i32 1500, ptr %0, align 4, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 84) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.c = load float, ptr %i.b, align 4, !tbaa !33
  %i.d = fpext float %i.c to double
  %i.e = fdiv double 1.000000e+00, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load float, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load float, ptr %i.h, align 4, !tbaa !34
  %i.j = fsub float %i.g, %i.i
  %i.k = load i32, ptr %0, align 4, !tbaa !18     ; 3 uses
  %i.l = sitofp i32 %i.k to float
  %i.m = fdiv float %i.j, %i.l                    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.m, ptr %i.n, align 4, !tbaa !17
  %i.o = sext i32 %i.k to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.q = load i32, ptr %i.p, align 4, !tbaa !20
  %i.r = uitofp i32 %i.q to float
  %i.s = sitofp i32 %i.k to double                ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.052 = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.b ]  ; 3 uses
  %i.u = uitofp i64 %.052 to double
  %i.v = fdiv double %i.u, %i.s
  %i.w = tail call double @pow(double noundef %i.v, double noundef %i.e) #7
  %i.x = fptrunc double %i.w to float
  %i.y = fmul float %i.r, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.052
  store float %i.y, ptr %i.z, align 4, !tbaa !13
  %i.aa = add i64 %.052, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.aa, %i.o
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !35
  %i.ad = fpext float %i.ac to double
  %i.ae = fdiv double 1.000000e+00, %i.ad         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.m, ptr %i.af, align 4, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = uitofp i32 %i.ah to float               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6116 ; 3 uses
  %3 = add nsw i64 %i.o, 1                        ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 1) ; 6 uses
  %xtraiter = and i64 %umax, 1
  %4 = icmp ult i64 %3, 2
  br i1 %4, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %umax, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.153 = phi i64 [ 0, %.new ], [ %12, %bb.d ]    ; 4 uses
  %.153.a = phi i64 [ 0, %.new ], [ %i.aq, %bb.d ]
  %5 = uitofp i64 %.153 to double
  %6 = fdiv double %5, %i.s
  %7 = tail call double @pow(double noundef %6, double noundef %i.ae) #7
  %8 = fptrunc double %7 to float
  %9 = fmul float %i.ai, %8
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.153
  store float %9, ptr %10, align 4, !tbaa !13
  %11 = or disjoint i64 %.153, 1                  ; 2 uses
  %i.ak = uitofp i64 %11 to double
  %i.al = fdiv double %i.ak, %i.s
  %i.am = tail call double @pow(double noundef %i.al, double noundef %i.ae) #7
  %i.an = fptrunc double %i.am to float
  %i.ao = fmul float %i.ai, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %11
  store float %i.ao, ptr %i.ap, align 4, !tbaa !13
  %12 = add nuw i64 %.153, 2                      ; 2 uses
  %i.aq = add i64 %.153.a, 2                      ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %i.aq, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %.153.epil.init = phi i64 [ 0, %bb.c ], [ %12, %.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %13 = uitofp i64 %.153.epil.init to double
  %14 = fdiv double %13, %i.s
  %15 = tail call double @pow(double noundef %14, double noundef %i.ae) #7
  %16 = fptrunc double %15 to float
  %17 = fmul float %i.ai, %16
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.153.epil.init
  store float %17, ptr %18, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.as = load float, ptr %i.ar, align 4, !tbaa !37
  %i.at = fpext float %i.as to double
  %i.au = fdiv double 1.000000e+00, %i.at         ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.m, ptr %i.av, align 4, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22
  %i.ay = uitofp i32 %i.ax to float               ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12120 ; 3 uses
  %xtraiter60 = and i64 %umax, 1
  %19 = icmp ult i64 %3, 2
  br i1 %19, label %.epil.preheader59, label %.new57

.new57:                                           ; preds = %bb.e
  %unroll_iter64 = and i64 %umax, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new57
  %.254 = phi i64 [ 0, %.new57 ], [ %27, %bb.f ]  ; 4 uses
  %.254.a = phi i64 [ 0, %.new57 ], [ %i.bg, %bb.f ]
  %20 = uitofp i64 %.254 to double
  %21 = fdiv double %20, %i.s
  %22 = tail call double @pow(double noundef %21, double noundef %i.au) #7
  %23 = fptrunc double %22 to float
  %24 = fmul float %i.ay, %23
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.254
  store float %24, ptr %25, align 4, !tbaa !13
  %26 = or disjoint i64 %.254, 1                  ; 2 uses
  %i.ba = uitofp i64 %26 to double
  %i.bb = fdiv double %i.ba, %i.s
  %i.bc = tail call double @pow(double noundef %i.bb, double noundef %i.au) #7
  %i.bd = fptrunc double %i.bc to float
  %i.be = fmul float %i.ay, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %26
  store float %i.be, ptr %i.bf, align 4, !tbaa !13
  %27 = add nuw i64 %.254, 2                      ; 2 uses
  %i.bg = add i64 %.254.a, 2                      ; 2 uses
  %niter65.ncmp.1 = icmp eq i64 %i.bg, %unroll_iter64
  br i1 %niter65.ncmp.1, label %.unr-lcssa58, label %bb.f

.unr-lcssa58:                                     ; preds = %bb.f
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %bb.g, label %.epil.preheader59

.epil.preheader59:                                ; preds = %.unr-lcssa58, %bb.e
  %.254.epil.init = phi i64 [ 0, %bb.e ], [ %27, %.unr-lcssa58 ] ; 2 uses
  %lcmp.mod63 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %28 = uitofp i64 %.254.epil.init to double
  %29 = fdiv double %28, %i.s
  %30 = tail call double @pow(double noundef %29, double noundef %i.au) #7
  %31 = fptrunc double %30 to float
  %32 = fmul float %i.ay, %31
  %33 = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.254.epil.init
  store float %32, ptr %33, align 4, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa58, %.epil.preheader59
  %i.bh = load float, ptr %2, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bh, ptr %i.bi, align 4, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bk, ptr %i.bl, align 4, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bn, ptr %i.bo, align 4, !tbaa !15
  ret i32 0
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @TIFFYCbCrtoRGB(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @llvm.umin.i32(i32 %1, i32 255)
  %i.b = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 255)
  %i.d = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %i.e = tail call i32 @llvm.umin.i32(i32 %i.d, i32 255)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = zext nneg i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.m = zext nneg i32 %i.e to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = add nsw i32 %i.o, %i.j
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0)
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.q, i32 255)
  store i32 %i.r, ptr %4, align 4, !tbaa !19
  %i.s = load i32, ptr %i.i, align 4, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.v = zext nneg i32 %i.c to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.m
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19
  %i.ac = add nsw i32 %i.ab, %i.x
  %i.ad = ashr i32 %i.ac, 16
  %i.ae = add nsw i32 %i.ad, %i.s
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 255)
  store i32 %i.ag, ptr %5, align 4, !tbaa !19
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.v
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = add nsw i32 %i.al, %i.ah
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.an, i32 255)
  store i32 %i.ao, ptr %6, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFYCbCrToRGBInit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_TIFFmemset(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef 256) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.b, align 8, !tbaa !41
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.d, align 8, !tbaa !41
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.f, align 8, !tbaa !41
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.h, align 8, !tbaa !41
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.j, align 8, !tbaa !41
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.k, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.l, align 8, !tbaa !41
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.n, align 8, !tbaa !41
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 544
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.p, align 8, !tbaa !41
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_TIFFmemset(ptr noundef nonnull %i.r, i32 noundef 255, i64 noundef 512) #7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5168 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !27
  %i.ac = load float, ptr %1, align 4, !tbaa !13  ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float -2.000000e+00, float 2.000000e+00) ; 4 uses
  %i.ae = fcmp ult float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.b, label %bb.a

bb.a:                                             ; preds = %vector.ph
  %i.af = fcmp ogt float %i.ad, 2.000000e+00
  %i.ag = select i1 %i.af, float 2.000000e+00, float %i.ad
  %i.ah = fmul nnan float %i.ag, 6.553600e+04
  %i.ai = fpext float %i.ah to double
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  br label %bb.b

bb.b:                                             ; preds = %vector.ph, %bb.a
  %i.al = phi i32 [ %i.ak, %bb.a ], [ 0, %vector.ph ]
  %i.am = fmul float %i.ac, %i.ad
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !13 ; 2 uses
  %i.ap = fdiv float %i.am, %i.ao                 ; 3 uses
  %i.aq = fcmp ult float %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = fcmp ogt float %i.ap, 2.000000e+00
  %i.as = select i1 %i.ar, float 2.000000e+00, float %i.ap
  %i.at = fmul nnan float %i.as, 6.553600e+04
  %i.au = fpext float %i.at to double
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ax = phi i32 [ %i.aw, %bb.c ], [ 0, %bb.b ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float -2.000000e+00, float 2.000000e+00) ; 4 uses
  %i.bb = fcmp ult float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = fcmp ogt float %i.ba, 2.000000e+00
  %i.bd = select i1 %i.bc, float 2.000000e+00, float %i.ba
  %i.be = fmul nnan float %i.bd, 6.553600e+04
  %i.bf = fpext float %i.be to double
  %i.bg = fadd double %i.bf, 5.000000e-01
  %i.bh = fptosi double %i.bg to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bi = phi i32 [ %i.bh, %bb.e ], [ 0, %bb.d ]
  %i.bj = fmul float %i.az, %i.ba
  %i.bk = fdiv float %i.bj, %i.ao                 ; 3 uses
  %i.bl = fcmp ult float %i.bk, 0.000000e+00
  br i1 %i.bl, label %vector.ph101, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fcmp ogt float %i.bk, 2.000000e+00
  %i.bn = select i1 %i.bm, float 2.000000e+00, float %i.bk
  %i.bo = fmul nnan float %i.bn, 6.553600e+04
  %i.bp = fpext float %i.bo to double
  %i.bq = fadd double %i.bp, 5.000000e-01
  %i.br = fptosi double %i.bq to i32
  br label %vector.ph101

vector.ph101:                                     ; preds = %bb.g, %bb.f
  %i.bs = phi i32 [ %i.br, %bb.g ], [ 0, %bb.f ]
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !13
  %i.bv = load float, ptr %2, align 4, !tbaa !13  ; 2 uses
  %i.bw = fsub float %i.bu, %i.bv                 ; 2 uses
  %i.bx = fcmp une float %i.bw, 0.000000e+00
  %i.by = select i1 %i.bx, float %i.bw, float 1.000000e+00
  %i.bz = fptosi float %i.bv to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !13
  %i.cc = fadd <2 x float> %i.cb, splat (float -1.280000e+02) ; 3 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0
  %i.ce = fptosi float %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load <2 x float>, ptr %i.cf, align 4, !tbaa !13
  %i.ch = fadd <2 x float> %i.cg, splat (float -1.280000e+02) ; 3 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.cc, <2 x float> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.ck = shufflevector <2 x float> %i.cc, <2 x float> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.cl = fsub <2 x float> %i.cj, %i.ck           ; 2 uses
  %i.cm = fcmp une <2 x float> %i.cl, zeroinitializer
  %i.cn = select <2 x i1> %i.cm, <2 x float> %i.cl, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.co = fptosi float %i.ci to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat103 = shufflevector <4 x i32> %broadcast.splatinsert102, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat105 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert106 = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat107 = shufflevector <4 x i32> %broadcast.splatinsert106, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat109 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat111 = shufflevector <4 x i32> %broadcast.splatinsert110, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat113 = shufflevector <4 x float> %broadcast.splatinsert112, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat115 = shufflevector <4 x i32> %broadcast.splatinsert114, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat119 = shufflevector <4 x i32> %broadcast.splatinsert118, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op = sub <4 x i32> splat (i32 128), %broadcast.splat111
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph101
  %index121 = phi i64 [ 0, %vector.ph101 ], [ %index.next123, %vector.body120 ] ; 6 uses
  %vec.ind122 = phi <4 x i32> [ <i32 -128, i32 -127, i32 -126, i32 -125>, %vector.ph101 ], [ %vec.ind.next124, %vector.body120 ] ; 4 uses
  %i.cp = sub nsw <4 x i32> %vec.ind122, %broadcast.splat103
  %i.cq = sitofp <4 x i32> %i.cp to <4 x float>
  %i.cr = fmul nnan <4 x float> %i.cq, splat (float 1.270000e+02)
  %i.cs = fdiv <4 x float> %i.cr, %broadcast.splat105 ; 3 uses
  %i.ct = fcmp olt <4 x float> %i.cs, splat (float -4.096000e+03)
  %i.cu = fcmp ogt <4 x float> %i.cs, splat (float 4.096000e+03)
  %i.cv = select <4 x i1> %i.cu, <4 x float> splat (float 4.096000e+03), <4 x float> %i.cs
  %i.cw = select <4 x i1> %i.ct, <4 x float> splat (float -4.096000e+03), <4 x float> %i.cv
  %i.cx = fptosi <4 x float> %i.cw to <4 x i32>   ; 2 uses
  %i.cy = sub nsw <4 x i32> %vec.ind122, %broadcast.splat107
  %i.cz = sitofp <4 x i32> %i.cy to <4 x float>
  %i.da = fmul nnan <4 x float> %i.cz, splat (float 1.270000e+02)
  %i.db = fdiv <4 x float> %i.da, %broadcast.splat109 ; 3 uses
  %i.dc = fcmp olt <4 x float> %i.db, splat (float -4.096000e+03)
  %i.dd = fcmp ogt <4 x float> %i.db, splat (float 4.096000e+03)
  %i.de = select <4 x i1> %i.dd, <4 x float> splat (float 4.096000e+03), <4 x float> %i.db
  %i.df = select <4 x i1> %i.dc, <4 x float> splat (float -4.096000e+03), <4 x float> %i.de
  %i.dg = fptosi <4 x float> %i.df to <4 x i32>   ; 2 uses
  %i.dh = mul nsw <4 x i32> %broadcast.splat115, %i.cx
  %i.di = add nsw <4 x i32> %i.dh, splat (i32 32768)
  %i.dj = ashr <4 x i32> %i.di, splat (i32 16)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index121
  store <4 x i32> %i.dj, ptr %i.dk, align 4, !tbaa !19
  %i.dl = mul nsw <4 x i32> %broadcast.splat117, %i.dg
  %i.dm = add nsw <4 x i32> %i.dl, splat (i32 32768)
  %i.dn = ashr <4 x i32> %i.dm, splat (i32 16)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index121
  store <4 x i32> %i.dn, ptr %i.do, align 4, !tbaa !19
  %i.dp = mul <4 x i32> %broadcast.splat119, %i.cx
  %i.dq = sub <4 x i32> zeroinitializer, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index121
  store <4 x i32> %i.dq, ptr %i.dr, align 4, !tbaa !19
  %i.ds = mul <4 x i32> %broadcast.splat, %i.dg
  %i.dt = sub <4 x i32> splat (i32 32768), %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index121
  store <4 x i32> %i.dt, ptr %i.du, align 4, !tbaa !19
  %.reass = add <4 x i32> %vec.ind122, %invariant.op
  %i.dv = sitofp <4 x i32> %.reass to <4 x float>
  %i.dw = fmul nnan <4 x float> %i.dv, splat (float 2.550000e+02)
  %i.dx = fdiv <4 x float> %i.dw, %broadcast.splat113 ; 3 uses
  %i.dy = fcmp olt <4 x float> %i.dx, splat (float -4.096000e+03)
  %i.dz = fcmp ogt <4 x float> %i.dx, splat (float 4.096000e+03)
  %i.ea = select <4 x i1> %i.dz, <4 x float> splat (float 4.096000e+03), <4 x float> %i.dx
  %i.eb = select <4 x i1> %i.dy, <4 x float> splat (float -4.096000e+03), <4 x float> %i.ea
  %i.ec = fptosi <4 x float> %i.eb to <4 x i32>
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index121
  store <4 x i32> %i.ec, ptr %i.ed, align 4, !tbaa !19
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %vec.ind.next124 = add nsw <4 x i32> %vec.ind122, splat (i32 4)
  %i.ee = icmp eq i64 %index.next123, 256
  br i1 %i.ee, label %middle.block125, label %vector.body120, !llvm.loop !39

middle.block125:                                  ; preds = %vector.body120
  ret i32 0
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!"", !5, i64 0, !9, i64 36, !9, i64 40, !9, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!11 = !{!"", !6, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !10, i64 28, !5, i64 112, !5, i64 6116, !5, i64 12120}
!12 = !{!11, !9, i64 20}
!13 = !{!9, !9, i64 0}
!14 = !{!11, !9, i64 16}
!15 = !{!11, !9, i64 24}
!16 = !{!11, !9, i64 64}
!17 = !{!11, !9, i64 4}
!18 = !{!11, !6, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!11, !6, i64 76}
!21 = !{!11, !6, i64 80}
!22 = !{!11, !6, i64 84}
!23 = !{!"any pointer", !5, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = !{!"p1 int", !23, i64 0}
!26 = !{!"", !24, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!27 = !{!26, !25, i64 40}
!28 = !{!26, !25, i64 8}
!29 = !{!26, !25, i64 32}
!30 = !{!26, !25, i64 24}
!31 = !{!26, !25, i64 16}
!32 = !{!11, !9, i64 96}
!33 = !{!11, !9, i64 100}
!34 = !{!11, !9, i64 88}
!35 = !{!11, !9, i64 104}
!36 = !{!11, !9, i64 8}
!37 = !{!11, !9, i64 108}
!38 = !{!11, !9, i64 12}
!39 = distinct !{!39, !42, !43}
!40 = !{!26, !24, i64 0}
!41 = !{!5, !5, i64 0}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
