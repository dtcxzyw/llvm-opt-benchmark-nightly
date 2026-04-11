inline.NumInlined: 254
inline.NumDeleted: 140
begin_hunk_0_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.aiString, align 4           ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %9 = alloca %class.aiColor4t, align 8           ; 23 uses
  %10 = alloca %struct.aiColor3D, align 8         ; 19 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca [5 x i8], align 1                 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store <2 x float> zeroinitializer, ptr %10, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store float 0.000000e+00, ptr %i.ov, align 8
  %12 = load <2 x float>, ptr %.0107196200, align 1 ; 2 uses
  store <2 x float> %12, ptr %10, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %.0107196200, i64 8
  %13 = load float, ptr %i.ow, align 1            ; 2 uses
  store float %13, ptr %i.ov, align 8
  %i.ox = load float, ptr %9, align 8             ; 2 uses
  %i.oy = fcmp ord float %i.ox, 0.000000e+00
  br i1 %i.oy, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %15 = load float, ptr %14, align 4
  %16 = insertelement <2 x float> poison, float %i.ox, i64 0
  %17 = insertelement <2 x float> %16, float %15, i64 1
  %18 = fmul <2 x float> %12, %17
  store <2 x float> %18, ptr %10, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %19 = load float, ptr %i.oz, align 8
  %20 = fmul float %13, %19
  store float %20, ptr %i.ov, align 8
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.pd = getelementptr inbounds nuw i8, ptr %.0107196200, i64 32
  %21 = load <2 x float>, ptr %i.pd, align 1      ; 2 uses
  store <2 x float> %21, ptr %10, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %.0107196200, i64 40
  %22 = load float, ptr %i.pe, align 1            ; 2 uses
  store float %22, ptr %i.ov, align 8
  %i.pf = load float, ptr %9, align 8             ; 2 uses
  %i.pg = fcmp ord float %i.pf, 0.000000e+00
  br i1 %i.pg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %23 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %24 = load float, ptr %23, align 4
  %25 = insertelement <2 x float> poison, float %i.pf, i64 0
  %26 = insertelement <2 x float> %25, float %24, i64 1
  %27 = fmul <2 x float> %21, %26
  store <2 x float> %27, ptr %10, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %9, i64 8
  %28 = load float, ptr %i.ph, align 8
  %29 = fmul float %22, %28
  store float %29, ptr %i.ov, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a

bb.at:                                            ; preds = %bb.as
  %i.pj = getelementptr inbounds nuw i8, ptr %.0107196200, i64 16
  %30 = load <2 x float>, ptr %i.pj, align 1      ; 2 uses
  store <2 x float> %30, ptr %10, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %.0107196200, i64 24
  %31 = load float, ptr %i.pk, align 1            ; 2 uses
  store float %31, ptr %i.ov, align 8
  %i.pl = load float, ptr %9, align 8             ; 2 uses
  %i.pm = fcmp ord float %i.pl, 0.000000e+00
  br i1 %i.pm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %32 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %33 = load float, ptr %32, align 4
  %34 = insertelement <2 x float> poison, float %i.pl, i64 0
  %35 = insertelement <2 x float> %34, float %33, i64 1
  %36 = fmul <2 x float> %30, %35
  store <2 x float> %36, ptr %10, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %37 = load float, ptr %i.pn, align 8
  %38 = fmul float %31, %37
  store float %38, ptr %i.ov, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
end_hunk_3
