Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/linker-script.cc.X86_64?download=true
inline.NumInlined: 1328
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4mold6ScriptINS_6X86_64EE4skipESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EES7_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.a, align 8
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.c = load ptr, ptr %0, align 8, !tbaa !33, !nonnull !34, !align !35
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %6, ptr noundef nonnull align 8 dereferenceable(14448) %i.c) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA13_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.f, ptr noundef nonnull align 1 dereferenceable(13) @.str.24)
  %i.h = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.i = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA15_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.h, ptr noundef nonnull align 1 dereferenceable(15) @.str.25) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %6) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 8, !tbaa !30 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !32 ; 2 uses
  %i.j = icmp eq i64 %.sroa.03.0.copyload, %3
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %3, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.d
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.24.0.copyload, ptr %4, i64 %3)
  %i.l = icmp eq i32 %bcmp.i, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.26, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.27)
  call void @_ZN4mold6ScriptINS_6X86_64EE5errorESt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, ptr nofree noundef nonnull align 8 dereferenceable(32) %7) #25
  unreachable

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.d
  %i.m = add i64 %2, -1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.n, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.m, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE19read_version_scriptESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !33, !nonnull !34, !align !35 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3880
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 3872
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.e, %i.h
  %i.j = lshr exact i64 %i.i, 5
  %i.k = trunc i64 %i.j to i16
  %i.l = add i16 %i.k, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37
  %.067 = phi i16 [ %.1, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37 ], [ %i.l, %.lr.ph.preheader ] ; 3 uses
  %.sroa.17.066 = phi i64 [ %i.ak, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37 ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.052.065 = phi ptr [ %i.aj, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37 ], [ %1, %.lr.ph.preheader ] ; 6 uses
  %.sroa.024.0.copyload = load i64, ptr %.sroa.052.065, align 8, !tbaa !30 ; 2 uses
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.052.065, i64 8
  %.sroa.225.0.copyload = load ptr, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !32 ; 3 uses
  %cond = icmp eq i64 %.sroa.024.0.copyload, 1
  br i1 %cond, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.b

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %.lr.ph
  %lhsc = load i8, ptr %.sroa.225.0.copyload, align 1
  %i.m = icmp eq i8 %lhsc, 125
  br i1 %i.m, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %lhsc73 = load i8, ptr %.sroa.225.0.copyload, align 1
  %i.n = icmp eq i8 %lhsc73, 123
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit33, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30
  %i.o = add i16 %.067, 1
  %i.p = load ptr, ptr %0, align 8, !tbaa !33, !nonnull !34, !align !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 3872
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.052.065) ; 0 uses
  %i.s = add i64 %.sroa.17.066, -1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.052.065, i64 16
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit33

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit33: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30, %bb.b
  %.sroa.6.0 = phi ptr [ %.sroa.225.0.copyload, %bb.b ], [ @.str.30, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30 ]
  %.sroa.049.0 = phi i64 [ %.sroa.024.0.copyload, %bb.b ], [ 6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30 ]
  %.sroa.052.1 = phi ptr [ %i.t, %bb.b ], [ %.sroa.052.065, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30 ]
  %.sroa.17.1 = phi i64 [ %i.s, %bb.b ], [ %.sroa.17.066, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30 ]
  %.029 = phi i16 [ %.067, %bb.b ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30 ]
  %.1 = phi i16 [ %i.o, %bb.b ], [ %.067, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30 ]
  %i.u = tail call { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE4skipESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EES7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %.sroa.052.1, i64 %.sroa.17.1, i64 1, ptr nonnull @.str.9) ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %i.x = tail call { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE28read_version_script_commandsESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EES7_tbb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.v, i64 %i.w, i64 %.sroa.049.0, ptr %.sroa.6.0, i16 noundef zeroext %.029, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  %i.aa = tail call { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE4skipESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EES7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.y, i64 %i.z, i64 1, ptr nonnull @.str.10) ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 5 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit33
  %.sroa.04.0.copyload = load i64, ptr %i.ab, align 8, !tbaa !30
  %i.ae = icmp eq i64 %.sroa.04.0.copyload, 1
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34, label %bb.d

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34: ; preds = %bb.c
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !32
  %lhsc74 = load i8, ptr %.sroa.25.0.copyload, align 1
  %i.af = icmp eq i8 %lhsc74, 59
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34
  %i.ag = add i64 %i.ac, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34, %bb.d, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit33
  %.sroa.052.2 = phi ptr [ %i.ab, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit33 ], [ %i.ah, %bb.d ], [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34 ]
  %.sroa.17.2 = phi i64 [ 0, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit33 ], [ %i.ag, %bb.d ], [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34 ]
  %i.ai = tail call { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE4skipESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EES7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %.sroa.052.2, i64 %.sroa.17.2, i64 1, ptr nonnull @.str.12) ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.critedge, label %.lr.ph, !llvm.loop !174

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a
  %.sroa.052.0.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.052.065, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.aj, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37 ]
  %.sroa.17.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.17.066, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ 0, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit37 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.052.0.lcssa, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.17.0.lcssa, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress noreturn nounwind
define weak_odr dso_local void @_ZN4mold6ScriptINS_6X86_64EE5errorESt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 %1, ptr %2, ptr nofree noundef align 8 dereferenceable(32) %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %9 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %11 = alloca %"class.std::allocator.63", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !73   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.g = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.f, -1
  %i.k = icmp ugt i64 %i.j, %i.i
  %i.l = add nuw i64 %i.i, 1
  %spec.select.i.i = select i1 %i.k, i64 %i.l, i64 %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %.not13.i.i = icmp eq i64 %i.m, 0
  br i1 %.not13.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.i, label %bb.d, !llvm.loop !175

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1.i.i17 = phi i64 [ %spec.select.i.i, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.m = add i64 %.1.i.i17, -1                    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !41
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.i, label %bb.c, !llvm.loop !175

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.q = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.1.i.i17, %bb.d ] ; 8 uses
  %i.r = icmp ult i64 %i.i, %i.f
  br i1 %i.r, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.i
  %i.s = sub nuw i64 %i.f, %i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.u = tail call ptr @memchr(ptr noundef %i.t, i32 noundef 10, i64 noundef %i.s) #16 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.u, null
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.h                       ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  %or.cond.i = select i1 %.not.i11.i, i1 true, i1 %i.x
  br i1 %or.cond.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i, label %bb.e

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.0.i = phi i64 [ %i.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i ], [ %i.w, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.y = icmp ugt i64 %i.q, %i.f
  br i1 %i.y, label %bb.f, label %_ZN4moldL8get_lineESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i64 noundef %i.q, i64 noundef %i.f) #23
  unreachable

_ZN4moldL8get_lineESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit: ; preds = %bb.e
  %i.z = sub nsw i64 %.0.i, %i.q
  %i.aa = sub nuw i64 %i.f, %i.q
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.q ; 2 uses
  store i64 %.sroa.speculated.i.i, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4moldL8get_lineESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit
  %smax = tail call i64 @llvm.smax.i64(i64 %i.q, i64 1) ; 3 uses
  %min.iters.check = icmp slt i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %smax, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ <i64 1, i64 0>, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi18 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %wide.load = load <2 x i8>, ptr %i.ad, align 1, !tbaa !41
  %wide.load19 = load <2 x i8>, ptr %i.ae, align 1, !tbaa !41
  %i.af = icmp eq <2 x i8> %wide.load, splat (i8 10)
  %i.ag = icmp eq <2 x i8> %wide.load19, splat (i8 10)
  %i.ah = zext <2 x i1> %i.af to <2 x i64>
  %i.ai = zext <2 x i1> %i.ag to <2 x i64>
  %i.aj = add <2 x i64> %vec.phi, %i.ah           ; 2 uses
  %i.ak = add <2 x i64> %vec.phi18, %i.ai         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ak, %i.aj
  %i.am = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %smax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %.lr.ph.preheader, %middle.block
  %.012.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.am, %middle.block ]
  %.0711.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN4moldL8get_lineESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit
  %.0.lcssa = phi i64 [ 1, %_ZN4moldL8get_lineESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit ], [ %i.am, %middle.block ], [ %spec.select, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx119to_stringEl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i64 noundef %.0.lcssa)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.16)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45
  %i.ap = ptrtoint ptr %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.aq = load ptr, ptr %0, align 8, !tbaa !33, !nonnull !34, !align !35
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %9, ptr noundef nonnull align 8 dereferenceable(14448) %i.aq) #16
  %i.ar = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %9, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.as = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.at = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA2_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.as, ptr noundef nonnull align 1 dereferenceable(2) @.str.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.au = add i64 %i.g, 13
  %i.av = add i64 %i.au, %i.ao
  %i.aw = sub i64 %i.av, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.aw, i8 noundef signext 32, ptr noundef nonnull align 1 dereferenceable(1) %11)
  %i.ax = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.ay = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA3_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ax, ptr noundef nonnull align 1 dereferenceable(3) @.str.18)
  %i.az = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %9) #23
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %.012 = phi i64 [ %spec.select, %.lr.ph ], [ %.012.ph, %.lr.ph.preheader20 ]
  %.0711 = phi i64 [ %i.be, %.lr.ph ], [ %.0711.ph, %.lr.ph.preheader20 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0711
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !41
  %i.bc = icmp eq i8 %i.bb, 10
  %i.bd = zext i1 %i.bc to i64
  %spec.select = add nuw nsw i64 %.012, %i.bd     ; 2 uses
  %i.be = add nuw nsw i64 %.0711, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !177
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !42

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.f
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  store i64 %i.c, ptr %i.a, align 8, !tbaa !41
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !41
  store i8 %i.j, ptr %i.i, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

bb.i:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit: ; preds = %._crit_edge.i, %bb.h, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !41
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold6ScriptINS_6X86_64EE20parse_version_scriptEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.323, align 8            ; 4 uses
  %2 = alloca %class.anon.261, align 8            ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 2 uses
  %4 = alloca %"class.std::allocator.63", align 1 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %0, ptr %2, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %2, ptr %1, align 8, !tbaa !26
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !26
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE20parse_version_scriptEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !26
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @__once_proxy) #16 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE20parse_version_scriptEvEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #23
  unreachable

_ZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE20parse_version_scriptEvEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !26
  store ptr null, ptr %i.c, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  %i.m = call { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE19read_version_scriptESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.f, i64 %i.l) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE20parse_version_scriptEvEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit
  %i.p = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.p, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @_ZN4mold6ScriptINS_6X86_64EE5errorESt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr nofree noundef nonnull align 8 dereferenceable(32) %3) #25
  unreachable

bb.d:                                             ; preds = %_ZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE20parse_version_scriptEvEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold6ScriptINS_6X86_64EE18parse_dynamic_listEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.326, align 8            ; 4 uses
  %3 = alloca %class.anon.262, align 8            ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 2 uses
  %5 = alloca %"class.std::allocator.63", align 1 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %3, ptr %2, align 8, !tbaa !26
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !26
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE18parse_dynamic_listEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !26
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @__once_proxy) #16 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE18parse_dynamic_listEvEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #23
  unreachable

_ZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE18parse_dynamic_listEvEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !26
  store ptr null, ptr %i.c, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.m = call { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE4skipESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EES7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr %i.f, i64 %i.l, i64 1, ptr nonnull @.str.9) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %i.p = call { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE26read_dynamic_list_commandsESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EERSt6vectorINS_14DynamicPatternESaISA_EEb(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr %i.n, i64 %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext false) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  %i.s = call { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE4skipESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EES7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr %i.q, i64 %i.r, i64 1, ptr nonnull @.str.10) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = call { ptr, i64 } @_ZN4mold6ScriptINS_6X86_64EE4skipESt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EES7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr %i.t, i64 %i.u, i64 1, ptr nonnull @.str.12) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE18parse_dynamic_listEvEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit
  %i.y = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.y, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %5)
end_hunk_0
begin_hunk_1_@_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE:bb.a
  %i.d = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nuw i64 %.sroa.0.0.copyload.i, 1     ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !42

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !41
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !41
  store i8 %i.j, ptr %i.i, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.0.copyload.i
  store i8 0, ptr %i.l, align 1, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #16
  tail call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  ret void
}

declare void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #17

declare void @__once_proxy() #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE22get_script_output_typeEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !554, !nonnull !34, !align !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  tail call void @_ZN4mold6ScriptINS_6X86_64EE8tokenizeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE19parse_linker_scriptEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !556, !nonnull !34, !align !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  tail call void @_ZN4mold6ScriptINS_6X86_64EE8tokenizeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE20parse_version_scriptEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !558, !nonnull !34, !align !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  tail call void @_ZN4mold6ScriptINS_6X86_64EE8tokenizeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE18parse_dynamic_listEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !560, !nonnull !34, !align !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  tail call void @_ZN4mold6ScriptINS_6X86_64EE8tokenizeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret void
}

declare void @_ZNSt10filesystem8relativeERKNS_7__cxx114pathES3_(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !40
  %i.e = icmp eq ptr %i.a, null
  %i.f = icmp ne i64 %i.c, 0
  %or.cond.i.i.i = and i1 %i.e, %i.f
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 15
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.c, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = add nuw i64 %i.c, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !42

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !44
  store i64 %i.c, ptr %i.d, align 8, !tbaa !41
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.a, align 1, !tbaa !41
  store i8 %i.m, ptr %i.l, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 0, ptr %i.o, align 1, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #16
  tail call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  ret void
}

declare void @_ZN4mold12errno_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #20

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { cold nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !58}
!1 = distinct !{!1, !58}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"p1 _ZTSN4mold7ContextINS_6X86_64EEE", !10, i64 0}
!13 = !{!"p1 _ZTSN4mold13ReaderContextE", !10, i64 0}
!14 = !{!"p1 _ZTSN4mold10MappedFileE", !10, i64 0}
!15 = !{!"_ZTSSt9once_flag", !7, i64 0}
!16 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !10, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implE", !17, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !18, i64 0}
!20 = !{!"_ZTSSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !19, i64 0}
!21 = !{!"_ZTSN4mold6ScriptINS_6X86_64EEE", !12, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !20, i64 32}
!22 = !{!21, !14, i64 16}
!23 = !{!"p1 _ZTSN4mold6ScriptINS_6X86_64EEE", !10, i64 0}
!24 = !{!"_ZTSZN4mold6ScriptINS_6X86_64EE22get_script_output_typeEvEUlvE_", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!10, !10, i64 0}
!27 = !{!17, !16, i64 0}
!28 = !{!17, !16, i64 8}
!29 = !{!"long", !6, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 omnipotent char", !10, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!21, !12, i64 0}
!34 = !{}
!35 = !{i64 8}
!36 = !{!21, !13, i64 8}
!37 = !{!"bool", !6, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!40 = !{!39, !31, i64 0}
!41 = !{!6, !6, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !29, i64 8, !6, i64 16}
!44 = !{!43, !31, i64 0}
!45 = !{!43, !29, i64 8}
!46 = !{!"p1 bool", !10, i64 0}
!47 = !{!"_ZTSZN4mold6ScriptINS_6X86_64EE12resolve_pathESt17basic_string_viewIcSt11char_traitsIcEEbEUlRKNSt7__cxx1112basic_stringIcS5_SaIcEEEE_", !23, i64 0, !46, i64 8}
!48 = !{!47, !23, i64 0}
!49 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"_ZTSZN4mold6ScriptINS_6X86_64EE19parse_linker_scriptEvEUlvE_", !23, i64 0}
!54 = !{!53, !23, i64 0}
!55 = !{!"p1 _ZTSSt4pairIPN4mold6SymbolINS0_6X86_64EEESt7variantIJS4_mEEE", !10, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"p1 _ZTSN4mold6SymbolINS_6X86_64EEE", !10, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"p1 int", !10, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIjSaIjEE", !62, i64 0}
!64 = !{!"_ZTSN4mold13ReaderContextE", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !63, i64 8, !7, i64 32}
!65 = !{i8 0, i8 2}
!66 = !{!60, !59, i64 0}
!67 = !{!60, !59, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!69 = !{!68, !51, i64 8}
!70 = !{!68, !51, i64 0}
!71 = !{!"_ZTSN4mold10MappedFileE", !43, i64 0, !31, i64 32, !29, i64 40, !37, i64 48, !14, i64 56, !14, i64 64, !37, i64 72, !7, i64 76}
!72 = !{!71, !31, i64 32}
!73 = !{!71, !29, i64 40}
!74 = !{!"_ZTSZN4mold6ScriptINS_6X86_64EE20parse_version_scriptEvEUlvE_", !23, i64 0}
!75 = !{!74, !23, i64 0}
!76 = !{!"_ZTSZN4mold6ScriptINS_6X86_64EE18parse_dynamic_listEvEUlvE_", !23, i64 0}
!77 = !{!76, !23, i64 0}
!78 = !{!"p1 _ZTSN4mold14DynamicPatternE", !10, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!17, !16, i64 16}
!81 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!82 = !{!"_ZTSNSt8__detail16__extent_storageILm18446744073709551615EEE", !29, i64 0}
!83 = !{!82, !29, i64 0}
!84 = !{!"_ZTSSt4spanISt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EE", !16, i64 0, !82, i64 8}
!85 = !{!84, !16, i64 0}
!86 = !{!16, !16, i64 0}
!87 = !{!"p1 long", !10, i64 0}
!88 = !{!"_ZTSSt13__atomic_baseImE", !29, i64 0}
!89 = !{!"_ZTSSt6atomicImE", !88, i64 0}
!90 = !{!"_ZTSSt13__atomic_baseIbE", !37, i64 0}
!91 = !{!"_ZTSSt6atomicIbE", !90, i64 0}
!92 = !{!"p1 _ZTSSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS1_EE", !10, i64 0}
!93 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS6_EEEEE"}
!94 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !10, i64 0}
!95 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS3_EEEE", !94, i64 0}
!96 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEEE", !95, i64 0}
!97 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !92, i64 0, !93, i64 8, !96, i64 16, !6, i64 24, !89, i64 48, !89, i64 56, !91, i64 64}
!98 = !{!68, !51, i64 16}
!99 = !{!"vtable pointer", !5, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"_ZTSSi", !29, i64 8}
!102 = !{!94, !94, i64 0}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!97, !92, i64 0}
!105 = !{!"p2 _ZTSN4mold7CounterE", !11, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!107 = !{!106, !105, i64 0}
!108 = !{!106, !105, i64 16}
!109 = !{!12, !12, i64 0}
!110 = !{!13, !13, i64 0}
!111 = !{!15, !7, i64 0}
!112 = distinct !{!112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!113 = distinct !{!113, !112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!114 = distinct !{!114, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!115 = distinct !{!115, !114, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!116 = distinct !{!116, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!117 = distinct !{!117, !116, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!118 = distinct !{!118, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!119 = distinct !{!119, !118, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!120 = distinct !{!120, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!121 = distinct !{!121, !120, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!122 = distinct !{!122, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!123 = distinct !{!123, !122, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!124 = distinct !{!124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!125 = distinct !{!125, !124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!126 = distinct !{!126, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!127 = distinct !{!127, !126, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!128 = distinct !{!128, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!129 = distinct !{!129, !128, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!130 = distinct !{!130, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!131 = distinct !{!131, !130, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!132 = distinct !{!132, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!133 = distinct !{!133, !132, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!134 = distinct !{!134, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!135 = distinct !{!135, !134, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!136 = !{!46, !46, i64 0}
!137 = !{!113}
!138 = !{!115}
!139 = !{!117}
!140 = !{!117, !115}
!141 = !{!119}
!142 = !{!121}
!143 = !{!123}
!144 = !{!125}
!145 = !{!127}
!146 = !{!129}
!147 = !{!131}
!148 = !{!133}
!149 = !{!135}
!150 = distinct !{!150, !"_ZSt19__relocate_object_aISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEES8_SaIS8_EEvPT_PT0_RT1_"}
!151 = distinct !{!151, !150, !"_ZSt19__relocate_object_aISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!152 = distinct !{!152, !150, !"_ZSt19__relocate_object_aISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!153 = distinct !{!153, !58}
!154 = distinct !{!154, !58}
!155 = !{!56, !55, i64 8}
!156 = !{!56, !55, i64 16}
!157 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJPN4mold6SymbolINS2_6X86_64EEEmEEE", !6, i64 0, !6, i64 8}
end_hunk_1
