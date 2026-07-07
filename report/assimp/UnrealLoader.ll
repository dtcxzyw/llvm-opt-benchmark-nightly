inline.NumInlined: 880
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
.loopexit819:                                     ; preds = %.loopexit819.loopexit, %bb.iw
  %i.agu = getelementptr inbounds nuw i8, ptr %i.aep, i64 112
  store ptr %i.agp, ptr %i.agu, align 8
  %i.agv = load ptr, ptr %i.aej, align 8
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %indvars.iv
  %i.agx = trunc nuw i64 %indvars.iv to i32       ; 2 uses
  store i32 %i.agx, ptr %i.agw, align 4
  %i.agy = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %bb.ix unwind label %bb.jc     ; 8 uses

bb.ix:                                            ; preds = %.loopexit819
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.agy)
          to label %bb.iy unwind label %bb.jd

bb.iy:                                            ; preds = %bb.ix
  %i.agz = load ptr, ptr %i.aef, align 8
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %indvars.iv
  store ptr %i.agy, ptr %i.aha, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store <2 x float> splat (float 1.000000e+00), ptr %27, align 8
  store float 1.000000e+00, ptr %i.aek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %28, i8 0, i64 1028, i1 false)
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aey, i64 4 ; 2 uses
  %i.ahc = load i32, ptr %i.ahb, align 4
  %i.ahd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ael, i64 noundef 1024, ptr noundef nonnull @.str.32, i32 noundef %i.agx, i32 noundef %i.ahc) #25 ; 0 uses
  %i.ahe = load i32, ptr %i.aey, align 4
  %i.ahf = icmp eq i32 %i.ahe, 1
  br i1 %i.ahf, label %bb.iz, label %bb.jf

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i32 1, ptr %i.f, align 4
  %i.ahg = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.je ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %bb.iz
  %strlen216 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.ael)
  %endptr217 = getelementptr inbounds i8, ptr %i.ael, i64 %strlen216
  store i32 6255476, ptr %endptr217, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.jg

bb.ja:                                            ; preds = %bb.ir
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

bb.jb:                                            ; preds = %.loopexit820, %.loopexit821, %bb.is
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %.thread785

bb.jc:                                            ; preds = %.loopexit819
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  br label %.thread785

bb.jd:                                            ; preds = %bb.ix
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.agy, i64 noundef 16) #27
  br label %.thread785

bb.je:                                            ; preds = %bb.iz
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.jt

bb.jf:                                            ; preds = %bb.iy
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.ael)
  %endptr = getelementptr inbounds i8, ptr %i.ael, i64 %strlen
  store i32 6255471, ptr %endptr, align 1
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.ahm = load i32, ptr %i.aey, align 4
  %i.ahn = icmp eq i32 %i.ahm, 2
  br i1 %i.ahn, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store float f0x3F666666, ptr %i.g, align 4
  %i.aho = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit unwind label %bb.ji ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit:      ; preds = %bb.jh
  %strlen220 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.ael)
  %endptr221 = getelementptr inbounds i8, ptr %i.ael, i64 %strlen220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr221, ptr noundef nonnull align 1 dereferenceable(6) @.str.37, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.jk

bb.ji:                                            ; preds = %bb.jh
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.jt

bb.jj:                                            ; preds = %bb.jg
  %strlen218 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.ael)
  %endptr219 = getelementptr inbounds i8, ptr %i.ael, i64 %strlen218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr219, ptr noundef nonnull align 1 dereferenceable(6) @.str.38, i64 6, i1 false)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %i.ahq = load i32, ptr %i.aey, align 4
  %i.ahr = icmp eq i32 %i.ahq, 8
  br i1 %i.ahr, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ael, ptr noundef nonnull align 1 dereferenceable(12) @.str.39, i64 12, i1 false)
  store i32 11, ptr %28, align 4
  store <2 x float> zeroinitializer, ptr %27, align 8
  store float 0.000000e+00, ptr %i.aek, align 8
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.ahs = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, ptr noundef nonnull %27, i32 noundef 12, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit unwind label %bb.jo ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit: ; preds = %bb.jm
  %i.aht = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ael) #29
  %i.ahu = trunc i64 %i.aht to i32
  store i32 %i.ahu, ptr %28, align 4
  %i.ahv = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, ptr noundef nonnull %28, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 0)
          to label %bb.jn unwind label %bb.jo     ; 0 uses

bb.jn:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.ahw = load i32, ptr %i.ahb, align 4
  %i.ahx = load ptr, ptr %19, align 8             ; 2 uses
  %i.ahy = load ptr, ptr %i.abv, align 8          ; 2 uses
  %.not817891 = icmp eq ptr %i.ahx, %i.ahy
  br i1 %.not817891, label %.loopexit, label %.lr.ph894

bb.jo:                                            ; preds = %bb.jm, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

.lr.ph894:                                        ; preds = %bb.jn, %bb.js
  %.sroa.0642.0892 = phi ptr [ %i.ail, %bb.js ], [ %i.ahx, %bb.jn ] ; 4 uses
  %i.aia = load i32, ptr %.sroa.0642.0892, align 8
  %i.aib = icmp eq i32 %i.aia, %i.ahw
  br i1 %i.aib, label %bb.jp, label %bb.js

bb.jp:                                            ; preds = %.lr.ph894
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.0642.0892, i64 16
  %i.aid = load i64, ptr %i.aic, align 8          ; 4 uses
  %i.aie = icmp ugt i64 %i.aid, 1023
  br i1 %i.aie, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.0642.0892, i64 8
  %i.aig = trunc nuw nsw i64 %i.aid to i32
  store i32 %i.aig, ptr %28, align 4
  %i.aih = load ptr, ptr %i.aif, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ael, ptr align 1 %i.aih, i64 %i.aid, i1 false)
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aid
  store i8 0, ptr %i.aii, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568: ; preds = %bb.jp, %bb.jq
  %i.aij = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, ptr noundef nonnull %28, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef 0)
          to label %.loopexit unwind label %bb.jr ; 0 uses

bb.jr:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568
  %i.aik = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.js:                                            ; preds = %.lr.ph894
  %i.ail = getelementptr inbounds nuw i8, ptr %.sroa.0642.0892, i64 40 ; 2 uses
  %.not817 = icmp eq ptr %i.ail, %i.ahy
  br i1 %.not817, label %.loopexit, label %.lr.ph894, !llvm.loop !52

.loopexit:                                        ; preds = %bb.js, %bb.jn, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aim = load i32, ptr %i.acl, align 8
  %i.ain = zext i32 %i.aim to i64
  %i.aio = icmp samesign ult i64 %indvars.iv.next, %i.ain
  br i1 %i.aio, label %bb.ir, label %.lr.ph901, !llvm.loop !53

bb.jt:                                            ; preds = %bb.jr, %bb.jo, %bb.ji, %bb.je
  %.pn222 = phi { ptr, i32 } [ %i.aik, %bb.jr ], [ %i.ahz, %bb.jo ], [ %i.ahp, %bb.ji ], [ %i.ahl, %bb.je ]
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
  %.sroa.0638.0900 = phi ptr [ %i.jj, %.lr.ph901 ], [ %i.amb, %bb.jv ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 6
  %i.aiq = load i8, ptr %i.aip, align 2
  %i.air = sext i8 %i.aiq to i32
  store i32 %i.air, ptr %29, align 4
  %i.ais = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 14
  %i.ait = load i8, ptr %i.ais, align 2
  %i.aiu = zext i8 %i.ait to i32
  store i32 %i.aiu, ptr %i.aem, align 4
  store i32 0, ptr %i.aen, align 4
  %i.aiv = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr %.sroa.0657.2, ptr %.sroa.21.1, ptr nonnull align 4 dereferenceable(12) %29)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570 unwind label %bb.jw

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570: ; preds = %bb.ju
  %i.aiw = load ptr, ptr %i.aec, align 8
  %i.aix = ptrtoint ptr %i.aiv to i64
  %i.aiy = sub i64 %i.aix, %i.aeo
  %i.aiz = sdiv exact i64 %i.aiy, 12
  %i.aja = getelementptr inbounds [8 x i8], ptr %i.aiw, i64 %i.aiz
  %i.ajb = load ptr, ptr %i.aja, align 8          ; 5 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 208
  %i.ajd = load ptr, ptr %i.ajc, align 8
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8 ; 2 uses
  %i.ajf = load i32, ptr %i.aje, align 8          ; 2 uses
  %i.ajg = add i32 %i.ajf, 1
  store i32 %i.ajg, ptr %i.aje, align 8
  %i.ajh = zext i32 %i.ajf to i64
  %i.aji = getelementptr inbounds nuw [16 x i8], ptr %i.ajd, i64 %i.ajh ; 2 uses
  store i32 3, ptr %i.aji, align 8
  %i.ajj = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #28
          to label %bb.jv unwind label %bb.jx     ; 2 uses

bb.jv:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 8 ; 3 uses
  store ptr %i.ajj, ptr %i.ajk, align 8
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajb, i64 4 ; 12 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajb, i64 112 ; 3 uses
  %i.ajp = load i32, ptr %i.ajl, align 4          ; 2 uses
  store i32 %i.ajp, ptr %i.ajj, align 4
  %i.ajq = load i16, ptr %.sroa.0638.0900, align 2
  %i.ajr = zext i16 %i.ajq to i64
  %i.ajs = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.ajr
  %i.ajt = load ptr, ptr %i.ajm, align 8
  %i.aju = zext i32 %i.ajp to i64
  %i.ajv = getelementptr inbounds nuw [12 x i8], ptr %i.ajt, i64 %i.aju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ajv, ptr noundef nonnull align 4 dereferenceable(12) %i.ajs, i64 12, i1 false)
  %i.ajw = load i8, ptr %i.ajn, align 2
  %i.ajx = uitofp i8 %i.ajw to float
  %i.ajy = fdiv float %i.ajx, 2.550000e+02
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 9
  %i.aka = load i8, ptr %i.ajz, align 1
  %i.akb = uitofp i8 %i.aka to float
  %i.akc = fdiv float %i.akb, 2.550000e+02
  %i.akd = fsub float 1.000000e+00, %i.akc
  %i.ake = load ptr, ptr %i.ajo, align 8
  %i.akf = load i32, ptr %i.ajl, align 4
  %i.akg = zext i32 %i.akf to i64
  %i.akh = getelementptr inbounds nuw [12 x i8], ptr %i.ake, i64 %i.akg ; 3 uses
  store float %i.ajy, ptr %i.akh, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akh, i64 4
  store float %i.akd, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %i.aki = load i32, ptr %i.ajl, align 4
  %i.akj = add i32 %i.aki, 1                      ; 2 uses
  store i32 %i.akj, ptr %i.ajl, align 4
  %i.akk = load ptr, ptr %i.ajk, align 8
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 4
  store i32 %i.akj, ptr %i.akl, align 4
  %i.akm = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 2
  %i.akn = load i16, ptr %i.akm, align 2
  %i.ako = zext i16 %i.akn to i64
  %i.akp = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.ako
  %i.akq = load ptr, ptr %i.ajm, align 8
  %i.akr = load i32, ptr %i.ajl, align 4
  %i.aks = zext i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw [12 x i8], ptr %i.akq, i64 %i.aks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.akt, ptr noundef nonnull align 4 dereferenceable(12) %i.akp, i64 12, i1 false)
  %i.aku = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 10
  %i.akv = load i8, ptr %i.aku, align 2
  %i.akw = uitofp i8 %i.akv to float
  %i.akx = fdiv float %i.akw, 2.550000e+02
  %i.aky = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 11
  %i.akz = load i8, ptr %i.aky, align 1
  %i.ala = uitofp i8 %i.akz to float
  %i.alb = fdiv float %i.ala, 2.550000e+02
  %i.alc = fsub float 1.000000e+00, %i.alb
  %i.ald = load ptr, ptr %i.ajo, align 8
  %i.ale = load i32, ptr %i.ajl, align 4
  %i.alf = zext i32 %i.ale to i64
  %i.alg = getelementptr inbounds nuw [12 x i8], ptr %i.ald, i64 %i.alf ; 3 uses
  store float %i.akx, ptr %i.alg, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.alg, i64 4
  store float %i.alc, ptr %.sroa.4.0..sroa_idx.1, align 4
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.1, align 4
  %i.alh = load i32, ptr %i.ajl, align 4
  %i.ali = add i32 %i.alh, 1                      ; 2 uses
  store i32 %i.ali, ptr %i.ajl, align 4
  %i.alj = load ptr, ptr %i.ajk, align 8
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  store i32 %i.ali, ptr %i.alk, align 4
  %i.all = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 4
  %i.alm = load i16, ptr %i.all, align 2
  %i.aln = zext i16 %i.alm to i64
  %i.alo = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.aln
  %i.alp = load ptr, ptr %i.ajm, align 8
  %i.alq = load i32, ptr %i.ajl, align 4
  %i.alr = zext i32 %i.alq to i64
  %i.als = getelementptr inbounds nuw [12 x i8], ptr %i.alp, i64 %i.alr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.als, ptr noundef nonnull align 4 dereferenceable(12) %i.alo, i64 12, i1 false)
  %i.alt = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 12
  %32 = load <2 x i8>, ptr %i.alt, align 2
  %33 = uitofp <2 x i8> %32 to <2 x float>
  %34 = fdiv <2 x float> %33, splat (float 2.550000e+02) ; 2 uses
  %35 = extractelement <2 x float> %34, i64 1
  %i.alu = fsub float 1.000000e+00, %35
  %i.alv = load ptr, ptr %i.ajo, align 8
  %i.alw = load i32, ptr %i.ajl, align 4
  %i.alx = zext i32 %i.alw to i64
  %i.aly = getelementptr inbounds nuw [12 x i8], ptr %i.alv, i64 %i.alx ; 3 uses
  %36 = extractelement <2 x float> %34, i64 0
  store float %36, ptr %i.aly, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.aly, i64 4
  store float %i.alu, ptr %.sroa.4.0..sroa_idx.2, align 4
  %.sroa.5.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.aly, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.2, align 4
  %i.alz = load i32, ptr %i.ajl, align 4
  %i.ama = add i32 %i.alz, 1
  store i32 %i.ama, ptr %i.ajl, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.amb = getelementptr inbounds nuw i8, ptr %.sroa.0638.0900, i64 20 ; 2 uses
  %.not816 = icmp eq ptr %i.amb, %.0.i.i.i.i.i1179
  br i1 %.not816, label %._crit_edge902, label %bb.ju

bb.jw:                                            ; preds = %bb.ju
  %i.amc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.jx:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570
  %i.amd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %.pn214 = phi { ptr, i32 } [ %i.amd, %bb.jx ], [ %i.amc, %bb.jw ]
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
  %i.ame = ptrtoint ptr %.sroa.31.2 to i64
  %i.amf = ptrtoint ptr %.sroa.0657.2 to i64
  %i.amg = sub i64 %i.ame, %i.amf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0657.2, i64 noundef %i.amg) #27
  br i1 %.not813, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit
  %i.amh = load ptr, ptr %i.qk, align 8
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %i.amj = load ptr, ptr %i.ami, align 8
  call void %i.amj(ptr noundef nonnull align 8 dereferenceable(8) %i.qk) #25, !inline_history !54
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp6Unreal7TempMatESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i
  %i.amk = load ptr, ptr %19, align 8             ; 3 uses
  %i.aml = load ptr, ptr %i.abv, align 8          ; 2 uses
  %.not4.i.i.i573 = icmp eq ptr %i.amk, %i.aml
  br i1 %.not4.i.i.i573, label %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i574

.lr.ph.i.i.i574:                                  ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i575 = phi ptr [ %i.ams, %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %i.amk, %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.05.i.i.i575, i64 8
  %i.amn = load ptr, ptr %i.amm, align 8          ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.05.i.i.i575, i64 24 ; 2 uses
  %i.amp = icmp eq ptr %i.amn, %i.amo
  br i1 %i.amp, label %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i576: ; preds = %.lr.ph.i.i.i574
  %i.amq = load i64, ptr %i.amo, align 8
  %i.amr = add i64 %i.amq, 1
  call void @_ZdlPvm(ptr noundef %i.amn, i64 noundef %i.amr) #27
  br label %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i574, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i576
  %i.ams = getelementptr inbounds nuw i8, ptr %.05.i.i.i575, i64 40 ; 2 uses
  %.not.i.i.i577 = icmp eq ptr %i.ams, %i.aml
  br i1 %.not.i.i.i577, label %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i574, !llvm.loop !55

_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.pr.i578 = load ptr, ptr %19, align 8
  br label %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit
  %i.amt = phi ptr [ %.pr.i578, %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.amk, %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i579 = icmp eq ptr %i.amt, null
  br i1 %.not.i.i1.i579, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.ka

bb.ka:                                            ; preds = %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  %i.amu = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.amv = load ptr, ptr %i.amu, align 8
  %i.amw = ptrtoint ptr %i.amv to i64
  %i.amx = ptrtoint ptr %i.amt to i64
  %i.amy = sub i64 %i.amw, %i.amx
  call void @_ZdlPvm(ptr noundef nonnull %i.amt, i64 noundef %i.amy) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.pk, i64 noundef %i.pj) #27
  %i.amz = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ana = load ptr, ptr %i.amz, align 8          ; 2 uses
  %i.anb = icmp eq ptr %i.ana, null
  br i1 %i.anb, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ana) #27
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.anc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.and = load ptr, ptr %i.anc, align 8          ; 8 uses
  %.not.i.i.i582 = icmp eq ptr %i.and, null
  br i1 %.not.i.i.i582, label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 8 ; 4 uses
  %i.anf = load atomic i64, ptr %i.ane acquire, align 8 ; 2 uses
  %i.ang = icmp eq i64 %i.anf, 4294967297
  %i.anh = trunc i64 %i.anf to i32                ; 2 uses
  br i1 %i.ang, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  store i32 0, ptr %i.ane, align 8
  %i.ani = getelementptr inbounds nuw i8, ptr %i.and, i64 12
  store i32 0, ptr %i.ani, align 4
  %i.anj = load ptr, ptr %i.and, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 16
  %i.anl = load ptr, ptr %i.ank, align 8
  call void %i.anl(ptr noundef nonnull align 8 dereferenceable(16) %i.and) #25, !inline_history !56
  %i.anm = load ptr, ptr %i.and, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 24
  %i.ano = load ptr, ptr %i.ann, align 8
  call void %i.ano(ptr noundef nonnull align 8 dereferenceable(16) %i.and) #25, !inline_history !56
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit

bb.kf:                                            ; preds = %bb.kd
  %i.anp = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i583 = icmp eq i8 %i.anp, 0
  br i1 %.not.i.i.i.i583, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.anq = add nsw i32 %i.anh, -1
  store i32 %i.anq, ptr %i.ane, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.kh:                                            ; preds = %bb.kf
  %i.anr = atomicrmw volatile add ptr %i.ane, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.kh, %bb.kg
  %.0.i.i.i.i.i584 = phi i32 [ %i.anh, %bb.kg ], [ %i.anr, %bb.kh ]
  %i.ans = icmp eq i32 %.0.i.i.i.i.i584, 1
  br i1 %i.ans, label %bb.ki, label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit, !prof !35

bb.ki:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.and) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit: ; preds = %bb.kc, %bb.ke, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.ji) #27
  %i.ant = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.anu = load ptr, ptr %i.ant, align 8          ; 2 uses
  %i.anv = icmp eq ptr %i.anu, null
  br i1 %i.anv, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.anu) #27
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit
  %i.anw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8          ; 8 uses
  %.not.i.i.i586 = icmp eq ptr %i.anx, null
  br i1 %.not.i.i.i586, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit593, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 8 ; 4 uses
  %i.anz = load atomic i64, ptr %i.any acquire, align 8 ; 2 uses
  %i.aoa = icmp eq i64 %i.anz, 4294967297
  %i.aob = trunc i64 %i.anz to i32                ; 2 uses
  br i1 %i.aoa, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  store i32 0, ptr %i.any, align 8
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anx, i64 12
  store i32 0, ptr %i.aoc, align 4
  %i.aod = load ptr, ptr %i.anx, align 8
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  %i.aof = load ptr, ptr %i.aoe, align 8
  call void %i.aof(ptr noundef nonnull align 8 dereferenceable(16) %i.anx) #25, !inline_history !56
  %i.aog = load ptr, ptr %i.anx, align 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 24
  %i.aoi = load ptr, ptr %i.aoh, align 8
  call void %i.aoi(ptr noundef nonnull align 8 dereferenceable(16) %i.anx) #25, !inline_history !56
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit593

bb.kn:                                            ; preds = %bb.kl
  %i.aoj = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i587 = icmp eq i8 %i.aoj, 0
  br i1 %.not.i.i.i.i587, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
end_hunk_0
