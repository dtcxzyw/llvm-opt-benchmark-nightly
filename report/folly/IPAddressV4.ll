Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IPAddressV4?download=true
inline.NumInlined: 1149
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5folly11IPAddressV410fromBinaryENS_5RangeIPKhEE:bb.a
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
  store ptr %i.b, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !29
  store i8 0, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr %0, ptr %i.a, align 8, !tbaa !118
  invoke void @_ZN5folly11toAppendFitIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(55) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.e = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(55) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !118
  %i.b = load i64, ptr %1, align 8, !tbaa !33     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = mul nuw nsw i64 %i.d, 39
  %i.f = lshr i64 %i.e, 7                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp uge i64 %i.b, %i.h
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.f, 55
  %i.l = add nuw nsw i64 %i.k, %i.j
  br label %_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit

_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.l, %bb.b ], [ 56, %bb.a ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %.0.i.i.i.i.i.i)
  %i.m = load ptr, ptr %2, align 8, !tbaa !118    ; 6 uses
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(55) %0) #31 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !29   ; 5 uses
  %i.q = sub i64 9223372036854775807, %i.p
  %i.r = icmp ult i64 %i.q, %i.n
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %_ZN5folly6detail15reserveInTargetIA55_cmJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit
  %i.s = add i64 %i.p, %i.n                       ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.w = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.x = load i64, ptr %i.u, align 8, !tbaa !20
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
  %i.aa = load i8, ptr %0, align 1, !tbaa !20
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !20
  br label %_ZN5folly8toAppendIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 dereferenceable(55) %0, i64 %i.n, i1 false)
  br label %_ZN5folly8toAppendIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.p, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(55) %0, i64 noundef %i.n)
  br label %_ZN5folly8toAppendIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

_ZN5folly8toAppendIJA55_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.s, ptr %i.o, align 8, !tbaa !29
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  store i8 0, ptr %i.ac, align 1, !tbaa !20
  %i.ad = load i64, ptr %1, align 8, !tbaa !33
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.ad, ptr noundef nonnull %i.m)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %.not.i.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.thread.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i, !prof !25

._crit_edge.thread.i.i.i:                         ; preds = %bb.a
  %i.b = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !120
  br label %bb.c

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i: ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = mul nuw nsw i64 %i.d, 39
  %i.f = lshr i64 %i.e, 7                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp uge i64 %0, %i.h
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.f, %i.j               ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 2
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %0, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ] ; 2 uses
  %.014.i1.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %i.k, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ]
  %i.m = add nsw i64 %.014.i1.i.i.i, -2           ; 4 uses
  %i.n = udiv i64 %.0.i2.i.i.i, 100               ; 2 uses
  %i.o = urem i64 %.0.i2.i.i.i, 100
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !120
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i16 %i.q, ptr %i.r, align 1
  %i.s = icmp ugt i64 %i.m, 2
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !250

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i
  %.014.i.lcssa.i.i.i = phi i64 [ %i.k, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ], [ %i.m, %.lr.ph.i.i.i ]
  %.0.i.lcssa.i.i.i = phi i64 [ %0, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ], [ %i.n, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !120  ; 3 uses
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
  store i8 %i.z, ptr %i.a, align 16, !tbaa !20
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit: ; preds = %bb.b, %bb.c
  %i.aa = phi i8 [ %i.w, %bb.b ], [ %i.z, %bb.c ]
  %.0.i.i711.i.i.i = phi i64 [ %i.k, %bb.b ], [ %.0.i.i712.i.i.i, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !29 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %.0.i.i711.i.i.i
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %i.af = add i64 %i.ac, %.0.i.i711.i.i.i         ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aj = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !20
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
  store i8 %i.aa, ptr %i.am, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 16 %i.a, i64 %.0.i.i711.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !29
  %i.an = load ptr, ptr %1, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !20
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !122
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !259
  %i.q = load ptr, ptr %0, align 8, !tbaa !28
  %i.r = load i64, ptr %i.c, align 8, !tbaa !29
  %i.s = ptrtoint ptr %i.q to i64
  %.sroa.01.sroa.4.0.insert.ext.i = zext i64 %i.r to i128
  %.sroa.01.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.s to i128
  %.sroa.01.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i, %.sroa.01.sroa.0.0.insert.ext.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i, ptr %1, align 16, !noalias !259
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.35, i64 45, i64 13, ptr nonnull %1)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !259
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.p, align 8, !tbaa !40
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
  %i.v = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !20
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.014, label %bb.e, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.014, label %bb.e, label %bb.t

end_hunk_0
begin_hunk_1_@_ZNK5folly11IPAddressV422toFullyQualifiedAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 16 %i.a, i64 %i.b, i1 false)
  br label %_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.b)
  br label %_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !29
  %i.p = load ptr, ptr %1, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV417toInverseArpaNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.fmt::v9::format_arg_store.43", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.d = load i8, ptr %i.a, align 1, !tbaa !20, !noalias !318
  %.sroa.08.0.insert.ext.i = zext i8 %i.d to i128
  %i.e = load i8, ptr %i.b, align 2, !tbaa !20, !noalias !318
  %.sroa.010.0.insert.ext.i = zext i8 %i.e to i128
  %i.f = load i8, ptr %i.c, align 1, !tbaa !20, !noalias !318
  %.sroa.017.0.insert.ext.i = zext i8 %i.f to i128
  %i.g = load i8, ptr %1, align 4, !tbaa !20, !noalias !318
  %.sroa.024.0.insert.ext.i = zext i8 %i.g to i128
  store i128 %.sroa.08.0.insert.ext.i, ptr %2, align 16, !tbaa !20, !alias.scope !317, !noalias !316
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i128 %.sroa.010.0.insert.ext.i, ptr %i.h, align 16, !tbaa !20, !alias.scope !317, !noalias !316
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i128 %.sroa.017.0.insert.ext.i, ptr %i.i, align 16, !tbaa !20, !alias.scope !317, !noalias !316
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i128 %.sroa.024.0.insert.ext.i, ptr %i.j, align 16, !tbaa !20, !alias.scope !317, !noalias !316
  call void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.47, i64 24, i64 8738, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !316
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK5folly11IPAddressV412getNthMSByteEm(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v9::format_arg_store.46", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp ugt i64 %1, 3
  br i1 %i.a, label %.noexc, label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !24, !alias.scope !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str.49, i64 7, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.d, align 8, !tbaa !29, !alias.scope !325
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.e, align 1, !tbaa !20, !alias.scope !325
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !326
  %i.f = ptrtoint ptr %i.c to i64
  store i128 3, ptr %2, align 16, !tbaa !20, !alias.scope !327
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.0.0.insert.ext.i = zext i64 %i.f to i128
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.0.sroa.0.0.insert.ext.i, 129127208515966861312
  store i128 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.g, align 16, !tbaa !20, !alias.scope !327
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.48, i64 50, i64 212, ptr nonnull %2)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !326
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !20
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.s = load i64, ptr %i.c, align 8, !tbaa !20
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.c, align 8, !tbaa !20
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.v) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.e, label %bb.f

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn21 = phi { ptr, i32 } [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.p, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn20 = phi { ptr, i32 } [ %.pn.pn21, %bb.e ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ]
  resume { ptr, i32 } %.pn.pn20

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  ret i8 %i.x

bb.h:                                             ; preds = %bb.c
  unreachable
}

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly24IPAddressFormatExceptionCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: mustprogress uwtable
define range(i64 0, 1099511627776) i64 @_ZN5folly11IPAddressV419longestCommonPrefixERKSt4pairIS0_hES4_(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.50", align 8     ; 5 uses
  %3 = alloca %"class.folly::IPAddressV4", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !330
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !330
  %i.e = tail call i40 @_ZN5folly6detail5Bytes19longestCommonPrefixILm4EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_h(ptr noundef nonnull align 1 dereferenceable(4) %0, i8 noundef zeroext %i.b, ptr noundef nonnull align 1 dereferenceable(4) %1, i8 noundef zeroext %i.d)
  store i40 %i.e, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5folly11IPAddressV4C1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(4) %2) #31
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %3, align 4, !tbaa !20
  %i.h = load i8, ptr %i.f, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.sroa.2.0.insert.ext = zext i8 %i.h to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.g to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i40 @_ZN5folly6detail5Bytes19longestCommonPrefixILm4EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_h(ptr noundef nonnull align 1 dereferenceable(4) %0, i8 noundef zeroext %1, ptr noundef nonnull align 1 dereferenceable(4) %2, i8 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v9::format_arg_store.54", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"struct.std::array", align 4       ; 9 uses
  %i.a = icmp ugt i8 %1, 32
  %i.b = icmp ugt i8 %3, 32
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.noexc, label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !337
  %.sroa.speculated48 = tail call i8 @llvm.umax.i8(i8 %1, i8 %3)
  %.sroa.06.0.insert.ext.i = zext i8 %.sroa.speculated48 to i128
  store i128 %.sroa.06.0.insert.ext.i, ptr %4, align 16, !tbaa !20, !alias.scope !338
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i128 32, ptr %i.d, align 16, !tbaa !20, !alias.scope !338
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.54, i64 50, i64 66, ptr nonnull %4)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !337
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
          to label %bb.i unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.030 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.030, label %bb.e, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.030, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn63 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #31
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %.sroa.speculated45 = tail call i8 @llvm.umin.i8(i8 %3, i8 %1) ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i32 0, ptr %6, align 4
  %.not = icmp eq i8 %.sroa.speculated45, 0
  br i1 %.not, label %.critedge4, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.l = load i8, ptr %0, align 1, !tbaa !20      ; 2 uses
  %i.m = load i8, ptr %2, align 1, !tbaa !20
  %i.n = icmp eq i8 %i.l, %i.m
  br i1 %i.n, label %.lr.ph83, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph83
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !20        ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !20
  %11 = icmp eq i8 %8, %10
  br i1 %11, label %.lr.ph83.1, label %.critedge

.lr.ph83.1:                                       ; preds = %.lr.ph
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %8, ptr %12, align 1, !tbaa !20
  %13 = icmp ugt i8 %.sroa.speculated45, 16
  br i1 %13, label %.lr.ph.a, label %..critedge_crit_edge, !llvm.loop !335

.lr.ph.a:                                         ; preds = %.lr.ph83.1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %.lr.ph83.2, label %.critedge

.lr.ph83.2:                                       ; preds = %.lr.ph.a
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.p, ptr %14, align 2, !tbaa !20
  %15 = icmp ugt i8 %.sroa.speculated45, 24
  br i1 %15, label %.lr.ph83.a, label %..critedge_crit_edge, !llvm.loop !335

.lr.ph83.a:                                       ; preds = %.lr.ph83.2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %16 = load i8, ptr %i.t, align 1, !tbaa !20     ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !20
  %19 = icmp eq i8 %16, %18
  br i1 %19, label %.lr.ph83.3, label %.critedge

.lr.ph83.3:                                       ; preds = %.lr.ph83.a
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %16, ptr %20, align 1, !tbaa !20
  %21 = icmp ugt i8 %.sroa.speculated45, 32
  br i1 %21, label %.critedge, label %..critedge_crit_edge, !llvm.loop !335

.lr.ph83:                                         ; preds = %.lr.ph.preheader
  store i8 %i.l, ptr %6, align 4, !tbaa !20
  %22 = icmp ugt i8 %.sroa.speculated45, 8
  br i1 %22, label %.lr.ph, label %..critedge_crit_edge, !llvm.loop !335

..critedge_crit_edge:                             ; preds = %.lr.ph83.3, %.lr.ph83.2, %.lr.ph83.1, %.lr.ph83
  %.lcssa = phi i8 [ 8, %.lr.ph83 ], [ 16, %.lr.ph83.1 ], [ 24, %.lr.ph83.2 ], [ 32, %.lr.ph83.3 ]
  br label %.critedge, !llvm.loop !335

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.a, %.lr.ph83.a, %.lr.ph83.3, %..critedge_crit_edge, %.lr.ph.preheader
  %.lcssa.ph = phi i8 [ 0, %.lr.ph.preheader ], [ %.lcssa, %..critedge_crit_edge ], [ 8, %.lr.ph ], [ 16, %.lr.ph.a ], [ 24, %.lr.ph83.a ], [ 32, %.lr.ph83.3 ] ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %.sroa.speculated45, i8 %.lcssa.ph) ; 2 uses
  %i.u = icmp ugt i8 %.sroa.speculated45, %.lcssa.ph
  br i1 %i.u, label %.lr.ph68, label %.critedge4

.lr.ph68:                                         ; preds = %.critedge, %bb.g
  %.028.in67 = phi i8 [ %i.ah, %bb.g ], [ %.sroa.speculated, %.critedge ] ; 4 uses
  %.027 = and i8 %.028.in67, 7
  %.028 = lshr i8 %.028.in67, 3
  %i.v = zext nneg i8 %.028 to i64                ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %i.y = zext nneg i8 %.027 to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail5Bytes19longestCommonPrefixILm4EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_hE6kMasks, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20   ; 2 uses
  %i.ab = and i8 %i.aa, %i.x                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %i.ae = and i8 %i.ad, %i.aa
  %i.af = icmp eq i8 %i.ab, %i.ae
  br i1 %i.af, label %bb.g, label %.critedge4

bb.g:                                             ; preds = %.lr.ph68
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.v
  store i8 %i.ab, ptr %i.ag, align 1, !tbaa !20
  %i.ah = add i8 %.028.in67, 1                    ; 2 uses
  %exitcond.not = icmp eq i8 %i.ah, %.sroa.speculated45
  br i1 %exitcond.not, label %.critedge4, label %.lr.ph68, !llvm.loop !336

.critedge4:                                       ; preds = %.lr.ph68, %bb.g, %bb.f, %.critedge
  %.028.in.lcssa = phi i8 [ %.sroa.speculated, %.critedge ], [ 0, %bb.f ], [ %.028.in67, %.lr.ph68 ], [ %.sroa.speculated45, %bb.g ]
  %i.ai = load i32, ptr %6, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %.sroa.2.0.insert.ext = zext i8 %.028.in.lcssa to i40
  %.sroa.2.0.insert.shift = shl nuw i40 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.ai to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i40 %.sroa.0.0.insert.insert

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn62 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn63, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn62

bb.i:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { cold nounwind }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !61}
!1 = distinct !{!1, !61}
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "buffer<char>", scope: !115, file: !105, line: 862, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3fmt2v96detail6bufferIcEE")
!3 = distinct !{!3, !61}
!4 = distinct !{!4, !61}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{null, null, null}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 7, !"openmp", i32 51}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!16, !16, i64 0}
!21 = !{!"any pointer", !16, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!"long", !16, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !26, i64 8, !16, i64 16}
!28 = !{!27, !22, i64 0}
!29 = !{!27, !26, i64 8}
!30 = !{!"_ZTSN5folly13fbstring_coreIcE11MediumLargeE", !22, i64 0, !26, i64 8, !26, i64 16}
!31 = !{!30, !26, i64 16}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{!26, !26, i64 0}
!34 = !{!"branch_weights", i32 1, i32 1048575}
!35 = !{!"bool", !16, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!"vtable pointer", !15, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!22, !22, i64 0}
!42 = !{!17, !17, i64 0}
!43 = !{!"_ZTSN3fmt2v917presentation_typeE", !16, i64 0}
!44 = !{!"_ZTSN3fmt2v95align4typeE", !16, i64 0}
!45 = !{!"_ZTSN3fmt2v94sign4typeE", !16, i64 0}
!46 = !{!"_ZTSN3fmt2v96detail6fill_tIcEE", !16, i64 0, !16, i64 4}
!47 = !{!"_ZTSN3fmt2v918basic_format_specsIcEE", !17, i64 0, !17, i64 4, !43, i64 8, !44, i64 9, !45, i64 9, !35, i64 9, !35, i64 10, !46, i64 11}
!48 = !{!47, !17, i64 4}
!49 = !{!46, !16, i64 4}
!50 = !{!"_ZTSN3fmt2v917basic_string_viewIcEE", !22, i64 0, !26, i64 8}
!51 = !{!50, !22, i64 0}
!52 = !{!50, !26, i64 8}
!53 = !{!"p1 _ZTSN3fmt2v918basic_format_specsIcEE", !21, i64 0}
!54 = !{!"p1 _ZTSN3fmt2v96detail20dynamic_format_specsIcEE", !21, i64 0}
!55 = !{!"p1 _ZTSN3fmt2v926basic_format_parse_contextIcNS0_6detail13error_handlerEEE", !21, i64 0}
!56 = !{!"_ZTSN3fmt2v96detail12specs_setterIcEE", !53, i64 0}
!57 = !{!"_ZTSN3fmt2v96detail21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEE", !56, i64 0, !54, i64 8, !55, i64 16}
!58 = !{!"_ZTSN3fmt2v96detail4typeE", !16, i64 0}
!59 = !{!"_ZTSN3fmt2v96detail13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEE", !57, i64 0, !58, i64 24}
!60 = !{!59, !58, i64 24}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!56, !53, i64 0}
!63 = !{i64 4}
!64 = !{!47, !43, i64 8}
!65 = !{!"_ZTSN3fmt2v96detail11arg_id_kindE", !16, i64 0}
!66 = !{!"_ZTSN3fmt2v96detail7arg_refIcEE", !65, i64 0, !16, i64 8}
!67 = !{!47, !17, i64 0}
!68 = !{!"p1 _ZTSN3fmt2v96detail13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEE", !21, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!57, !55, i64 16}
!71 = !{i64 8}
!72 = !{!"_ZTSN3fmt2v926basic_format_parse_contextIcNS0_6detail13error_handlerEEE", !50, i64 0, !17, i64 16}
!73 = !{!72, !17, i64 16}
!74 = !{!57, !54, i64 8}
!75 = !{!65, !65, i64 0}
!76 = !{!66, !65, i64 0}
!77 = !{!"_ZTSN3fmt2v96detail5valueINS0_20basic_format_contextINS0_8appenderEcEEEE", !16, i64 0}
!78 = !{!"_ZTSN3fmt2v916basic_format_argINS0_20basic_format_contextINS0_8appenderEcEEEE", !77, i64 0, !58, i64 16}
!79 = !{!78, !58, i64 16}
!80 = !{!"long long", !16, i64 0}
!81 = !{!"_ZTSN3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE", !80, i64 0, !16, i64 8}
!82 = !{!81, !80, i64 0}
!83 = !{!58, !58, i64 0}
!84 = !{i64 0, i64 16, !20, i64 16, i64 4, !83}
!85 = !{i64 0, i64 16, !20}
!86 = !{!"p1 _ZTSN3fmt2v96detail14named_arg_infoIcEE", !21, i64 0}
end_hunk_1
