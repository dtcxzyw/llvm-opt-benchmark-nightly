inline.NumInlined: 1119
inline.NumDeleted: 346
begin_hunk_0
%"struct.std::_Head_base.51" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Assimp::ObjFile::Material *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Assimp::ObjFile::Material *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZNSt6vectorIcSaIcEE6resizeEm = comdat any

$_ZN6Assimp8IOSystemD2Ev = comdat any

$_ZN6Assimp6Logger4warnIJRA20_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_ = comdat any
end_hunk_0
begin_hunk_1
@_ZTVN6Assimp15DefaultIOSystemE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN6Assimp8IOSystemE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.36 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp18ObjFileMtlImporterC2ERSt6vectorIcSaIcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEPNS_7ObjFile5ModelE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %3, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef 2048)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %7 = load ptr, ptr %i.w, align 8                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %7
  br i1 %.not.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit, label %8

8:                                                ; preds = %bb.d
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %i.y to i64
  %11 = sub i64 %10, %9
  call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %11, i1 false)
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit: ; preds = %8, %bb.d
  %12 = load ptr, ptr %i.u, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit
  %i.z = invoke noalias noundef nonnull dereferenceable(20776) ptr @_Znwm(i64 noundef 20776) #23
          to label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f ; 24 uses

end_hunk_2
begin_hunk_3_@_ZN6Assimp18ObjFileMtlImporterC2ERSt6vectorIcSaIcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEPNS_7ObjFile5ModelE:bb.a
  store float 1.000000e+00, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 20560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.av, i8 0, i64 20, i1 false)
  store ptr %i.z, ptr %13, align 8
  %i.aw = load ptr, ptr %i.u, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp18ObjFileMtlImporterC2ERSt6vectorIcSaIcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEPNS_7ObjFile5ModelE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_4
begin_hunk_5_@_ZN6Assimp18ObjFileMtlImporterC2ERSt6vectorIcSaIcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEPNS_7ObjFile5ModelE:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %4 = load ptr, ptr %3, align 8                  ; 6 uses
  %5 = load ptr, ptr %0, align 8                  ; 6 uses
  %6 = ptrtoint ptr %4 to i64                     ; 2 uses
  %7 = ptrtoint ptr %5 to i64                     ; 2 uses
  %8 = sub i64 %6, %7                             ; 9 uses
  %9 = icmp ugt i64 %1, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = sub nuw i64 %1, %8                        ; 6 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i64                   ; 2 uses
  %15 = sub i64 %14, %6                           ; 2 uses
  %16 = icmp sgt i64 %8, -1
  tail call void @llvm.assume(i1 %16)
  %17 = xor i64 %8, 9223372036854775807           ; 2 uses
  %18 = icmp ule i64 %15, %17
  tail call void @llvm.assume(i1 %18)
  %.not28.i = icmp ult i64 %15, %11
  br i1 %.not28.i, label %25, label %19

19:                                               ; preds = %10
  store i8 0, ptr %4, align 1
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %21 = add nsw i64 %11, -1                       ; 2 uses
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %4, i64 %11
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %20, i8 0, i64 %21, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %23, %19
  %.0.i.i.i.i = phi ptr [ %24, %23 ], [ %20, %19 ]
  store ptr %.0.i.i.i.i, ptr %3, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

25:                                               ; preds = %10
  %26 = icmp ult i64 %17, %11
  br i1 %26, label %27, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %25
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %8, i64 %11)
  %28 = add nuw i64 %.sroa.speculated.i.i, %8
  %29 = tail call i64 @llvm.umin.i64(i64 %28, i64 9223372036854775807) ; 2 uses
  %30 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %29) #23 ; 5 uses
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %8 ; 2 uses
  store i8 0, ptr %31, align 1
  %32 = add nsw i64 %11, -1                       ; 2 uses
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %34

34:                                               ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %35, i8 0, i64 %32, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %34, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %4, %5
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %36

36:                                               ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %30, ptr align 1 %5, i64 %8, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %36, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %5, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %37

37:                                               ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %38 = sub i64 %14, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %38) #24
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %37, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %30, ptr %0, align 8
  %39 = getelementptr inbounds nuw i8, ptr %30, i64 %1
  store ptr %39, ptr %3, align 8
  %40 = getelementptr inbounds nuw i8, ptr %30, i64 %29
  store ptr %40, ptr %12, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

41:                                               ; preds = %2
  %42 = icmp ult i64 %1, %8
  br i1 %42, label %43, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

43:                                               ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %4, %44
  br i1 %.not.i4, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i:          ; preds = %43
  store ptr %44, ptr %3, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i, %43, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %41
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_5
begin_hunk_6_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 %.06.i ; 2 uses
  %i.aiw = load i8, ptr %i.aiv, align 1
  %i.aix = zext i8 %i.aiw to i32
  %i.aiy = call i32 @tolower(i32 noundef %i.aix) #26
  %i.aiz = trunc i32 %i.aiy to i8
  store i8 %i.aiz, ptr %i.aiv, align 1
  %i.aja = add nuw i64 %.06.i, 1                  ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.06.i777 ; 2 uses
  %i.aqr = load i8, ptr %i.aqq, align 1
  %i.aqs = zext i8 %i.aqr to i32
  %i.aqt = call i32 @tolower(i32 noundef %i.aqs) #26
  %i.aqu = trunc i32 %i.aqt to i8
  store i8 %i.aqu, ptr %i.aqq, align 1
  %i.aqv = add nuw i64 %.06.i777, 1               ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 %.06.i842 ; 2 uses
  %i.auw = load i8, ptr %i.auv, align 1
  %i.aux = zext i8 %i.auw to i32
  %i.auy = call i32 @tolower(i32 noundef %i.aux) #26
  %i.auz = trunc i32 %i.auy to i8
  store i8 %i.auz, ptr %i.auv, align 1
  %i.ava = add nuw i64 %.06.i842, 1               ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 %.06.i933 ; 2 uses
  %i.bau = load i8, ptr %i.bat, align 1
  %i.bav = zext i8 %i.bau to i32
  %i.baw = call i32 @tolower(i32 noundef %i.bav) #26
  %i.bax = trunc i32 %i.baw to i8
  store i8 %i.bax, ptr %i.bat, align 1
  %i.bay = add nuw i64 %.06.i933, 1               ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 %.06.i971 ; 2 uses
  %i.bdm = load i8, ptr %i.bdl, align 1
  %i.bdn = zext i8 %i.bdm to i32
  %i.bdo = call i32 @tolower(i32 noundef %i.bdn) #26
  %i.bdp = trunc i32 %i.bdo to i8
  store i8 %i.bdp, ptr %i.bdl, align 1
  %i.bdq = add nuw i64 %.06.i971, 1               ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6Assimp18ObjFileMtlImporter10getTextureEv:bb.a
bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 18 uses
  %i.bk = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL14DiffuseTextureE, i64 noundef 6) #26
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL14AmbientTextureE, i64 noundef 6) #26
  %.not27 = icmp eq i32 %i.bl, 0
  br i1 %.not27, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL15SpecularTextureE, i64 noundef 6) #26
  %.not28 = icmp eq i32 %i.bm, 0
  br i1 %.not28, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL20DisplacementTexture1E, i64 noundef 8) #26
  %.not29 = icmp eq i32 %i.bn, 0
  br i1 %.not29, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL20DisplacementTexture2E, i64 noundef 4) #26
  %.not30 = icmp eq i32 %i.bo, 0
  br i1 %.not30, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL14OpacityTextureE, i64 noundef 5) #26
  %.not31 = icmp eq i32 %i.bp, 0
  br i1 %.not31, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL16EmissiveTexture1E, i64 noundef 12) #26
  %.not32 = icmp eq i32 %i.bq, 0
  br i1 %.not32, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL16EmissiveTexture2E, i64 noundef 6) #26
  %.not33 = icmp eq i32 %i.br, 0
  br i1 %.not33, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL12BumpTexture1E, i64 noundef 8) #26
  %.not34 = icmp eq i32 %i.bs, 0
  br i1 %.not34, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL12BumpTexture2E, i64 noundef 4) #26
  %.not35 = icmp eq i32 %i.bt, 0
  br i1 %.not35, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL15NormalTextureV1E, i64 noundef 6) #26
  %.not36 = icmp eq i32 %i.bu, 0
  br i1 %.not36, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL15NormalTextureV2E, i64 noundef 4) #26
  %.not37 = icmp eq i32 %i.bv, 0
  br i1 %.not37, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @.str.8, i64 noundef 4) #26
  %.not38 = icmp eq i32 %i.bw, 0
  br i1 %.not38, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL18SpecularityTextureE, i64 noundef 6) #26
  %.not39 = icmp eq i32 %i.bx, 0
  br i1 %.not39, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL16RoughnessTextureE, i64 noundef 6) #26
  %.not40 = icmp eq i32 %i.by, 0
  br i1 %.not40, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL15MetallicTextureE, i64 noundef 6) #26
  %.not41 = icmp eq i32 %i.bz, 0
  br i1 %.not41, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL12SheenTextureE, i64 noundef 6) #26
  %.not42 = icmp eq i32 %i.ca, 0
  br i1 %.not42, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = call i32 @strncasecmp(ptr noundef nonnull %i.bj, ptr noundef nonnull @_ZN6AssimpL10RMATextureE, i64 noundef 6) #26
  %.not43 = icmp eq i32 %i.cb, 0
  br i1 %.not43, label %bb.w, label %bb.v

end_hunk_11
begin_hunk_12_@_ZN6Assimp18ObjFileMtlImporter10getTextureEv:bb.a
  br i1 %i.di, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.cont.i.i unwind label %bb.aa

.cont.i.i:                                        ; preds = %.invoke.i.i
end_hunk_12
begin_hunk_13_@_ZN6Assimp18ObjFileMtlImporter14createMaterialEv:bb.a
  br i1 %i.ar, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i64 noundef %i.ap, i64 noundef %i.aq) #25
          to label %.noexc25 unwind label %bb.v

.noexc25:                                         ; preds = %bb.m
end_hunk_13
begin_hunk_14_@_ZN6Assimp8tokenizeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjRKT_RSt6vectorIS7_SaIS7_EES9_:bb.a
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i64 noundef %.034, i64 noundef %i.p) #25, !noalias !75
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.b
end_hunk_14
begin_hunk_15_@_ZN6Assimp18ObjFileMtlImporter16getTextureOptionERbRiRP8aiString:bb.a
  br i1 %i.aa, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ab = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL11ClampOptionE, i64 noundef 6) #26
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %.lr.ph.i.i77, label %bb.h

end_hunk_15
begin_hunk_16_@_ZN6Assimp18ObjFileMtlImporter16getTextureOptionERbRiRP8aiString:bb.a
_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit: ; preds = %bb.e, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %.1.i.sroa.phi = phi ptr [ %i.c, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %.1.i.sroa.gep211, %bb.e ], [ %i.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %i.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %i.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %i.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %i.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %i.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.1.i.sroa.gep213, %bb.d ], [ %.1.i.sroa.gep213, %bb.d ], [ %.1.i.sroa.gep213, %bb.d ], [ %.1.i.sroa.gep213, %bb.d ], [ %.1.i.sroa.gep213, %bb.d ], [ %.1.i.sroa.gep213, %bb.d ], [ %.1.i.sroa.gep213, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 ]
  store i8 0, ptr %.1.i.sroa.phi, align 1
  %i.az = call i32 @strncasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.27, i64 noundef 2) #26
  %.not56 = icmp eq i32 %i.az, 0
  br i1 %.not56, label %bb.f, label %bb.g

end_hunk_16
begin_hunk_17_@_ZN6Assimp18ObjFileMtlImporter16getTextureOptionERbRiRP8aiString:bb.a
  br label %bb.an

bb.h:                                             ; preds = %bb.c
  %i.ba = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL10TypeOptionE, i64 noundef 5) #26
  %.not57 = icmp eq i32 %i.ba, 0
  br i1 %.not57, label %.lr.ph.i.i100, label %bb.aa

end_hunk_17
begin_hunk_18_@_ZN6Assimp18ObjFileMtlImporter16getTextureOptionERbRiRP8aiString:bb.a
_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit126: ; preds = %bb.s, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.10, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.9, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.8, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.7, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.6, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.5, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.4, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.3, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.2, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.1, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124
  %.1.i123.sroa.phi = phi ptr [ %i.d, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124 ], [ %.1.i123.sroa.gep189, %bb.s ], [ %i.d, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119 ], [ %i.d, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119 ], [ %i.d, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119 ], [ %i.d, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119 ], [ %i.d, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119 ], [ %i.d, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i119 ], [ %.1.i123.sroa.gep191, %bb.i ], [ %.1.i123.sroa.gep191, %bb.i ], [ %.1.i123.sroa.gep191, %bb.i ], [ %.1.i123.sroa.gep191, %bb.i ], [ %.1.i123.sroa.gep191, %bb.i ], [ %.1.i123.sroa.gep191, %bb.i ], [ %.1.i123.sroa.gep191, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.1 ], [ %.1.i123.sroa.gep193, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.10 ], [ %.1.i123.sroa.gep194, %bb.j ], [ %.1.i123.sroa.gep194, %bb.j ], [ %.1.i123.sroa.gep194, %bb.j ], [ %.1.i123.sroa.gep194, %bb.j ], [ %.1.i123.sroa.gep194, %bb.j ], [ %.1.i123.sroa.gep194, %bb.j ], [ %.1.i123.sroa.gep194, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.2 ], [ %.1.i123.sroa.gep193, %bb.r ], [ %.1.i123.sroa.gep197, %bb.k ], [ %.1.i123.sroa.gep197, %bb.k ], [ %.1.i123.sroa.gep197, %bb.k ], [ %.1.i123.sroa.gep197, %bb.k ], [ %.1.i123.sroa.gep197, %bb.k ], [ %.1.i123.sroa.gep197, %bb.k ], [ %.1.i123.sroa.gep197, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.3 ], [ %.1.i123.sroa.gep193, %bb.r ], [ %.1.i123.sroa.gep199, %bb.l ], [ %.1.i123.sroa.gep199, %bb.l ], [ %.1.i123.sroa.gep199, %bb.l ], [ %.1.i123.sroa.gep199, %bb.l ], [ %.1.i123.sroa.gep199, %bb.l ], [ %.1.i123.sroa.gep199, %bb.l ], [ %.1.i123.sroa.gep199, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.4 ], [ %.1.i123.sroa.gep193, %bb.r ], [ %.1.i123.sroa.gep201, %bb.m ], [ %.1.i123.sroa.gep201, %bb.m ], [ %.1.i123.sroa.gep201, %bb.m ], [ %.1.i123.sroa.gep201, %bb.m ], [ %.1.i123.sroa.gep201, %bb.m ], [ %.1.i123.sroa.gep201, %bb.m ], [ %.1.i123.sroa.gep201, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.5 ], [ %.1.i123.sroa.gep193, %bb.r ], [ %.1.i123.sroa.gep203, %bb.n ], [ %.1.i123.sroa.gep203, %bb.n ], [ %.1.i123.sroa.gep203, %bb.n ], [ %.1.i123.sroa.gep203, %bb.n ], [ %.1.i123.sroa.gep203, %bb.n ], [ %.1.i123.sroa.gep203, %bb.n ], [ %.1.i123.sroa.gep203, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.6 ], [ %.1.i123.sroa.gep193, %bb.r ], [ %.1.i123.sroa.gep205, %bb.o ], [ %.1.i123.sroa.gep205, %bb.o ], [ %.1.i123.sroa.gep205, %bb.o ], [ %.1.i123.sroa.gep205, %bb.o ], [ %.1.i123.sroa.gep205, %bb.o ], [ %.1.i123.sroa.gep205, %bb.o ], [ %.1.i123.sroa.gep205, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.7 ], [ %.1.i123.sroa.gep193, %bb.r ], [ %.1.i123.sroa.gep207, %bb.p ], [ %.1.i123.sroa.gep207, %bb.p ], [ %.1.i123.sroa.gep207, %bb.p ], [ %.1.i123.sroa.gep207, %bb.p ], [ %.1.i123.sroa.gep207, %bb.p ], [ %.1.i123.sroa.gep207, %bb.p ], [ %.1.i123.sroa.gep207, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.8 ], [ %.1.i123.sroa.gep209, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i124.9 ], [ %.1.i123.sroa.gep209, %bb.q ], [ %.1.i123.sroa.gep209, %bb.q ], [ %.1.i123.sroa.gep209, %bb.q ], [ %.1.i123.sroa.gep209, %bb.q ], [ %.1.i123.sroa.gep209, %bb.q ], [ %.1.i123.sroa.gep209, %bb.q ]
  store i8 0, ptr %.1.i123.sroa.phi, align 1
  %i.di = call i32 @strncasecmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.28, i64 noundef 8) #26
  %.not58 = icmp eq i32 %i.di, 0
  br i1 %.not58, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit126
  %i.dj = call i32 @strncasecmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.29, i64 noundef 11) #26
  %.not59 = icmp eq i32 %i.dj, 0
  br i1 %.not59, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = call i32 @strncasecmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.30, i64 noundef 10) #26
  %.not60 = icmp eq i32 %i.dk, 0
  br i1 %.not60, label %.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = call i32 @strncasecmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.31, i64 noundef 9) #26
  %.not61 = icmp eq i32 %i.dl, 0
  br i1 %.not61, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = call i32 @strncasecmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.32, i64 noundef 9) #26
  %.not62 = icmp eq i32 %i.dm, 0
  br i1 %.not62, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = call i32 @strncasecmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.33, i64 noundef 10) #26
  %.not63 = icmp eq i32 %i.dn, 0
  br i1 %.not63, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = call i32 @strncasecmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.34, i64 noundef 6) #26
  %.not64 = icmp eq i32 %i.do, 0
  br i1 %.not64, label %.sink.split, label %bb.z

end_hunk_18
begin_hunk_19_@_ZN6Assimp18ObjFileMtlImporter16getTextureOptionERbRiRP8aiString:bb.a
  br label %bb.an

bb.aa:                                            ; preds = %bb.h
  %i.dt = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL10BumpOptionE, i64 noundef 3) #26
  %.not65 = icmp eq i32 %i.dt, 0
  br i1 %.not65, label %.lr.ph.i.i136, label %bb.ad

end_hunk_19
begin_hunk_20_@_ZN6Assimp18ObjFileMtlImporter16getTextureOptionERbRiRP8aiString:bb.a
  br label %bb.an

bb.ad:                                            ; preds = %bb.aa
  %i.fe = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL12BlendUOptionE, i64 noundef 7) #26
  %.not66 = icmp eq i32 %i.fe, 0
  br i1 %.not66, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ff = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL12BlendVOptionE, i64 noundef 7) #26
  %.not67 = icmp eq i32 %i.ff, 0
  br i1 %.not67, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL11BoostOptionE, i64 noundef 6) #26
  %.not68 = icmp eq i32 %i.fg, 0
  br i1 %.not68, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL16ResolutionOptionE, i64 noundef 7) #26
  %.not69 = icmp eq i32 %i.fh, 0
  br i1 %.not69, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fi = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL13ChannelOptionE, i64 noundef 8) #26
  %.not70 = icmp eq i32 %i.fi, 0
  br i1 %.not70, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fj = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL15ModifyMapOptionE, i64 noundef 3) #26
  %.not71 = icmp eq i32 %i.fj, 0
  br i1 %.not71, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL12OffsetOptionE, i64 noundef 2) #26
  %.not72 = icmp eq i32 %i.fk, 0
  br i1 %.not72, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL11ScaleOptionE, i64 noundef 2) #26
  %.not73 = icmp eq i32 %i.fl, 0
  br i1 %.not73, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = call i32 @strncasecmp(ptr noundef nonnull %.sroa.035.0.copyload183, ptr noundef nonnull @_ZN6AssimpL16TurbulenceOptionE, i64 noundef 2) #26
  %.not74 = icmp eq i32 %i.fm, 0
  br i1 %.not74, label %bb.am, label %bb.an

end_hunk_20
begin_hunk_21_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag:bb.a
  %.sroa.031.050 = phi ptr [ %i.v, %bb.e ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %i.g = load i8, ptr %.sroa.031.050, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = tail call i32 @isspace(i32 noundef %i.h) #26
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

end_hunk_21
begin_hunk_22_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @isspace(i32 noundef %i.l) #26
  %.not.i.i16 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i16, label %.loopexit.loopexit.split.loop.exit, label %bb.c

end_hunk_22
begin_hunk_23_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @isspace(i32 noundef %i.p) #26
  %.not.i.i17 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i17, label %.loopexit.loopexit.split.loop.exit56, label %bb.d

end_hunk_23
begin_hunk_24_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i32 @isspace(i32 noundef %i.t) #26
  %.not.i.i18 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i18, label %.loopexit.loopexit.split.loop.exit58, label %bb.e

end_hunk_24
begin_hunk_25_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag:bb.a
bb.f:                                             ; preds = %._crit_edge
  %i.z = load i8, ptr %.sroa.031.0.lcssa, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i32 @isspace(i32 noundef %i.aa) #26
  %.not.i.i19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i19, label %.loopexit, label %bb.g

end_hunk_25
begin_hunk_26_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag:bb.a
  %.sroa.031.1 = phi ptr [ %i.ac, %bb.g ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ad = load i8, ptr %.sroa.031.1, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call i32 @isspace(i32 noundef %i.ae) #26
  %.not.i.i20 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i20, label %.loopexit, label %bb.i

end_hunk_26
begin_hunk_27_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag:bb.a
  %.sroa.031.2 = phi ptr [ %i.ag, %bb.i ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ah = load i8, ptr %.sroa.031.2, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = tail call i32 @isspace(i32 noundef %i.ai) #26
  %.not.i.i21 = icmp eq i32 %i.aj, 0
  %spec.select = select i1 %.not.i.i21, ptr %.sroa.031.2, ptr %1
  br label %.loopexit
end_hunk_27
begin_hunk_28_@_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #26
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

end_hunk_28
begin_hunk_29_@_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @isspace(i32 noundef %i.p) #26
  %.not.i.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i2, label %bb.c, label %bb.d

end_hunk_29
begin_hunk_30_@_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = tail call i32 @isspace(i32 noundef %i.v) #26
  %.not.i.i3 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i3, label %bb.e, label %bb.f

end_hunk_30
begin_hunk_31_@_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = tail call i32 @isspace(i32 noundef %i.ab) #26
  %.not.i.i4 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i4, label %bb.g, label %bb.h

end_hunk_31
begin_hunk_32_@_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = tail call i32 @isspace(i32 noundef %i.aq) #26
  %.not.i.i7 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i7, label %.loopexit, label %bb.j

end_hunk_32
begin_hunk_33_@_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = tail call i32 @isspace(i32 noundef %i.az) #26
  %.not.i.i8 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i8, label %.loopexit, label %bb.l

end_hunk_33
begin_hunk_34_@_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = tail call i32 @isspace(i32 noundef %i.bi) #26
  %.not.i.i9 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i9, label %.loopexit, label %bb.n

end_hunk_34
begin_hunk_35_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
end_hunk_35
begin_hunk_36_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.br = call ptr @__cxa_begin_catch(ptr %i.bq) #22 ; 0 uses
  %i.bs = shl nuw nsw i64 %i.m, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.bs) #24
  invoke void @__cxa_rethrow() #25
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
end_hunk_36
begin_hunk_37_@__cxa_end_catch
; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #12

end_hunk_37
begin_hunk_38_@_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b:bb.a
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = tail call i32 @strncasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.43, i64 noundef 3) #26
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

end_hunk_38
begin_hunk_39_@_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b:bb.a
  br i1 %cond, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.c
  %i.k = tail call i32 @strncasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.44, i64 noundef 3) #26
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %.thread

end_hunk_39
begin_hunk_40_@_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b:bb.a
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.o = tail call i32 @strncasecmp(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.45, i64 noundef 5) #26
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %spec.select = select i1 %i.p, ptr %i.q, ptr %i.m
end_hunk_40
begin_hunk_41_@_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b:bb.a
bb.l:                                             ; preds = %.thread, %bb.k
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #26
  %i.z = trunc i64 %i.y to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.g, i32 noundef %i.z, i8 noundef signext 63)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
end_hunk_41
begin_hunk_42_@_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b:bb.a
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.ac unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
end_hunk_42
begin_hunk_43_@_Z18ai_str_toprintableB5cxx11PKcic:bb.a
  %.sroa.04.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %i.ae = load i8, ptr %.sroa.04.09.i.i, align 1  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = call i32 @isprint(i32 noundef %i.af) #26
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not.i.i.i, i8 %3, i8 %i.ae
  store i8 %i.ah, ptr %.sroa.04.09.i.i, align 1
end_hunk_43
begin_hunk_44_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
bb.c:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.s = trunc i64 %i.r to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %0, i32 noundef %i.s, i8 noundef signext 63)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
end_hunk_44
begin_hunk_45_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.p unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
end_hunk_45
begin_hunk_46_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_:bb.a
  br i1 %i.ak, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.an) ; 2 uses
end_hunk_46
begin_hunk_47_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_:bb.a
  br i1 %i.bg, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %.sroa.speculated.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.v) ; 2 uses
end_hunk_47
begin_hunk_48_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_:bb.a
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #22 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #24
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_48
begin_hunk_49_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_:bb.a
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
end_hunk_49
begin_hunk_50_@bcmp
attributes #22 = { nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
end_hunk_50
