inline.NumInlined: 3331
inline.NumDeleted: 1008
begin_hunk_0_@_ZN11OpenImageIO4v3_17PNG_pvt14get_backgroundERP14png_struct_defRP12png_info_defRNS0_9ImageSpecERiPfSB_SB_:bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !739  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !741
  %7 = uitofp i16 %i.u to float
  %8 = fdiv float %7, 6.553500e+04
  store float %8, ptr %4, align 4, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !743
  %9 = uitofp i16 %i.w to float
  %10 = fdiv float %9, 6.553500e+04
  store float %10, ptr %5, align 4, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.y = load i16, ptr %i.x, align 2, !tbaa !744
  %11 = uitofp i16 %i.y to float
  %12 = fdiv float %11, 6.553500e+04
  store float %12, ptr %6, align 4, !tbaa !133
  br label %bb.k

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_17PNG_pvt14get_backgroundERP14png_struct_defRP12png_info_defRNS0_9ImageSpecERiPfSB_SB_:bb.a
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %13 = uitofp i16 %i.ag to float
  %14 = fdiv float %13, 3.000000e+00              ; 3 uses
  store float %14, ptr %6, align 4, !tbaa !133
  store float %14, ptr %5, align 4, !tbaa !133
  store float %14, ptr %4, align 4, !tbaa !133
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %15 = uitofp i16 %i.ag to float
  %16 = fdiv float %15, 1.500000e+01              ; 3 uses
  store float %16, ptr %6, align 4, !tbaa !133
  store float %16, ptr %5, align 4, !tbaa !133
  store float %16, ptr %4, align 4, !tbaa !133
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !739 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !741
  %17 = uitofp i16 %i.ak to float
  %18 = fdiv float %17, 2.550000e+02
  store float %18, ptr %4, align 4, !tbaa !133
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i16, ptr %i.al, align 2, !tbaa !743
  %19 = uitofp i16 %i.am to float
  %20 = fdiv float %19, 2.550000e+02
  store float %20, ptr %5, align 4, !tbaa !133
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !744
  %21 = uitofp i16 %i.ao to float
  %22 = fdiv float %21, 2.550000e+02
  store float %22, ptr %6, align 4, !tbaa !133
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i, %bb.g, %bb.d
end_hunk_1
