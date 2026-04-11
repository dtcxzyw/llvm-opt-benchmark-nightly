inline.NumInlined: 935
inline.NumDeleted: 375
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.uz = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  store ptr %i.uk, ptr %i.uz, align 8, !tbaa !89
  %i.va = load ptr, ptr %i.dk, align 8, !tbaa !74
  %i.vb = load ptr, ptr %11, align 8, !tbaa !71   ; 14 uses
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = sub i64 %i.vc, %i.vd
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.vg = sitofp <2 x i32> %i.qs to <2 x float>   ; 4 uses
  %i.vh = sitofp i32 %i.qw to float               ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.vj = load <2 x float>, ptr %i.vb, align 4, !tbaa !76
  %i.vk = fmul <2 x float> %i.vj, %i.vg           ; 2 uses
  store <2 x float> %i.vk, ptr %i.vb, align 4, !tbaa !76
  %29 = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 2 uses
  %30 = load float, ptr %29, align 4, !tbaa !76
  %31 = fmul float %30, %i.vh                     ; 2 uses
  store float %31, ptr %29, align 4, !tbaa !76
  %i.vl = fpext <2 x float> %i.vk to <2 x double>
  store <2 x double> %i.vl, ptr %i.vi, align 8, !tbaa !92
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uk, i64 40
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vb, i64 12
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !76
  %i.vp = insertelement <2 x float> poison, float %31, i64 0
  %i.vq = insertelement <2 x float> %i.vp, float %i.vo, i64 1
  %i.vr = fpext <2 x float> %i.vq to <2 x double>
  store <2 x double> %i.vr, ptr %i.vm, align 8, !tbaa !92
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vb, i64 16 ; 2 uses
  %32 = load <2 x float>, ptr %i.vs, align 4, !tbaa !76
  %33 = fmul <2 x float> %32, %i.vg               ; 2 uses
  store <2 x float> %33, ptr %i.vs, align 4, !tbaa !76
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vb, i64 24 ; 2 uses
  %34 = load float, ptr %i.vt, align 4, !tbaa !76
  %35 = fmul float %34, %i.vh                     ; 2 uses
  store float %35, ptr %i.vt, align 4, !tbaa !76
  %36 = getelementptr inbounds nuw i8, ptr %i.uk, i64 56
  %i.vu = fpext <2 x float> %33 to <2 x double>
  store <2 x double> %i.vu, ptr %36, align 8, !tbaa !92
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uk, i64 72
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vb, i64 28
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !76
  %i.vy = insertelement <2 x float> poison, float %35, i64 0
  %i.vz = insertelement <2 x float> %i.vy, float %i.vx, i64 1
  %i.wa = fpext <2 x float> %i.vz to <2 x double>
  store <2 x double> %i.wa, ptr %i.vv, align 8, !tbaa !92
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vb, i64 32 ; 2 uses
  %37 = load <2 x float>, ptr %i.wb, align 4, !tbaa !76
  %38 = fmul <2 x float> %37, %i.vg               ; 2 uses
  store <2 x float> %38, ptr %i.wb, align 4, !tbaa !76
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vb, i64 40 ; 2 uses
  %39 = load float, ptr %i.wc, align 4, !tbaa !76
  %40 = fmul float %39, %i.vh                     ; 2 uses
  store float %40, ptr %i.wc, align 4, !tbaa !76
  %41 = getelementptr inbounds nuw i8, ptr %i.uk, i64 88
  %i.wd = fpext <2 x float> %38 to <2 x double>
  store <2 x double> %i.wd, ptr %41, align 8, !tbaa !92
  %i.we = getelementptr inbounds nuw i8, ptr %i.uk, i64 104
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vb, i64 44
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !76
  %i.wh = insertelement <2 x float> poison, float %40, i64 0
  %i.wi = insertelement <2 x float> %i.wh, float %i.wg, i64 1
  %i.wj = fpext <2 x float> %i.wi to <2 x double>
  store <2 x double> %i.wj, ptr %i.we, align 8, !tbaa !92
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vb, i64 48 ; 2 uses
  %42 = load <2 x float>, ptr %i.wk, align 4, !tbaa !76
  %43 = fmul <2 x float> %42, %i.vg               ; 2 uses
  store <2 x float> %43, ptr %i.wk, align 4, !tbaa !76
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vb, i64 56 ; 2 uses
  %44 = load float, ptr %i.wl, align 4, !tbaa !76
  %45 = fmul float %44, %i.vh                     ; 2 uses
  store float %45, ptr %i.wl, align 4, !tbaa !76
  %46 = getelementptr inbounds nuw i8, ptr %i.uk, i64 120
  %i.wm = fpext <2 x float> %43 to <2 x double>
  store <2 x double> %i.wm, ptr %46, align 8, !tbaa !92
  %i.wn = getelementptr inbounds nuw i8, ptr %i.uk, i64 136
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vb, i64 60
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !76
  %i.wq = insertelement <2 x float> poison, float %45, i64 0
  %i.wr = insertelement <2 x float> %i.wq, float %i.wp, i64 1
  %i.ws = fpext <2 x float> %i.wr to <2 x double>
  store <2 x double> %i.ws, ptr %i.wn, align 8, !tbaa !92
end_hunk_1
