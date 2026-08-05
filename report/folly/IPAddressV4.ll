inline.NumInlined: 1149
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5folly11IPAddressV410fromBinaryENS_5RangeIPKhEE:bb.a
bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !12
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #31
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %.pn18, %bb.g ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn17

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define range(i64 4294967296, 8589934593) i64 @_ZN5folly11IPAddressV413tryFromBinaryENS_5RangeIPKhEE(ptr %0, ptr %1) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::IPAddressV4", align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZN5folly11IPAddressV4C1Ev(ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.not.i = icmp eq i64 %i.c, 4
  br i1 %.not.i, label %bb.c, label %_ZNR5folly8ExpectedINS_4UnitENS_20IPAddressFormatErrorEE5errorEv.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 1
  %i.e = zext i32 %i.d to i64
  %i.f = or disjoint i64 %i.e, 4294967296
  br label %_ZNR5folly8ExpectedINS_4UnitENS_20IPAddressFormatErrorEE5errorEv.exit

_ZNR5folly8ExpectedINS_4UnitENS_20IPAddressFormatErrorEE5errorEv.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0 = phi i64 [ %i.f, %bb.c ], [ 8589934592, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret i64 %.sroa.3.0

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA55_cmETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(55) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !28
  store i8 0, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr %0, ptr %i.a, align 8, !tbaa !235
  invoke void @_ZN5folly11toAppendFitIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(55) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.e = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !12
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(55) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !235
  %i.b = load i64, ptr %1, align 8, !tbaa !50     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = mul nuw nsw i64 %i.d, 78
  %i.f = lshr i64 %i.e, 8                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50
  %i.i = icmp uge i64 %i.b, %i.h
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.f, 55
  %i.l = add nuw nsw i64 %i.k, %i.j
  br label %_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit

_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.l, %bb.b ], [ 56, %bb.a ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %.0.i.i.i.i.i.i)
  %i.m = load ptr, ptr %2, align 8, !tbaa !235    ; 6 uses
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(55) %0) #31 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28   ; 5 uses
  %i.q = sub i64 9223372036854775807, %i.p
  %i.r = icmp ult i64 %i.q, %i.n
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit
  %i.s = add i64 %i.p, %i.n                       ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.w = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.x = load i64, ptr %i.u, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.s, %i.y
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN5folly8toAppendIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.p ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.n, 1
  br i1 %cond.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %0, align 1, !tbaa !12
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !12
  br label %_ZN5folly8toAppendIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 dereferenceable(55) %0, i64 %i.n, i1 false)
  br label %_ZN5folly8toAppendIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.p, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(55) %0, i64 noundef %i.n)
  br label %_ZN5folly8toAppendIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

_ZN5folly8toAppendIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.s, ptr %i.o, align 8, !tbaa !28
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  store i8 0, ptr %i.ac, align 1, !tbaa !12
  %i.ad = load i64, ptr %1, align 8, !tbaa !50
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.ad, ptr noundef nonnull %i.m)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %.not.i.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.thread.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i, !prof !24

._crit_edge.thread.i.i.i:                         ; preds = %bb.a
  %i.b = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !237
  br label %bb.c

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i: ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = mul nuw nsw i64 %i.d, 78
  %i.f = lshr i64 %i.e, 8                         ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50
  %i.i = icmp uge i64 %0, %i.h
  %i.j = zext i1 %i.i to i64                      ; 2 uses
  %i.k = add nuw nsw i64 %i.f, %i.j               ; 6 uses
  %i.l = icmp samesign ugt i64 %i.k, 2
  br i1 %i.l, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i
  %2 = add nuw nsw i64 %i.f, %i.j
  %3 = add nsw i64 %2, -3                         ; 2 uses
  %4 = and i64 %3, 2
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %5 = add nsw i64 %i.k, -2                       ; 3 uses
  %6 = udiv i64 %0, 100                           ; 2 uses
  %7 = urem i64 %0, 100
  %8 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !237
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 %5
  store i16 %9, ptr %10, align 1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.0.i2.i.i.i.unr = phi i64 [ %0, %.lr.ph.i.i.i.preheader ], [ %6, %.lr.ph.i.i.i.prol ]
  %.014.i1.i.i.i.unr = phi i64 [ %i.k, %.lr.ph.i.i.i.preheader ], [ %5, %.lr.ph.i.i.i.prol ]
  %.lcssa8.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %5, %.lr.ph.i.i.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %6, %.lr.ph.i.i.i.prol ]
  %11 = icmp ult i64 %3, 2
  br i1 %11, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %.0.i2.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.014.i1.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %.014.i1.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %12 = udiv i64 %.0.i2.i.i.i, 100
  %13 = urem i64 %.0.i2.i.i.i, 100
  %14 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !237
  %16 = getelementptr i8, ptr %i.a, i64 %.014.i1.i.i.i
  %17 = getelementptr i8, ptr %16, i64 -2
  store i16 %15, ptr %17, align 1
  %i.m = add i64 %.014.i1.i.i.i, -4               ; 4 uses
  %i.n = udiv i64 %.0.i2.i.i.i, 10000             ; 2 uses
  %i.o = urem i64 %12, 100
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !237
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i16 %i.q, ptr %i.r, align 1
  %i.s = icmp ugt i64 %i.m, 2
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !239

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i
  %.014.i.lcssa.i.i.i = phi i64 [ %i.k, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ], [ %.lcssa8.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.m, %.lr.ph.i.i.i ]
  %.0.i.lcssa.i.i.i = phi i64 [ %0, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.n, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !237  ; 3 uses
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
  store i8 %i.z, ptr %i.a, align 16, !tbaa !12
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit: ; preds = %bb.b, %bb.c
  %i.aa = phi i8 [ %i.w, %bb.b ], [ %i.z, %bb.c ]
  %.0.i.i711.i.i.i = phi i64 [ %i.k, %bb.b ], [ %.0.i.i712.i.i.i, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %.0.i.i711.i.i.i
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %i.af = add i64 %i.ac, %.0.i.i711.i.i.i         ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aj = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !12
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
  store i8 %i.aa, ptr %i.am, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 16 %i.a, i64 %.0.i.i711.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !28
  %i.an = load ptr, ptr %1, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 1, 3) i64 @_ZN5folly11IPAddressV416trySetFromBinaryENS_5RangeIPKhEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0, ptr %1, ptr %2) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %.not = icmp eq i64 %i.c, 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 1
  store i32 %i.d, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.a ]
  ret i64 %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define i32 @_ZN5folly11IPAddressV419fromInverseArpaNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v9::format_arg_store.28", align 16 ; 4 uses
  %2 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 4 uses
  %3 = alloca %"class.folly::IPAddressV4", align 4 ; 2 uses
  %4 = alloca %"class.folly::Range", align 8      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %10 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !240
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp ult i64 %i.d, 13
  br i1 %.not.i.i, label %.noexc25, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i

_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i:       ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -13      ; 4 uses
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 8242823586531666222
  %i.i = getelementptr i8, ptr %i.f, i64 5
  %i.j = load i64, ptr %i.i, align 1
  %i.k = xor i64 %i.j, 7021237580787246180
  %i.l = or i64 %i.h, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %.noexc25

.noexc25:                                         ; preds = %bb.a, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !242
  %i.q = load ptr, ptr %0, align 8, !tbaa !25
  %i.r = load i64, ptr %i.c, align 8, !tbaa !28
  %i.s = ptrtoint ptr %i.q to i64
  %.sroa.01.sroa.4.0.insert.ext.i = zext i64 %i.r to i128
  %.sroa.01.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.s to i128
  %.sroa.01.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i, %.sroa.01.sroa.0.0.insert.ext.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i, ptr %1, align 16, !noalias !242
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.35, i64 45, i64 13, ptr nonnull %1)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !242
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.p, align 8, !tbaa !56
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.u unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc25
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %.014 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !25     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !12
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.014, label %bb.e, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.014, label %bb.e, label %bb.t

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2067 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.p) #31
  br label %bb.t

bb.f:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i
  store ptr %i.f, ptr %i.b, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_(i8 noundef signext 46, ptr %i.a, ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEQaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerIS9_EE5valueEEvRKS8_RKT0_RS9_b.exit unwind label %bb.i

end_hunk_0
