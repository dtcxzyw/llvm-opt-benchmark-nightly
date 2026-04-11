inline.NumInlined: 8639
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_log:bb.a
  br i1 %i.f, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %.val347 = load ptr, ptr %2, align 8, !tbaa !7
  %3 = getelementptr inbounds nuw i8, ptr %.val347, i64 237760
  %.0.copyload.i = load double, ptr %3, align 1   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i) #8, !srcloc !35
  %.val346.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val346.a, i64 237840
  %.0.copyload.i349.a = load double, ptr %i.g, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i349.a) #8, !srcloc !35
  %.val345 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = getelementptr inbounds nuw i8, ptr %.val345, i64 237832
  %.0.copyload.i350 = load double, ptr %4, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i350) #8, !srcloc !35
  %.val344.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val344.a, i64 237824
  %.0.copyload.i351.a = load double, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i351.a) #8, !srcloc !35
  %.val343.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val343.a, i64 237816
  %.0.copyload.i352.a = load double, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i352.a) #8, !srcloc !35
  %.val342.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val342.a, i64 237808
  %.0.copyload.i353.a = load double, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i353.a) #8, !srcloc !35
  %.val341.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val341.a, i64 237800
  %.0.copyload.i354.a = load double, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i354.a) #8, !srcloc !35
  %.val340 = load ptr, ptr %2, align 8, !tbaa !7
  %5 = getelementptr inbounds nuw i8, ptr %.val340, i64 237792
  %.0.copyload.i355 = load double, ptr %5, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i355) #8, !srcloc !35
  %.val339.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val339.a, i64 237784
  %.0.copyload.i356.a = load double, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i356.a) #8, !srcloc !35
  %.val338.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val338.a, i64 237776
  %.0.copyload.i357.a = load double, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i357.a) #8, !srcloc !35
  %.val337.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val337.a, i64 237768
  %.0.copyload.i358.a = load double, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i358.a) #8, !srcloc !35
  %i.o = fadd double %1, -1.000000e+00            ; 11 uses
  %6 = fmul double %i.o, 0x41A0000000000000       ; 2 uses
  %i.p = fadd double %i.o, %6
  %7 = fsub double %i.p, %6                       ; 2 uses
  %8 = insertelement <2 x double> poison, double %7, i64 0 ; 2 uses
  %9 = insertelement <2 x double> %8, double %i.o, i64 1 ; 2 uses
  %10 = fmul <2 x double> %9, %9                  ; 2 uses
  %11 = extractelement <2 x double> %10, i64 1    ; 3 uses
  %12 = fmul double %i.o, %11                     ; 4 uses
  %13 = fmul double %12, %.0.copyload.i349.a
  %i.q = fmul double %11, %.0.copyload.i350
  %14 = fmul double %i.o, %.0.copyload.i351.a
  %15 = fadd double %14, %.0.copyload.i352.a
  %16 = fadd double %i.q, %15
  %17 = fadd double %13, %16
  %i.r = fmul double %12, %17
  %18 = insertelement <2 x double> poison, double %.0.copyload.i, i64 0
  %19 = insertelement <2 x double> %18, double %.0.copyload.i356.a, i64 1
  %20 = fmul <2 x double> %10, %19                ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %i.s = fadd double %i.o, %21                    ; 2 uses
  %22 = fmul double %11, %.0.copyload.i353.a
  %23 = fmul double %i.o, %.0.copyload.i354.a
  %i.t = fadd double %23, %.0.copyload.i355
  %i.u = fadd double %22, %i.t
  %i.v = fmul double %i.o, %.0.copyload.i357.a
  %i.w = fsub double %i.o, %7
  %i.x = fmul double %i.w, %.0.copyload.i
  %24 = insertelement <2 x double> poison, double %i.o, i64 0
  %25 = insertelement <2 x double> %24, double %i.u, i64 1
  %26 = insertelement <2 x double> %8, double %i.r, i64 1
  %27 = fadd <2 x double> %25, %26
  %28 = insertelement <2 x double> poison, double %i.x, i64 0
  %29 = insertelement <2 x double> %28, double %12, i64 1
  %30 = fmul <2 x double> %27, %29
  %i.y = fadd double %i.v, %.0.copyload.i358.a
  %31 = fsub double %i.o, %i.s
  %32 = insertelement <2 x double> poison, double %31, i64 0
  %33 = insertelement <2 x double> %32, double %i.y, i64 1
  %34 = fadd <2 x double> %20, %33
  %35 = fadd <2 x double> %30, %34                ; 2 uses
  %36 = extractelement <2 x double> %35, i64 1
  %37 = fmul double %12, %36
  %38 = extractelement <2 x double> %35, i64 0
  %i.z = fadd double %38, %37
  %i.aa = fadd double %i.s, %i.z
  br label %bb.l

bb.d:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@w2c_hermes_log:bb.a
  %i.bq = fsub double %i.bn, %.0.copyload.i364
  %i.br = fmul double %.0.copyload.i362, %i.bq    ; 7 uses
  %i.bs = fadd double %i.bf, %i.br                ; 2 uses
  %i.bt = fmul double %i.br, %i.br                ; 2 uses
  %i.bu = fmul double %i.br, %i.bt
  %.val330 = load ptr, ptr %i.az, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val330, i64 237752
end_hunk_1
begin_hunk_2_@w2c_hermes_log:bb.a
  %.0.copyload.i366 = load double, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i366) #8, !srcloc !35
  %i.by = fadd double %i.bw, %.0.copyload.i366
  %.val328 = load ptr, ptr %i.az, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val328, i64 237736
  %.0.copyload.i367 = load double, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i367) #8, !srcloc !35
  %.val327 = load ptr, ptr %i.az, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val327, i64 237728
  %.0.copyload.i368 = load double, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i368) #8, !srcloc !35
  %.val326 = load ptr, ptr %i.az, align 8, !tbaa !7
  %39 = getelementptr inbounds nuw i8, ptr %.val326, i64 237720
  %.0.copyload.i369 = load double, ptr %39, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i369) #8, !srcloc !35
  %.val.a = load ptr, ptr %i.az, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.a, i64 237712
  %.0.copyload.i370.a = load double, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i370.a) #8, !srcloc !35
  %i.cc = fmul double %.0.copyload.i370.a, %i.ay
  %40 = fsub double %i.bf, %i.bs
  %41 = insertelement <2 x double> poison, double %i.bt, i64 0
  %42 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = insertelement <2 x double> poison, double %i.by, i64 0
  %44 = insertelement <2 x double> %43, double %.0.copyload.i369, i64 1
  %45 = fmul <2 x double> %42, %44
  %46 = fadd double %i.br, %40
  %i.cd = fmul double %i.br, %.0.copyload.i367
  %47 = insertelement <2 x double> poison, double %i.cd, i64 0
  %48 = insertelement <2 x double> %47, double %46, i64 1
  %49 = insertelement <2 x double> poison, double %.0.copyload.i368, i64 0
  %50 = insertelement <2 x double> %49, double %i.cc, i64 1
  %51 = fadd <2 x double> %48, %50
  %52 = fadd <2 x double> %45, %51                ; 2 uses
  %53 = extractelement <2 x double> %52, i64 0
  %54 = fmul double %i.bu, %53
  %55 = extractelement <2 x double> %52, i64 1
  %i.ce = fadd double %54, %55
  %i.cf = fadd double %i.bs, %i.ce
  br label %bb.l

end_hunk_2
begin_hunk_3_@w2c_hermes_log1p:bb.a
bb.k:                                             ; preds = %bb.f, %bb.j
  %.1188 = phi double [ %.0187, %bb.j ], [ 0.000000e+00, %bb.f ]
  %.0186 = phi double [ %i.ag, %bb.j ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0 = phi double [ %i.af, %bb.j ], [ %1, %bb.f ] ; 4 uses
  %i.ah = fmul nnan double %.0186, 0x3FE62E42FEE00000
  %i.ai = fadd double %.0, 2.000000e+00
  %i.aj = fdiv double %.0, %i.ai                  ; 3 uses
  %i.ak = fmul double %i.aj, %i.aj                ; 3 uses
  %i.al = fmul double %i.ak, %i.ak                ; 5 uses
  %i.am = fmul double %i.al, 0x3FC39A09D078C69F
  %2 = fadd double %i.am, 0x3FCC71C51D8E78AF
  %3 = insertelement <2 x double> poison, double %.0, i64 0
  %4 = insertelement <2 x double> %3, double %i.al, i64 1 ; 2 uses
  %5 = insertelement <2 x double> <double 5.000000e-01, double poison>, double %2, i64 1
  %6 = fmul <2 x double> %4, %5
  %7 = fadd <2 x double> %6, <double -0.000000e+00, double 0x3FD999999997FA04>
  %8 = fmul <2 x double> %4, %7                   ; 2 uses
  %i.an = fmul double %i.al, 0x3FC2F112DF3E5244
  %i.ao = fadd double %i.an, 0x3FC7466496CB03DE
  %i.ap = fmul double %i.al, %i.ao
  %i.aq = fadd double %i.ap, 0x3FD2492494229359
  %i.ar = fmul double %i.al, %i.aq
  %i.as = fadd double %i.ar, 0x3FE5555555555593
  %i.at = fmul double %i.ak, %i.as
  %9 = extractelement <2 x double> %8, i64 1
  %i.au = fadd double %9, %i.at
  %10 = extractelement <2 x double> %8, i64 0     ; 2 uses
  %i.av = fadd double %10, %i.au
  %i.aw = fmul double %i.aj, %i.av
  %i.ax = fmul nnan double %.0186, 0x3DEA39EF35793C76
  %i.ay = fadd double %.1188, %i.ax
  %i.az = fadd double %i.ay, %i.aw
  %i.ba = fsub double %i.az, %10
  %i.bb = fadd double %.0, %i.ba
  %i.bc = fadd double %i.ah, %i.bb
  br label %bb.l
end_hunk_3
begin_hunk_4_@w2c_hermes_log2:bb.a
  %i.cb = ashr i64 %i.bw, 52
  %i.cc = trunc nsw i64 %i.cb to i32
  %i.cd = sitofp i32 %i.cc to double
  %.val348 = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val348, i64 244800
  %.0.copyload.i377 = load double, ptr %i.ce, align 1 ; 3 uses
end_hunk_4
begin_hunk_5_@w2c_hermes_log2:bb.a
  %.0.copyload.i380 = load double, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i380) #8, !srcloc !35
  %i.cp = fsub double %i.cm, %.0.copyload.i380
  %.val344 = load ptr, ptr %i.by, align 8, !tbaa !7
  %2 = getelementptr inbounds nuw i8, ptr %.val344, i64 244856
  %.0.copyload.i381 = load double, ptr %2, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i381) #8, !srcloc !35
  %.val343 = load ptr, ptr %i.by, align 8, !tbaa !7
  %3 = getelementptr inbounds nuw i8, ptr %.val343, i64 244848
  %.0.copyload.i382 = load double, ptr %3, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i382) #8, !srcloc !35
  %.val342.a = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.val342.a, i64 244840
  %.0.copyload.i383.a = load double, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i383.a) #8, !srcloc !35
  %.val341.a = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val341.a, i64 244832
  %.0.copyload.i384.a = load double, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i384.a) #8, !srcloc !35
  %.val340 = load ptr, ptr %i.by, align 8, !tbaa !7
  %4 = getelementptr inbounds nuw i8, ptr %.val340, i64 244824
  %.0.copyload.i385 = load double, ptr %4, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i385) #8, !srcloc !35
  %.val339.a = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val339.a, i64 244816
  %.0.copyload.i386.a = load double, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i386.a) #8, !srcloc !35
  %.val.a = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.a, i64 244808
  %.0.copyload.i387.a = load double, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i387.a) #8, !srcloc !35
  %5 = fmul double %.0.copyload.i378, %i.cp       ; 8 uses
  %6 = bitcast double %5 to i64
  %7 = and i64 %6, -4294967296
  %8 = bitcast i64 %7 to double                   ; 2 uses
  %i.cu = fadd double %.0.copyload.i376, %i.cd    ; 2 uses
  %i.cv = fmul double %5, %5                      ; 4 uses
  %9 = fmul double %5, %.0.copyload.i381
  %10 = fmul double %.0.copyload.i377, %8         ; 2 uses
  %11 = fadd double %9, %.0.copyload.i382
  %12 = fadd double %i.cu, %10                    ; 2 uses
  %i.cw = fmul double %5, %.0.copyload.i383.a
  %13 = fadd double %i.cw, %.0.copyload.i384.a
  %14 = fsub double %5, %8
  %15 = fmul double %5, %.0.copyload.i385
  %16 = fmul double %.0.copyload.i377, %14
  %i.cx = fadd double %15, %.0.copyload.i386.a
  %17 = insertelement <2 x double> poison, double %i.cv, i64 0
  %18 = insertelement <2 x double> %17, double %5, i64 1
  %19 = insertelement <2 x double> poison, double %13, i64 0
  %20 = insertelement <2 x double> %19, double %.0.copyload.i387.a, i64 1
  %21 = fmul <2 x double> %18, %20
  %22 = insertelement <2 x double> poison, double %i.cx, i64 0
  %23 = insertelement <2 x double> %22, double %16, i64 1
  %24 = fadd <2 x double> %21, %23
  %25 = fsub double %i.cu, %12
  %i.cy = fmul double %i.cv, %i.cv
  %i.cz = fadd double %10, %25
  %26 = fmul double %i.cy, %11
  %27 = insertelement <2 x double> poison, double %26, i64 0
  %28 = insertelement <2 x double> %27, double %i.cz, i64 1
  %29 = fadd <2 x double> %28, %24                ; 2 uses
  %30 = extractelement <2 x double> %29, i64 0
  %31 = fmul double %i.cv, %30
  %32 = extractelement <2 x double> %29, i64 1
  %i.da = fadd double %31, %32
  %i.db = fadd double %12, %i.da
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.b, %bb.i, %bb.f, %bb.c
end_hunk_5
begin_hunk_6_@w2c_hermes_log10:bb.a
  %i.p = add i32 %.0202, 614242                   ; 2 uses
  %i.q = lshr i32 %i.p, 20
  %i.r = add nsw i32 %i.q, %.0203
  %i.s = sitofp i32 %i.r to double
  %i.t = and i64 %.0204, 4294967295
  %i.u = and i32 %i.p, 1048575
  %i.v = add nuw nsw i32 %i.u, 1072079006
end_hunk_6
begin_hunk_7_@w2c_hermes_log10:bb.a
  %i.ad = fsub double %i.aa, %i.ac
  %i.ae = bitcast double %i.ad to i64
  %i.af = and i64 %i.ae, -4294967296
  %2 = fadd double %i.aa, 2.000000e+00
  %3 = fdiv double %i.aa, %2                      ; 3 uses
  %4 = fmul double %3, %3                         ; 3 uses
  %5 = fmul double %4, %4                         ; 2 uses
  %i.ag = fmul double %5, 0x3FC2F112DF3E5244
  %i.ah = fadd double %i.ag, 0x3FC7466496CB03DE
  %6 = insertelement <2 x double> poison, double %5, i64 0 ; 2 uses
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %8 = insertelement <2 x double> <double 0x3FC39A09D078C69F, double poison>, double %i.ah, i64 1
  %9 = fmul <2 x double> %7, %8
  %10 = fadd <2 x double> %9, <double 0x3FCC71C51D8E78AF, double 0x3FD2492494229359>
  %11 = fmul <2 x double> %7, %10
  %12 = fadd <2 x double> %11, <double 0x3FD999999997FA04, double 0x3FE5555555555593>
  %13 = insertelement <2 x double> %6, double %4, i64 1
  %14 = fmul <2 x double> %13, %12                ; 2 uses
  %shift = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %14, %shift
  %15 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ai = fadd double %i.ac, %15
  %i.aj = fmul double %3, %i.ai
  %16 = bitcast i64 %i.af to double               ; 3 uses
  %17 = fsub double %i.aa, %16
  %18 = fsub double %17, %i.ac
  %i.ak = fadd double %18, %i.aj                  ; 2 uses
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %20 = insertelement <2 x double> %19, double %i.ak, i64 1
  %21 = fmul <2 x double> %20, splat (double 0x3FDBCB7B15200000) ; 2 uses
  %22 = insertelement <2 x double> poison, double %i.s, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = fmul nnan <2 x double> %23, <double 0x3FD34413509F6000, double 0x3D59FEF311F12B36> ; 3 uses
  %25 = insertelement <2 x double> %24, double %i.ak, i64 1
  %26 = insertelement <2 x double> %21, double %16, i64 1
  %27 = fadd <2 x double> %25, %26                ; 2 uses
  %28 = fmul <2 x double> %27, <double 1.000000e+00, double 0x3DBB9438CA9AADD5> ; 2 uses
  %29 = fsub <2 x double> %24, %28
  %30 = fadd <2 x double> %24, %28
  %31 = shufflevector <2 x double> %29, <2 x double> %30, <2 x i32> <i32 0, i32 3>
  %32 = fadd <2 x double> %21, %31                ; 2 uses
  %shift214 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop215 = fadd <2 x double> %32, %shift214
  %foldExtExtBinop217 = fadd <2 x double> %27, %foldExtExtBinop215
  %33 = extractelement <2 x double> %foldExtExtBinop217, i64 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.h, %bb.e, %bb.d
  %.0205 = phi double [ 0.000000e+00, %bb.h ], [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ %1, %bb.f ], [ %33, %bb.j ]
  ret double %.0205
}

end_hunk_7
