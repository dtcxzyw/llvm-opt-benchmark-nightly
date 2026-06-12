inline.NumInlined: 961
inline.NumDeleted: 441
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 12
  %i.o = icmp ugt i64 %i.n, 768614336404564650
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -12
  %i.r = sub i64 %i.q, %i.e
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = urem i64 %.fr.i, 12
  %i.t = add i64 %.fr.i, 12
  %i.u = sub i64 %i.t, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.c, i64 %i.u, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #26
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 12
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.f, 12
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.z, 12
  br i1 %i.ac, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.z, i1 false)
  br label %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp eq i64 %i.z, 12
  br i1 %i.ad, label %bb.n, label %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit

_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8
  %i.af = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.af, %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0810.i.i.i.i, i64 12, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  %i.g = and i64 %i.d, 4294966272
  %.not.i = icmp eq i64 %i.g, 0
  %spec.select.i = select i1 %.not.i, i32 %i.e, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %3, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = zext i32 %spec.select.i to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 1 %i.h, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i8 0, ptr %i.j, align 1
  %i.k = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i32 noundef %2, i32 noundef 0) ; 0 uses
  %i.l = load float, ptr %1, align 8
  %i.m = fcmp ord float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  store i32 %i.p, ptr %i.a, align 4
  %i.q = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %2, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.r = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %2, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.s = load i32, ptr %i.o, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load <4 x float>, ptr %i.u, align 8
  %i.w = fmul <4 x float> %i.v, <float 5.000000e-01, float 5.000000e-01, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %i.w, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i32 noundef 20, ptr noundef nonnull @.str.10, i32 noundef %2, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter15ConvertMaterialERNS_4D3DS8MaterialER10aiMaterial(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(689) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.aiString, align 4           ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %struct.aiString, align 4           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.aiString, align 4           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %7 = load i64, ptr %i.e, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %bb.b

9:                                                ; preds = %bb.a
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %11 = load i8, ptr %10, align 8, !range !12, !noundef !13
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.f = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.g, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.g, align 8
  %.not21.i = icmp eq ptr %4, %i.d
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, !prof !9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.i = load ptr, ptr %i.d, align 8
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.i, align 1
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.j = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.j, align 1
  %i.k = load ptr, ptr %4, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.m = load i64, ptr %i.g, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %9, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load float, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.r = load float, ptr %i.q, align 8
  %i.s = fadd float %i.p, %i.r
  store float %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.w = load float, ptr %i.v, align 4
  %i.x = fadd float %i.u, %i.w
  store float %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load float, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 8
  %i.ac = fadd float %i.z, %i.ab
  store float %i.ac, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false)
  %i.ai = and i64 %i.af, 4294966272
  %.not.i68 = icmp eq i64 %i.ai, 0
  %spec.select.i69 = select i1 %.not.i68, i32 %i.ag, i32 1023 ; 2 uses
  store i32 %spec.select.i69, ptr %5, align 4
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = zext i32 %spec.select.i69 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 1 %i.aj, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  store i8 0, ptr %i.al, align 1
  %i.am = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %5, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.an = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.q, i32 noundef 12, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ao, i32 noundef 12, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ar = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.aq, i32 noundef 12, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.at = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.as, i32 noundef 12, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4
  %.off = add i32 %i.av, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = fcmp une float %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ba = load float, ptr %i.az, align 8
  %i.bb = fcmp une float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 2, ptr %i.au, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bc = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.aw, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.bd = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.az, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bf = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.be, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.bh = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.bg, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.bj = load i8, ptr %i.bi, align 8, !range !12, !noundef !13
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 1, ptr %i.a, align 4
  %i.bl = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bm = load i32, ptr %i.au, align 4            ; 2 uses
  switch i32 %i.bm, label %bb.o [
    i32 1, label %bb.j
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.j
    i32 4, label %bb.m
    i32 5, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 1, ptr %i.b, align 4
  %i.bn = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  %.0 = phi i32 [ 9, %bb.i ], [ %i.bm, %bb.j ], [ 2, %bb.l ], [ 4, %bb.n ], [ 8, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 %.0, ptr %i.c, align 4
  %i.bo = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bq = load i64, ptr %i.bp, align 8
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.br, i32 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bt = load i64, ptr %i.bs, align 8
  %.not58 = icmp eq i64 %i.bt, 0
  br i1 %.not58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i32 noundef 2)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bw = load i64, ptr %i.bv, align 8
  %.not59 = icmp eq i64 %i.bw, 0
  br i1 %.not59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.bx, i32 noundef 8)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.bz = load i64, ptr %i.by, align 8
  %.not60 = icmp eq i64 %i.bz, 0
  br i1 %.not60, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ca, i32 noundef 4)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cc = load i64, ptr %i.cb, align 8
  %.not61 = icmp eq i64 %i.cc, 0
  br i1 %.not61, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.cd, i32 noundef 5)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.cf = load i64, ptr %i.ce, align 8
  %.not62 = icmp eq i64 %i.cf, 0
  br i1 %.not62, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 528
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i32 noundef 7)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ci = load i64, ptr %i.ch, align 8
  %.not63 = icmp eq i64 %i.ci, 0
  br i1 %.not63, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @_ZN6Assimp11CopyTextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, i32 noundef 11)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ck = load i64, ptr %i.ae, align 8            ; 5 uses
  %.not64 = icmp eq i64 %i.ck, 0
end_hunk_0
