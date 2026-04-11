inline.NumInlined: 935
inline.NumDeleted: 375
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.uz = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  store ptr %i.uk, ptr %i.uz, align 8, !tbaa !89
  %i.va = load ptr, ptr %i.dk, align 8, !tbaa !74
  %i.vb = load ptr, ptr %11, align 8, !tbaa !71   ; 18 uses
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = sub i64 %i.vc, %i.vd
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.vg = sitofp <2 x i32> %i.qs to <2 x float>   ; 4 uses
  %i.vh = sitofp i32 %i.qw to float               ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %29 = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %30 = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 2 uses
  %31 = load float, ptr %30, align 4, !tbaa !76
  %32 = fmul float %31, %i.vh                     ; 2 uses
  store float %32, ptr %30, align 4, !tbaa !76
  %i.vj = load <2 x float>, ptr %i.vb, align 4, !tbaa !76
  %i.vk = fmul <2 x float> %i.vj, %i.vg           ; 3 uses
  %33 = extractelement <2 x float> %i.vk, i64 0
  store float %33, ptr %i.vb, align 4, !tbaa !76
  %34 = extractelement <2 x float> %i.vk, i64 1
  store float %34, ptr %29, align 4, !tbaa !76
  %i.vl = fpext <2 x float> %i.vk to <2 x double>
  store <2 x double> %i.vl, ptr %i.vi, align 8, !tbaa !92
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uk, i64 40
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vb, i64 12
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !76
  %i.vp = insertelement <2 x float> poison, float %32, i64 0
  %i.vq = insertelement <2 x float> %i.vp, float %i.vo, i64 1
  %i.vr = fpext <2 x float> %i.vq to <2 x double>
  store <2 x double> %i.vr, ptr %i.vm, align 8, !tbaa !92
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vb, i64 16 ; 2 uses
  %35 = getelementptr inbounds nuw i8, ptr %i.vb, i64 20
  %36 = getelementptr inbounds nuw i8, ptr %i.vb, i64 24 ; 2 uses
  %37 = load float, ptr %36, align 4, !tbaa !76
  %38 = fmul float %37, %i.vh                     ; 2 uses
  store float %38, ptr %36, align 4, !tbaa !76
  %i.vt = getelementptr inbounds nuw i8, ptr %i.uk, i64 56
  %39 = load <2 x float>, ptr %i.vs, align 4, !tbaa !76
  %40 = fmul <2 x float> %39, %i.vg               ; 3 uses
  %41 = extractelement <2 x float> %40, i64 0
  store float %41, ptr %i.vs, align 4, !tbaa !76
  %42 = extractelement <2 x float> %40, i64 1
  store float %42, ptr %35, align 4, !tbaa !76
  %i.vu = fpext <2 x float> %40 to <2 x double>
  store <2 x double> %i.vu, ptr %i.vt, align 8, !tbaa !92
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uk, i64 72
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vb, i64 28
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !76
  %i.vy = insertelement <2 x float> poison, float %38, i64 0
  %i.vz = insertelement <2 x float> %i.vy, float %i.vx, i64 1
  %i.wa = fpext <2 x float> %i.vz to <2 x double>
  store <2 x double> %i.wa, ptr %i.vv, align 8, !tbaa !92
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vb, i64 32 ; 2 uses
  %43 = getelementptr inbounds nuw i8, ptr %i.vb, i64 36
  %44 = getelementptr inbounds nuw i8, ptr %i.vb, i64 40 ; 2 uses
  %45 = load float, ptr %44, align 4, !tbaa !76
  %46 = fmul float %45, %i.vh                     ; 2 uses
  store float %46, ptr %44, align 4, !tbaa !76
  %i.wc = getelementptr inbounds nuw i8, ptr %i.uk, i64 88
  %47 = load <2 x float>, ptr %i.wb, align 4, !tbaa !76
  %48 = fmul <2 x float> %47, %i.vg               ; 3 uses
  %49 = extractelement <2 x float> %48, i64 0
  store float %49, ptr %i.wb, align 4, !tbaa !76
  %50 = extractelement <2 x float> %48, i64 1
  store float %50, ptr %43, align 4, !tbaa !76
  %i.wd = fpext <2 x float> %48 to <2 x double>
  store <2 x double> %i.wd, ptr %i.wc, align 8, !tbaa !92
  %i.we = getelementptr inbounds nuw i8, ptr %i.uk, i64 104
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vb, i64 44
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !76
  %i.wh = insertelement <2 x float> poison, float %46, i64 0
  %i.wi = insertelement <2 x float> %i.wh, float %i.wg, i64 1
  %i.wj = fpext <2 x float> %i.wi to <2 x double>
  store <2 x double> %i.wj, ptr %i.we, align 8, !tbaa !92
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vb, i64 48 ; 2 uses
  %51 = getelementptr inbounds nuw i8, ptr %i.vb, i64 52
  %52 = getelementptr inbounds nuw i8, ptr %i.vb, i64 56 ; 2 uses
  %53 = load float, ptr %52, align 4, !tbaa !76
  %54 = fmul float %53, %i.vh                     ; 2 uses
  store float %54, ptr %52, align 4, !tbaa !76
  %i.wl = getelementptr inbounds nuw i8, ptr %i.uk, i64 120
  %55 = load <2 x float>, ptr %i.wk, align 4, !tbaa !76
  %56 = fmul <2 x float> %55, %i.vg               ; 3 uses
  %57 = extractelement <2 x float> %56, i64 0
  store float %57, ptr %i.wk, align 4, !tbaa !76
  %58 = extractelement <2 x float> %56, i64 1
  store float %58, ptr %51, align 4, !tbaa !76
  %i.wm = fpext <2 x float> %56 to <2 x double>
  store <2 x double> %i.wm, ptr %i.wl, align 8, !tbaa !92
  %i.wn = getelementptr inbounds nuw i8, ptr %i.uk, i64 136
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vb, i64 60
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !76
  %i.wq = insertelement <2 x float> poison, float %54, i64 0
  %i.wr = insertelement <2 x float> %i.wq, float %i.wp, i64 1
  %i.ws = fpext <2 x float> %i.wr to <2 x double>
  store <2 x double> %i.ws, ptr %i.wn, align 8, !tbaa !92
end_hunk_1
