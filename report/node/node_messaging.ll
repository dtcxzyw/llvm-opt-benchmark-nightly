Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_messaging?download=true
inline.NumInlined: 4628
inline.NumDeleted: 2061
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorIN2v818CompiledWasmModuleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_:bb.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4
  br label %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i.i

_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8
  %i.q = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8              ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i.i
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !42

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.h
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #31 ; 2 uses
  store ptr %i.x, ptr %i.n, align 8
  store i64 %i.s, ptr %i.p, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i.i
  %i.y = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i.i ] ; 3 uses
  switch i64 %i.s, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZSt12construct_atIN2v818CompiledWasmModuleEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = load i8, ptr %i.q, align 1
  store i8 %i.z, ptr %i.y, align 1
  br label %_ZSt12construct_atIN2v818CompiledWasmModuleEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZSt12construct_atIN2v818CompiledWasmModuleEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN2v818CompiledWasmModuleEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.s, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN2v818CompiledWasmModuleESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZSt12construct_atIN2v818CompiledWasmModuleEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %i.ae = phi ptr [ %.pre, %bb.l ], [ %i.ad, %_ZSt12construct_atIN2v818CompiledWasmModuleEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -48
  ret ptr %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6worker7Message24AdoptSharedValueConveyorEON2v819SharedValueConveyorE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !44, !noundef !48
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8
  br i1 %i.d, label %bb.b, label %_ZNSt8optionalIN2v819SharedValueConveyorEE7emplaceIJS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS5_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v819SharedValueConveyorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.a) #29
  br label %_ZNSt8optionalIN2v819SharedValueConveyorEE7emplaceIJS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS5_.exit

_ZNSt8optionalIN2v819SharedValueConveyorEE7emplaceIJS1_EEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS5_.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2v819SharedValueConveyorC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  store i8 1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i16 0, 258) i16 @_ZN4node6worker7Message9SerializeEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEENS5_INS4_5ValueEEERKNS_16MaybeStackBufferIS9_Lm8EEENS5_INS4_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr nonnull %2, ptr %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %4, ptr nofree readonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.393", align 8 ; 4 uses
  %7 = alloca %"class.std::unique_ptr.393", align 8 ; 4 uses
  %8 = alloca %"class.std::vector.388", align 8   ; 9 uses
  %9 = alloca %"class.v8::Maybe.578", align 8     ; 8 uses
  %10 = alloca %"class.node::BaseObjectPtrImpl", align 8 ; 10 uses
  %11 = alloca [2 x %"class.v8::Local.36"], align 16 ; 5 uses
  %12 = alloca [2 x %"class.v8::Local.36"], align 16 ; 5 uses
  %13 = alloca [2 x %"class.v8::Local.36"], align 16 ; 5 uses
  %14 = alloca [2 x %"class.v8::Local.36"], align 16 ; 5 uses
  %15 = alloca [2 x %"class.v8::Local.36"], align 16 ; 5 uses
  %16 = alloca [2 x %"class.v8::Local.36"], align 16 ; 5 uses
  %17 = alloca [2 x %"class.v8::Local.36"], align 16 ; 5 uses
  %18 = alloca [2 x %"class.v8::Local.36"], align 16 ; 5 uses
  %19 = alloca [2 x %"class.v8::Local.36"], align 16 ; 5 uses
  %20 = alloca %"class.v8::HandleScope", align 8  ; 7 uses
  %21 = alloca %"class.node::worker::(anonymous namespace)::SerializerDelegate", align 8 ; 22 uses
  %22 = alloca %"class.v8::ValueSerializer", align 8 ; 9 uses
  %23 = alloca %"class.node::BaseObjectPtrImpl.441", align 8 ; 5 uses
  %24 = alloca %"class.node::BaseObjectPtrImpl", align 8 ; 6 uses
  %25 = alloca %"class.std::shared_ptr.416", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 560
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  store ptr %i.b, ptr %20, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6worker7Message9SerializeEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEENS5_INS4_5ValueEEERKNS_16MaybeStackBufferIS9_Lm8EEENS5_INS4_6ObjectEEEE20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4node6worker12_GLOBAL__N_118SerializerDelegateE, i64 16), ptr %21, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  store i64 -1, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.w = load ptr, ptr %i.a, align 8
  call void @_ZN2v815ValueSerializerC1EPNS_7IsolateEPNS0_8DelegateE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %i.w, ptr noundef nonnull %21) #29
  store ptr %22, ptr %i.q, align 8
  %i.x = load i64, ptr %4, align 8
  %.not385.not = icmp eq i64 %i.x, 0
  br i1 %.not385.not, label %.thread, label %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit.lr.ph

_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit.lr.ph: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 8 uses
  %i.aa = icmp eq ptr %5, null
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 80
  br label %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit

_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit: ; preds = %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit.lr.ph, %bb.bv
  %i.ae = phi i64 [ 0, %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit.lr.ph ], [ %i.js, %bb.bv ]
  %.0389 = phi i32 [ 0, %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit.lr.ph ], [ %i.jr, %bb.bv ]
  %.sroa.0204.0388 = phi ptr [ null, %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit.lr.ph ], [ %.sroa.0204.3264, %bb.bv ] ; 20 uses
  %.sroa.9.0387 = phi ptr [ null, %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit.lr.ph ], [ %.sroa.9.3263, %bb.bv ] ; 8 uses
  %.sroa.17.0386 = phi ptr [ null, %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit.lr.ph ], [ %.sroa.17.3262, %bb.bv ] ; 13 uses
  %i.af = load ptr, ptr %i.y, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 17 uses
  %i.aj = call noundef zeroext i1 @_ZNK2v85Value8IsObjectEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #29
  %i.ak = load ptr, ptr %i.z, align 8             ; 2 uses
  br i1 %i.aj, label %_ZNK2v85MaybeIbE2ToEPb.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.ao = ptrtoint ptr %i.am to i64
  store i64 %i.ao, ptr %19, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aq = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.an, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 14) #29 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.e, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i, !prof !42

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i

_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i: ; preds = %bb.e, %bb.d
  %i.as = ptrtoint ptr %i.aq to i64
  store i64 %i.as, ptr %i.ap, align 8
  %i.at = call fastcc ptr @_ZN4node6worker12_GLOBAL__N_115GetDOMExceptionEN2v85LocalINS2_7ContextEEE(ptr nonnull %2) ; 2 uses
  %.not.i80 = icmp eq ptr %i.at, null
  br i1 %.not.i80, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i
  %i.au = call ptr @_ZNK2v88Function11NewInstanceENS_5LocalINS_7ContextEEEiPNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr nonnull %2, i32 noundef 2, ptr noundef nonnull %19) #29 ; 2 uses
  %.not16.i = icmp eq ptr %i.au, null
  br i1 %.not16.i, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr nonnull %i.au) #29 ; 0 uses
  br label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit

_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit127.thread.thread

_ZNK2v85MaybeIbE2ToEPb.exit:                      ; preds = %_ZNK4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i16 @_ZN2v86Object10HasPrivateENS_5LocalINS_7ContextEEENS1_INS_7PrivateEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr nonnull %2, ptr %i.ax) #29 ; 2 uses
  %i.az = trunc i16 %i.ay to i1
  br i1 %i.az, label %bb.h, label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit127.thread.thread

bb.h:                                             ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit
  %i.ba = and i16 %i.ay, 256
  %.not281 = icmp eq i16 %i.ba, 0
  br i1 %.not281, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.z, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2696
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.bf = ptrtoint ptr %i.bd to i64
  store i64 %i.bf, ptr %18, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bh = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.be, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 14) #29 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.j, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81, !prof !42

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81

_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81: ; preds = %bb.j, %bb.i
  %i.bj = ptrtoint ptr %i.bh to i64
  store i64 %i.bj, ptr %i.bg, align 8
  %i.bk = call fastcc ptr @_ZN4node6worker12_GLOBAL__N_115GetDOMExceptionEN2v85LocalINS2_7ContextEEE(ptr nonnull %2) ; 2 uses
  %.not.i82 = icmp eq ptr %i.bk, null
  br i1 %.not.i82, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84, label %bb.k

bb.k:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81
  %i.bl = call ptr @_ZNK2v88Function11NewInstanceENS_5LocalINS_7ContextEEEiPNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, ptr nonnull %2, i32 noundef 2, ptr noundef nonnull %18) #29 ; 2 uses
  %.not16.i83 = icmp eq ptr %i.bl, null
  br i1 %.not16.i83, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr nonnull %i.bl) #29 ; 0 uses
  br label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84

_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit127.thread.thread

bb.m:                                             ; preds = %bb.h
  %i.bn = call noundef zeroext i1 @_ZNK2v85Value13IsArrayBufferEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #29
  br i1 %i.bn, label %bb.n, label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.bo = call noundef zeroext i1 @_ZNK2v811ArrayBuffer12IsDetachableEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #29
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = call noundef zeroext i1 @_ZNK2v811ArrayBuffer11WasDetachedEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #29
  br i1 %i.bp, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bq = load ptr, ptr %i.z, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2696
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.bu = ptrtoint ptr %i.bs to i64
  store i64 %i.bu, ptr %17, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bw = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.bt, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 14) #29 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.q, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85, !prof !42

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85

_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85: ; preds = %bb.q, %bb.p
  %i.by = ptrtoint ptr %i.bw to i64
  store i64 %i.by, ptr %i.bv, align 8
  %i.bz = call fastcc ptr @_ZN4node6worker12_GLOBAL__N_115GetDOMExceptionEN2v85LocalINS2_7ContextEEE(ptr nonnull %2) ; 2 uses
  %.not.i86 = icmp eq ptr %i.bz, null
  br i1 %.not.i86, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88, label %bb.r

bb.r:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85
  %i.ca = call ptr @_ZNK2v88Function11NewInstanceENS_5LocalINS_7ContextEEEiPNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bz, ptr nonnull %2, i32 noundef 2, ptr noundef nonnull %17) #29 ; 2 uses
  %.not16.i87 = icmp eq ptr %i.ca, null
  br i1 %.not16.i87, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, ptr nonnull %i.ca) #29 ; 0 uses
  br label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88

_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit127.thread.thread

bb.t:                                             ; preds = %bb.o
  %i.cc = icmp eq ptr %.sroa.0204.0388, %.sroa.9.0387 ; 2 uses
  br i1 %i.cc, label %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread, label %.lr.ph.split.split.i.i

.lr.ph.split.split.i.i:                           ; preds = %bb.t, %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.ci, %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i ], [ %.sroa.0204.0388, %bb.t ] ; 2 uses
  %i.cd = load ptr, ptr %.sroa.01.05.i.i, align 8 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.i.i

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.i.i: ; preds = %.lr.ph.split.split.i.i
  %i.cf = load i64, ptr %i.cd, align 8
  %i.cg = load i64, ptr %i.ai, align 8
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.u, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i: ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.i.i, %.lr.ph.split.split.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %.sroa.9.0387
  br i1 %i.cj, label %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread, label %.lr.ph.split.split.i.i, !llvm.loop !81

bb.u:                                             ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.i.i
  %i.ck = load ptr, ptr %i.a, align 8
  %i.cl = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.ck, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef 44) #29 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.v, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !42

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.u, %bb.v
  %i.cn = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.co = ptrtoint ptr %i.cl to i64
  store i64 %i.co, ptr %16, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cq = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.cn, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 14) #29 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.w, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89, !prof !42

bb.w:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89

_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89: ; preds = %bb.w, %_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.cs = ptrtoint ptr %i.cq to i64
  store i64 %i.cs, ptr %i.cp, align 8
  %i.ct = call fastcc ptr @_ZN4node6worker12_GLOBAL__N_115GetDOMExceptionEN2v85LocalINS2_7ContextEEE(ptr nonnull %2) ; 2 uses
  %.not.i90 = icmp eq ptr %i.ct, null
  br i1 %.not.i90, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92, label %bb.x

bb.x:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89
  %i.cu = call ptr @_ZNK2v88Function11NewInstanceENS_5LocalINS_7ContextEEEiPNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ct, ptr nonnull %2, i32 noundef 2, ptr noundef nonnull %16) #29 ; 2 uses
  %.not16.i91 = icmp eq ptr %i.cu, null
  br i1 %.not16.i91, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr nonnull %i.cu) #29 ; 0 uses
  br label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92

_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit127.thread.thread

_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread: ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i, %bb.t
  %i.cw = ptrtoint ptr %.sroa.9.0387 to i64       ; 2 uses
  %i.cx = ptrtoint ptr %.sroa.0204.0388 to i64    ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = ashr exact i64 %i.cy, 3                 ; 4 uses
  %i.da = trunc i64 %i.cz to i32
  %.not.i.i.i = icmp eq ptr %.sroa.9.0387, %.sroa.17.0386
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread
  store i64 %i.ah, ptr %.sroa.9.0387, align 8
  br label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit127.thread256

bb.aa:                                            ; preds = %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread
  %i.db = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.db, label %bb.ab, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #30
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.aa
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cz ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.cz
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975)
  %i.df = select i1 %i.dd, i64 1152921504606846975, i64 %i.de ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #31 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cy
  store i64 %i.ah, ptr %i.di, align 8
  br i1 %i.cc, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dj = ptrtoaddr ptr %i.dh to i64
  %i.dk = add i64 %i.cw, -8
  %i.dl = sub i64 %i.dk, %i.cx                    ; 2 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dl, 24
  %i.do = sub i64 %i.cx, %i.dj
  %diff.check = icmp ugt i64 %i.do, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader704, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dn, 4611686018427387900     ; 3 uses
  %i.dp = shl i64 %n.vec, 3                       ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dh, i64 %i.dp  ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.0204.0388, i64 %i.dp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dh, i64 %i.ds ; 2 uses
  %next.gep673 = getelementptr i8, ptr %.sroa.0204.0388, i64 %i.ds ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.dt = getelementptr i8, ptr %next.gep673, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep673, align 8, !alias.scope !103, !noalias !102
  %wide.load674 = load <2 x i64>, ptr %i.dt, align 8, !alias.scope !103, !noalias !102
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !102, !noalias !103
  store <2 x i64> %wide.load674, ptr %i.du, align 8, !alias.scope !102, !noalias !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader704

.lr.ph.i.i.i.i.i.i.i.preheader704:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0204.0388, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader704, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader704 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader704 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.dw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !103, !noalias !102
  store i64 %i.dw, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !102, !noalias !103
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dx, %.sroa.9.0387
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !86

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dh, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.dq, %middle.block ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.0204.0388, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.0388, i64 noundef %i.cy) #32
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  br label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit127.thread256

_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit127.thread256: ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.z
  %.sroa.17.5 = phi ptr [ %i.dz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.17.0386, %bb.z ]
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.9.0387, %bb.z ]
  %.sroa.0204.5 = phi ptr [ %i.dh, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.0204.0388, %bb.z ]
  %.sroa.9.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8
  call void @_ZN2v815ValueSerializer19TransferArrayBufferEjNS_5LocalINS_11ArrayBufferEEE(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %i.da, ptr nonnull %i.ai) #29
  br label %bb.bv

bb.ad:                                            ; preds = %bb.m
  br i1 %i.aa, label %bb.aj, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_6ObjectEEES5_EEbRKT_RKT0_.exit

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_6ObjectEEES5_EEbRKT_RKT0_.exit: ; preds = %bb.ad
  %i.ea = load i64, ptr %i.ai, align 8
  %i.eb = load i64, ptr %5, align 8
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_6ObjectEEES5_EEbRKT_RKT0_.exit
  %i.ed = load ptr, ptr %i.a, align 8
  %i.ee = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.ed, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 34) #29 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.af, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !42

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.ae, %bb.af
  %i.eg = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.eh = ptrtoint ptr %i.ee to i64
  store i64 %i.eh, ptr %15, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ej = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.eg, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 14) #29 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ag, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93, !prof !42

bb.ag:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93

_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93: ; preds = %bb.ag, %_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.el = ptrtoint ptr %i.ej to i64
  store i64 %i.el, ptr %i.ei, align 8
  %i.em = call fastcc ptr @_ZN4node6worker12_GLOBAL__N_115GetDOMExceptionEN2v85LocalINS2_7ContextEEE(ptr nonnull %2) ; 2 uses
  %.not.i94 = icmp eq ptr %i.em, null
  br i1 %.not.i94, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96, label %bb.ah

bb.ah:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93
  %i.en = call ptr @_ZNK2v88Function11NewInstanceENS_5LocalINS_7ContextEEEiPNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.em, ptr nonnull %2, i32 noundef 2, ptr noundef nonnull %15) #29 ; 2 uses
  %.not16.i95 = icmp eq ptr %i.en, null
  br i1 %.not16.i95, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.eg, ptr nonnull %i.en) #29 ; 0 uses
  br label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96

_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit127.thread.thread

bb.aj:                                            ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_6ObjectEEES5_EEbRKT_RKT0_.exit, %bb.ad
  %i.ep = load ptr, ptr %i.z, align 8
  %i.eq = call noundef i32 @_ZNK2v86Object18InternalFieldCountEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #29
  %i.er = icmp slt i32 %i.eq, 2
  br i1 %i.er, label %_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.et = add i64 %i.es, -1
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = add i64 %i.ev, 11
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load i16, ptr %i.ex, align 2            ; 2 uses
  %i.ez = icmp eq i16 %i.ey, 1040
  %i.fa = add i16 %i.ey, -1057
  %i.fb = icmp ult i16 %i.fa, 1002
  %i.fc = or i1 %i.ez, %i.fb
  br i1 %i.fc, label %bb.al, label %bb.am, !prof !45

bb.al:                                            ; preds = %bb.ak
  %i.fd = add i64 %i.es, 31
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = inttoptr i64 %i.ff to ptr
  br label %_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit

bb.am:                                            ; preds = %bb.ak
  %i.fh = call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i32 noundef 0) #29
  br label %_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit

_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit: ; preds = %bb.al, %bb.am
  %.0.i.i = phi ptr [ %i.fg, %bb.al ], [ %i.fh, %bb.am ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 4768
  %i.fj = load ptr, ptr %i.fi, align 8
end_hunk_0
