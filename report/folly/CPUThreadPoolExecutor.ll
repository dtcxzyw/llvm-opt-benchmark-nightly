Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/CPUThreadPoolExecutor?download=true
inline.NumInlined: 4368
inline.NumDeleted: 2174
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZNSt6threadC2IZN5folly18NamedThreadFactory9newThreadEONS1_8FunctionIFvvEEEEUlvE_JEvEEOT_DpOT0_:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly18NamedThreadFactory9newThreadEONS_8FunctionIFvvEEEENUlvE_D2Ev(ptr noundef nonnull align 16 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !5887 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 16, !tbaa !569
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !571  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = tail call noundef i64 %i.h(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef null) #29, !inline_history !200 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPS6_ETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !13887
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !5888
  %i.d = load i64, ptr %1, align 8, !tbaa !5892   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmJPS7_EEEvRKT_RKT0_DpRKT1_.exit, label %bb.b, !prof !5791

bb.b:                                             ; preds = %bb.a
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = sub nuw nsw i64 64, %i.e
  %i.g = mul nuw nsw i64 %i.f, 39
  %i.h = lshr i64 %i.g, 7                         ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !5892
  %i.k = icmp uge i64 %i.d, %i.j
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %i.h, %i.l
  br label %_ZN5folly6detail15reserveInTargetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmJPS7_EEEvRKT_RKT0_DpRKT1_.exit

_ZN5folly6detail15reserveInTargetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmJPS7_EEEvRKT_RKT0_DpRKT1_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.b ], [ 1, %bb.a ]
  %i.n = add i64 %.0.i.i.i.i.i.i, %i.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.n)
  %i.o = load ptr, ptr %2, align 8, !tbaa !13887  ; 6 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !5887   ; 3 uses
  %i.q = load i64, ptr %i.b, align 8, !tbaa !5888 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !5888 ; 5 uses
  %i.t = sub i64 9223372036854775807, %i.s
  %i.u = icmp ult i64 %i.t, %i.q
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN5folly6detail15reserveInTargetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmJPS7_EEEvRKT_RKT0_DpRKT1_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.117) #42
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %_ZN5folly6detail15reserveInTargetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmJPS7_EEEvRKT_RKT0_DpRKT1_.exit
  %i.v = add i64 %i.s, %i.q                       ; 3 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !5887 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.z = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !569
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i6 = icmp ugt i64 %i.v, %i.ab
  br i1 %.not.i.i.i.i.i.i6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5folly8toAppendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPS6_ETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %i.q, 1
  br i1 %cond.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.p, align 1, !tbaa !569
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !569
  br label %_ZN5folly8toAppendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPS6_ETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZN5folly8toAppendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPS6_ETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.s, i64 noundef 0, ptr noundef %i.p, i64 noundef %i.q)
  br label %_ZN5folly8toAppendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPS6_ETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit

_ZN5folly8toAppendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPS6_ETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.v, ptr %i.r, align 8, !tbaa !5888
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !5887
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v
  store i8 0, ptr %i.af, align 1, !tbaa !569
  %i.ag = load i64, ptr %1, align 8, !tbaa !5892
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.ag, ptr noundef nonnull %i.o)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !5887
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !5791

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #40 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !5887   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !5888 ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.p = load i8, ptr %i.l, align 1, !tbaa !569
  store i8 %i.p, ptr %i.k, align 1, !tbaa !569
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  %i.q = icmp eq ptr %i.l, %i.b
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.r = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.s = load i64, ptr %i.b, align 8, !tbaa !569
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8, !tbaa !5887
  store i64 %.0, ptr %i.b, align 8, !tbaa !569
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %.not.i.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.thread.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i, !prof !5791

._crit_edge.thread.i.i.i:                         ; preds = %bb.a
  %i.b = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !16696
  br label %bb.c

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i: ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = mul nuw nsw i64 %i.d, 39
  %i.f = lshr i64 %i.e, 7                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !5892
  %i.i = icmp uge i64 %0, %i.h
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.f, %i.j               ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 2
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %0, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ] ; 2 uses
  %.014.i1.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %i.k, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ]
  %i.m = add i64 %.014.i1.i.i.i, -2               ; 4 uses
  %i.n = udiv i64 %.0.i2.i.i.i, 100               ; 2 uses
  %i.o = urem i64 %.0.i2.i.i.i, 100
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !16696
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i16 %i.q, ptr %i.r, align 1
  %i.s = icmp ugt i64 %i.m, 2
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !16695

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i
  %.014.i.lcssa.i.i.i = phi i64 [ %i.k, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ], [ %i.m, %.lr.ph.i.i.i ]
  %.0.i.lcssa.i.i.i = phi i64 [ %0, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ], [ %i.n, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !16696 ; 3 uses
  %i.v = icmp eq i64 %.014.i.lcssa.i.i.i, 2
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  store i16 %i.u, ptr %i.a, align 16
  %i.w = trunc i16 %i.u to i8
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.x = phi i16 [ %i.b, %._crit_edge.thread.i.i.i ], [ %i.u, %._crit_edge.i.i.i ]
  %.0.i.i712.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.k, %._crit_edge.i.i.i ]
  %i.y = lshr i16 %i.x, 8
  %i.z = trunc nuw i16 %i.y to i8                 ; 2 uses
  store i8 %i.z, ptr %i.a, align 16, !tbaa !569
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit: ; preds = %bb.b, %bb.c
  %i.aa = phi i8 [ %i.w, %bb.b ], [ %i.z, %bb.c ]
  %.0.i.i711.i.i.i = phi i64 [ %i.k, %bb.b ], [ %.0.i.i712.i.i.i, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !5888 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %.0.i.i711.i.i.i
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.117) #42
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %i.af = add i64 %i.ac, %.0.i.i711.i.i.i         ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !5887  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aj = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !569
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.af, %i.al
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %.0.i.i711.i.i.i, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %cond.i.i = icmp eq i64 %.0.i.i711.i.i.i, 1
  br i1 %cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 %i.aa, ptr %i.am, align 1, !tbaa !569
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 16 %i.a, i64 %.0.i.i711.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !5888
  %i.an = load ptr, ptr %1, align 8, !tbaa !5887
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEEE, i64 16), ptr %0, align 16, !tbaa !546
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !5887 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 16, !tbaa !569
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS2_8FunctionIFvvEEEEUlvE_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef null) #29, !inline_history !16697 ; 0 uses
  br label %_ZNSt6thread8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS2_8FunctionIFvvEEEEUlvE_EEED2Ev.exit

_ZNSt6thread8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS2_8FunctionIFvvEEEEUlvE_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.b
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEEE, i64 16), ptr %0, align 16, !tbaa !546
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !5887 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 16, !tbaa !569
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #41, !inline_history !16699
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !571  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef null) #29, !inline_history !16698 ; 0 uses
  br label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED2Ev.exit

_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.b
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 16 dead_on_return(8) dereferenceable(112) %0) #29, !inline_history !16699
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEE6_M_runEv(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !5887 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !5888
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr %i.c, ptr %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !573
  tail call void %i.i(ptr noundef nonnull align 16 dereferenceable(96) %i.a), !inline_history !16700
  ret void
}

declare noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define void @_ZN5folly21CPUThreadPoolExecutorC1EmNS0_7OptionsE(ptr noundef nonnull align 64 dereferenceable(2588) initializes((0, 8)) %0, i64 noundef %1, i32 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.6", align 16 ; 6 uses
  %4 = alloca %"class.std::allocator.400", align 1 ; 3 uses
  %5 = alloca %"class.std::shared_ptr.6", align 8 ; 3 uses
  %6 = alloca %"class.std::shared_ptr.397", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16704)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !16704
  store ptr null, ptr %6, align 16, !tbaa !13684, !alias.scope !16704
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5folly18NamedThreadFactoryESaIvEJRA14_KcEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %4, ptr noundef nonnull align 1 dereferenceable(14) @.str.115)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !16704
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.c = load i8, ptr @_ZN3fLB35FLAGS_dynamic_cputhreadpoolexecutorE, align 1, !tbaa !5908, !range !5883, !noundef !732
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.d, i64 0, i64 %1
  store ptr null, ptr %i.b, align 8, !tbaa !567
  %i.f = load <2 x ptr>, ptr %6, align 16, !tbaa !572
end_hunk_0
