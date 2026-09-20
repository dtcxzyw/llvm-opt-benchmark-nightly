Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/hf-cache?download=true
inline.NumInlined: 1408
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_:bb.a
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.i, ptr %i.c, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !20
  store i8 %i.k, ptr %i.j, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !19
  %i.n = load ptr, ptr %0, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !22
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.u, ptr %i.a, align 8, !tbaa !25
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.w, ptr %i.p, align 8, !tbaa !21
  %i.x = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.x, ptr %i.r, align 8, !tbaa !20
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !20
  store i8 %i.z, ptr %i.y, align 1, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA14_KcS6_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !22
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.g, ptr %i.a, align 8, !tbaa !25
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !21
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.j, ptr %i.f, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.l, ptr %i.k, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 dereferenceable(14) %1, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !22
  %i.s = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA14_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.s, ptr %i.q, align 8, !tbaa !21
  %i.z = load i64, ptr %i.t, align 8, !tbaa !20
  store i64 %i.z, ptr %i.r, align 8, !tbaa !20
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA14_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA14_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !19
  store ptr %i.t, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.aa, align 8, !tbaa !19
  store i8 0, ptr %i.t, align 8, !tbaa !20
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !63
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRA14_KcS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !451
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA14_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.af = phi ptr [ %.pre, %bb.g ], [ %i.ae, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA14_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -64
  ret ptr %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRA14_KcS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(14) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !61     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775744
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #26
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %4, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %4, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !22
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %2) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.s, ptr %i.a, align 8, !tbaa !25
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.u, ptr %i.q, align 8, !tbaa !21
  %i.v = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.v, ptr %i.r, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.r, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.s, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.x, ptr %i.w, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 dereferenceable(14) %2, i64 %i.s, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !19
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !22
  %i.ae = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !19 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !21
  %i.al = load i64, ptr %i.af, align 8, !tbaa !20
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.am = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !19
  store ptr %i.af, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %i.an, align 8, !tbaa !19
  store i8 0, ptr %i.af, align 8, !tbaa !20
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bq, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.g ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.g ] ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ap, ptr %.012.i.i.i, align 8, !tbaa !22, !alias.scope !459, !noalias !460
  %i.aq = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !460, !noalias !459 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19, !alias.scope !460, !noalias !459 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false), !alias.scope !461
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aq, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !459, !noalias !460
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !20, !alias.scope !460, !noalias !459
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !20, !alias.scope !459, !noalias !460
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !19, !alias.scope !460, !noalias !459
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.h
  %i.ay = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.au, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !19, !alias.scope !459, !noalias !460
  store ptr %i.ar, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !460, !noalias !459
  store i64 0, ptr %i.az, align 8, !tbaa !19, !alias.scope !460, !noalias !459
  store i8 0, ptr %i.ar, align 8, !tbaa !20, !alias.scope !460, !noalias !459
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !22, !alias.scope !459, !noalias !460
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !21, !alias.scope !460, !noalias !459 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19, !alias.scope !460, !noalias !459 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false), !alias.scope !461
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !21, !alias.scope !459, !noalias !460
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !20, !alias.scope !460, !noalias !459
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !20, !alias.scope !459, !noalias !460
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !19, !alias.scope !460, !noalias !459
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.i
  %i.bm = phi i64 [ %i.bi, %bb.i ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !19, !alias.scope !459, !noalias !460
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !21, !alias.scope !460, !noalias !459
  store i64 0, ptr %i.bn, align 8, !tbaa !19, !alias.scope !460, !noalias !459
  store i8 0, ptr %i.bf, align 8, !tbaa !20, !alias.scope !460, !noalias !459
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !455

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.bq, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38
  %.012.i.i.i29 = phi ptr [ %i.ct, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ], [ %i.br, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  %.0911.i.i.i30 = phi ptr [ %i.cs, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.bs, ptr %.012.i.i.i29, align 8, !tbaa !22, !alias.scope !462, !noalias !463
  %i.bt = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !21, !alias.scope !463, !noalias !462 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

bb.j:                                             ; preds = %.lr.ph.i.i.i28
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !19, !alias.scope !463, !noalias !462 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false), !alias.scope !464
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.bt, ptr %.012.i.i.i29, align 8, !tbaa !21, !alias.scope !462, !noalias !463
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !20, !alias.scope !463, !noalias !462
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !20, !alias.scope !462, !noalias !463
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !tbaa !19, !alias.scope !463, !noalias !462
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %bb.j
  %i.cb = phi i64 [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ %i.bx, %bb.j ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !19, !alias.scope !462, !noalias !463
  store ptr %i.bu, ptr %.0911.i.i.i30, align 8, !tbaa !21, !alias.scope !463, !noalias !462
  store i64 0, ptr %i.cc, align 8, !tbaa !19, !alias.scope !463, !noalias !462
  store i8 0, ptr %i.bu, align 8, !tbaa !20, !alias.scope !463, !noalias !462
end_hunk_0
begin_hunk_1_@_ZNKSt10filesystem7__cxx114path14generic_stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_:bb.a

.split:                                           ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  %.not65 = icmp eq ptr %.sink1.i57, %i.x
  br i1 %.not65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

bb.f:                                             ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  %.not = icmp eq i8 %.sink.i60, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.f
  %.sink.i61 = phi i8 [ %.sink.i60, %.split ], [ %.sink.i60, %bb.f ], [ 0, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ 0, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i58 = phi ptr [ %.sink1.i57, %.split ], [ %.sink1.i57, %bb.f ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %i.u, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %i.z = phi ptr [ %.pre33.fr, %.split ], [ %.pre33.fr, %bb.f ], [ %i.l, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %.pre, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i144852 = phi ptr [ %i.x, %.split ], [ %i.x, %bb.f ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ null, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink.i154951 = phi i8 [ 0, %.split ], [ 0, %bb.f ], [ 1, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ 1, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %i.aa = phi ptr [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %i.z, %.lr.ph.preheader ]
  %.032 = phi i1 [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ false, %.lr.ph.preheader ]
  %.sroa.13.031 = phi i8 [ %spec.select28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sink.i61, %.lr.ph.preheader ]
  %.sroa.8.030 = phi ptr [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sink1.i58, %.lr.ph.preheader ] ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ac, 0
  %.0.i.sroa.speculated = select i1 %i.ad, ptr %.sroa.8.030, ptr %1 ; 3 uses
  br i1 %.032, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !19  ; 4 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.ai = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ak = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.al = icmp ugt i64 %i.af, %i.ak
  br i1 %i.al, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ae, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.am = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  store i8 47, ptr %i.an, align 1, !tbaa !20
  store i64 %i.af, ptr %i.b, align 8, !tbaa !19
  %i.ao = load ptr, ptr %3, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.af
  store i8 0, ptr %i.ap, align 1, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %i.at = load i64, ptr %i.b, align 8, !tbaa !19
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %i.as
  br i1 %i.av, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #26
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %bb.j
  %i.aw = load ptr, ptr %.0.i.sroa.speculated, align 8, !tbaa !21
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.aw, i64 noundef %i.as)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = and i64 %i.ba, 3
  %i.bc = icmp eq i64 %i.bb, 3
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, 3
  %i.bg = icmp eq i64 %i.bf, 0                    ; 3 uses
  %spec.select.idx = select i1 %i.bg, i64 48, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.8.030, i64 %spec.select.idx ; 2 uses
  %spec.select28 = select i1 %i.bg, i8 %.sroa.13.031, i8 1 ; 2 uses
  %i.bh = icmp ne i8 %spec.select28, %.sink.i154951
  %i.bi = icmp ne ptr %spec.select, %.sink1.i144852
  %.0.i.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %.0.i.i, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.f, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !22
  %i.bk = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.a
  br i1 %i.bl, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  store ptr %i.bk, ptr %0, align 8, !tbaa !21
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !20
  %.pre34 = load i64, ptr %i.b, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bq = phi i64 [ %i.bm, %bb.l ], [ %.pre34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.c
  %.pn12 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.aq, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bs = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.a
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.m
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn12
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #15

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt10filesystem7__cxx114path7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathERSt10error_code(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZNSt10filesystem4copyERKNS_7__cxx114pathES3_NS_12copy_optionsERSt10error_code(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(192) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !53     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #26
  unreachable

_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 192                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 48038396025285290)
  %i.k = select i1 %i.i, i64 48038396025285290, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 192                ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  invoke void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.p, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN8hf_cache7hf_fileC2EOS0_(ptr noundef nonnull align 8 dereferenceable(192) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %.0911.i.i.i) #25
  tail call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.0911.i.i.i) #25
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 192 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.r, %.lr.ph.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 192 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %i.s, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.t, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN8hf_cache7hf_fileC2EOS0_(ptr noundef nonnull align 8 dereferenceable(192) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(192) %.0911.i.i.i29) #25
  tail call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.0911.i.i.i29) #25
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 192 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 192 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !5

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.s, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.u, %.lr.ph.i.i.i27 ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.y) #27
  br label %_ZNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !53
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw [192 x i8], ptr %i.o, i64 %i.k
  store ptr %i.z, ptr %i.v, align 8, !tbaa !52
  ret void

bb.d:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #27
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !22
  %i.h = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 %i.j, ptr %i.f, align 8, !tbaa !25
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !21
  %i.m = load i64, ptr %i.f, align 8, !tbaa !25
  store i64 %i.m, ptr %i.g, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !20
  store i8 %i.o, ptr %i.n, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.p = load i64, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !19
  %i.r = load ptr, ptr %0, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !22
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 %i.y, ptr %i.e, align 8, !tbaa !25
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i17, label %._crit_edge.i.i16

.noexc.i17:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %.noexc.i17
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !21
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !25
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !20
  br label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = phi ptr [ %i.aa, %.noexc ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.y, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i16
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !20
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i16
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !25  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !19
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !22
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 %i.an, ptr %i.d, align 8, !tbaa !25
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i20, label %._crit_edge.i.i19

.noexc.i20:                                       ; preds = %bb.f
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc21 unwind label %bb.t   ; 2 uses

.noexc21:                                         ; preds = %.noexc.i20
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !21
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !25
end_hunk_1
begin_hunk_2_@_ZN8hf_cache7hf_fileC2EOS0_:bb.a
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  %i.i = load i64, ptr %i.c, align 8, !tbaa !20
  store i64 %i.i, ptr %i.a, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !19
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  store i64 0, ptr %i.j, align 8, !tbaa !19
  store i8 0, ptr %i.c, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !22
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.p, ptr %i.m, align 8, !tbaa !21
  %i.w = load i64, ptr %i.q, align 8, !tbaa !20
  store i64 %i.w, ptr %i.o, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !19
  store ptr %i.q, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.x, align 8, !tbaa !19
  store i8 0, ptr %i.q, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !22
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !21
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !20
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.am, ptr %i.an, align 8, !tbaa !19
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !21
  store i64 0, ptr %i.al, align 8, !tbaa !19
  store i8 0, ptr %i.ae, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !22
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load i64, ptr %i.au, align 8, !tbaa !19 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !21
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !20
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !19
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !21
  store i64 0, ptr %i.az, align 8, !tbaa !19
  store i8 0, ptr %i.as, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !22
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !19 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !21
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !20
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !19
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !21
  store i64 0, ptr %i.bn, align 8, !tbaa !19
  store i8 0, ptr %i.bg, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !22
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !21 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 16
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !21
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !20
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !19
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !21
  store i64 0, ptr %i.cb, align 8, !tbaa !19
  store i8 0, ptr %i.bu, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(192) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !53     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #26
  unreachable

_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 192                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 48038396025285290)
  %i.k = select i1 %i.i, i64 48038396025285290, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 192
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  tail call void @_ZN8hf_cache7hf_fileC2EOS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.p, ptr noundef nonnull align 8 dereferenceable(192) %2) #25
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN8hf_cache7hf_fileC2EOS0_(ptr noundef nonnull align 8 dereferenceable(192) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %.0911.i.i.i) #25
  tail call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.0911.i.i.i) #25
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 192 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.r, %.lr.ph.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 192 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %i.s, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.t, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN8hf_cache7hf_fileC2EOS0_(ptr noundef nonnull align 8 dereferenceable(192) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(192) %.0911.i.i.i19) #25
  tail call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.0911.i.i.i19) #25
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 192 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 192 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !5

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.s, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.u, %.lr.ph.i.i.i17 ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.y) #27
  br label %_ZNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !53
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw [192 x i8], ptr %i.o, i64 %i.k
  store ptr %i.z, ptr %i.v, align 8, !tbaa !52
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !54}
!1 = distinct !{!1, !54}
!2 = distinct !{!2, !54}
!3 = distinct !{!3, !54}
!4 = distinct !{null}
!5 = distinct !{!5, !54}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!"long", !10, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !17, i64 8, !10, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!10, !10, i64 0}
!21 = !{!18, !15, i64 0}
!22 = !{!16, !15, i64 0}
!23 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !14, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!17, !17, i64 0}
!26 = !{!"vtable pointer", !9, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !17, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!34 = !{!"_ZTSSt6locale", !33, i64 0}
!35 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !30, i64 40, !31, i64 48, !10, i64 64, !11, i64 192, !32, i64 200, !34, i64 208}
!36 = !{!35, !29, i64 32}
!37 = !{!"p1 _ZTSNSt3_V214error_categoryE", !14, i64 0}
!38 = !{!"_ZTSSt10error_code", !11, i64 0, !37, i64 8}
!39 = !{!38, !11, i64 0}
!40 = !{!38, !37, i64 8}
!41 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!42 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0}
!43 = !{!42, !41, i64 0}
!44 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!45 = !{!44, !11, i64 8}
!46 = !{!44, !11, i64 12}
!47 = !{!11, !11, i64 0}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!"p1 _ZTSN8hf_cache7hf_fileE", !14, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!50, !49, i64 8}
!52 = !{!50, !49, i64 16}
!53 = !{!50, !49, i64 0}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!15, !15, i64 0}
!56 = !{!"bool", !10, i64 0}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !14, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!60, !59, i64 0}
!62 = !{!60, !59, i64 16}
!63 = !{!60, !59, i64 8}
!64 = !{!"_ZTSSt14_Function_base", !10, i64 0, !14, i64 16}
!65 = !{!64, !14, i64 16}
!66 = !{!"p1 _ZTSN7httplib8ResponseE", !14, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !60, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !69, i64 0}
!71 = !{!"_ZTSN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEE", !70, i64 0}
!72 = !{!"any p2 pointer", !14, i64 0}
!73 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !72, i64 0}
!74 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!75 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !74, i64 0}
!76 = !{!"float", !10, i64 0}
!77 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !76, i64 0, !17, i64 8}
!78 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7httplib6detail11any_storageESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE", !73, i64 0, !17, i64 8, !75, i64 16, !17, i64 24, !77, i64 32, !74, i64 48}
!79 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7httplib6detail11any_storageESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE", !78, i64 0}
!80 = !{!"_ZTSN7httplib8UserDataE", !79, i64 0}
!81 = !{!"_ZTSSt8functionIFbmmRN7httplib8DataSinkEEE", !64, i64 0, !14, i64 24}
!82 = !{!"_ZTSSt8functionIFvbEE", !64, i64 0, !14, i64 24}
!83 = !{!"_ZTSN7httplib6detail12EncodingTypeE", !10, i64 0}
!84 = !{!"_ZTSN7httplib8ResponseE", !18, i64 0, !11, i64 32, !18, i64 40, !71, i64 72, !71, i64 96, !18, i64 120, !18, i64 152, !80, i64 184, !17, i64 240, !81, i64 248, !82, i64 280, !56, i64 312, !56, i64 313, !18, i64 320, !18, i64 352, !83, i64 384}
!85 = !{!"p1 _ZTSNSt10filesystem7__cxx114pathE", !14, i64 0}
!86 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_CmptE", !14, i64 0}
!87 = !{!"_ZTSNSt10filesystem7__cxx114path8iteratorE", !85, i64 0, !86, i64 8, !56, i64 16}
!88 = !{!87, !85, i64 0}
!89 = !{!"_ZTSSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE", !23, i64 0}
!90 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE", !89, i64 0}
!91 = !{!"_ZTSSt5tupleIJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE", !90, i64 0}
end_hunk_2
