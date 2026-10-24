Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_cpp?download=true
inline.NumInlined: 10427
inline.NumDeleted: 806
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11flatbuffers10CodeWriter5ClearEv:._crit_edge.i.i
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.a

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc4
  %i.m = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.o = load i64, ptr %i.a, align 8, !tbaa !32
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.u, i32 noundef 0)
  ret void

bb.a:                                             ; preds = %.noexc4, %._crit_edge.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.a
  %i.y = load i64, ptr %i.a, align 8, !tbaa !32
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !31
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !37
  %i.o = load i64, ptr %i.i, align 8, !tbaa !32
  store i64 %i.o, ptr %i.g, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !53
  store ptr %i.i, ptr %i.f, align 8, !tbaa !37
  store i64 0, ptr %i.q, align 8, !tbaa !53
  store i8 0, ptr %i.i, align 8, !tbaa !32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !31
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !37
  %i.k = load i64, ptr %i.e, align 8, !tbaa !32
  store i64 %i.k, ptr %i.c, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !53
  store ptr %i.e, ptr %i.b, align 8, !tbaa !37
  store i64 0, ptr %i.m, align 8, !tbaa !53
  store i8 0, ptr %i.e, align 8, !tbaa !32
  ret void
}

declare noundef ptr @_ZN11flatbuffers13BaseGenerator27FlatBuffersGeneratedWarningEv() local_unnamed_addr #14

declare void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477), ptr nofreeobj noundef align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffersL15GenIncludeGuardERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9NamespaceES7_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.8.val, ptr %i.a, align 8, !tbaa !54
  %i.c = icmp ugt i64 %.8.val, 15
  br i1 %i.c, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !37
  %i.e = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.e, ptr %i.b, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.f = phi ptr [ %i.d, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %.8.val, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = load i8, ptr %.0.val, align 1, !tbaa !32
  store i8 %i.g, ptr %i.f, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %.0.val, i64 %.8.val, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !53
  %i.j = load ptr, ptr %0, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.l = load ptr, ptr %0, align 8, !tbaa !37     ; 7 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = load i64, ptr %i.i, align 8, !tbaa !53   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n ; 6 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ashr i64 %i.n, 2                         ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = and i64 %i.n, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.l, i64 %i.s
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i
  %.051.i.i.i.i = phi i64 [ %i.an, %bb.g ], [ %i.q, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.031.050.i.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.l, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.t = load i8, ptr %.sroa.031.050.i.i.i.i, align 1, !tbaa !32 ; 2 uses
  %i.u = and i8 %i.t, -33
  %6 = sext i8 %i.u to i32
  %7 = add nsw i32 %6, -91
  %i.v = icmp ult i32 %7, -26
  %8 = sext i8 %i.t to i32
  %9 = add nsw i32 %8, -58
  %i.w = icmp ult i32 %9, -10
  %.not2.i.i.i.i.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %.not2.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32    ; 2 uses
  %i.z = and i8 %i.y, -33
  %10 = sext i8 %i.z to i32
  %11 = add nsw i32 %10, -91
  %i.aa = icmp ult i32 %11, -26
  %12 = sext i8 %i.y to i32
  %13 = add nsw i32 %12, -58
  %i.ab = icmp ult i32 %13, -10
  %.not2.i.i16.i.i.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %.not2.i.i16.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !32  ; 2 uses
  %i.ae = and i8 %i.ad, -33
  %14 = sext i8 %i.ae to i32
  %15 = add nsw i32 %14, -91
  %i.af = icmp ult i32 %15, -26
  %16 = sext i8 %i.ad to i32
  %17 = add nsw i32 %16, -58
  %i.ag = icmp ult i32 %17, -10
  %.not2.i.i17.i.i.i.i = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %.not2.i.i17.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit70, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !32  ; 2 uses
  %i.aj = and i8 %i.ai, -33
  %18 = sext i8 %i.aj to i32
  %19 = add nsw i32 %18, -91
  %i.ak = icmp ult i32 %19, -26
  %20 = sext i8 %i.ai to i32
  %21 = add nsw i32 %20, -58
  %i.al = icmp ult i32 %21, -10
  %.not2.i.i18.i.i.i.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %.not2.i.i18.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit72, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 4
  %i.an = add nsw i64 %.051.i.i.i.i, -1
  %i.ao = icmp sgt i64 %.051.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !530

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.sroa.031.0.lcssa.i.i.i.i = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %scevgep.i.i.i.i, %bb.g ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.sroa.031.0.lcssa.i.i.i.i to i64
  %i.ap = sub i64 %i.p, %.pre-phi.i.i.i.i
  switch i64 %i.ap, label %.loopexit13 [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = load i8, ptr %.sroa.031.0.lcssa.i.i.i.i, align 1, !tbaa !32 ; 2 uses
  %i.ar = and i8 %i.aq, -33
  %22 = sext i8 %i.ar to i32
  %23 = add nsw i32 %22, -91
  %i.as = icmp ult i32 %23, -26
  %24 = sext i8 %i.aq to i32
  %25 = add nsw i32 %24, -58
  %i.at = icmp ult i32 %25, -10
  %.not2.i.i19.i.i.i.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %.not2.i.i19.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.031.1.i.i.i.i = phi ptr [ %i.au, %bb.i ], [ %.sroa.031.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.av = load i8, ptr %.sroa.031.1.i.i.i.i, align 1, !tbaa !32 ; 2 uses
  %i.aw = and i8 %i.av, -33
  %26 = sext i8 %i.aw to i32
  %27 = add nsw i32 %26, -91
  %i.ax = icmp ult i32 %27, -26
  %28 = sext i8 %i.av to i32
  %29 = add nsw i32 %28, -58
  %i.ay = icmp ult i32 %29, -10
  %.not2.i.i20.i.i.i.i = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %.not2.i.i20.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i.i, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.sroa.031.2.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ %.sroa.031.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ba = load i8, ptr %.sroa.031.2.i.i.i.i, align 1, !tbaa !32 ; 2 uses
  %i.bb = and i8 %i.ba, -33
  %30 = sext i8 %i.bb to i32
  %31 = add nsw i32 %30, -91
  %i.bc = icmp ult i32 %31, -26
  %32 = sext i8 %i.ba to i32
  %33 = add nsw i32 %32, -58
  %i.bd = icmp ult i32 %33, -10
  %.not2.i.i21.i.i.i.i = select i1 %i.bc, i1 %i.bd, i1 false
  %spec.select.i.i.i.i = select i1 %.not2.i.i21.i.i.i.i, ptr %.sroa.031.2.i.i.i.i, ptr %i.o
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 1
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit70: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 2
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit72: ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 3
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit70, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit72, %bb.l, %bb.j, %bb.h
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.031.1.i.i.i.i, %bb.j ], [ %spec.select.i.i.i.i, %bb.l ], [ %.sroa.031.0.lcssa.i.i.i.i, %bb.h ], [ %i.bg, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit72 ], [ %i.bf, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit70 ], [ %i.be, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.031.050.i.i.i.i, %.lr.ph.i.i.i.i ] ; 9 uses
  %i.bh = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.o
  %.sroa.06.025.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 1 ; 3 uses
  %.not26.i.i = icmp eq ptr %.sroa.06.025.i.i, %i.o
  %or.cond.i.i = select i1 %i.bh, i1 true, i1 %.not26.i.i
  br i1 %or.cond.i.i, label %.loopexit13, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i98 = ptrtoaddr ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64 ; 2 uses
  %i.bi = add i64 %i.n, %i.m                      ; 2 uses
  %i.bj = add i64 %i.bi, -2
  %i.bk = sub i64 %.sroa.08.0.in.sroa.speculated.i.i.i.i98, %i.bi
  %i.bl = and i64 %i.bk, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bl, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bm = load i8, ptr %.sroa.06.025.i.i, align 1, !tbaa !32 ; 3 uses
  %i.bn = and i8 %i.bm, -33
  %34 = sext i8 %i.bn to i32
  %35 = add nsw i32 %34, -91
  %i.bo = icmp ult i32 %35, -26
  %36 = sext i8 %i.bm to i32
  %37 = add nsw i32 %36, -58
  %i.bp = icmp ult i32 %37, -10
  %.not2.i.i.i.i.prol = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %.not2.i.i.i.i.prol, label %.lr.ph.i.i.prol.loopexit.unr-lcssa, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.prol
  store i8 %i.bm, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, align 1, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 1
  br label %.lr.ph.i.i.prol.loopexit.unr-lcssa

.lr.ph.i.i.prol.loopexit.unr-lcssa:               ; preds = %bb.m, %.lr.ph.i.i.prol
  %.sroa.012.1.i.i.prol = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.lr.ph.i.i.prol ], [ %i.bq, %bb.m ] ; 2 uses
  %.sroa.06.0.i.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 2
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.012.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.1.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.sroa.06.028.i.i.unr = phi ptr [ %.sroa.06.025.i.i, %.lr.ph.i.i.preheader ], [ %.sroa.06.0.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.sroa.012.027.i.i.unr = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader ], [ %.sroa.012.1.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %i.br = icmp eq i64 %i.bj, %.sroa.08.0.in.sroa.speculated.i.i.i.i98
  br i1 %i.br, label %.loopexit13.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.p
  %.sroa.06.028.i.i = phi ptr [ %.sroa.06.0.i.i.1, %bb.p ], [ %.sroa.06.028.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.sroa.012.027.i.i = phi ptr [ %.sroa.012.1.i.i.1, %bb.p ], [ %.sroa.012.027.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.bs = load i8, ptr %.sroa.06.028.i.i, align 1, !tbaa !32 ; 3 uses
  %i.bt = and i8 %i.bs, -33
  %38 = sext i8 %i.bt to i32
  %39 = add nsw i32 %38, -91
  %i.bu = icmp ult i32 %39, -26
  %40 = sext i8 %i.bs to i32
  %41 = add nsw i32 %40, -58
  %i.bv = icmp ult i32 %41, -10
  %.not2.i.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %.not2.i.i.i.i, label %.lr.ph.i.i.1, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  store i8 %i.bs, ptr %.sroa.012.027.i.i, align 1, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i.i, i64 1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.n, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.027.i.i, %.lr.ph.i.i ], [ %i.bw, %bb.n ] ; 3 uses
  %.sroa.06.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.028.i.i, i64 1
  %i.bx = load i8, ptr %.sroa.06.0.i.i, align 1, !tbaa !32 ; 3 uses
  %i.by = and i8 %i.bx, -33
  %42 = sext i8 %i.by to i32
  %43 = add nsw i32 %42, -91
  %i.bz = icmp ult i32 %43, -26
  %44 = sext i8 %i.bx to i32
  %45 = add nsw i32 %44, -58
  %i.ca = icmp ult i32 %45, -10
  %.not2.i.i.i.i.1 = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %.not2.i.i.i.i.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.1
  store i8 %i.bx, ptr %.sroa.012.1.i.i, align 1, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i.1
  %.sroa.012.1.i.i.1 = phi ptr [ %.sroa.012.1.i.i, %.lr.ph.i.i.1 ], [ %i.cb, %bb.o ] ; 2 uses
  %.sroa.06.0.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.06.028.i.i, i64 2 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %.sroa.06.0.i.i.1, %i.o
  br i1 %.not.i.i.1, label %.loopexit13.loopexit, label %.lr.ph.i.i, !llvm.loop !531

.loopexit13.loopexit:                             ; preds = %bb.p, %.lr.ph.i.i.prol.loopexit
  %.sroa.012.1.i.i.lcssa = phi ptr [ %.sroa.012.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.1.i.i.1, %bb.p ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !37
  br label %.loopexit13

.loopexit13:                                      ; preds = %.loopexit13.loopexit, %._crit_edge.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i
  %i.cc = phi ptr [ %i.l, %._crit_edge.i.i.i.i ], [ %i.l, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i ], [ %.pre, %.loopexit13.loopexit ] ; 2 uses
  %.sroa.012.2.i.i = phi ptr [ %i.o, %._crit_edge.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZN11flatbuffersL15GenIncludeGuardERKS8_RKNSC_9NamespaceESE_E7IsAlnumEEET_SK_SK_T0_.exit.i.i ], [ %.sroa.012.1.i.i.lcssa, %.loopexit13.loopexit ]
  %i.cd = ptrtoint ptr %.sroa.012.2.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  store i64 %i.cf, ptr %i.i, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  store i8 0, ptr %i.cg, align 1, !tbaa !32
  %i.ch = load ptr, ptr %0, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !53, !noalias !544 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.cj, ptr %3, align 8, !tbaa !31, !alias.scope !545
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i64 0, ptr %i.ck, align 8, !tbaa !53, !alias.scope !545
  store i8 0, ptr %i.cj, align 8, !tbaa !32, !alias.scope !545
  %i.cl = add i64 %i.ci, 22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cl)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.loopexit13
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !53, !alias.scope !545
  %i.cn = add i64 %i.cm, -4611686018427387882
  %i.co = icmp ult i64 %i.cn, 22
  br i1 %i.co, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.q
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.180, i64 noundef 22)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.r ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !53, !alias.scope !545
  %i.cr = sub i64 4611686018427387903, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.ci
  br i1 %i.cs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.cont.i.i unwind label %bb.r

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ch, i64 noundef %i.ci)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit13
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %3, align 8, !tbaa !37, !alias.scope !545 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cj
  br i1 %i.cw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !32, !alias.scope !545
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #27
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.cz = load ptr, ptr %0, align 8, !tbaa !37    ; 6 uses
  %i.da = icmp eq ptr %i.cz, %i.b
  %i.db = load ptr, ptr %3, align 8, !tbaa !37    ; 6 uses
  %i.dc = icmp eq ptr %i.db, %i.cj                ; 2 uses
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.dc, label %bb.s, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.dc, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dd = load i64, ptr %i.ck, align 8, !tbaa !53 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %.not21.i = icmp eq ptr %3, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.t, !prof !276

bb.t:                                             ; preds = %bb.s
  switch i64 %i.dd, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.df = load i8, ptr %i.db, align 1, !tbaa !32
  store i8 %i.df, ptr %i.cz, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.dg = load i64, ptr %i.ck, align 8, !tbaa !53 ; 2 uses
  store i64 %i.dg, ptr %i.i, align 8, !tbaa !53
  %i.dh = load ptr, ptr %0, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !32
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.db, ptr %0, align 8, !tbaa !37
  %i.dj = load <2 x i64>, ptr %i.ck, align 8, !tbaa !32
  store <2 x i64> %i.dj, ptr %i.i, align 8, !tbaa !32
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !32
  store ptr %i.db, ptr %0, align 8, !tbaa !37
  %i.dl = load <2 x i64>, ptr %i.ck, align 8, !tbaa !32
  store <2 x i64> %i.dl, ptr %i.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cz, ptr %3, align 8, !tbaa !37
  store i64 %i.dk, ptr %i.cj, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cj, ptr %3, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.w, %bb.x
  %i.dm = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cz, %bb.w ], [ %i.cj, %bb.x ], [ %i.db, %bb.s ]
  store i64 0, ptr %i.ck, align 8, !tbaa !53
  store i8 0, ptr %i.dm, align 1, !tbaa !32
  %i.dn = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cj
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dp = load i64, ptr %i.cj, align 8, !tbaa !32
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.dr = load i64, ptr %i.i, align 8, !tbaa !53
  %i.ds = icmp eq i64 %i.dr, 4611686018427387903
  br i1 %i.ds, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.181, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.y ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.du = load ptr, ptr %1, align 8, !tbaa !277   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !277 ; 2 uses
  %.not29 = icmp eq ptr %i.du, %i.dw
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %bb.z

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !53 ; 4 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.ah, label %bb.ac

.body:                                            ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ai

bb.y:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.z:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.sroa.01.030 = phi ptr [ %i.du, %.lr.ph ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 3 uses
end_hunk_0
