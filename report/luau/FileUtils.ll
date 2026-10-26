Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/FileUtils?download=true
inline.NumInlined: 547
inline.NumDeleted: 238
begin_hunk_0
@.str.10 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c".\\/\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@"_ZTIZ14getSourceFilesB5cxx11iPPcE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZ14getSourceFilesB5cxx11iPPcE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZ14getSourceFilesB5cxx11iPPcE3$_0" = internal constant [34 x i8] c"Z14getSourceFilesB5cxx11iPPcE3$_0\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !10
  %i.b = icmp eq i8 %i.a, 47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z26getCurrentWorkingDirectoryB5cxx11v(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 260, i8 noundef signext 0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.a, %bb.g
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = icmp ult i64 %i.c, 131073
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.e = load ptr, ptr %1, align 8, !tbaa !18
  %i.f = call ptr @getcwd(ptr noundef %i.e, i64 noundef %i.c) #23 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.g, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !14
  %i.i = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.k = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.m, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  store ptr %i.i, ptr %0, align 8, !tbaa !18
  %i.n = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.n, ptr %i.h, align 8, !tbaa !10
  %.pre = load i64, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = phi i64 [ %i.k, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !17
  store ptr %i.a, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i8 0, ptr %i.a, align 8, !tbaa !10
  br label %.critedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.s = load i64, ptr %i.a, align 8, !tbaa !10
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.u = tail call ptr @__errno_location() #26
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45
  %.not7 = icmp eq i32 %i.v, 34
  br i1 %.not7, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !17
  %i.x = shl i64 %i.w, 1                          ; 2 uses
  %i.y = icmp ugt i64 %i.x, 131072
  br i1 %i.y, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.x, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %bb.e, %bb.f, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit
  %.sink = phi i8 [ 1, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS5_JSD_EESt14is_convertibleISD_S5_EEEbE4typeELb1EEEOSD_.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.z, align 8, !tbaa !21
  %i.aa = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %.critedge
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13normalizePathB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_Z9splitPathSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, i64 %1, ptr %2)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %2, align 1, !tbaa !10
  %i.b = icmp eq i8 %i.a, 47
  br label %_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE.exit

_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ] ; 4 uses
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = load ptr, ptr %3, align 8, !tbaa !25     ; 8 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = icmp ugt i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.outer, label %._crit_edge.thread

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.n, align 8, !tbaa !17
  store i8 0, ptr %i.m, align 8, !tbaa !10
  br i1 %i.c, label %bb.n, label %bb.o

._crit_edge.thread:                               ; preds = %_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8, !tbaa !17
  store i8 0, ptr %i.o, align 8, !tbaa !10
  br i1 %i.c, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47

.lr.ph:                                           ; preds = %.lr.ph.outer, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit.thread
  %.0178 = phi i64 [ %i.bt, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit.thread ], [ %.0178.ph, %.lr.ph.outer ] ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.0178 ; 2 uses
  %.sroa.0108.0.copyload = load i64, ptr %i.q, align 8, !tbaa !26 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !27 ; 4 uses
  switch i64 %.sroa.0108.0.copyload, label %.thread [
    i64 2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 0, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %.lr.ph
  %i.r = load i16, ptr %.sroa.9.0.copyload, align 1
  %i.s = icmp ne i16 %i.r, 11822
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  br i1 %i.bs, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  br i1 %i.c, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i27 = icmp eq ptr %.sroa.0115.0177.ph, %.sroa.37.0175.ph
  br i1 %.not.i27, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 2, ptr %.sroa.17.0176.ph, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.17.0176.ph, i64 8
  store ptr @.str, ptr %i.v, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.17.0176.ph, i64 16
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.x = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i unwind label %.loopexit143 ; 5 uses

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i
  store i64 2, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @.str, ptr %i.y, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  %.not.i23.i = icmp eq ptr %.sroa.0115.0177.ph, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.0177.ph, i64 noundef 0) #25
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit

.loopexit143:                                     ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i75
  %.sroa.37.0175.lcssa186 = phi ptr [ %.sroa.17.0176.ph, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0115.0177.ph, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.17.0176.ph, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i75 ]
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp144:                            ; preds = %.invoke320
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.aa = getelementptr inbounds i8, ptr %.sroa.17.0176.ph, i64 -16 ; 3 uses
  %.sroa.03.0.copyload = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ab = icmp eq i64 %.sroa.03.0.copyload, 2
  br i1 %i.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28: ; preds = %bb.g
  %.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.17.0176.ph, i64 -8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !27
  %i.ac = load i16, ptr %.sroa.24.0.copyload, align 1
  %i.ad = icmp ne i16 %i.ac, 11822
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit31, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit31: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28
  %.not.i32 = icmp eq ptr %.sroa.17.0176.ph, %.sroa.37.0175.ph
  br i1 %.not.i32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit31
  store i64 2, ptr %.sroa.17.0176.ph, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.17.0176.ph, i64 8
  store ptr @.str, ptr %i.ag, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.17.0176.ph, i64 16
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit31
  %i.ai = ptrtoint ptr %.sroa.17.0176.ph to i64
  %i.aj = ptrtoint ptr %.sroa.0115.0177.ph to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775792
  br i1 %i.al, label %.invoke320, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i75

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i75: ; preds = %bb.i
  %i.am = ashr exact i64 %i.ak, 4
  %i.an = ashr exact i64 %i.ak, 3                 ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 576460752303423487)
  %i.aq = select i1 %i.ao, i64 576460752303423487, i64 %i.ap ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #27
          to label %.noexc94 unwind label %.loopexit143 ; 4 uses

.noexc94:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i75
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 2 uses
  store i64 2, ptr %i.at, align 8, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @.str, ptr %i.au, align 8, !tbaa !56
  br label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %.noexc94, %.lr.ph.i.i.i.i79
  %.012.i.i.i.i80 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i79 ], [ %i.as, %.noexc94 ] ; 3 uses
  %.0911.i.i.i.i81 = phi ptr [ %i.av, %.lr.ph.i.i.i.i79 ], [ %.sroa.0115.0177.ph, %.noexc94 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i80, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i81, i64 16, i1 false), !tbaa.struct !28, !alias.scope !57
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i81, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 16
  %.not.i.i.i.i82 = icmp eq ptr %i.av, %.sroa.17.0176.ph
  br i1 %.not.i.i.i.i82, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i90, label %.lr.ph.i.i.i.i79, !llvm.loop !0

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i90: ; preds = %.lr.ph.i.i.i.i79
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 32
  %.not.i23.i92 = icmp eq ptr %.sroa.0115.0177.ph, null
  br i1 %.not.i23.i92, label %.noexc34, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i90
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.0177.ph, i64 noundef %i.ak) #25
  br label %.noexc34

.noexc34:                                         ; preds = %bb.j, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i90
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.aq
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph
  %lhsc = load i8, ptr %.sroa.9.0.copyload, align 1
  %i.az = icmp eq i8 %lhsc, 46
  br i1 %i.az, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit, label %.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.sroa.0108.0.copyload335 = phi i64 [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.0108.0.copyload, %.lr.ph ], [ 2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.i36 = icmp eq ptr %.sroa.17.0176.ph, %.sroa.37.0175.ph
  br i1 %.not.i36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  store i64 %.sroa.0108.0.copyload335, ptr %.sroa.17.0176.ph, align 8, !tbaa !26
  %.sroa.9.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %.sroa.17.0176.ph, i64 8
  store ptr %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx111, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.17.0176.ph, i64 16
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit

bb.l:                                             ; preds = %.thread
  %i.bb = ptrtoint ptr %.sroa.17.0176.ph to i64
  %i.bc = ptrtoint ptr %.sroa.0115.0177.ph to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775792
  br i1 %i.be, label %.invoke320, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

.invoke320:                                       ; preds = %bb.l, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #28
          to label %.cont321 unwind label %.loopexit.split-lp144

.cont321:                                         ; preds = %.invoke320
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bf = ashr exact i64 %i.bd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 576460752303423487)
  %i.bj = select i1 %i.bh, i64 576460752303423487, i64 %i.bi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 4
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #27
          to label %.noexc38 unwind label %.loopexit143 ; 5 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i64 %.sroa.0108.0.copyload335, ptr %i.bm, align 8, !tbaa !26
  %.sroa.9.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx113, align 8, !tbaa !27
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0115.0177.ph, %.sroa.17.0176.ph
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc38, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.noexc38 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.sroa.0115.0177.ph, %.noexc38 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !28, !alias.scope !58
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, %.sroa.17.0176.ph
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc38
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bl, %.noexc38 ], [ %i.bo, %.lr.ph.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %.sroa.0115.0177.ph, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.0177.ph, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit: ; preds = %.lr.ph, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, %bb.f, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28, %bb.g, %.noexc34, %bb.h, %bb.e
  %.sroa.37.1 = phi ptr [ %i.z, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i ], [ %.sroa.37.0175.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28 ], [ %.sroa.37.0175.ph, %bb.e ], [ %.sroa.37.0175.ph, %bb.h ], [ %i.z, %bb.f ], [ %.sroa.37.0175.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.37.0175.ph, %bb.k ], [ %i.ay, %.noexc34 ], [ %.sroa.37.0175.ph, %bb.g ], [ %i.bq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.37.0175.ph, %.lr.ph ] ; 6 uses
  %.sroa.17.1 = phi ptr [ %i.z, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i ], [ %i.aa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28 ], [ %i.w, %bb.e ], [ %i.ah, %bb.h ], [ %i.z, %bb.f ], [ %.sroa.17.0176.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.ba, %bb.k ], [ %i.ax, %.noexc34 ], [ %i.aa, %bb.g ], [ %i.bp, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.17.0176.ph, %.lr.ph ] ; 7 uses
  %.sroa.0115.1 = phi ptr [ %i.x, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i ], [ %.sroa.0115.0177.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28 ], [ %.sroa.0115.0177.ph, %bb.e ], [ %.sroa.0115.0177.ph, %bb.h ], [ %i.x, %bb.f ], [ %.sroa.0115.0177.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.0115.0177.ph, %bb.k ], [ %i.as, %.noexc34 ], [ %.sroa.0115.0177.ph, %bb.g ], [ %i.bl, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0115.0177.ph, %.lr.ph ] ; 9 uses
  %i.br = add i64 %.0178, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.outer, !llvm.loop !52

.lr.ph.outer:                                     ; preds = %_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit
  %.0178.ph = phi i64 [ %i.br, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit ], [ %i.d, %_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.sroa.0115.0177.ph = phi ptr [ %.sroa.0115.1, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit ], [ null, %_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 24 uses
  %.sroa.17.0176.ph = phi ptr [ %.sroa.17.1, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit ], [ null, %_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 25 uses
  %.sroa.37.0175.ph = phi ptr [ %.sroa.37.1, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit ], [ null, %_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 11 uses
  %i.bs = icmp eq ptr %.sroa.0115.0177.ph, %.sroa.17.0176.ph
  br label %.lr.ph

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit.thread: ; preds = %bb.c
  %i.bt = add i64 %.0178, 1                       ; 2 uses
  %exitcond.not244 = icmp eq i64 %i.bt, %i.k
  br i1 %exitcond.not244, label %._crit_edge.thread248, label %.lr.ph, !llvm.loop !52

._crit_edge.thread248:                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJRA3_KcEEERS3_DpOT_.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !17
  store i8 0, ptr %i.bu, align 8, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread248, %._crit_edge.thread, %._crit_edge
  %i.bw = phi ptr [ %i.p, %._crit_edge.thread ], [ %i.n, %._crit_edge ], [ %i.bv, %._crit_edge.thread248 ] ; 2 uses
  %i.bx = phi ptr [ %i.o, %._crit_edge.thread ], [ %i.m, %._crit_edge ], [ %i.bu, %._crit_edge.thread248 ] ; 4 uses
  %.sroa.0115.0.lcssa230 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.0115.1, %._crit_edge ], [ %.sroa.0115.0177.ph, %._crit_edge.thread248 ] ; 4 uses
  %.sroa.17.0.lcssa227 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.17.1, %._crit_edge ], [ %.sroa.17.0176.ph, %._crit_edge.thread248 ]
  %.sroa.37.0.lcssa221 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.37.1, %._crit_edge ], [ %.sroa.37.0175.ph, %._crit_edge.thread248 ] ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 8, !tbaa !26 ; 2 uses
  %i.by = icmp ugt i64 %.sroa.0.0.copyload.i.i, 4611686018427387903
  br i1 %i.by, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %bb.n
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !27
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.4.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !17
  %i.cb = icmp eq i64 %i.ca, 4611686018427387903
  br i1 %i.cb, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %._crit_edge
  %i.cd = icmp eq ptr %.sroa.0115.1, %.sroa.17.1
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0115.1, align 8, !tbaa !26
  %i.ce = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %i.ce, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43: ; preds = %bb.p
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0115.1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
  %i.cf = load i16, ptr %.sroa.2.0.copyload, align 1
  %i.cg = icmp ne i16 %i.cf, 11822
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47: ; preds = %._crit_edge.thread, %bb.o, %bb.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43
  %.sroa.37.0.lcssa220240 = phi ptr [ %.sroa.37.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %.sroa.37.1, %bb.o ], [ %.sroa.37.1, %bb.p ], [ null, %._crit_edge.thread ] ; 2 uses
  %.sroa.17.0.lcssa225239 = phi ptr [ %.sroa.17.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %.sroa.17.1, %bb.o ], [ %.sroa.17.1, %bb.p ], [ null, %._crit_edge.thread ]
  %.sroa.0115.0.lcssa228238 = phi ptr [ %.sroa.0115.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %.sroa.0115.1, %bb.o ], [ %.sroa.0115.1, %bb.p ], [ null, %._crit_edge.thread ] ; 2 uses
  %i.cj = phi ptr [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %i.m, %bb.o ], [ %i.m, %bb.p ], [ %i.o, %._crit_edge.thread ] ; 2 uses
  %i.ck = phi ptr [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %i.n, %bb.o ], [ %i.n, %bb.p ], [ %i.p, %._crit_edge.thread ]
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cm = phi ptr [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47 ], [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ] ; 4 uses
  %i.cn = phi ptr [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47 ], [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ] ; 3 uses
  %.sroa.0115.0.lcssa229 = phi ptr [ %.sroa.0115.0.lcssa228238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47 ], [ %.sroa.0115.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %.sroa.0115.0.lcssa230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ] ; 10 uses
  %.sroa.17.0.lcssa226 = phi ptr [ %.sroa.17.0.lcssa225239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47 ], [ %.sroa.17.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %.sroa.17.0.lcssa227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ] ; 3 uses
  %.sroa.37.0.lcssa219 = phi ptr [ %.sroa.37.0.lcssa220240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47 ], [ %.sroa.37.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %.sroa.37.0.lcssa221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ] ; 4 uses
  %.not182 = icmp eq ptr %.sroa.0115.0.lcssa229, %.sroa.17.0.lcssa226
  br i1 %.not182, label %._crit_edge185, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.sroa.0.0.copyload.i.i55.peel.pre = load i64, ptr %.sroa.0115.0.lcssa229, align 8, !tbaa !26 ; 2 uses
  %.pre = load i64, ptr %i.cm, align 8, !tbaa !17
  %i.co = sub i64 4611686018427387903, %.pre
  %i.cp = icmp ult i64 %i.co, %.sroa.0.0.copyload.i.i55.peel.pre
  br i1 %i.cp, label %.loopexit197.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i56.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i56.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54.peel
  %.sroa.4.0..sroa_idx.i.i57.peel = getelementptr inbounds nuw i8, ptr %.sroa.0115.0.lcssa229, i64 8
  %.sroa.4.0.copyload.i.i58.peel = load ptr, ptr %.sroa.4.0..sroa_idx.i.i57.peel, align 8, !tbaa !27
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.4.0.copyload.i.i58.peel, i64 noundef %.sroa.0.0.copyload.i.i55.peel.pre)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit61.peel unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit61.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i56.peel
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0115.0.lcssa229, i64 16 ; 2 uses
  %.not.peel = icmp eq ptr %i.cr, %.sroa.17.0.lcssa226
  br i1 %.not.peel, label %._crit_edge185, label %.lr.ph184.peel.next

._crit_edge185:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit61.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !17 ; 3 uses
  %i.ct = icmp ugt i64 %i.cs, 1
  br i1 %i.ct, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65

.lr.ph184.peel.next:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit61.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit61
  %.sroa.097.0183 = phi ptr [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit61 ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit61.peel ] ; 3 uses
  %i.cu = load i64, ptr %i.cm, align 8, !tbaa !17
  %i.cv = icmp eq i64 %i.cu, 4611686018427387903
  br i1 %i.cv, label %.loopexit197.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51

.loopexit197.invoke:                              ; preds = %.lr.ph184.peel.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
          to label %.loopexit197.cont unwind label %.loopexit.split-lp

.loopexit197.cont:                                ; preds = %.loopexit197.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51: ; preds = %.lr.ph184.peel.next
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i56.peel
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.invoke, %.loopexit197.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %i.cx = phi ptr [ %i.cn, %.loopexit197.invoke ], [ %i.bx, %.invoke ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ]
  %.sroa.0115.0.lcssa232 = phi ptr [ %.sroa.0115.0.lcssa229, %.loopexit197.invoke ], [ %.sroa.0115.0.lcssa230, %.invoke ], [ %.sroa.0115.0.lcssa229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62 ], [ %.sroa.0115.0.lcssa230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i ], [ %.sroa.0115.0.lcssa228238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47 ], [ %.sroa.0115.0.lcssa230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ]
  %.sroa.37.0.lcssa223 = phi ptr [ %.sroa.37.0.lcssa219, %.loopexit197.invoke ], [ %.sroa.37.0.lcssa221, %.invoke ], [ %.sroa.37.0.lcssa219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62 ], [ %.sroa.37.0.lcssa221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i ], [ %.sroa.37.0.lcssa220240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47 ], [ %.sroa.37.0.lcssa221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp
  %i.cy = phi ptr [ %i.cx, %.loopexit.split-lp ], [ %i.cn, %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0115.0.lcssa231 = phi ptr [ %.sroa.0115.0.lcssa232, %.loopexit.split-lp ], [ %.sroa.0115.0.lcssa229, %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.37.0.lcssa222 = phi ptr [ %.sroa.37.0.lcssa223, %.loopexit.split-lp ], [ %.sroa.37.0.lcssa219, %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp322, %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cy
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51
  %.sroa.0.0.copyload.i.i55 = load i64, ptr %.sroa.097.0183, align 8, !tbaa !26 ; 2 uses
  %i.db = load i64, ptr %i.cm, align 8, !tbaa !17
  %i.dc = sub i64 4611686018427387903, %i.db
  %i.dd = icmp ult i64 %i.dc, %.sroa.0.0.copyload.i.i55
  br i1 %i.dd, label %.loopexit197.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54
  %.sroa.4.0..sroa_idx.i.i57 = getelementptr inbounds nuw i8, ptr %.sroa.097.0183, i64 8
  %.sroa.4.0.copyload.i.i58 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i57, align 8, !tbaa !27
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.4.0.copyload.i.i58, i64 noundef %.sroa.0.0.copyload.i.i55)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit61 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

end_hunk_0
