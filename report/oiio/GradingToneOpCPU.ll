inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef writeonly captures(none) initializes((0, 12)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %9) unnamed_addr #20 {
bb.a:
  %.sroa.9312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %10 = fsub float %2, %1                         ; 5 uses
  %i.a = fmul float %10, %7                       ; 5 uses
  %11 = fsub float %5, %4
  %i.b = fneg float %7
  %i.c = tail call float @llvm.fmuladd.f32(float %i.b, float %10, float %11)
  %12 = load float, ptr %9, align 4, !tbaa !84    ; 7 uses
  %13 = fsub float %4, %12                        ; 2 uses
  %14 = load float, ptr %.sroa.9312.0..sroa_idx, align 4, !tbaa !84 ; 7 uses
  %15 = fsub float %4, %14                        ; 2 uses
  %i.d = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !84 ; 7 uses
  %16 = fsub float %4, %i.d                       ; 2 uses
  %17 = fmul float %i.a, %i.a                     ; 3 uses
  %18 = fmul float %i.c, 4.000000e+00             ; 3 uses
  %19 = fmul float %18, %13
  %20 = fmul float %18, %15
  %21 = fmul float %18, %16
  %22 = fsub float %17, %19
  %23 = fsub float %17, %20
  %24 = fsub float %17, %21
  %25 = tail call float @sqrtf(float noundef %22) #24, !tbaa !3
  %26 = tail call float @sqrtf(float noundef %23) #24, !tbaa !3
  %27 = tail call float @sqrtf(float noundef %24) #24, !tbaa !3
  %28 = fmul float %13, 2.000000e+00
  %29 = fmul float %15, 2.000000e+00
  %30 = fmul float %16, 2.000000e+00
  %31 = fadd float %i.a, %25
  %32 = fadd float %i.a, %26
  %33 = fadd float %i.a, %27
  %34 = fdiv float %28, %31
  %35 = fdiv float %29, %32
  %36 = fdiv float %30, %33
  %i.e = fmul float %10, %34
  %i.f = fmul float %10, %35
  %i.g = fmul float %10, %36
  %37 = fsub float %1, %i.e
  %38 = fsub float %1, %i.f
  %39 = fsub float %1, %i.g
  %40 = fmul float %5, -2.000000e+00
  %41 = tail call float @llvm.fmuladd.f32(float %6, float 2.000000e+00, float %40)
  %42 = fsub float %3, %2                         ; 5 uses
  %43 = fneg float %8
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %42, float %41) ; 5 uses
  %i.h = fsub float %5, %6
  %45 = tail call float @llvm.fmuladd.f32(float %8, float %42, float %i.h)
  %i.i = fsub float %5, %12                       ; 2 uses
  %i.j = fsub float %5, %14                       ; 2 uses
  %46 = fsub float %5, %i.d                       ; 2 uses
  %47 = fmul float %44, %44                       ; 3 uses
  %48 = fmul float %45, 4.000000e+00              ; 3 uses
  %i.k = fmul float %48, %i.i
  %i.l = fmul float %48, %i.j
  %49 = fmul float %48, %46
  %i.m = fsub float %47, %i.k
  %i.n = fsub float %47, %i.l
  %50 = fsub float %47, %49
  %i.o = tail call float @sqrtf(float noundef %i.m) #24, !tbaa !3
  %i.p = tail call float @sqrtf(float noundef %i.n) #24, !tbaa !3
  %i.q = tail call float @sqrtf(float noundef %50) #24, !tbaa !3
  %i.r = fmul float %i.i, 2.000000e+00
  %i.s = fmul float %i.j, 2.000000e+00
  %i.t = fmul float %46, 2.000000e+00
  %i.u = fadd float %44, %i.o
  %i.v = fadd float %44, %i.p
  %i.w = fadd float %44, %i.q
  %i.x = fdiv float %i.r, %i.u
  %i.y = fdiv float %i.s, %i.v
  %i.z = fdiv float %i.t, %i.w
  %i.aa = fmul float %42, %i.x
  %i.ab = fmul float %42, %i.y
  %i.ac = fmul float %42, %i.z
  %i.ad = fsub float %2, %i.aa
  %i.ae = fsub float %2, %i.ab
  %i.af = fsub float %2, %i.ac
  %i.ag = fcmp olt float %12, %5
  %i.ah = select i1 %i.ag, float %37, float %i.ad
  %i.ai = fcmp olt float %14, %5
  %i.aj = select i1 %i.ai, float %38, float %i.ae
  %i.ak = fcmp olt float %i.d, %5
  %i.al = select i1 %i.ak, float %39, float %i.af
  %i.am = fsub float %12, %4
  %i.an = fsub float %14, %4
  %i.ao = fsub float %i.d, %4
  %i.ap = fdiv float %i.am, %7
  %i.aq = fdiv float %i.an, %7
  %i.ar = fdiv float %i.ao, %7
  %i.as = fadd float %1, %i.ap
  %i.at = fadd float %1, %i.aq
  %i.au = fadd float %1, %i.ar
  %i.av = fcmp olt float %12, %4
  %i.aw = select i1 %i.av, float %i.as, float %i.ah
  %i.ax = fcmp olt float %14, %4
  %i.ay = select i1 %i.ax, float %i.at, float %i.aj
  %i.az = fcmp olt float %i.d, %4
  %i.ba = select i1 %i.az, float %i.au, float %i.al
  %i.bb = fsub float %12, %6
  %i.bc = fsub float %14, %6
  %i.bd = fsub float %i.d, %6
  %i.be = fdiv float %i.bb, %8
  %i.bf = fdiv float %i.bc, %8
  %i.bg = fdiv float %i.bd, %8
  %i.bh = fadd float %3, %i.be
  %i.bi = fadd float %3, %i.bf
  %i.bj = fadd float %3, %i.bg
  %i.bk = fcmp olt float %12, %6
  %i.bl = select i1 %i.bk, float %i.aw, float %i.bh
  %i.bm = fcmp olt float %14, %6
  %i.bn = select i1 %i.bm, float %i.ay, float %i.bi
  %i.bo = fcmp olt float %i.d, %6
  %i.bp = select i1 %i.bo, float %i.ba, float %i.bj
  store float %i.bl, ptr %0, align 4, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  ret ptr %.0
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
