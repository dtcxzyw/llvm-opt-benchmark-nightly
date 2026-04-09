inline.NumInlined: 3331
inline.NumDeleted: 1008
begin_hunk_0_@_ZN11OpenImageIO4v3_17PNG_pvt14get_backgroundERP14png_struct_defRP12png_info_defRNS0_9ImageSpecERiPfSB_SB_:bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !739  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !741
  %7 = uitofp i16 %i.u to double
  %8 = fdiv double %7, 6.553500e+04
  %9 = fptrunc double %8 to float
  store float %9, ptr %4, align 4, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !743
  %10 = uitofp i16 %i.w to double
  %11 = fdiv double %10, 6.553500e+04
  %12 = fptrunc double %11 to float
  store float %12, ptr %5, align 4, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.y = load i16, ptr %i.x, align 2, !tbaa !744
  %13 = uitofp i16 %i.y to double
  %14 = fdiv double %13, 6.553500e+04
  %15 = fptrunc double %14 to float
  store float %15, ptr %6, align 4, !tbaa !133
  br label %bb.k

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_17PNG_pvt14get_backgroundERP14png_struct_defRP12png_info_defRNS0_9ImageSpecERiPfSB_SB_:bb.a
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %16 = uitofp i16 %i.ag to double
  %17 = fdiv double %16, 3.000000e+00
  %18 = fptrunc double %17 to float               ; 3 uses
  store float %18, ptr %6, align 4, !tbaa !133
  store float %18, ptr %5, align 4, !tbaa !133
  store float %18, ptr %4, align 4, !tbaa !133
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %19 = uitofp i16 %i.ag to double
  %20 = fdiv double %19, 1.500000e+01
  %21 = fptrunc double %20 to float               ; 3 uses
  store float %21, ptr %6, align 4, !tbaa !133
  store float %21, ptr %5, align 4, !tbaa !133
  store float %21, ptr %4, align 4, !tbaa !133
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !739 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !741
  %22 = uitofp i16 %i.ak to double
  %23 = fdiv double %22, 2.550000e+02
  %24 = fptrunc double %23 to float
  store float %24, ptr %4, align 4, !tbaa !133
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i16, ptr %i.al, align 2, !tbaa !743
  %25 = uitofp i16 %i.am to double
  %26 = fdiv double %25, 2.550000e+02
  %27 = fptrunc double %26 to float
  store float %27, ptr %5, align 4, !tbaa !133
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !744
  %28 = uitofp i16 %i.ao to double
  %29 = fdiv double %28, 2.550000e+02
  %30 = fptrunc double %29 to float
  store float %30, ptr %6, align 4, !tbaa !133
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i, %bb.g, %bb.d
end_hunk_1
