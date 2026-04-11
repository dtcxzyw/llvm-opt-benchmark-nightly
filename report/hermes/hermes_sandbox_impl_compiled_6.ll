inline.NumInlined: 8639
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_log:bb.a
  br i1 %i.f, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = fadd double %1, -1.000000e+00              ; 12 uses
  %3 = fmul double %2, 0x41A0000000000000         ; 2 uses
  %4 = fadd double %2, %3
  %5 = fsub double %4, %3                         ; 4 uses
  %6 = fmul double %5, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %.val346.a = load ptr, ptr %7, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val346.a, i64 237760
  %.0.copyload.i349.a = load double, ptr %i.g, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i349.a) #8, !srcloc !35
  %8 = fmul double %6, %.0.copyload.i349.a        ; 2 uses
  %9 = fadd double %2, %8                         ; 2 uses
  %10 = fmul double %2, %2                        ; 4 uses
  %11 = fmul double %2, %10                       ; 4 uses
  %.val344.a = load ptr, ptr %7, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val344.a, i64 237840
  %.0.copyload.i351.a = load double, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i351.a) #8, !srcloc !35
  %12 = fmul double %11, %.0.copyload.i351.a
  %.val343.a = load ptr, ptr %7, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val343.a, i64 237832
  %.0.copyload.i352.a = load double, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i352.a) #8, !srcloc !35
  %13 = fmul double %10, %.0.copyload.i352.a
  %.val342.a = load ptr, ptr %7, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val342.a, i64 237824
  %.0.copyload.i353.a = load double, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i353.a) #8, !srcloc !35
  %14 = fmul double %2, %.0.copyload.i353.a
  %.val341.a = load ptr, ptr %7, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val341.a, i64 237816
  %.0.copyload.i354.a = load double, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i354.a) #8, !srcloc !35
  %15 = fadd double %14, %.0.copyload.i354.a
  %16 = fadd double %13, %15
  %17 = fadd double %12, %16
  %18 = fmul double %11, %17
  %.val339.a = load ptr, ptr %7, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val339.a, i64 237808
  %.0.copyload.i356.a = load double, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i356.a) #8, !srcloc !35
  %19 = fmul double %10, %.0.copyload.i356.a
  %.val338.a = load ptr, ptr %7, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val338.a, i64 237800
  %.0.copyload.i357.a = load double, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i357.a) #8, !srcloc !35
  %20 = fmul double %2, %.0.copyload.i357.a
  %.val337.a = load ptr, ptr %7, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val337.a, i64 237792
  %.0.copyload.i358.a = load double, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i358.a) #8, !srcloc !35
  %i.o = fadd double %20, %.0.copyload.i358.a
  %i.p = fadd double %19, %i.o
  %21 = fadd double %18, %i.p
  %22 = fmul double %11, %21
  %.val339 = load ptr, ptr %7, align 8, !tbaa !7
  %23 = getelementptr inbounds nuw i8, ptr %.val339, i64 237784
  %.0.copyload.i356 = load double, ptr %23, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i356) #8, !srcloc !35
  %i.q = fmul double %10, %.0.copyload.i356
  %.val338 = load ptr, ptr %7, align 8, !tbaa !7
  %24 = getelementptr inbounds nuw i8, ptr %.val338, i64 237776
  %.0.copyload.i357 = load double, ptr %24, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i357) #8, !srcloc !35
  %i.r = fmul double %2, %.0.copyload.i357
  %.val337 = load ptr, ptr %7, align 8, !tbaa !7
  %25 = getelementptr inbounds nuw i8, ptr %.val337, i64 237768
  %.0.copyload.i358 = load double, ptr %25, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i358) #8, !srcloc !35
  %i.s = fadd double %i.r, %.0.copyload.i358
  %i.t = fadd double %i.q, %i.s
  %i.u = fadd double %22, %i.t
  %i.v = fmul double %11, %i.u
  %i.w = fsub double %2, %5
  %i.x = fmul double %i.w, %.0.copyload.i349.a
  %i.y = fadd double %2, %5
  %26 = fmul double %i.y, %i.x
  %27 = fsub double %2, %9
  %28 = fadd double %8, %27
  %29 = fadd double %26, %28
  %i.z = fadd double %29, %i.v
  %i.aa = fadd double %9, %i.z
  br label %bb.l

bb.d:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@w2c_hermes_log:bb.a
  %i.bq = fsub double %i.bn, %.0.copyload.i364
  %i.br = fmul double %.0.copyload.i362, %i.bq    ; 7 uses
  %i.bs = fadd double %i.bf, %i.br                ; 2 uses
  %i.bt = fmul double %i.br, %i.br                ; 3 uses
  %i.bu = fmul double %i.br, %i.bt
  %.val330 = load ptr, ptr %i.az, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val330, i64 237752
end_hunk_1
begin_hunk_2_@w2c_hermes_log:bb.a
  %.0.copyload.i366 = load double, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i366) #8, !srcloc !35
  %i.by = fadd double %i.bw, %.0.copyload.i366
  %30 = fmul double %i.bt, %i.by
  %.val328 = load ptr, ptr %i.az, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val328, i64 237736
  %.0.copyload.i367 = load double, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i367) #8, !srcloc !35
  %31 = fmul double %i.br, %.0.copyload.i367
  %.val327 = load ptr, ptr %i.az, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val327, i64 237728
  %.0.copyload.i368 = load double, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i368) #8, !srcloc !35
  %32 = fadd double %31, %.0.copyload.i368
  %33 = fadd double %30, %32
  %34 = fmul double %i.bu, %33
  %.val.a = load ptr, ptr %i.az, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.a, i64 237720
  %.0.copyload.i370.a = load double, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i370.a) #8, !srcloc !35
  %i.cc = fmul double %i.bt, %.0.copyload.i370.a
  %.val = load ptr, ptr %i.az, align 8, !tbaa !7
  %35 = getelementptr inbounds nuw i8, ptr %.val, i64 237712
  %.0.copyload.i370 = load double, ptr %35, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i370) #8, !srcloc !35
  %i.cd = fmul double %.0.copyload.i370, %i.ay
  %36 = fsub double %i.bf, %i.bs
  %37 = fadd double %i.br, %36
  %38 = fadd double %37, %i.cd
  %39 = fadd double %i.cc, %38
  %i.ce = fadd double %34, %39
  %i.cf = fadd double %i.bs, %i.ce
  br label %bb.l

end_hunk_2
begin_hunk_3_@w2c_hermes_log1p:bb.a
bb.k:                                             ; preds = %bb.f, %bb.j
  %.1188 = phi double [ %.0187, %bb.j ], [ 0.000000e+00, %bb.f ]
  %.0186 = phi double [ %i.ag, %bb.j ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0 = phi double [ %i.af, %bb.j ], [ %1, %bb.f ] ; 5 uses
  %i.ah = fmul nnan double %.0186, 0x3FE62E42FEE00000
  %i.ai = fadd double %.0, 2.000000e+00
  %i.aj = fdiv double %.0, %i.ai                  ; 3 uses
  %i.ak = fmul double %.0, 5.000000e-01
  %i.al = fmul double %.0, %i.ak                  ; 2 uses
  %i.am = fmul double %i.aj, %i.aj                ; 3 uses
  %2 = fmul double %i.am, %i.am                   ; 6 uses
  %3 = fmul double %2, 0x3FC39A09D078C69F
  %4 = fadd double %3, 0x3FCC71C51D8E78AF
  %5 = fmul double %2, %4
  %6 = fadd double %5, 0x3FD999999997FA04
  %7 = fmul double %2, %6
  %i.an = fmul double %2, 0x3FC2F112DF3E5244
  %i.ao = fadd double %i.an, 0x3FC7466496CB03DE
  %i.ap = fmul double %2, %i.ao
  %i.aq = fadd double %i.ap, 0x3FD2492494229359
  %i.ar = fmul double %2, %i.aq
  %i.as = fadd double %i.ar, 0x3FE5555555555593
  %i.at = fmul double %i.am, %i.as
  %i.au = fadd double %7, %i.at
  %i.av = fadd double %i.al, %i.au
  %i.aw = fmul double %i.aj, %i.av
  %i.ax = fmul nnan double %.0186, 0x3DEA39EF35793C76
  %i.ay = fadd double %.1188, %i.ax
  %i.az = fadd double %i.ay, %i.aw
  %i.ba = fsub double %i.az, %i.al
  %i.bb = fadd double %.0, %i.ba
  %i.bc = fadd double %i.ah, %i.bb
  br label %bb.l
end_hunk_3
begin_hunk_4_@w2c_hermes_log2:bb.a
  %i.cb = ashr i64 %i.bw, 52
  %i.cc = trunc nsw i64 %i.cb to i32
  %i.cd = sitofp i32 %i.cc to double
  %2 = fadd double %.0.copyload.i376, %i.cd       ; 2 uses
  %.val348 = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val348, i64 244800
  %.0.copyload.i377 = load double, ptr %i.ce, align 1 ; 3 uses
end_hunk_4
begin_hunk_5_@w2c_hermes_log2:bb.a
  %.0.copyload.i380 = load double, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i380) #8, !srcloc !35
  %i.cp = fsub double %i.cm, %.0.copyload.i380
  %3 = fmul double %.0.copyload.i378, %i.cp       ; 8 uses
  %4 = bitcast double %3 to i64
  %5 = and i64 %4, -4294967296
  %6 = bitcast i64 %5 to double                   ; 2 uses
  %7 = fmul double %.0.copyload.i377, %6          ; 2 uses
  %8 = fadd double %2, %7                         ; 2 uses
  %9 = fmul double %3, %3                         ; 4 uses
  %10 = fmul double %9, %9
  %.val342.a = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.val342.a, i64 244856
  %.0.copyload.i383.a = load double, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i383.a) #8, !srcloc !35
  %11 = fmul double %3, %.0.copyload.i383.a
  %.val341.a = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val341.a, i64 244848
  %.0.copyload.i384.a = load double, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i384.a) #8, !srcloc !35
  %12 = fadd double %11, %.0.copyload.i384.a
  %13 = fmul double %10, %12
  %.val339.a = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val339.a, i64 244840
  %.0.copyload.i386.a = load double, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i386.a) #8, !srcloc !35
  %14 = fmul double %3, %.0.copyload.i386.a
  %.val.a = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.a, i64 244832
  %.0.copyload.i387.a = load double, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i387.a) #8, !srcloc !35
  %i.cu = fadd double %14, %.0.copyload.i387.a
  %i.cv = fmul double %9, %i.cu
  %.val340 = load ptr, ptr %i.by, align 8, !tbaa !7
  %15 = getelementptr inbounds nuw i8, ptr %.val340, i64 244824
  %.0.copyload.i385 = load double, ptr %15, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i385) #8, !srcloc !35
  %i.cw = fmul double %3, %.0.copyload.i385
  %.val339 = load ptr, ptr %i.by, align 8, !tbaa !7
  %16 = getelementptr inbounds nuw i8, ptr %.val339, i64 244816
  %.0.copyload.i386 = load double, ptr %16, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i386) #8, !srcloc !35
  %i.cx = fadd double %i.cw, %.0.copyload.i386
  %17 = fadd double %i.cv, %i.cx
  %18 = fadd double %13, %17
  %19 = fmul double %9, %18
  %20 = fsub double %3, %6
  %21 = fmul double %.0.copyload.i377, %20
  %.val = load ptr, ptr %i.by, align 8, !tbaa !7
  %22 = getelementptr inbounds nuw i8, ptr %.val, i64 244808
  %.0.copyload.i387 = load double, ptr %22, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i387) #8, !srcloc !35
  %i.cy = fmul double %3, %.0.copyload.i387
  %i.cz = fadd double %21, %i.cy
  %23 = fsub double %2, %8
  %24 = fadd double %7, %23
  %25 = fadd double %24, %i.cz
  %i.da = fadd double %19, %25
  %i.db = fadd double %8, %i.da
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.b, %bb.i, %bb.f, %bb.c
end_hunk_5
begin_hunk_6_@w2c_hermes_log10:bb.a
  %i.p = add i32 %.0202, 614242                   ; 2 uses
  %i.q = lshr i32 %i.p, 20
  %i.r = add nsw i32 %i.q, %.0203
  %i.s = sitofp i32 %i.r to double                ; 2 uses
  %2 = fmul nnan double %i.s, 0x3FD34413509F6000  ; 2 uses
  %i.t = and i64 %.0204, 4294967295
  %i.u = and i32 %i.p, 1048575
  %i.v = add nuw nsw i32 %i.u, 1072079006
end_hunk_6
begin_hunk_7_@w2c_hermes_log10:bb.a
  %i.ad = fsub double %i.aa, %i.ac
  %i.ae = bitcast double %i.ad to i64
  %i.af = and i64 %i.ae, -4294967296
  %3 = bitcast i64 %i.af to double                ; 3 uses
  %i.ag = fmul double %3, 0x3FDBCB7B15200000      ; 2 uses
  %i.ah = fadd double %2, %i.ag                   ; 2 uses
  %4 = fsub double %2, %i.ah
  %5 = fadd double %i.ag, %4
  %6 = fadd double %i.aa, 2.000000e+00
  %7 = fdiv double %i.aa, %6                      ; 3 uses
  %8 = fmul double %7, %7                         ; 3 uses
  %9 = fmul double %8, %8                         ; 6 uses
  %10 = fmul double %9, 0x3FC39A09D078C69F
  %11 = fadd double %10, 0x3FCC71C51D8E78AF
  %12 = fmul double %9, %11
  %i.ai = fadd double %12, 0x3FD999999997FA04
  %i.aj = fmul double %9, %i.ai
  %13 = fmul double %9, 0x3FC2F112DF3E5244
  %14 = fadd double %13, 0x3FC7466496CB03DE
  %15 = fmul double %9, %14
  %i.ak = fadd double %15, 0x3FD2492494229359
  %16 = fmul double %9, %i.ak
  %17 = fadd double %16, 0x3FE5555555555593
  %18 = fmul double %8, %17
  %19 = fadd double %i.aj, %18
  %20 = fadd double %i.ac, %19
  %21 = fmul double %7, %20
  %22 = fsub double %i.aa, %3
  %23 = fsub double %22, %i.ac
  %24 = fadd double %23, %21                      ; 2 uses
  %25 = fmul double %24, 0x3FDBCB7B15200000
  %26 = fmul nnan double %i.s, 0x3D59FEF311F12B36
  %27 = fadd double %24, %3
  %28 = fmul double %27, 0x3DBB9438CA9AADD5
  %29 = fadd double %26, %28
  %30 = fadd double %25, %29
  %31 = fadd double %5, %30
  %32 = fadd double %i.ah, %31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.h, %bb.e, %bb.d
  %.0205 = phi double [ 0.000000e+00, %bb.h ], [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ %1, %bb.f ], [ %32, %bb.j ]
  ret double %.0205
}

end_hunk_7
