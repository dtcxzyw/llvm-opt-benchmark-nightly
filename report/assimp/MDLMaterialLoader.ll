inline.NumInlined: 254
inline.NumDeleted: 140
begin_hunk_0_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.aiString, align 4           ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %9 = alloca %class.aiColor4t, align 8           ; 20 uses
  %10 = alloca %struct.aiColor3D, align 8         ; 20 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca [5 x i8], align 1                 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 6 uses
  store <2 x float> zeroinitializer, ptr %10, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ov, align 8
  %13 = load float, ptr %.0107196200, align 1     ; 2 uses
  store float %13, ptr %10, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %.0107196200, i64 4
  %14 = load <2 x float>, ptr %i.ow, align 1      ; 2 uses
  store <2 x float> %14, ptr %12, align 4
  %i.ox = load float, ptr %9, align 8             ; 2 uses
  %i.oy = fcmp ord float %i.ox, 0.000000e+00
  br i1 %i.oy, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %15 = fmul float %13, %i.ox
  store float %15, ptr %10, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %9, i64 4
  %16 = load <2 x float>, ptr %i.oz, align 4
  %17 = fmul <2 x float> %14, %16
  store <2 x float> %17, ptr %12, align 4
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.pd = getelementptr inbounds nuw i8, ptr %.0107196200, i64 32
  %18 = load float, ptr %i.pd, align 1            ; 2 uses
  store float %18, ptr %10, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %.0107196200, i64 36
  %19 = load <2 x float>, ptr %i.pe, align 1      ; 2 uses
  store <2 x float> %19, ptr %12, align 4
  %i.pf = load float, ptr %9, align 8             ; 2 uses
  %i.pg = fcmp ord float %i.pf, 0.000000e+00
  br i1 %i.pg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %20 = fmul float %18, %i.pf
  store float %20, ptr %10, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %9, i64 4
  %21 = load <2 x float>, ptr %i.ph, align 4
  %22 = fmul <2 x float> %19, %21
  store <2 x float> %22, ptr %12, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a

bb.at:                                            ; preds = %bb.as
  %i.pj = getelementptr inbounds nuw i8, ptr %.0107196200, i64 16
  %23 = load float, ptr %i.pj, align 1            ; 2 uses
  store float %23, ptr %10, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %.0107196200, i64 20
  %24 = load <2 x float>, ptr %i.pk, align 1      ; 2 uses
  store <2 x float> %24, ptr %12, align 4
  %i.pl = load float, ptr %9, align 8             ; 2 uses
  %i.pm = fcmp ord float %i.pl, 0.000000e+00
  br i1 %i.pm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %25 = fmul float %23, %i.pl
  store float %25, ptr %10, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %9, i64 4
  %26 = load <2 x float>, ptr %i.pn, align 4
  %27 = fmul <2 x float> %24, %26
  store <2 x float> %27, ptr %12, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
end_hunk_3
