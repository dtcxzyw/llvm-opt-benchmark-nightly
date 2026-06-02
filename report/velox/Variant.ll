inline.NumInlined: 5993
inline.NumDeleted: 1816
begin_hunk_0_@_ZN8facebook5velox29stringifyFloatingPointerValueIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.p = load i64, ptr %i.b, align 8, !tbaa !21
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #36
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !13, !alias.scope !375
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !18, !alias.scope !375
  store i8 0, ptr %i.r, align 8, !tbaa !21, !alias.scope !375
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_NS_8DtoaModeEjNS_9DtoaFlagsE(double noundef %1, ptr noundef nonnull align 8 %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !27, !alias.scope !375 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.r
  br i1 %i.v, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.g
  %i.w = load i64, ptr %i.r, align 8, !tbaa !21, !alias.scope !375
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #36
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZNK8facebook5velox10OpaqueType16getSerializeFuncB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::function") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 3 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %i.l = icmp ugt i64 %i.e, %i.k                  ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !27    ; 4 uses
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m                  ; 2 uses
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.c, %bb.d
  %i.p = load i64, ptr %i.m, align 8
  %i.q = select i1 %i.n, i64 15, i64 %i.p
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !13
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !27
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !21
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !18
  store ptr %i.u, ptr %i.r, align 8, !tbaa !27
  store i64 0, ptr %i.ab, align 8, !tbaa !18
  store i8 0, ptr %i.u, align 8, !tbaa !21
  br label %bb.o

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  br i1 %i.l, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %.pre, align 1, !tbaa !21
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8, !tbaa !18
  %i.aj = load ptr, ptr %1, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !13
  %i.am = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.am, ptr %0, align 8, !tbaa !27
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !21
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !21
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !18
  store ptr %i.g, ptr %1, align 8, !tbaa !27
  store i64 0, ptr %i.a, align 8, !tbaa !18
  store i8 0, ptr %i.g, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox7Variant12toJsonUnsafeB5cxx11ERKSt10shared_ptrIKNS0_4TypeEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(10) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.354", align 16 ; 5 uses
  %4 = alloca %class.anon.216, align 8            ; 4 uses
  %5 = alloca %class.anon.169, align 8            ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::shared_ptr.3", align 8 ; 6 uses
  %20 = alloca %"class.facebook::velox::Variant", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"struct.facebook::velox::TimestampToStringOptions", align 8 ; 8 uses
  %24 = alloca %"class.std::function", align 8    ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !59     ; 19 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !13
  store i32 1819047278, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.f, align 4, !tbaa !21
  br label %bb.fw

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !52    ; 3 uses
  switch i8 %i.h, label %bb.ft [
    i8 31, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE31EEERKDav.exit
    i8 32, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE32EEERKDav.exit
    i8 30, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE30EEERKDav.exit
    i8 8, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE8EEERKDav.exit
    i8 7, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE7EEERKDav.exit
    i8 10, label %bb.di
    i8 1, label %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i8 2, label %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i8 3, label %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i8 4, label %thread-pre-split
    i8 0, label %bb.dy
    i8 5, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE5EEERKDav.exit
    i8 6, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE6EEERKDav.exit
    i8 9, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE9EEERKDav.exit
    i8 35, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE35EEERKDav.exit
    i8 34, label %bb.fs
    i8 33, label %bb.fs
    i8 36, label %bb.fs
  ]

_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE31EEERKDav.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  store i8 91, ptr %i.i, align 8, !tbaa !21
  store i64 1, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.k, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !282  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i100, label %.lr.ph514

.lr.ph514:                                        ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE31EEERKDav.exit
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  br label %bb.g

._crit_edge515:                                   ; preds = %bb.ap
  %.pre554 = load i64, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %i.t = icmp eq i64 %.pre554, 9223372036854775807
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i100

bb.c:                                             ; preds = %._crit_edge515
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #37
          to label %.noexc105 unwind label %bb.au

.noexc105:                                        ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i100: ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE31EEERKDav.exit, %._crit_edge515
  %i.u = phi i64 [ %.pre554, %._crit_edge515 ], [ 1, %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE31EEERKDav.exit ] ; 4 uses
  %i.v = add nsw i64 %i.u, 1                      ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i                   ; 2 uses
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i101

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i100
  %i.y = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i101: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i100
  %i.z = load i64, ptr %i.i, align 8
  %i.aa = select i1 %i.x, i64 15, i64 %i.z
  %.not.i.i.i102 = icmp ugt i64 %i.v, %i.aa
  br i1 %.not.i.i.i102, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 93, ptr %i.ab, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit107

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i101
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u, i64 noundef 0, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit107 unwind label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit107: ; preds = %bb.f, %bb.e
  store i64 %i.v, ptr %i.j, align 8, !tbaa !18
  %i.ac = load ptr, ptr %0, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.v
  store i8 0, ptr %i.ad, align 1, !tbaa !21
  br label %bb.fw

bb.g:                                             ; preds = %.lr.ph514, %bb.ap
  %.059513 = phi i1 [ true, %.lr.ph514 ], [ false, %bb.ap ]
  %.sroa.0455.0512 = phi ptr [ %i.m, %.lr.ph514 ], [ %i.dh, %bb.ap ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0455.0512, i64 32
  %.pre551 = load i64, ptr %i.j, align 8, !tbaa !18 ; 6 uses
  br i1 %.059513, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq i64 %.pre551, 9223372036854775807
  br i1 %i.af, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i108

.invoke:                                          ; preds = %bb.h, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #37
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i108: ; preds = %bb.h
  %i.ag = add nsw i64 %.pre551, 1                 ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.i                 ; 2 uses
  br i1 %i.ai, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i109

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i108
  %i.aj = icmp ult i64 %.pre551, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i109: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i108
  %i.ak = load i64, ptr %i.i, align 8
  %i.al = select i1 %i.ai, i64 15, i64 %i.ak
  %.not.i.i.i110 = icmp ugt i64 %i.ag, %i.al
  br i1 %.not.i.i.i110, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i109
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pre551
  store i8 44, ptr %i.am, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit115

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i109
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre551, i64 noundef 0, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit115 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit115: ; preds = %bb.k, %bb.j
  store i64 %i.ag, ptr %i.j, align 8, !tbaa !18
  %i.an = load ptr, ptr %0, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag
  store i8 0, ptr %i.ao, align 1, !tbaa !21
  %.pre550 = load i64, ptr %i.j, align 8, !tbaa !18
  br label %bb.l

.loopexit:                                        ; preds = %bb.k, %bb.o, %bb.ab, %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit115, %bb.g
  %i.ap = phi i64 [ %.pre550, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit115 ], [ %.pre551, %bb.g ] ; 5 uses
  %i.aq = icmp sgt i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i116: ; preds = %bb.l
  %i.ar = add nsw i64 %i.ap, 7                    ; 3 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.i                 ; 2 uses
  br i1 %i.at, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i117

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i116
  %i.au = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.au)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i117: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i116
  %i.av = load i64, ptr %i.i, align 8
  %i.aw = select i1 %i.at, i64 15, i64 %i.av
  %.not.i.i.i118 = icmp ugt i64 %i.ar, %i.aw
  br i1 %.not.i.i.i118, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i117
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ax, ptr noundef nonnull align 1 dereferenceable(7) @.str.17, i64 7, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i117
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ap, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 7)
          to label %bb.p unwind label %.loopexit

bb.p:                                             ; preds = %bb.n, %bb.o
  store i64 %i.ar, ptr %i.j, align 8, !tbaa !18
  %i.ay = load ptr, ptr %0, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ar
  store i8 0, ptr %i.az, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  invoke void @_ZNK8facebook5velox7Variant12toJsonUnsafeB5cxx11ERKSt10shared_ptrIKNS0_4TypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(10) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.q unwind label %bb.aq

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %7, align 8, !tbaa !27    ; 3 uses
  %i.bb = load i64, ptr %i.p, align 8, !tbaa !18  ; 6 uses
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !18  ; 5 uses
  %i.bd = sub i64 9223372036854775807, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #37
          to label %.noexc124 unwind label %.loopexit.split-lp464

.noexc124:                                        ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bf = add i64 %i.bc, %i.bb                    ; 3 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.i                 ; 2 uses
  br i1 %i.bh, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bi = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bj = load i64, ptr %i.i, align 8
  %i.bk = select i1 %i.bh, i64 15, i64 %i.bj
  %.not.i.i.i.i = icmp ugt i64 %i.bf, %i.bk
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not8.i.i.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.bb, 1
  br i1 %cond.i.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bm = load i8, ptr %i.ba, align 1, !tbaa !21
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !21
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.ba, i64 %i.bb, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bc, i64 noundef 0, ptr noundef %i.ba, i64 noundef %i.bb)
          to label %bb.y unwind label %.loopexit463

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.x
  store i64 %i.bf, ptr %i.j, align 8, !tbaa !18
  %i.bn = load ptr, ptr %0, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store i8 0, ptr %i.bo, align 1, !tbaa !21
  %i.bp = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.q
  br i1 %i.bq, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.br = load i64, ptr %i.q, align 8, !tbaa !21
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #36
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pre552 = load i64, ptr %i.j, align 8, !tbaa !18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.bt = icmp sgt i64 %.pre552, 9223372036854775798
  br i1 %i.bt, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i128: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = add nsw i64 %.pre552, 9                 ; 3 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.i                 ; 2 uses
  br i1 %i.bw, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i129

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i128
  %i.bx = icmp ult i64 %.pre552, 16
  call void @llvm.assume(i1 %i.bx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i129: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i128
  %i.by = load i64, ptr %i.i, align 8
  %i.bz = select i1 %i.bw, i64 15, i64 %i.by
  %.not.i.i.i130 = icmp ugt i64 %i.bu, %i.bz
  br i1 %.not.i.i.i130, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i129
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.pre552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ca, ptr noundef nonnull align 1 dereferenceable(9) @.str.18, i64 9, i1 false)
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i129
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre552, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 9)
          to label %bb.ac unwind label %.loopexit

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  store i64 %i.bu, ptr %i.j, align 8, !tbaa !18
  %i.cb = load ptr, ptr %0, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bu
  store i8 0, ptr %i.cc, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0455.0512, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  invoke void @_ZNK8facebook5velox7Variant12toJsonUnsafeB5cxx11ERKSt10shared_ptrIKNS0_4TypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(10) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ad unwind label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load ptr, ptr %9, align 8, !tbaa !27    ; 3 uses
  %i.cf = load i64, ptr %i.r, align 8, !tbaa !18  ; 6 uses
  %i.cg = load i64, ptr %i.j, align 8, !tbaa !18  ; 5 uses
  %i.ch = sub i64 9223372036854775807, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.cf
  br i1 %i.ci, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i136

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #37
          to label %.noexc141 unwind label %.loopexit.split-lp469

.noexc141:                                        ; preds = %bb.ae
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i136: ; preds = %bb.ad
  %i.cj = add i64 %i.cg, %i.cf                    ; 3 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.i                 ; 2 uses
  br i1 %i.cl, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i137

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i136
  %i.cm = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.cm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i137: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i136
  %i.cn = load i64, ptr %i.i, align 8
  %i.co = select i1 %i.cl, i64 15, i64 %i.cn
  %.not.i.i.i.i138 = icmp ugt i64 %i.cj, %i.co
  br i1 %.not.i.i.i.i138, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i137
  %.not8.i.i.i.i139 = icmp eq i64 %i.cf, 0
  br i1 %.not8.i.i.i.i139, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cg ; 2 uses
  %cond.i.i.i.i140 = icmp eq i64 %i.cf, 1
  br i1 %cond.i.i.i.i140, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cq = load i8, ptr %i.ce, align 1, !tbaa !21
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !21
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.ce, i64 %i.cf, i1 false)
  br label %bb.al

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i137
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cg, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.cf)
          to label %bb.al unwind label %.loopexit468

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ak
  store i64 %i.cj, ptr %i.j, align 8, !tbaa !18
  %i.cr = load ptr, ptr %0, align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  store i8 0, ptr %i.cs, align 1, !tbaa !21
  %i.ct = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.s
  br i1 %i.cu, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.al
  %i.cv = load i64, ptr %i.s, align 8, !tbaa !21
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #36
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %.pre553 = load i64, ptr %i.j, align 8, !tbaa !18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.cx = icmp eq i64 %.pre553, 9223372036854775807
  br i1 %i.cx, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151
  %i.cy = add nsw i64 %.pre553, 1                 ; 3 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.i                 ; 2 uses
  br i1 %i.da, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i153

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152
  %i.db = icmp ult i64 %.pre553, 16
  call void @llvm.assume(i1 %i.db)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i153: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152
  %i.dc = load i64, ptr %i.i, align 8
  %i.dd = select i1 %i.da, i64 15, i64 %i.dc
  %.not.i.i.i154 = icmp ugt i64 %i.cy, %i.dd
  br i1 %.not.i.i.i154, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i153
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.pre553
  store i8 125, ptr %i.de, align 1, !tbaa !21
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i153
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre553, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %bb.ap unwind label %.loopexit

bb.ap:                                            ; preds = %bb.an, %bb.ao
  store i64 %i.cy, ptr %i.j, align 8, !tbaa !18
  %i.df = load ptr, ptr %0, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cy
  store i8 0, ptr %i.dg, align 1, !tbaa !21
  %i.dh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0455.0512) #40 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.n
  br i1 %i.di, label %._crit_edge515, label %bb.g

bb.aq:                                            ; preds = %bb.p
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

.loopexit463:                                     ; preds = %bb.x
  %lpad.loopexit465 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp464:                            ; preds = %bb.r
  %lpad.loopexit.split-lp466 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp464, %.loopexit463
  %lpad.phi467 = phi { ptr, i32 } [ %lpad.loopexit465, %.loopexit463 ], [ %lpad.loopexit.split-lp466, %.loopexit.split-lp464 ] ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.q
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.ar
  %i.dm = load i64, ptr %i.q, align 8, !tbaa !21
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.aq
  %.pn86 = phi { ptr, i32 } [ %i.dj, %bb.aq ], [ %lpad.phi467, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %lpad.phi467, %bb.ar ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.av

bb.as:                                            ; preds = %bb.ac
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

.loopexit468:                                     ; preds = %bb.ak
  %lpad.loopexit470 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp469:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp471 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp469, %.loopexit468
  %lpad.phi472 = phi { ptr, i32 } [ %lpad.loopexit470, %.loopexit468 ], [ %lpad.loopexit.split-lp471, %.loopexit.split-lp469 ] ; 2 uses
  %i.dp = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.s
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.at
  %i.dr = load i64, ptr %i.s, align 8, !tbaa !21
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %bb.as
  %.pn88 = phi { ptr, i32 } [ %i.do, %bb.as ], [ %lpad.phi472, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %lpad.phi472, %bb.at ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.av

bb.au:                                            ; preds = %bb.f, %bb.c
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %bb.au
  %.pn90.pn.pn = phi { ptr, i32 } [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.dt, %bb.au ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.i
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.av
  %i.dw = load i64, ptr %i.i, align 8, !tbaa !21
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE32EEERKDav.exit: ; preds = %bb.b
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.dy, ptr %0, align 8, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i8 91, ptr %i.dy, align 8, !tbaa !21
  store i64 1, ptr %i.dz, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.ea, align 1, !tbaa !21
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !318 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !318 ; 3 uses
  %i.ee = icmp eq ptr %i.eb, %i.ed
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i179, label %bb.aw

bb.aw:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE32EEERKDav.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  invoke void @_ZNK8facebook5velox7Variant12toJsonUnsafeB5cxx11ERKSt10shared_ptrIKNS0_4TypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(10) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.ax unwind label %.loopexit.split-lp537

bb.ax:                                            ; preds = %bb.aw
  %i.eh = load ptr, ptr %11, align 8, !tbaa !27   ; 3 uses
  %i.ei = load i64, ptr %i.ef, align 8, !tbaa !18 ; 6 uses
  %i.ej = load i64, ptr %i.dz, align 8, !tbaa !18 ; 5 uses
  %i.ek = sub i64 9223372036854775807, %i.ej
  %i.el = icmp ult i64 %i.ek, %i.ei
  br i1 %i.el, label %.loopexit541, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i195.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i195.peel: ; preds = %bb.ax
  %i.em = add i64 %i.ej, %i.ei                    ; 3 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dy                ; 2 uses
  br i1 %i.eo, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i196.peel

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i195.peel
  %i.ep = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ep)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i196.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i196.peel: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i195.peel
  %i.eq = load i64, ptr %i.dy, align 8
  %i.er = select i1 %i.eo, i64 15, i64 %i.eq
  %.not.i.i.i.i197.peel = icmp ugt i64 %i.em, %i.er
  br i1 %.not.i.i.i.i197.peel, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i196.peel
  %.not8.i.i.i.i198.peel = icmp eq i64 %i.ei, 0
  br i1 %.not8.i.i.i.i198.peel, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ej ; 2 uses
  %cond.i.i.i.i199.peel = icmp eq i64 %i.ei, 1
  br i1 %cond.i.i.i.i199.peel, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.eh, i64 %i.ei, i1 false)
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  %i.et = load i8, ptr %i.eh, align 1, !tbaa !21
  store i8 %i.et, ptr %i.es, align 1, !tbaa !21
  br label %bb.be

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i196.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ej, i64 noundef 0, ptr noundef %i.eh, i64 noundef %i.ei)
          to label %bb.be unwind label %.loopexit478.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  store i64 %i.em, ptr %i.dz, align 8, !tbaa !18
  %i.eu = load ptr, ptr %0, align 8, !tbaa !27
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.em
  store i8 0, ptr %i.ev, align 1, !tbaa !21
  %i.ew = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.eg
  br i1 %i.ex, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.peel: ; preds = %bb.be
  %i.ey = load i64, ptr %i.eg, align 8, !tbaa !21
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #36
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210.peel

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210.peel: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ed
  br i1 %i.fb, label %._crit_edge511, label %.peel.next530

._crit_edge511:                                   ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210.peel
  %.pre549 = load i64, ptr %i.dz, align 8, !tbaa !18 ; 2 uses
  %i.fc = icmp eq i64 %.pre549, 9223372036854775807
  br i1 %i.fc, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i179

bb.bf:                                            ; preds = %._crit_edge511
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #37
          to label %.noexc184 unwind label %bb.bv

.noexc184:                                        ; preds = %bb.bf
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i179: ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE32EEERKDav.exit, %._crit_edge511
  %i.fd = phi i64 [ %.pre549, %._crit_edge511 ], [ 1, %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE32EEERKDav.exit ] ; 4 uses
  %i.fe = add nsw i64 %i.fd, 1                    ; 3 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.dy                ; 2 uses
  br i1 %i.fg, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i180

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i179
  %i.fh = icmp ult i64 %i.fd, 16
  call void @llvm.assume(i1 %i.fh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i180: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i179
  %i.fi = load i64, ptr %i.dy, align 8
  %i.fj = select i1 %i.fg, i64 15, i64 %i.fi
  %.not.i.i.i181 = icmp ugt i64 %i.fe, %i.fj
  br i1 %.not.i.i.i181, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i180
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  store i8 93, ptr %i.fk, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit186

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i180
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fd, i64 noundef 0, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit186 unwind label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit186: ; preds = %bb.bi, %bb.bh
  store i64 %i.fe, ptr %i.dz, align 8, !tbaa !18
  %i.fl = load ptr, ptr %0, align 8, !tbaa !27
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fe
  store i8 0, ptr %i.fm, align 1, !tbaa !21
  br label %bb.fw

.peel.next530:                                    ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210.peel, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210
  %.sroa.0451.0508 = phi ptr [ %i.gr, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210 ], [ %i.fa, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210.peel ] ; 2 uses
  %i.fn = load i64, ptr %i.dz, align 8, !tbaa !18 ; 5 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775807
  br i1 %i.fo, label %.loopexit532, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i187

.loopexit532:                                     ; preds = %.peel.next530
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #37
          to label %.noexc192 unwind label %.loopexit.split-lp474

.noexc192:                                        ; preds = %.loopexit532
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i187: ; preds = %.peel.next530
  %i.fp = add nsw i64 %i.fn, 1                    ; 3 uses
  %i.fq = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.dy                ; 2 uses
  br i1 %i.fr, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i188

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i187
  %i.fs = icmp ult i64 %i.fn, 16
  call void @llvm.assume(i1 %i.fs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i188: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i187
  %i.ft = load i64, ptr %i.dy, align 8
  %i.fu = select i1 %i.fr, i64 15, i64 %i.ft
  %.not.i.i.i189 = icmp ugt i64 %i.fp, %i.fu
  br i1 %.not.i.i.i189, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i188
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fn
  store i8 44, ptr %i.fv, align 1, !tbaa !21
  br label %bb.bm
end_hunk_0
