inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef writeonly captures(none) initializes((0, 12)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %9) unnamed_addr #20 {
bb.a:
  %.sroa.9312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  %10 = insertelement <2 x float> poison, float %2, i64 0
  %11 = insertelement <2 x float> %10, float %3, i64 1
  %12 = insertelement <2 x float> poison, float %1, i64 0
  %13 = insertelement <2 x float> %12, float %2, i64 1
  %14 = fsub <2 x float> %11, %13                 ; 3 uses
  %15 = extractelement <2 x float> %14, i64 0     ; 4 uses
  %i.a = fmul float %15, %7                       ; 4 uses
  %16 = insertelement <2 x float> poison, float %5, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x float> poison, float %4, i64 0
  %19 = insertelement <2 x float> %18, float %6, i64 1 ; 2 uses
  %20 = fsub <2 x float> %17, %19
  %i.b = fneg float %7
  %21 = fmul float %5, -2.000000e+00
  %i.c = tail call float @llvm.fmuladd.f32(float %6, float 2.000000e+00, float %21)
  %22 = fneg float %8
  %23 = extractelement <2 x float> %14, i64 1     ; 4 uses
  %24 = tail call float @llvm.fmuladd.f32(float %22, float %23, float %i.c) ; 4 uses
  %25 = load <3 x float>, ptr %9, align 4, !tbaa !84 ; 3 uses
  %26 = shufflevector <3 x float> %25, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.d = load float, ptr %.sroa.9312.0..sroa_idx, align 4, !tbaa !84 ; 6 uses
  %27 = insertelement <2 x float> poison, float %i.b, i64 0
  %28 = insertelement <2 x float> %27, float %8, i64 1
  %29 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %14, <2 x float> %20)
  %30 = insertelement <2 x float> %19, float %5, i64 1
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %32 = fsub <4 x float> %31, %26                 ; 5 uses
  %33 = insertelement <2 x float> poison, float %i.a, i64 0
  %34 = insertelement <2 x float> %33, float %24, i64 1 ; 2 uses
  %35 = fmul <2 x float> %34, %34                 ; 2 uses
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %37 = fmul <2 x float> %29, splat (float 4.000000e+00) ; 2 uses
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %39 = fmul <4 x float> %38, %32
  %40 = fsub <4 x float> %36, %39                 ; 4 uses
  %41 = extractelement <4 x float> %40, i64 0
  %42 = tail call float @sqrtf(float noundef %41) #24, !tbaa !3
  %43 = extractelement <4 x float> %40, i64 1
  %44 = tail call float @sqrtf(float noundef %43) #24, !tbaa !3
  %45 = extractelement <4 x float> %40, i64 2
  %46 = tail call float @sqrtf(float noundef %45) #24, !tbaa !3
  %47 = extractelement <4 x float> %32, i64 0
  %i.e = fmul float %47, 2.000000e+00
  %48 = extractelement <4 x float> %32, i64 1
  %i.f = fmul float %48, 2.000000e+00
  %49 = extractelement <4 x float> %32, i64 2
  %i.g = fmul float %49, 2.000000e+00
  %50 = fadd float %i.a, %42
  %51 = fadd float %i.a, %44
  %52 = fadd float %i.a, %46
  %53 = fdiv float %i.e, %50
  %54 = fdiv float %i.f, %51
  %55 = fdiv float %i.g, %52
  %56 = fmul float %15, %53
  %57 = fmul float %15, %54
  %58 = fmul float %15, %55
  %i.h = fsub float %1, %56
  %59 = fsub float %1, %57
  %i.i = fsub float %1, %58
  %i.j = fsub float %5, %i.d                      ; 2 uses
  %60 = extractelement <3 x float> %25, i64 2     ; 6 uses
  %61 = fsub float %5, %60                        ; 2 uses
  %62 = extractelement <2 x float> %37, i64 1     ; 2 uses
  %i.k = fmul float %62, %i.j
  %i.l = fmul float %62, %61
  %63 = extractelement <2 x float> %35, i64 1     ; 2 uses
  %i.m = fsub float %63, %i.k
  %i.n = fsub float %63, %i.l
  %64 = extractelement <4 x float> %40, i64 3
  %i.o = tail call float @sqrtf(float noundef %64) #24, !tbaa !3
  %i.p = tail call float @sqrtf(float noundef %i.m) #24, !tbaa !3
  %i.q = tail call float @sqrtf(float noundef %i.n) #24, !tbaa !3
  %65 = extractelement <4 x float> %32, i64 3
  %i.r = fmul float %65, 2.000000e+00
  %i.s = fmul float %i.j, 2.000000e+00
  %i.t = fmul float %61, 2.000000e+00
  %i.u = fadd float %24, %i.o
  %i.v = fadd float %24, %i.p
  %i.w = fadd float %24, %i.q
  %i.x = fdiv float %i.r, %i.u
  %i.y = fdiv float %i.s, %i.v
  %i.z = fdiv float %i.t, %i.w
  %i.aa = fmul float %23, %i.x
  %i.ab = fmul float %23, %i.y
  %i.ac = fmul float %23, %i.z
  %i.ad = fsub float %2, %i.aa
  %i.ae = fsub float %2, %i.ab
  %i.af = fsub float %2, %i.ac
  %66 = extractelement <3 x float> %25, i64 0     ; 5 uses
  %i.ag = fcmp olt float %66, %5
  %i.ah = select i1 %i.ag, float %i.h, float %i.ad
  %i.ai = fcmp olt float %i.d, %5
  %i.aj = select i1 %i.ai, float %59, float %i.ae
  %i.ak = fcmp olt float %60, %5
  %i.al = select i1 %i.ak, float %i.i, float %i.af
  %i.am = fsub float %66, %4
  %i.an = fsub float %i.d, %4
  %i.ao = fsub float %60, %4
  %i.ap = fdiv float %i.am, %7
  %i.aq = fdiv float %i.an, %7
  %i.ar = fdiv float %i.ao, %7
  %i.as = fadd float %1, %i.ap
  %i.at = fadd float %1, %i.aq
  %i.au = fadd float %1, %i.ar
  %i.av = fcmp olt float %66, %4
  %i.aw = select i1 %i.av, float %i.as, float %i.ah
  %i.ax = fcmp olt float %i.d, %4
  %i.ay = select i1 %i.ax, float %i.at, float %i.aj
  %i.az = fcmp olt float %60, %4
  %i.ba = select i1 %i.az, float %i.au, float %i.al
  %i.bb = fsub float %66, %6
  %i.bc = fsub float %i.d, %6
  %i.bd = fsub float %60, %6
  %i.be = fdiv float %i.bb, %8
  %i.bf = fdiv float %i.bc, %8
  %i.bg = fdiv float %i.bd, %8
  %i.bh = fadd float %3, %i.be
  %i.bi = fadd float %3, %i.bf
  %i.bj = fadd float %3, %i.bg
  %i.bk = fcmp olt float %66, %6
  %i.bl = select i1 %i.bk, float %i.aw, float %i.bh
  %i.bm = fcmp olt float %i.d, %6
  %i.bn = select i1 %i.bm, float %i.ay, float %i.bi
  %i.bo = fcmp olt float %60, %6
  %i.bp = select i1 %i.bo, float %i.ba, float %i.bj
  store float %i.bl, ptr %0, align 4, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
