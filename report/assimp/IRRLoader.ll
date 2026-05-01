inline.NumInlined: 1776
inline.NumDeleted: 830
begin_hunk_0_@_ZN6Assimp11IRRImporter13GenerateGraphEPNS0_4NodeEP6aiNodeP7aiSceneRNS_11BatchLoaderERSt6vectorIP6aiMeshSaISB_EERS9_IP10aiNodeAnimSaISG_EERS9_INS_14AttachmentInfoESaISK_EERS9_IP10aiMaterialSaISP_EERj:bb.a
  %i.mt = load float, ptr %i.ms, align 4
  %i.mu = fmul float %i.mt, 0x3F91DF46A0000000    ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %14 = load <2 x float>, ptr %i.mv, align 4
  %15 = fmul <2 x float> %14, splat (float 0x3F91DF46A0000000) ; 2 uses
  %16 = call noundef float @cosf(float noundef %i.mu) #27 ; 5 uses
  %17 = call noundef float @sinf(float noundef %i.mu) #27 ; 5 uses
  %18 = extractelement <2 x float> %15, i64 0     ; 2 uses
  %i.mw = call noundef float @cosf(float noundef %18) #27 ; 4 uses
  %i.mx = call noundef float @sinf(float noundef %18) #27 ; 3 uses
  %19 = extractelement <2 x float> %15, i64 1     ; 2 uses
  %i.my = call noundef float @cosf(float noundef %19) #27 ; 4 uses
  %i.mz = call noundef float @sinf(float noundef %19) #27 ; 4 uses
  %i.na = fmul float %i.mw, %i.my                 ; 2 uses
  store float %i.na, ptr %i.mr, align 4
  %i.nb = fmul float %i.mx, %i.my                 ; 2 uses
  %i.nc = fneg float %16
  %i.nd = fmul float %i.mz, %i.nc
  %i.ne = call float @llvm.fmuladd.f32(float %i.nb, float %17, float %i.nd) ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 1032 ; 2 uses
  store float %i.ne, ptr %i.nf, align 4
  %i.ng = fmul float %16, %i.nb
  %i.nh = call float @llvm.fmuladd.f32(float %i.mz, float %17, float %i.ng) ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 1036 ; 2 uses
  store float %i.nh, ptr %i.ni, align 4
  %i.nj = fmul float %i.mw, %i.mz                 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 1044 ; 2 uses
  store float %i.nj, ptr %i.nk, align 4
  %i.nl = fmul float %i.mx, %i.mz                 ; 2 uses
  %i.nm = fmul float %17, %i.nl
  %i.nn = call float @llvm.fmuladd.f32(float %i.my, float %16, float %i.nm) ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 1048 ; 2 uses
  store float %i.nn, ptr %i.no, align 4
  %i.np = fneg float %17
  %i.nq = fmul float %i.my, %i.np
  %i.nr = call float @llvm.fmuladd.f32(float %i.nl, float %16, float %i.nq) ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 1052 ; 2 uses
  store float %i.nr, ptr %i.ns, align 4
  %i.nt = fneg float %i.mx                        ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 1060 ; 2 uses
  store float %i.nt, ptr %i.nu, align 4
  %i.nv = fmul float %17, %i.mw                   ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 1064 ; 2 uses
  store float %i.nv, ptr %i.nw, align 4
  %i.nx = fmul float %16, %i.mw                   ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 1068 ; 2 uses
  store float %i.nx, ptr %i.ny, align 4
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
end_hunk_0
