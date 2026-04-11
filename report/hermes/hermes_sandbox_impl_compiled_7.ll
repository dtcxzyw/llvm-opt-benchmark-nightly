inline.NumInlined: 10002
inline.NumDeleted: 29
begin_hunk_0_@w2c_hermes_pow:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %.val805, i64 231384
  %.0.copyload.i819 = load double, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i819) #13, !srcloc !44
  %3 = fmul double %.0.copyload.i819, %i.cf
  %sh.diff = lshr i64 %i.cc, 40
  %i.ci = and i64 %sh.diff, 4064                  ; 3 uses
  %.val804 = load ptr, ptr %i.cg, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@w2c_hermes_pow:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 231472
  %.0.copyload.i820 = load double, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i820) #13, !srcloc !44
  %4 = fadd double %3, %.0.copyload.i820
  %i.cl = and i64 %i.cc, -4503599627370496
  %i.cm = sub i64 %.1763, %i.cl                   ; 2 uses
  %i.cn = add i64 %i.cm, 2147483648
end_hunk_1
begin_hunk_2_@w2c_hermes_pow:bb.a
  %.0.copyload.i821 = load double, ptr %i.cr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i821) #13, !srcloc !44
  %i.cs = fmul double %.0.copyload.i821, %i.cp
  %5 = fadd double %i.cs, -1.000000e+00           ; 3 uses
  %6 = bitcast i64 %i.cm to double
  %7 = fsub double %6, %i.cp
  %8 = fmul double %7, %.0.copyload.i821          ; 2 uses
  %9 = fadd double %8, %5                         ; 8 uses
  %.val801.a = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %.val801.a, i64 231376
  %.0.copyload.i823.a = load double, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i823.a) #13, !srcloc !44
  %10 = fmul double %.0.copyload.i823.a, %i.cf
  %.val799.a = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.val799.a, i64 %i.ci
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 231464
  %.0.copyload.i826.a = load double, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i826.a) #13, !srcloc !44
  %11 = fadd double %10, %.0.copyload.i826.a      ; 2 uses
  %12 = fadd double %9, %11                       ; 3 uses
  %13 = fsub double %11, %12
  %14 = fadd double %9, %13
  %15 = fadd double %4, %14
  %.val795.a = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.val795.a, i64 231392
  %.0.copyload.i829.a = load double, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i829.a) #13, !srcloc !44
  %16 = fmul double %9, %.0.copyload.i829.a       ; 2 uses
  %17 = fmul double %5, %.0.copyload.i829.a       ; 2 uses
  %18 = fadd double %16, %17
  %19 = fmul double %8, %18
  %i.cx = fadd double %15, %19
  %i.cy = fmul double %5, %17                     ; 2 uses
  %i.cz = fadd double %12, %i.cy                  ; 3 uses
  %20 = fsub double %12, %i.cz
  %21 = fadd double %i.cy, %20
  %i.da = fadd double %i.cx, %21
  %22 = fmul double %9, %16                       ; 3 uses
  %i.db = fmul double %9, %22
  %.val799 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw i8, ptr %.val799, i64 231440
  %.0.copyload.i825 = load double, ptr %23, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i825) #13, !srcloc !44
  %24 = fmul double %9, %.0.copyload.i825
  %.val798 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw i8, ptr %.val798, i64 231432
  %.0.copyload.i826 = load double, ptr %25, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i826) #13, !srcloc !44
  %26 = fadd double %24, %.0.copyload.i826
  %i.dc = fmul double %22, %26
  %.val797 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw i8, ptr %.val797, i64 231424
  %.0.copyload.i827 = load double, ptr %27, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i827) #13, !srcloc !44
  %i.dd = fmul double %9, %.0.copyload.i827
  %.val796 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %28 = getelementptr inbounds nuw i8, ptr %.val796, i64 231416
  %.0.copyload.i828 = load double, ptr %28, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i828) #13, !srcloc !44
  %i.de = fadd double %i.dd, %.0.copyload.i828
  %i.df = fadd double %i.dc, %i.de
  %29 = fmul double %22, %i.df
  %.val795 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw i8, ptr %.val795, i64 231408
  %.0.copyload.i829 = load double, ptr %30, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i829) #13, !srcloc !44
  %31 = fmul double %9, %.0.copyload.i829
  %.val794 = load ptr, ptr %i.cg, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %.val794, i64 231400
  %.0.copyload.i830 = load double, ptr %32, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i830) #13, !srcloc !44
  %33 = fadd double %31, %.0.copyload.i830
  %34 = fadd double %29, %33
  %35 = fmul double %i.db, %34
  %i.dg = fadd double %i.da, %35                  ; 2 uses
  %i.dh = fadd double %i.cz, %i.dg                ; 3 uses
  %i.di = fsub double %i.cz, %i.dh
  %i.dj = fadd double %i.dg, %i.di
  %i.dk = zext i32 %i.c to i64
  %i.dl = add nuw nsw i64 %i.dk, 8                ; 2 uses
end_hunk_2
