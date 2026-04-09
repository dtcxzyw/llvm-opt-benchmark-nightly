inline.NumInlined: 42
begin_hunk_0_@main:bb.a
  %i.k = mul nuw nsw i32 %.14553.us.i, 3125
  %i.l = and i32 %i.k, 65535
  %i.m = add nsw i32 %i.l, -32768
  %0 = sitofp i32 %i.m to double
  %1 = fmul nnan double %0, 0x3F10000000000000
  %2 = fptrunc double %1 to float
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %2, ptr %gep.i, align 4, !tbaa !11
  %i.n = mul nsw i32 %.14553.us.i, 761
  %i.o = and i32 %i.n, 65535                      ; 3 uses
  %i.p = add nsw i32 %i.o, -32768
  %3 = sitofp i32 %i.p to double
  %4 = fmul nnan double %3, 0x3F10000000000000
  %5 = fptrunc double %4 to float
  %i.q = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.1 = getelementptr i8, ptr %i.q, i64 4
  store float %5, ptr %gep.i.1, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 100
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %bb.b, !llvm.loop !13
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.eu = mul nuw nsw i32 %.14553.us.i93, 3125
  %i.ev = and i32 %i.eu, 65535
  %i.ew = add nsw i32 %i.ev, -32768
  %6 = sitofp i32 %i.ew to double
  %7 = fmul nnan double %6, 0x3F10000000000000
  %8 = fptrunc double %7 to float                 ; 3 uses
  %gep.i94 = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  store float %8, ptr %gep.i94, align 4, !tbaa !11
  %9 = fcmp olt float %.3, %8
  %..us.i95 = select i1 %9, float %8, float %.3   ; 2 uses
  %i.ex = mul nsw i32 %.14553.us.i93, 761
  %i.ey = and i32 %i.ex, 65535                    ; 3 uses
  %i.ez = add nsw i32 %i.ey, -32768
  %10 = sitofp i32 %i.ez to double
  %11 = fmul nnan double %10, 0x3F10000000000000
  %12 = fptrunc double %11 to float               ; 3 uses
  %i.fa = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  %gep.i94.1 = getelementptr i8, ptr %i.fa, i64 4
  store float %12, ptr %gep.i94.1, align 4, !tbaa !11
  %13 = fcmp olt float %..us.i95, %12
  %..us.i95.1 = select i1 %13, float %12, float %..us.i95 ; 3 uses
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %exitcond.not.i97.1 = icmp eq i64 %indvars.iv.next.i96.1, 100
  br i1 %exitcond.not.i97.1, label %._crit_edge.us.i98, label %bb.g, !llvm.loop !13
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.kv = mul nuw nsw i32 %.14553.us.i118, 3125
  %i.kw = and i32 %i.kv, 65535
  %i.kx = add nsw i32 %i.kw, -32768
  %14 = sitofp i32 %i.kx to double
  %15 = fmul nnan double %14, 0x3F10000000000000
  %16 = fptrunc double %15 to float
  %gep.i119 = getelementptr [4 x i8], ptr %invariant.gep.i116, i64 %indvars.iv.i117
  store float %16, ptr %gep.i119, align 4, !tbaa !11
  %i.ky = mul nsw i32 %.14553.us.i118, 761
  %i.kz = and i32 %i.ky, 65535                    ; 3 uses
  %i.la = add nsw i32 %i.kz, -32768
  %17 = sitofp i32 %i.la to double
  %18 = fmul nnan double %17, 0x3F10000000000000
  %19 = fptrunc double %18 to float
  %i.lb = getelementptr [4 x i8], ptr %invariant.gep.i116, i64 %indvars.iv.i117
  %gep.i119.1834 = getelementptr i8, ptr %i.lb, i64 4
  store float %19, ptr %gep.i119.1834, align 4, !tbaa !11
  %indvars.iv.next.i121.1835 = add nuw nsw i64 %indvars.iv.i117, 2 ; 2 uses
  %exitcond.not.i122.1836 = icmp eq i64 %indvars.iv.next.i121.1835, 100
  br i1 %exitcond.not.i122.1836, label %._crit_edge.us.i123, label %bb.k, !llvm.loop !13
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.np = mul nuw nsw i32 %.14553.us.i118.1, 3125
  %i.nq = and i32 %i.np, 65535
  %i.nr = add nsw i32 %i.nq, -32768
  %20 = sitofp i32 %i.nr to double
  %21 = fmul nnan double %20, 0x3F10000000000000
  %22 = fptrunc double %21 to float
  %gep.i119.1 = getelementptr [4 x i8], ptr %invariant.gep.i116.1, i64 %indvars.iv.i117.1
  store float %22, ptr %gep.i119.1, align 4, !tbaa !11
  %i.ns = mul nsw i32 %.14553.us.i118.1, 761
  %i.nt = and i32 %i.ns, 65535                    ; 3 uses
  %i.nu = add nsw i32 %i.nt, -32768
  %23 = sitofp i32 %i.nu to double
  %24 = fmul nnan double %23, 0x3F10000000000000
  %25 = fptrunc double %24 to float
  %i.nv = getelementptr [4 x i8], ptr %invariant.gep.i116.1, i64 %indvars.iv.i117.1
  %gep.i119.1.1 = getelementptr i8, ptr %i.nv, i64 4
  store float %25, ptr %gep.i119.1.1, align 4, !tbaa !11
  %indvars.iv.next.i121.1.1 = add nuw nsw i64 %indvars.iv.i117.1, 2 ; 2 uses
  %exitcond.not.i122.1.1 = icmp eq i64 %indvars.iv.next.i121.1.1, 100
  br i1 %exitcond.not.i122.1.1, label %._crit_edge.us.i123.1, label %bb.l, !llvm.loop !13
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.qj = mul nuw nsw i32 %.14553.us.i118.2, 3125
  %i.qk = and i32 %i.qj, 65535
  %i.ql = add nsw i32 %i.qk, -32768
  %26 = sitofp i32 %i.ql to double
  %27 = fmul nnan double %26, 0x3F10000000000000
  %28 = fptrunc double %27 to float
  %gep.i119.2 = getelementptr [4 x i8], ptr %invariant.gep.i116.2, i64 %indvars.iv.i117.2
  store float %28, ptr %gep.i119.2, align 4, !tbaa !11
  %i.qm = mul nsw i32 %.14553.us.i118.2, 761
  %i.qn = and i32 %i.qm, 65535                    ; 3 uses
  %i.qo = add nsw i32 %i.qn, -32768
  %29 = sitofp i32 %i.qo to double
  %30 = fmul nnan double %29, 0x3F10000000000000
  %31 = fptrunc double %30 to float
  %i.qp = getelementptr [4 x i8], ptr %invariant.gep.i116.2, i64 %indvars.iv.i117.2
  %gep.i119.2.1 = getelementptr i8, ptr %i.qp, i64 4
  store float %31, ptr %gep.i119.2.1, align 4, !tbaa !11
  %indvars.iv.next.i121.2.1 = add nuw nsw i64 %indvars.iv.i117.2, 2 ; 2 uses
  %exitcond.not.i122.2.1 = icmp eq i64 %indvars.iv.next.i121.2.1, 100
  br i1 %exitcond.not.i122.2.1, label %._crit_edge.us.i123.2, label %bb.m, !llvm.loop !13
end_hunk_4
begin_hunk_5_@main:bb.a
  %i.tk = mul nuw nsw i32 %.14553.us.i143, 3125
  %i.tl = and i32 %i.tk, 65535
  %i.tm = add nsw i32 %i.tl, -32768
  %32 = sitofp i32 %i.tm to double
  %33 = fmul nnan double %32, 0x3F10000000000000
  %34 = fptrunc double %33 to float
  %gep.i144 = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  store float %34, ptr %gep.i144, align 4, !tbaa !11
  %i.tn = mul nsw i32 %.14553.us.i143, 761
  %i.to = and i32 %i.tn, 65535                    ; 3 uses
  %i.tp = add nsw i32 %i.to, -32768
  %35 = sitofp i32 %i.tp to double
  %36 = fmul nnan double %35, 0x3F10000000000000
  %37 = fptrunc double %36 to float
  %i.tq = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  %gep.i144.1 = getelementptr i8, ptr %i.tq, i64 4
  store float %37, ptr %gep.i144.1, align 4, !tbaa !11
  %indvars.iv.next.i146.1 = add nuw nsw i64 %indvars.iv.i142, 2 ; 2 uses
  %exitcond.not.i147.1 = icmp eq i64 %indvars.iv.next.i146.1, 100
  br i1 %exitcond.not.i147.1, label %._crit_edge.us.i148, label %bb.o, !llvm.loop !13
end_hunk_5
begin_hunk_6_@main:bb.a
  %i.zu = mul nuw nsw i32 %.14553.us.i178, 3125
  %i.zv = and i32 %i.zu, 65535
  %i.zw = add nsw i32 %i.zv, -32768
  %38 = sitofp i32 %i.zw to double
  %39 = fmul nnan double %38, 0x3F10000000000000
  %40 = fptrunc double %39 to float
  %gep.i179 = getelementptr [4 x i8], ptr %invariant.gep.i176, i64 %indvars.iv.i177
  store float %40, ptr %gep.i179, align 4, !tbaa !11
  %i.zx = mul nsw i32 %.14553.us.i178, 761
  %i.zy = and i32 %i.zx, 65535                    ; 3 uses
  %i.zz = add nsw i32 %i.zy, -32768
  %41 = sitofp i32 %i.zz to double
  %42 = fmul nnan double %41, 0x3F10000000000000
  %43 = fptrunc double %42 to float
  %i.aaa = getelementptr [4 x i8], ptr %invariant.gep.i176, i64 %indvars.iv.i177
  %gep.i179.1 = getelementptr i8, ptr %i.aaa, i64 4
  store float %43, ptr %gep.i179.1, align 4, !tbaa !11
  %indvars.iv.next.i181.1 = add nuw nsw i64 %indvars.iv.i177, 2 ; 2 uses
  %exitcond.not.i182.1 = icmp eq i64 %indvars.iv.next.i181.1, 100
  br i1 %exitcond.not.i182.1, label %._crit_edge.us.i183, label %bb.x, !llvm.loop !13
end_hunk_6
begin_hunk_7_@main:bb.a
  %i.ajh = mul nuw nsw i32 %.14553.us.i265, 3125
  %i.aji = and i32 %i.ajh, 65535
  %i.ajj = add nsw i32 %i.aji, -32768
  %44 = sitofp i32 %i.ajj to double
  %45 = fmul nnan double %44, 0x3F10000000000000
  %46 = fptrunc double %45 to float
  %gep.i266 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i264
  store float %46, ptr %gep.i266, align 8, !tbaa !11
  %i.ajk = mul nsw i32 %.14553.us.i265, 761
  %i.ajl = and i32 %i.ajk, 65535                  ; 3 uses
  %i.ajm = add nsw i32 %i.ajl, -32768
  %47 = sitofp i32 %i.ajm to double
  %48 = fmul nnan double %47, 0x3F10000000000000
  %49 = fptrunc double %48 to float
  %i.ajn = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i264
  %gep.i266.1 = getelementptr i8, ptr %i.ajn, i64 4
  store float %49, ptr %gep.i266.1, align 4, !tbaa !11
  %indvars.iv.next.i268.1 = add nuw nsw i64 %indvars.iv.i264, 2 ; 2 uses
  %exitcond.not.i269.1 = icmp eq i64 %indvars.iv.next.i268.1, 100
  br i1 %exitcond.not.i269.1, label %._crit_edge.us.i270, label %bb.ai, !llvm.loop !13
end_hunk_7
begin_hunk_8_@main:bb.a
  %i.ams = mul nuw nsw i32 %.14553.us.i290, 3125
  %i.amt = and i32 %i.ams, 65535
  %i.amu = add nsw i32 %i.amt, -32768
  %50 = sitofp i32 %i.amu to double
  %51 = fmul nnan double %50, 0x3F10000000000000
  %52 = fptrunc double %51 to float
  %gep.i291 = getelementptr [4 x i8], ptr %invariant.gep.i288, i64 %indvars.iv.i289
  store float %52, ptr %gep.i291, align 8, !tbaa !11
  %i.amv = mul nsw i32 %.14553.us.i290, 761
  %i.amw = and i32 %i.amv, 65535                  ; 3 uses
  %i.amx = add nsw i32 %i.amw, -32768
  %53 = sitofp i32 %i.amx to double
  %54 = fmul nnan double %53, 0x3F10000000000000
  %55 = fptrunc double %54 to float
  %i.amy = getelementptr [4 x i8], ptr %invariant.gep.i288, i64 %indvars.iv.i289
  %gep.i291.1 = getelementptr i8, ptr %i.amy, i64 4
  store float %55, ptr %gep.i291.1, align 4, !tbaa !11
  %indvars.iv.next.i293.1 = add nuw nsw i64 %indvars.iv.i289, 2 ; 2 uses
  %exitcond.not.i294.1 = icmp eq i64 %indvars.iv.next.i293.1, 100
  br i1 %exitcond.not.i294.1, label %._crit_edge.us.i295, label %bb.ak, !llvm.loop !13
end_hunk_8
begin_hunk_9_@matgen:bb.a
  %i.d = mul nuw nsw i32 %.14553.us, 3125
  %i.e = and i32 %i.d, 65535                      ; 3 uses
  %i.f = add nsw i32 %i.e, -32768
  %5 = sitofp i32 %i.f to double
  %6 = fmul nnan double %5, 0x3F10000000000000
  %7 = fptrunc double %6 to float                 ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %7, ptr %gep, align 4, !tbaa !11
  %i.g = load float, ptr %4, align 4, !tbaa !11   ; 2 uses
  %8 = fcmp olt float %i.g, %7
  %..us = select i1 %8, float %7, float %i.g
  store float %..us, ptr %4, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
end_hunk_9
