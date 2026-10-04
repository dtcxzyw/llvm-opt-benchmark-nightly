Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstraintGraph?download=true
inline.NumInlined: 1482
inline.NumDeleted: 705
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4Luau4dumpB5cxx11ENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEE:bb.a
  store i64 0, ptr %i.f, align 8, !tbaa !173, !noalias !348
  store i8 0, ptr %i.e, align 8, !tbaa !73, !noalias !348
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @"_ZZN4Luau5visitINS_10overloadedIJZNS_12_GLOBAL__N_18toStringB5cxx11ENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEEE3$_0ZNS2_8toStringB5cxx11ESD_E3$_1ZNS2_8toStringB5cxx11ESD_E3$_2EEEJS6_S9_SC_EEEDaOT_RNS3_IJDpT0_EEEE10tableVisitB5cxx11", i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27, !noalias !348
  invoke void %i.i(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.d, !noalias !348

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !172, !alias.scope !348
  %i.k = load ptr, ptr %2, align 8, !tbaa !72, !noalias !348 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.f, align 8, !tbaa !173, !noalias !348 ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.o, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.k, ptr %0, align 8, !tbaa !72, !alias.scope !348
  %i.p = load i64, ptr %i.e, align 8, !tbaa !73, !noalias !348
  store i64 %i.p, ptr %i.j, align 8, !tbaa !73, !alias.scope !348
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !173, !noalias !348
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8, !tbaa !72, !noalias !348 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !73, !noalias !348
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28, !noalias !348
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !348
  %i.v = load i32, ptr %4, align 8, !tbaa !23
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEE9tableDtorE, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  invoke void %i.y(ptr noundef nonnull %i.b)
          to label %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit2 unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.z = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !173, !alias.scope !348
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !346
  %i.ab = load i32, ptr %4, align 8, !tbaa !23
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEE9tableDtorE, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  invoke void %i.ae(ptr noundef nonnull %i.b)
          to label %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #26
  unreachable

_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit: ; preds = %bb.e
  %i.ah = load ptr, ptr %0, align 8, !tbaa !72
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.ah) ; 0 uses
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9dotEscapeERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.61, i64 noundef 1) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !173  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not18 = icmp samesign eq i64 %i.e, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.61, i64 noundef 1) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.m
  %.sroa.015.019 = phi ptr [ %i.y, %bb.m ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = load i8, ptr %.sroa.015.019, align 1, !tbaa !73 ; 3 uses
  switch i8 %i.h, label %bb.j [
    i8 34, label %bb.b
    i8 92, label %bb.c
    i8 10, label %bb.d
    i8 60, label %bb.e
    i8 62, label %bb.f
    i8 123, label %bb.g
    i8 125, label %bb.h
    i8 124, label %bb.i
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.62, i64 noundef 2) ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.63, i64 noundef 2) ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.64, i64 noundef 2) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.65, i64 noundef 2) ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.66, i64 noundef 2) ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %.lr.ph
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.67, i64 noundef 2) ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.68, i64 noundef 2) ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.69, i64 noundef 2) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.h, ptr %i.a, align 1, !tbaa !73
  %i.q = load ptr, ptr %0, align 8, !tbaa !64
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !349
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.l:                                             ; preds = %bb.j
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.h) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau15ConstraintGraph4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::Variant", align 8     ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"struct.Luau::overloaded.130", align 1 ; 3 uses
  %4 = alloca %"struct.Luau::ConstraintList::Iterator", align 8 ; 6 uses
  %5 = alloca %"struct.Luau::ConstraintList::Iterator", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.Luau::overloaded.130", align 1 ; 3 uses
  %8 = alloca %"struct.std::pair.91", align 8     ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.Luau::Variant", align 8    ; 4 uses
  %11 = alloca %"class.Luau::Variant", align 8    ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.Luau::Variant", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !79   ; 4 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEEPNS_14ConstraintListENS_23HashBlockedConstraintIdESt8equal_toISB_EE5beginEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.04.i.i ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23
  %i.k = icmp eq i32 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, %i.h
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %_ZN4Luau12DenseHashMapINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEEPNS_14ConstraintListENS_23HashBlockedConstraintIdESt8equal_toISB_EE5beginEv.exit

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.c
  br i1 %exitcond.not.i.i, label %._crit_edge173, label %bb.b, !llvm.loop !350

_ZN4Luau12DenseHashMapINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEEPNS_14ConstraintListENS_23HashBlockedConstraintIdESt8equal_toISB_EE5beginEv.exit: ; preds = %bb.b, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %.04.i.i, %bb.b ] ; 2 uses
  %.not170 = icmp eq i64 %.0.lcssa.i.i, %i.c
  br i1 %.not170, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %_ZN4Luau12DenseHashMapINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEEPNS_14ConstraintListENS_23HashBlockedConstraintIdESt8equal_toISB_EE5beginEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.d

._crit_edge173:                                   ; preds = %bb.c, %_ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit, %_ZN4Luau12DenseHashMapINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEEPNS_14ConstraintListENS_23HashBlockedConstraintIdESt8equal_toISB_EE5beginEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph172, %_ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit
  %.sroa.7.0171 = phi i64 [ %.0.lcssa.i.i, %.lr.ph172 ], [ %.lcssa175, %_ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.sroa.7.0171 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !23 ; 3 uses
  store i32 %i.ak, ptr %8, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27 ; 2 uses
  store ptr %i.am, ptr %i.q, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !364
  store ptr %i.ao, ptr %i.r, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store i32 %i.ak, ptr %10, align 8, !tbaa !23
  store ptr %i.am, ptr %i.s, align 8, !tbaa !27
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !365
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !367
  store ptr %i.t, ptr %6, align 8, !tbaa !172, !noalias !367
  store i64 0, ptr %i.u, align 8, !tbaa !173, !noalias !367
  store i8 0, ptr %i.t, align 8, !tbaa !73, !noalias !367
  %i.ap = sext i32 %i.ak to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr @"_ZZN4Luau5visitINS_10overloadedIJZNS_12_GLOBAL__N_18toStringB5cxx11ENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEEE3$_0ZNS2_8toStringB5cxx11ESD_E3$_1ZNS2_8toStringB5cxx11ESD_E3$_2EEEJS6_S9_SC_EEEDaOT_RNS3_IJDpT0_EEEE10tableVisitB5cxx11", i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27, !noalias !367
  invoke void %i.ar(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.s)
          to label %bb.e unwind label %bb.g, !noalias !367

bb.e:                                             ; preds = %bb.d
  store ptr %i.v, ptr %9, align 8, !tbaa !172, !alias.scope !367
  %i.as = load ptr, ptr %6, align 8, !tbaa !72, !noalias !367 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.t
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.au = load i64, ptr %i.u, align 8, !tbaa !173, !noalias !367 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.aw, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.as, ptr %9, align 8, !tbaa !72, !alias.scope !367
  %i.ax = load i64, ptr %i.t, align 8, !tbaa !73, !noalias !367
  store i64 %i.ax, ptr %i.v, align 8, !tbaa !73, !alias.scope !367
  %.pre.i.i = load i64, ptr %i.u, align 8, !tbaa !173, !noalias !367
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %6, align 8, !tbaa !72, !noalias !367 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.t
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.g
  %i.bb = load i64, ptr %i.t, align 8, !tbaa !73, !noalias !367
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #28, !noalias !367
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !367
  %i.bd = load i32, ptr %10, align 8, !tbaa !23
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEE9tableDtorE, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27
  invoke void %i.bg(ptr noundef nonnull %i.s)
          to label %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit30 unwind label %bb.m

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.bh = phi i64 [ %i.au, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  store i64 %i.bh, ptr %i.w, align 8, !tbaa !173, !alias.scope !367
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !365
  %i.bi = load i32, ptr %10, align 8, !tbaa !23
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEE9tableDtorE, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27
  invoke void %i.bl(ptr noundef nonnull %i.s)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.r, align 8, !tbaa !83  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.bo, ptr %5, align 8, !tbaa !83
  store i64 0, ptr %i.x, align 8, !tbaa !96
  call void @_ZN4Luau14ConstraintList8Iterator24advanceUntilPresentOrEndEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.fca.0.load.i = load ptr, ptr %5, align 8      ; 8 uses
  %.fca.1.load.i = load i64, ptr %i.x, align 8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !99
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !100
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 4
  store ptr %i.bo, ptr %4, align 8, !tbaa !83
  store i64 %i.bw, ptr %i.y, align 8, !tbaa !96
  call void @_ZN4Luau14ConstraintList8Iterator24advanceUntilPresentOrEndEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %.fca.0.load.i26 = load ptr, ptr %4, align 8
  %.fca.1.load.i28 = load i64, ptr %i.y, align 8  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bx = icmp ne ptr %.fca.0.load.i, %.fca.0.load.i26 ; 2 uses
  %i.by = icmp ne i64 %.fca.1.load.i, %.fca.1.load.i28
  %.not3.i168 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %.not3.i168, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.fca.0.load.i, i64 48 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.fca.0.load.i, i64 56 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.fca.0.load.i, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.fca.0.load.i, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %.fca.0.load.i, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %.fca.0.load.i, i64 8
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN4Luau14ConstraintList8IteratorppEv.exit, %bb.j
  %i.cf = load ptr, ptr %9, align 8, !tbaa !72    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.v
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.ch = load i64, ptr %i.v, align 8, !tbaa !73
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.cj = load i32, ptr %8, align 8, !tbaa !23
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEE9tableDtorE, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !27
  invoke void %i.cm(ptr noundef nonnull %i.q)
          to label %_ZNSt4pairIKN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEPKNS0_10ConstraintEEEEPNS0_14ConstraintListEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #26
  unreachable

_ZNSt4pairIKN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEPKNS0_10ConstraintEEEEPNS0_14ConstraintListEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !79
  %i.cq = add i64 %.sroa.7.0171, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cq) ; 3 uses
  %i.cr = add i64 %umax, -1                       ; 2 uses
  %exitcond.not209 = icmp eq i64 %.sroa.7.0171, %i.cr
  br i1 %exitcond.not209, label %_ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %_ZNSt4pairIKN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEPKNS0_10ConstraintEEEEPNS0_14ConstraintListEED2Ev.exit
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.ct = load i32, ptr %i.ag, align 8, !tbaa !23
  %i.cu = load ptr, ptr %i.ah, align 8
  br label %.lr.ph210

bb.l:                                             ; preds = %.lr.ph210
  %exitcond.not = icmp eq i64 %i.cw, %i.cr
  br i1 %exitcond.not, label %_ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit, label %.lr.ph210, !llvm.loop !355

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %bb.l
  %i.cv = phi i64 [ %i.cw, %bb.l ], [ %.sroa.7.0171, %.lr.ph210.preheader ]
  %i.cw = add i64 %i.cv, 1                        ; 4 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !23
  %i.cz = icmp eq i32 %i.cy, %i.ct
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = icmp eq ptr %i.db, %i.cu
  %i.dd = select i1 %i.cz, i1 %i.dc, i1 false
  br i1 %i.dd, label %bb.l, label %._ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit_crit_edge211, !llvm.loop !355

._ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit_crit_edge211: ; preds = %.lr.ph210
  br label %_ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit, !llvm.loop !355

_ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit: ; preds = %bb.l, %._ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit_crit_edge211, %_ZNSt4pairIKN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEPKNS0_10ConstraintEEEEPNS0_14ConstraintListEED2Ev.exit
  %.lcssa175 = phi i64 [ %umax, %_ZNSt4pairIKN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEPKNS0_10ConstraintEEEEPNS0_14ConstraintListEED2Ev.exit ], [ %i.cw, %._ZN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EE8iteratorppEv.exit_crit_edge211 ], [ %umax, %bb.l ] ; 2 uses
  %.not = icmp eq i64 %.lcssa175, %i.c
  br i1 %.not, label %._crit_edge173, label %bb.d

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #26
  unreachable

end_hunk_0
