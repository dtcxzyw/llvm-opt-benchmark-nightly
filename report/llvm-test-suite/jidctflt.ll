begin_hunk_0_@jpeg_idct_float:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %.0197202, i64 64
  %i.al = load float, ptr %i.ak, align 4, !tbaa !35
  %i.am = fmul float %i.al, %i.aj                 ; 2 uses
  %5 = sitofp i16 %i.q to float
  %i.an = getelementptr inbounds nuw i8, ptr %.0197202, i64 128
  %i.ao = load float, ptr %i.an, align 4, !tbaa !35
  %6 = fmul float %i.ao, %5                       ; 2 uses
  %7 = sitofp i16 %i.w to float
  %8 = getelementptr inbounds nuw i8, ptr %.0197202, i64 192
  %9 = load float, ptr %8, align 4, !tbaa !35
  %10 = fmul float %9, %7                         ; 2 uses
  %11 = fadd float %i.af, %6                      ; 2 uses
  %i.ap = fsub float %i.af, %6                    ; 2 uses
  %12 = fadd float %i.am, %10                     ; 3 uses
  %i.aq = fsub float %i.am, %10
  %i.ar = fneg float %12
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aq, float 0x3FF6A09E60000000, float %i.ar) ; 2 uses
  %i.at = fadd float %11, %12                     ; 2 uses
  %i.au = fsub float %11, %12                     ; 2 uses
  %i.av = fadd float %i.ap, %i.as                 ; 2 uses
  %i.aw = fsub float %i.ap, %i.as                 ; 2 uses
  %i.ax = insertelement <4 x i16> poison, i16 %i.n, i64 0
end_hunk_0
