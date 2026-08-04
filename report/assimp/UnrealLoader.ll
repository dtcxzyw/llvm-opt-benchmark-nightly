inline.NumInlined: 880
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
.loopexit819:                                     ; preds = %.loopexit819.loopexit, %bb.iw
  %i.agw = getelementptr inbounds nuw i8, ptr %i.aer, i64 112
  store ptr %i.agr, ptr %i.agw, align 8
  %i.agx = load ptr, ptr %i.ael, align 8
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %indvars.iv
  %i.agz = trunc nuw i64 %indvars.iv to i32       ; 2 uses
  store i32 %i.agz, ptr %i.agy, align 4
  %i.aha = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %bb.ix unwind label %bb.jc     ; 8 uses

bb.ix:                                            ; preds = %.loopexit819
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aha)
          to label %bb.iy unwind label %bb.jd

bb.iy:                                            ; preds = %bb.ix
  %i.ahb = load ptr, ptr %i.aeh, align 8
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.ahb, i64 %indvars.iv
  store ptr %i.aha, ptr %i.ahc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store <2 x float> splat (float 1.000000e+00), ptr %27, align 8
  store float 1.000000e+00, ptr %i.aem, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %28, i8 0, i64 1028, i1 false)
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.afa, i64 4 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 4
  %i.ahf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aen, i64 noundef 1024, ptr noundef nonnull @.str.32, i32 noundef %i.agz, i32 noundef %i.ahe) #25 ; 0 uses
  %i.ahg = load i32, ptr %i.afa, align 4
  %i.ahh = icmp eq i32 %i.ahg, 1
  br i1 %i.ahh, label %bb.iz, label %bb.jf

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i32 1, ptr %i.f, align 4
  %i.ahi = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.aha, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.je ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %bb.iz
  %strlen216 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aen)
  %endptr217 = getelementptr inbounds i8, ptr %i.aen, i64 %strlen216
  store i32 6255476, ptr %endptr217, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.jg

bb.ja:                                            ; preds = %bb.ir
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

bb.jb:                                            ; preds = %.loopexit820, %.loopexit821, %bb.is
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %.thread785

bb.jc:                                            ; preds = %.loopexit819
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  br label %.thread785

bb.jd:                                            ; preds = %bb.ix
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aha, i64 noundef 16) #27
  br label %.thread785

bb.je:                                            ; preds = %bb.iz
  %i.ahn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.jt

bb.jf:                                            ; preds = %bb.iy
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aen)
  %endptr = getelementptr inbounds i8, ptr %i.aen, i64 %strlen
  store i32 6255471, ptr %endptr, align 1
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.aho = load i32, ptr %i.afa, align 4
  %i.ahp = icmp eq i32 %i.aho, 2
  br i1 %i.ahp, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store float f0x3F666666, ptr %i.g, align 4
  %i.ahq = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.aha, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit unwind label %bb.ji ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit:      ; preds = %bb.jh
  %strlen220 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aen)
  %endptr221 = getelementptr inbounds i8, ptr %i.aen, i64 %strlen220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr221, ptr noundef nonnull align 1 dereferenceable(6) @.str.37, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.jk

bb.ji:                                            ; preds = %bb.jh
  %i.ahr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.jt

bb.jj:                                            ; preds = %bb.jg
  %strlen218 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aen)
  %endptr219 = getelementptr inbounds i8, ptr %i.aen, i64 %strlen218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr219, ptr noundef nonnull align 1 dereferenceable(6) @.str.38, i64 6, i1 false)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %i.ahs = load i32, ptr %i.afa, align 4
  %i.aht = icmp eq i32 %i.ahs, 8
  br i1 %i.aht, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aen, ptr noundef nonnull align 1 dereferenceable(12) @.str.39, i64 12, i1 false)
  store i32 11, ptr %28, align 4
  store <2 x float> zeroinitializer, ptr %27, align 8
  store float 0.000000e+00, ptr %i.aem, align 8
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.ahu = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.aha, ptr noundef nonnull %27, i32 noundef 12, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit unwind label %bb.jo ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit: ; preds = %bb.jm
  %i.ahv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aen) #29
  %i.ahw = trunc i64 %i.ahv to i32
  store i32 %i.ahw, ptr %28, align 4
  %i.ahx = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.aha, ptr noundef nonnull %28, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 0)
          to label %bb.jn unwind label %bb.jo     ; 0 uses

bb.jn:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.ahy = load i32, ptr %i.ahd, align 4
  %i.ahz = load ptr, ptr %19, align 8             ; 2 uses
  %i.aia = load ptr, ptr %i.abx, align 8          ; 2 uses
  %.not817891 = icmp eq ptr %i.ahz, %i.aia
  br i1 %.not817891, label %.loopexit, label %.lr.ph894

bb.jo:                                            ; preds = %bb.jm, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.aib = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

.lr.ph894:                                        ; preds = %bb.jn, %bb.js
  %.sroa.0642.0892 = phi ptr [ %i.ain, %bb.js ], [ %i.ahz, %bb.jn ] ; 4 uses
  %i.aic = load i32, ptr %.sroa.0642.0892, align 8
  %i.aid = icmp eq i32 %i.aic, %i.ahy
  br i1 %i.aid, label %bb.jp, label %bb.js

bb.jp:                                            ; preds = %.lr.ph894
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.0642.0892, i64 16
  %i.aif = load i64, ptr %i.aie, align 8          ; 4 uses
  %i.aig = icmp ugt i64 %i.aif, 1023
  br i1 %i.aig, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.aih = getelementptr inbounds nuw i8, ptr %.sroa.0642.0892, i64 8
  %i.aii = trunc nuw nsw i64 %i.aif to i32
  store i32 %i.aii, ptr %28, align 4
  %i.aij = load ptr, ptr %i.aih, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aen, ptr align 1 %i.aij, i64 %i.aif, i1 false)
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.aif
  store i8 0, ptr %i.aik, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568: ; preds = %bb.jp, %bb.jq
  %i.ail = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.aha, ptr noundef nonnull %28, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef 0)
          to label %.loopexit unwind label %bb.jr ; 0 uses

bb.jr:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568
  %i.aim = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.js:                                            ; preds = %.lr.ph894
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.0642.0892, i64 40 ; 2 uses
  %.not817 = icmp eq ptr %i.ain, %i.aia
  br i1 %.not817, label %.loopexit, label %.lr.ph894, !llvm.loop !52

.loopexit:                                        ; preds = %bb.js, %bb.jn, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aio = load i32, ptr %i.acn, align 8
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = icmp samesign ult i64 %indvars.iv.next, %i.aip
  br i1 %i.aiq, label %bb.ir, label %.lr.ph901, !llvm.loop !53

bb.jt:                                            ; preds = %bb.jr, %bb.jo, %bb.ji, %bb.je
  %.pn222 = phi { ptr, i32 } [ %i.aim, %bb.jr ], [ %i.aib, %bb.jo ], [ %i.ahr, %bb.ji ], [ %i.ahn, %bb.je ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.ku

._crit_edge902:                                   ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %30) #25
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21MakeLeftHandedProcessE, i64 16), ptr %30, align 8
  invoke void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull %2)
          to label %bb.jz unwind label %bb.kr

bb.ju:                                            ; preds = %.lr.ph901, %bb.jv
  %.sroa.0638.0900 = phi ptr [ %i.jj, %.lr.ph901 ], [ %i.amd, %bb.jv ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.air = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 6
  %i.ais = load i8, ptr %i.air, align 2
  %i.ait = sext i8 %i.ais to i32
  store i32 %i.ait, ptr %29, align 4
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 14
  %i.aiv = load i8, ptr %i.aiu, align 2
  %i.aiw = zext i8 %i.aiv to i32
  store i32 %i.aiw, ptr %i.aeo, align 4
  store i32 0, ptr %i.aep, align 4
  %i.aix = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr %.sroa.0657.2, ptr %.sroa.21.1, ptr nonnull align 4 dereferenceable(12) %29)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570 unwind label %bb.jw

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570: ; preds = %bb.ju
  %i.aiy = load ptr, ptr %i.aee, align 8
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = sub i64 %i.aiz, %i.aeq
  %i.ajb = sdiv exact i64 %i.aja, 12
  %i.ajc = getelementptr inbounds [8 x i8], ptr %i.aiy, i64 %i.ajb
  %i.ajd = load ptr, ptr %i.ajc, align 8          ; 5 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 208
  %i.ajf = load ptr, ptr %i.aje, align 8
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8 ; 2 uses
  %i.ajh = load i32, ptr %i.ajg, align 8          ; 2 uses
  %i.aji = add i32 %i.ajh, 1
  store i32 %i.aji, ptr %i.ajg, align 8
  %i.ajj = zext i32 %i.ajh to i64
  %i.ajk = getelementptr inbounds nuw [16 x i8], ptr %i.ajf, i64 %i.ajj ; 2 uses
  store i32 3, ptr %i.ajk, align 8
  %i.ajl = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #28
          to label %bb.jv unwind label %bb.jx     ; 2 uses

bb.jv:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8 ; 3 uses
  store ptr %i.ajl, ptr %i.ajm, align 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajd, i64 4 ; 12 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16 ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 8
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajd, i64 112 ; 3 uses
  %i.ajr = load i32, ptr %i.ajn, align 4          ; 2 uses
  store i32 %i.ajr, ptr %i.ajl, align 4
  %i.ajs = load i16, ptr %.sroa.0638.0900, align 2
  %i.ajt = zext i16 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.ajt
  %i.ajv = load ptr, ptr %i.ajo, align 8
  %i.ajw = zext i32 %i.ajr to i64
  %i.ajx = getelementptr inbounds nuw [12 x i8], ptr %i.ajv, i64 %i.ajw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ajx, ptr noundef nonnull align 4 dereferenceable(12) %i.aju, i64 12, i1 false)
  %i.ajy = load i8, ptr %i.ajp, align 2
  %i.ajz = uitofp i8 %i.ajy to float
  %i.aka = fdiv float %i.ajz, 2.550000e+02
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 9
  %i.akc = load i8, ptr %i.akb, align 1
  %i.akd = uitofp i8 %i.akc to float
  %i.ake = fdiv float %i.akd, 2.550000e+02
  %i.akf = fsub float 1.000000e+00, %i.ake
  %i.akg = load ptr, ptr %i.ajq, align 8
  %i.akh = load i32, ptr %i.ajn, align 4
  %i.aki = zext i32 %i.akh to i64
  %i.akj = getelementptr inbounds nuw [12 x i8], ptr %i.akg, i64 %i.aki ; 3 uses
  store float %i.aka, ptr %i.akj, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akj, i64 4
  store float %i.akf, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %i.akk = load i32, ptr %i.ajn, align 4
  %i.akl = add i32 %i.akk, 1                      ; 2 uses
  store i32 %i.akl, ptr %i.ajn, align 4
  %i.akm = load ptr, ptr %i.ajm, align 8
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 4
  store i32 %i.akl, ptr %i.akn, align 4
  %i.ako = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 2
  %i.akp = load i16, ptr %i.ako, align 2
  %i.akq = zext i16 %i.akp to i64
  %i.akr = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.akq
  %i.aks = load ptr, ptr %i.ajo, align 8
  %i.akt = load i32, ptr %i.ajn, align 4
  %i.aku = zext i32 %i.akt to i64
  %i.akv = getelementptr inbounds nuw [12 x i8], ptr %i.aks, i64 %i.aku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.akv, ptr noundef nonnull align 4 dereferenceable(12) %i.akr, i64 12, i1 false)
  %i.akw = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 10
  %i.akx = load i8, ptr %i.akw, align 2
  %i.aky = uitofp i8 %i.akx to float
  %i.akz = fdiv float %i.aky, 2.550000e+02
  %i.ala = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 11
  %i.alb = load i8, ptr %i.ala, align 1
  %i.alc = uitofp i8 %i.alb to float
  %i.ald = fdiv float %i.alc, 2.550000e+02
  %i.ale = fsub float 1.000000e+00, %i.ald
  %i.alf = load ptr, ptr %i.ajq, align 8
  %i.alg = load i32, ptr %i.ajn, align 4
  %i.alh = zext i32 %i.alg to i64
  %i.ali = getelementptr inbounds nuw [12 x i8], ptr %i.alf, i64 %i.alh ; 3 uses
  store float %i.akz, ptr %i.ali, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ali, i64 4
  store float %i.ale, ptr %.sroa.4.0..sroa_idx.1, align 4
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.1, align 4
  %i.alj = load i32, ptr %i.ajn, align 4
  %i.alk = add i32 %i.alj, 1                      ; 2 uses
  store i32 %i.alk, ptr %i.ajn, align 4
  %i.all = load ptr, ptr %i.ajm, align 8
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  store i32 %i.alk, ptr %i.alm, align 4
  %i.aln = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 4
  %i.alo = load i16, ptr %i.aln, align 2
  %i.alp = zext i16 %i.alo to i64
  %i.alq = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.alp
  %i.alr = load ptr, ptr %i.ajo, align 8
  %i.als = load i32, ptr %i.ajn, align 4
  %i.alt = zext i32 %i.als to i64
  %i.alu = getelementptr inbounds nuw [12 x i8], ptr %i.alr, i64 %i.alt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.alu, ptr noundef nonnull align 4 dereferenceable(12) %i.alq, i64 12, i1 false)
  %i.alv = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 12
  %32 = load i8, ptr %i.alv, align 2
  %33 = uitofp i8 %32 to float
  %34 = fdiv float %33, 2.550000e+02
  %35 = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 13
  %36 = load i8, ptr %35, align 1
  %37 = uitofp i8 %36 to float
  %38 = fdiv float %37, 2.550000e+02
  %i.alw = fsub float 1.000000e+00, %38
  %i.alx = load ptr, ptr %i.ajq, align 8
  %i.aly = load i32, ptr %i.ajn, align 4
  %i.alz = zext i32 %i.aly to i64
  %i.ama = getelementptr inbounds nuw [12 x i8], ptr %i.alx, i64 %i.alz ; 3 uses
  store float %34, ptr %i.ama, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ama, i64 4
  store float %i.alw, ptr %.sroa.4.0..sroa_idx.2, align 4
  %.sroa.5.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ama, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.2, align 4
  %i.amb = load i32, ptr %i.ajn, align 4
  %i.amc = add i32 %i.amb, 1
  store i32 %i.amc, ptr %i.ajn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.amd = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 20 ; 2 uses
  %.not816 = icmp eq ptr %i.amd, %.0.i.i.i.i.i1177
  br i1 %.not816, label %._crit_edge902, label %bb.ju

bb.jw:                                            ; preds = %bb.ju
  %i.ame = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.jx:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570
  %i.amf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %.pn214 = phi { ptr, i32 } [ %i.amf, %bb.jx ], [ %i.ame, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.ku

bb.jz:                                            ; preds = %._crit_edge902
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #25
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp23FlipWindingOrderProcessE, i64 16), ptr %31, align 8
  invoke void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull %2)
          to label %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit unwind label %bb.ks

_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit: ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  %i.amg = ptrtoint ptr %.sroa.31.2 to i64
  %i.amh = ptrtoint ptr %.sroa.0657.2 to i64
  %i.ami = sub i64 %i.amg, %i.amh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0657.2, i64 noundef %i.ami) #27
  br i1 %.not813, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit
  %i.amj = load ptr, ptr %i.qm, align 8
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %i.aml = load ptr, ptr %i.amk, align 8
  call void %i.aml(ptr noundef nonnull align 8 dereferenceable(8) %i.qm) #25, !inline_history !54
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i
  %i.amm = load ptr, ptr %19, align 8             ; 3 uses
  %i.amn = load ptr, ptr %i.abx, align 8          ; 2 uses
  %.not4.i.i.i573 = icmp eq ptr %i.amm, %i.amn
  br i1 %.not4.i.i.i573, label %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i574

.lr.ph.i.i.i574:                                  ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i575 = phi ptr [ %i.amu, %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %i.amm, %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.05.i.i.i575, i64 8
  %i.amp = load ptr, ptr %i.amo, align 8          ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.05.i.i.i575, i64 24 ; 2 uses
  %i.amr = icmp eq ptr %i.amp, %i.amq
  br i1 %i.amr, label %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i576: ; preds = %.lr.ph.i.i.i574
  %i.ams = load i64, ptr %i.amq, align 8
  %i.amt = add i64 %i.ams, 1
  call void @_ZdlPvm(ptr noundef %i.amp, i64 noundef %i.amt) #27
  br label %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i574, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i576
  %i.amu = getelementptr inbounds nuw i8, ptr %.05.i.i.i575, i64 40 ; 2 uses
  %.not.i.i.i577 = icmp eq ptr %i.amu, %i.amn
  br i1 %.not.i.i.i577, label %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i574, !llvm.loop !55

_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.pr.i578 = load ptr, ptr %19, align 8
  br label %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit
  %i.amv = phi ptr [ %.pr.i578, %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.amm, %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i579 = icmp eq ptr %i.amv, null
  br i1 %.not.i.i1.i579, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.ka

bb.ka:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  %i.amw = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.amx = load ptr, ptr %i.amw, align 8
  %i.amy = ptrtoint ptr %i.amx to i64
  %i.amz = ptrtoint ptr %i.amv to i64
  %i.ana = sub i64 %i.amy, %i.amz
  call void @_ZdlPvm(ptr noundef nonnull %i.amv, i64 noundef %i.ana) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.pk, i64 noundef %i.pj) #27
  %i.anb = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.anc = load ptr, ptr %i.anb, align 8          ; 2 uses
  %i.and = icmp eq ptr %i.anc, null
  br i1 %i.and, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.anc) #27
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.ane = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.anf = load ptr, ptr %i.ane, align 8          ; 8 uses
  %.not.i.i.i582 = icmp eq ptr %i.anf, null
  br i1 %.not.i.i.i582, label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 8 ; 4 uses
  %i.anh = load atomic i64, ptr %i.ang acquire, align 8 ; 2 uses
  %i.ani = icmp eq i64 %i.anh, 4294967297
  %i.anj = trunc i64 %i.anh to i32                ; 2 uses
  br i1 %i.ani, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  store i32 0, ptr %i.ang, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anf, i64 12
  store i32 0, ptr %i.ank, align 4
  %i.anl = load ptr, ptr %i.anf, align 8
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 16
  %i.ann = load ptr, ptr %i.anm, align 8
  call void %i.ann(ptr noundef nonnull align 8 dereferenceable(16) %i.anf) #25, !inline_history !56
  %i.ano = load ptr, ptr %i.anf, align 8
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 24
  %i.anq = load ptr, ptr %i.anp, align 8
  call void %i.anq(ptr noundef nonnull align 8 dereferenceable(16) %i.anf) #25, !inline_history !56
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit

bb.kf:                                            ; preds = %bb.kd
  %i.anr = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i583 = icmp eq i8 %i.anr, 0
  br i1 %.not.i.i.i.i583, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.ans = add nsw i32 %i.anj, -1
  store i32 %i.ans, ptr %i.ang, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.kh:                                            ; preds = %bb.kf
  %i.ant = atomicrmw volatile add ptr %i.ang, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.kh, %bb.kg
  %.0.i.i.i.i.i584 = phi i32 [ %i.anj, %bb.kg ], [ %i.ant, %bb.kh ]
  %i.anu = icmp eq i32 %.0.i.i.i.i.i584, 1
  br i1 %i.anu, label %bb.ki, label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit, !prof !35

bb.ki:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.anf) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit: ; preds = %bb.kc, %bb.ke, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.ji) #27
  %i.anv = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.anw = load ptr, ptr %i.anv, align 8          ; 2 uses
  %i.anx = icmp eq ptr %i.anw, null
  br i1 %i.anx, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.anw) #27
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit
  %i.any = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.anz = load ptr, ptr %i.any, align 8          ; 8 uses
  %.not.i.i.i586 = icmp eq ptr %i.anz, null
  br i1 %.not.i.i.i586, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit593, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 8 ; 4 uses
  %i.aob = load atomic i64, ptr %i.aoa acquire, align 8 ; 2 uses
  %i.aoc = icmp eq i64 %i.aob, 4294967297
  %i.aod = trunc i64 %i.aob to i32                ; 2 uses
  br i1 %i.aoc, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  store i32 0, ptr %i.aoa, align 8
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anz, i64 12
  store i32 0, ptr %i.aoe, align 4
  %i.aof = load ptr, ptr %i.anz, align 8
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 16
  %i.aoh = load ptr, ptr %i.aog, align 8
  call void %i.aoh(ptr noundef nonnull align 8 dereferenceable(16) %i.anz) #25, !inline_history !56
  %i.aoi = load ptr, ptr %i.anz, align 8
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  %i.aok = load ptr, ptr %i.aoj, align 8
  call void %i.aok(ptr noundef nonnull align 8 dereferenceable(16) %i.anz) #25, !inline_history !56
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit593

bb.kn:                                            ; preds = %bb.kl
  %i.aol = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i587 = icmp eq i8 %i.aol, 0
  br i1 %.not.i.i.i.i587, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
end_hunk_0
