Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/manager?download=true
inline.NumInlined: 181
inline.NumDeleted: 112
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves", target_cpu: "skylake-avx512")
    ".globl _ZSt21ios_base_library_initv"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::shared_ptr<gmx::IRestraintPotential>, std::allocator<std::shared_ptr<gmx::IRestraintPotential>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<gmx::IRestraintPotential>, std::allocator<std::shared_ptr<gmx::IRestraintPotential>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<gmx::IRestraintPotential>, std::allocator<std::shared_ptr<gmx::IRestraintPotential>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<gmx::IRestraintPotential>, std::allocator<std::shared_ptr<gmx::IRestraintPotential>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12__shared_ptrIN3gmx19IRestraintPotentialELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZN3gmx16RestraintManager4Impl20initializationMutex_E = global { %union.pthread_mutex_t } zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [93 x i8] c"St23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8

@_ZN3gmx16RestraintManagerC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx16RestraintManagerC2Ev
@_ZN3gmx16RestraintManagerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx16RestraintManagerD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16RestraintManager4Impl3addESt10shared_ptrINS_19IRestraintPotentialEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !18
  store ptr null, ptr %i.f, align 8, !tbaa !17
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !18
  store ptr null, ptr %1, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %i.a, align 8, !tbaa !13
  br label %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #16 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !18
  store ptr null, ptr %i.r, align 8, !tbaa !17
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !18
  store ptr null, ptr %2, align 8, !tbaa !21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.t = add i64 %i.m, -16
  %i.u = sub i64 %i.t, %i.e                       ; 2 uses
  %i.v = lshr i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.w, 2305843009213693948      ; 3 uses
  %i.x = shl i64 %n.vec, 4                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 4                       ; 3 uses
  %3 = or disjoint i64 %i.aa, 32                  ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa
  %next.gep35 = getelementptr i8, ptr %i.p, i64 %3
  %next.gep.a = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  %next.gep35.a = getelementptr i8, ptr %i.c, i64 %3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %wide.vec = load <4 x ptr>, ptr %next.gep.a, align 8, !tbaa !18, !alias.scope !46
  %wide.vec39 = load <4 x ptr>, ptr %next.gep35.a, align 8, !tbaa !18, !alias.scope !46
  store <4 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !18, !alias.scope !45
  store <4 x ptr> %wide.vec39, ptr %next.gep35, align 8, !tbaa !18, !alias.scope !45
  store <4 x ptr> splat (ptr null), ptr %next.gep.a, align 8, !tbaa !18, !alias.scope !46
  store <4 x ptr> splat (ptr null), ptr %next.gep35.a, align 8, !tbaa !18, !alias.scope !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader67

.lr.ph.i.i.i.preheader67:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader67, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader67 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader67 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ad = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !46
  store ptr null, ptr %i.ac, align 8, !tbaa !17, !alias.scope !46
  store <2 x ptr> %i.ad, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !45
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !46
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !39

_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.y, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 4 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 7 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ah = add i64 %i.d, -16
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check47 = icmp ult i64 %i.ai, 304
  br i1 %min.iters.check47, label %.lr.ph.i.i.i17.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -16                      ; 4 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = getelementptr i8, ptr %1, i64 8
  %i.ar = getelementptr i8, ptr %1, i64 %i.al
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.au = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  %bound048 = icmp ult ptr %i.aq, %i.av
  %bound149 = icmp ult ptr %i.at, %i.as
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  br i1 %conflict.rdx, label %.lr.ph.i.i.i17.preheader66, label %vector.ph51

vector.ph51:                                      ; preds = %vector.memcheck
  %n.vec52 = and i64 %i.ak, 2305843009213693948   ; 3 uses
  %i.aw = shl i64 %n.vec52, 4                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ag, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next61, %vector.body53 ] ; 2 uses
  %i.az = shl i64 %index54, 4                     ; 3 uses
  %4 = or disjoint i64 %i.az, 32                  ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ag, i64 %i.az
  %next.gep62 = getelementptr i8, ptr %i.ag, i64 %4
  %next.gep55 = getelementptr i8, ptr %1, i64 %i.az ; 2 uses
  %next.gep56 = getelementptr i8, ptr %1, i64 %4  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %wide.vec65 = load <4 x ptr>, ptr %next.gep55, align 8, !tbaa !18, !alias.scope !50
  %wide.vec68 = load <4 x ptr>, ptr %next.gep56, align 8, !tbaa !18, !alias.scope !50
  store <4 x ptr> %wide.vec65, ptr %next.gep61, align 8, !tbaa !18, !alias.scope !49
  store <4 x ptr> %wide.vec68, ptr %next.gep62, align 8, !tbaa !18, !alias.scope !49
  store <4 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !18, !alias.scope !50
  store <4 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !18, !alias.scope !50
  %index.next61 = add nuw i64 %index54, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next61, %n.vec52
  br i1 %i.ba, label %middle.block62, label %vector.body53, !llvm.loop !43

middle.block62:                                   ; preds = %vector.body53
  %cmp.n63 = icmp eq i64 %i.ak, %n.vec52
  br i1 %cmp.n63, label %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader66

.lr.ph.i.i.i17.preheader66:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block62
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block62 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ay, %middle.block62 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader66, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader66 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader66 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !50
  store ptr null, ptr %i.bb, align 8, !tbaa !17, !alias.scope !50
  store <2 x ptr> %i.bc, ptr %.012.i.i.i18, align 8, !tbaa !18, !alias.scope !49
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !50
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !44

_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block62, %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ax, %middle.block62 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !14
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #17
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx19IRestraintPotentialEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !22
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !14
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN3gmx19IRestraintPotentialELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !26
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !51
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !51
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !52
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16RestraintManagerC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16, !noalias !55 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !25, !noalias !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !26, !noalias !55
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !28, !noalias !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !noalias !55
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17, !alias.scope !55
  store ptr %i.e, ptr %0, align 8, !tbaa !56, !alias.scope !55
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN3gmx16RestraintManager4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #17
  ret void
}
end_hunk_0
