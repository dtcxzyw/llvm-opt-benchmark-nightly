inline.NumInlined: 880
inline.NumDeleted: 400
begin_hunk_0_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
bb.jv:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 8 ; 3 uses
  store ptr %i.ajj, ptr %i.ajk, align 8
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajb, i64 4 ; 10 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajb, i64 112 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %i.aki = load i32, ptr %i.ajl, align 4
  %i.akj = add i32 %i.aki, 1                      ; 3 uses
  store i32 %i.akj, ptr %i.ajl, align 4
  %i.akk = load ptr, ptr %i.ajk, align 8
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 4
end_hunk_1
begin_hunk_2_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.ako = zext i16 %i.akn to i64
  %i.akp = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.ako
  %i.akq = load ptr, ptr %i.ajm, align 8
  %i.akr = zext i32 %i.akj to i64
  %i.aks = getelementptr inbounds nuw [12 x i8], ptr %i.akq, i64 %i.akr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aks, ptr noundef nonnull align 4 dereferenceable(12) %i.akp, i64 12, i1 false)
  %i.akt = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 10
end_hunk_2
begin_hunk_3_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.1, align 4
  %i.alg = load i32, ptr %i.ajl, align 4
  %i.alh = add i32 %i.alg, 1                      ; 3 uses
  store i32 %i.alh, ptr %i.ajl, align 4
  %i.ali = load ptr, ptr %i.ajk, align 8
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.alm = zext i16 %i.all to i64
  %i.aln = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.alm
  %i.alo = load ptr, ptr %i.ajm, align 8
  %i.alp = zext i32 %i.alh to i64
  %i.alq = getelementptr inbounds nuw [12 x i8], ptr %i.alo, i64 %i.alp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.alq, ptr noundef nonnull align 4 dereferenceable(12) %i.aln, i64 12, i1 false)
  %i.alr = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 12
end_hunk_4
