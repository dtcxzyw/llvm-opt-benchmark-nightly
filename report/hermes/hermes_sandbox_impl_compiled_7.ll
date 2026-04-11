inline.NumInlined: 10002
inline.NumDeleted: 29
begin_hunk_0_@w2c_hermes_pow:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %.val805, i64 231384
  %.0.copyload.i819 = load double, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i819) #13, !srcloc !44
  %sh.diff = lshr i64 %i.cc, 40
  %i.ci = and i64 %sh.diff, 4064                  ; 3 uses
  %.val804 = load ptr, ptr %i.cg, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@w2c_hermes_pow:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 231472
  %.0.copyload.i820 = load double, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i820) #13, !srcloc !44
  %i.cl = and i64 %i.cc, -4503599627370496
  %i.cm = sub i64 %.1763, %i.cl                   ; 2 uses
  %i.cn = add i64 %i.cm, 2147483648
end_hunk_1
begin_hunk_2_@w2c_hermes_pow:bb.a
  %.0.copyload.i821 = load double, ptr %i.cr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i821) #13, !srcloc !44
  %i.cs = fmul double %.0.copyload.i821, %i.cp
  %3 = bitcast i64 %i.cm to double
  %4 = fsub double %3, %i.cp
  %.val802 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %5 = getelementptr inbounds nuw i8, ptr %.val802, i64 231376
  %.0.copyload.i822 = load double, ptr %5, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i822) #13, !srcloc !44
  %.val801.a = load ptr, ptr %i.cg, align 8, !tbaa !8
  %6 = getelementptr inbounds nuw i8, ptr %.val801.a, i64 %i.ci
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 231464
  %.0.copyload.i823.a = load double, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i823.a) #13, !srcloc !44
  %.val800 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %.val800, i64 231392
  %.0.copyload.i824 = load double, ptr %7, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i824) #13, !srcloc !44
  %.val799.a = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.val799.a, i64 231440
  %.0.copyload.i825 = load double, ptr %i.cu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i825) #13, !srcloc !44
  %.val798 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.val798, i64 231432
  %.0.copyload.i826.a = load double, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i826.a) #13, !srcloc !44
  %.val797 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %8 = getelementptr inbounds nuw i8, ptr %.val797, i64 231424
  %.0.copyload.i827 = load double, ptr %8, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i827) #13, !srcloc !44
  %.val796 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw i8, ptr %.val796, i64 231416
  %.0.copyload.i828 = load double, ptr %9, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i828) #13, !srcloc !44
  %.val795.a = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.val795.a, i64 231408
  %.0.copyload.i829.a = load double, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i829.a) #13, !srcloc !44
  %.val794 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw i8, ptr %.val794, i64 231400
  %.0.copyload.i830 = load double, ptr %10, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i830) #13, !srcloc !44
  %i.cx = fadd double %i.cs, -1.000000e+00        ; 3 uses
  %i.cy = fmul double %4, %.0.copyload.i821       ; 2 uses
  %i.cz = fadd double %i.cy, %i.cx                ; 8 uses
  %11 = fmul double %.0.copyload.i822, %i.cf
  %12 = fmul double %i.cz, %.0.copyload.i825
  %i.da = fadd double %11, %.0.copyload.i823.a    ; 2 uses
  %13 = fadd double %i.cz, %i.da                  ; 3 uses
  %i.db = fmul double %i.cz, %.0.copyload.i824    ; 2 uses
  %14 = fmul double %i.cx, %.0.copyload.i824      ; 2 uses
  %15 = fadd double %i.db, %14
  %16 = insertelement <2 x double> poison, double %i.cx, i64 0
  %17 = insertelement <2 x double> %16, double %i.cz, i64 1
  %18 = insertelement <2 x double> poison, double %14, i64 0
  %19 = insertelement <2 x double> %18, double %.0.copyload.i829.a, i64 1
  %20 = fmul <2 x double> %17, %19                ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %22 = fadd double %13, %21                      ; 3 uses
  %23 = fsub double %13, %22
  %i.dc = fmul double %i.cz, %i.db                ; 3 uses
  %24 = fmul double %i.cy, %15
  %25 = fmul double %i.cz, %i.dc
  %26 = fadd double %12, %.0.copyload.i826.a
  %27 = fsub double %i.da, %13
  %i.dd = fmul double %i.dc, %26
  %28 = fadd double %i.cz, %27
  %29 = fmul double %i.cz, %.0.copyload.i827
  %30 = fmul double %.0.copyload.i819, %i.cf
  %i.de = fadd double %29, %.0.copyload.i828
  %i.df = fadd double %30, %.0.copyload.i820
  %31 = fadd double %i.dd, %i.de
  %32 = fadd double %i.df, %28
  %33 = fmul double %i.dc, %31
  %34 = fadd double %32, %24
  %35 = insertelement <2 x double> poison, double %23, i64 0
  %36 = insertelement <2 x double> %35, double %.0.copyload.i830, i64 1
  %37 = fadd <2 x double> %20, %36
  %38 = insertelement <2 x double> poison, double %34, i64 0
  %39 = insertelement <2 x double> %38, double %33, i64 1
  %40 = fadd <2 x double> %39, %37                ; 2 uses
  %41 = extractelement <2 x double> %40, i64 1
  %42 = fmul double %25, %41
  %43 = extractelement <2 x double> %40, i64 0
  %i.dg = fadd double %43, %42                    ; 2 uses
  %i.dh = fadd double %22, %i.dg                  ; 3 uses
  %i.di = fsub double %22, %i.dh
  %i.dj = fadd double %i.dg, %i.di
  %i.dk = zext i32 %i.c to i64
  %i.dl = add nuw nsw i64 %i.dk, 8                ; 2 uses
end_hunk_2
