Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/frame-states?download=true
inline.NumInlined: 188
inline.NumDeleted: 97
begin_hunk_0_@_ZN2v88internal8compilerneERKNS1_14FrameStateInfoES4_:bb.a

_ZN2v88internal8compilereqERKNS1_14FrameStateInfoES4_.exit: ; preds = %_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit8.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.av = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ true, %_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit8.i ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ %i.au, %bb.m ]
  ret i1 %i.av
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal8compiler10hash_valueERKNS1_14FrameStateInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8
  br label %_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit

_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i3 = load i64, ptr %i.f, align 8 ; 2 uses
  %i.g = xor i32 %i.e, -1
  %i.h = shl i32 %i.e, 15
  %i.i = add i32 %i.h, %i.g                       ; 2 uses
  %i.j = lshr i32 %i.i, 12
  %i.k = xor i32 %i.j, %i.i
  %i.l = mul i32 %i.k, 5                          ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = xor i32 %i.m, %i.l
  %i.o = mul i32 %i.n, 2057                       ; 2 uses
  %i.p = lshr i32 %i.o, 16
  %i.q = xor i32 %i.p, %i.o
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %i.r, -4132994306676758123       ; 2 uses
  %i.t = lshr i64 %i.s, 47
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 3866779316627607737
  %i.w = xor i32 %.sroa.0.0.copyload.i, -1
  %i.x = shl i32 %.sroa.0.0.copyload.i, 15
  %i.y = add i32 %i.x, %i.w                       ; 2 uses
  %i.z = lshr i32 %i.y, 12
  %i.aa = xor i32 %i.z, %i.y
  %i.ab = mul i32 %i.aa, 5                        ; 2 uses
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = mul i32 %i.ad, 2057                     ; 2 uses
  %i.af = lshr i32 %i.ae, 16
  %i.ag = xor i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul i64 %i.ah, -4132994306676758123     ; 2 uses
  %i.aj = lshr i64 %i.ai, 47
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, -4132994306676758123
  %i.am = xor i64 %i.al, %i.v
  %i.an = mul i64 %i.am, -4132994306676758123
  %i.ao = xor i64 %.sroa.0.0.copyload.i3, -1
  %i.ap = shl i64 %.sroa.0.0.copyload.i3, 21
  %i.aq = add i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 24
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, 265                      ; 2 uses
  %i.au = lshr i64 %i.at, 14
  %i.av = xor i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, 21                       ; 2 uses
  %i.ax = lshr i64 %i.aw, 28
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, 8398540807049701781      ; 2 uses
  %i.ba = lshr i64 %i.az, 47
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, -4132994306676758123
  %i.bd = xor i64 %i.an, %i.bc
  %i.be = mul i64 %i.bd, -4132994306676758123
  ret i64 %i.be
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_14FrameStateTypeE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  switch i32 %1, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 6, label %bb.g
    i32 5, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 17) #11 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 23) #11 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 21) #11 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 21) #11 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 26) #11 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 26) #11 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 37) #11 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 13) #11 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11, i64 noundef 37) #11 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 48) #11 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_14FrameStateInfoE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8
  br label %_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit

_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_14FrameStateTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.e) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 2) #11 ; 0 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_14BytecodeOffsetE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0.0.copyload.i) #11 ; 4 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.13, i64 noundef 2) #11 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i9 = load i64, ptr %i.j, align 8 ; 2 uses
  %i.k = icmp eq i64 %.sroa.0.0.copyload.i9, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str, i64 noundef 6) #11 ; 0 uses
  br label %_ZN2v88internal8compilerlsERSoRKNS1_23OutputFrameStateCombineE.exit

bb.d:                                             ; preds = %_ZNK2v88internal8compiler14FrameStateInfo4typeEv.exit
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1, i64 noundef 7) #11 ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %.sroa.0.0.copyload.i9) #11
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.2, i64 noundef 1) #11 ; 0 uses
  br label %_ZN2v88internal8compilerlsERSoRKNS1_23OutputFrameStateCombineE.exit

_ZN2v88internal8compilerlsERSoRKNS1_23OutputFrameStateCombineE.exit: ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK2v88internal11MaybeHandleINS0_18SharedFunctionInfoEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %_ZNK2v88internal8compiler14FrameStateInfo11shared_infoEv.exit

_ZNK2v88internal8compiler14FrameStateInfo11shared_infoEv.exit: ; preds = %_ZN2v88internal8compilerlsERSoRKNS1_23OutputFrameStateCombineE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.r, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_18SharedFunctionInfoEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler14FrameStateInfo11shared_infoEv.exit
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 2) #11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.t = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  store i64 %i.t, ptr %2, align 8
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %_ZNK2v88internal11MaybeHandleINS0_18SharedFunctionInfoEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_18SharedFunctionInfoEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %_ZN2v88internal8compilerlsERSoRKNS1_23OutputFrameStateCombineE.exit, %_ZNK2v88internal8compiler14FrameStateInfo11shared_infoEv.exit, %bb.e
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_14BytecodeOffsetE(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext range(i8 0, 3) i8 @_ZN2v88internal8compiler28DeoptimizerParameterCountForENS1_26ContinuationFrameStateModeE(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #12
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %switch.idx.cast = trunc nuw i32 %0 to i8
  ret i8 %switch.idx.cast
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler39CreateStubBuiltinContinuationFrameStateEPNS1_7JSGraphENS0_7BuiltinEPNS1_4NodeEPKS6_iS6_NS1_26ContinuationFrameStateModeEPKNS0_4wasm12CanonicalSigE(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %8 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %i.a = icmp eq i32 %1, 715
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 4, %bb.a ], [ 5, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1144) %0) #11
  %i.b = load ptr, ptr %8, align 8
  %i.c = call fastcc ptr @_ZN2v88internal8compiler12_GLOBAL__N_141CreateBuiltinContinuationFrameStateCommonEPNS1_7JSGraphENS1_14FrameStateTypeENS0_7BuiltinEPNS1_4NodeES8_PKS8_iS8_NS0_6HandleINS0_18SharedFunctionInfoEEEPKNS0_4wasm12CanonicalSigE(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %1, ptr noundef %i.b, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i64 0, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal8compiler12_GLOBAL__N_141CreateBuiltinContinuationFrameStateCommonEPNS1_7JSGraphENS1_14FrameStateTypeENS0_7BuiltinEPNS1_4NodeES8_PKS8_iS8_NS0_6HandleINS0_18SharedFunctionInfoEEEPKNS0_4wasm12CanonicalSigE(ptr noundef %0, i32 noundef range(i32 4, 10) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i64 %8, ptr noundef %9) unnamed_addr #1 {
bb.a:
  %10 = alloca %"struct.std::array", align 8      ; 9 uses
  %11 = alloca %"class.v8::internal::TNode.81", align 8 ; 2 uses
  %12 = alloca %"class.v8::internal::TNode.81", align 8 ; 2 uses
  %i.a = inttoptr i64 %8 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11StateValuesEiNS1_15SparseInputMaskE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef %6, i32 0) #11
  %i.f = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef %i.e, i32 noundef %6, ptr noundef %5, i1 noundef zeroext false) #11
  %i.g = tail call i32 @_ZN2v88internal8Builtins29GetContinuationBytecodeOffsetENS0_7BuiltinE(i32 noundef %2) #11
  %.not = icmp eq ptr %9, null
  %i.h = trunc i32 %6 to i16                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder36CreateJSToWasmFrameStateFunctionInfoENS1_14FrameStateTypeEtiNS0_6HandleINS0_18SharedFunctionInfoEEEPKNS0_4wasm12CanonicalSigE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef %1, i16 noundef zeroext %i.h, i32 noundef 0, ptr %i.a, ptr noundef nonnull %9) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder28CreateFrameStateFunctionInfoENS1_14FrameStateTypeEttiNS0_6HandleINS0_18SharedFunctionInfoEEENS4_INS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef %1, i16 noundef zeroext %i.h, i16 noundef zeroext 0, i32 noundef 0, ptr %i.a, i64 0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder10FrameStateENS0_14BytecodeOffsetENS1_23OutputFrameStateCombineEPKNS1_22FrameStateFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i32 %i.g, i64 -1, ptr noundef %i.k) #11
  call void @_ZN2v88internal8compiler7JSGraph16EmptyStateValuesEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.81") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1144) %0) #11
  call void @_ZN2v88internal8compiler7JSGraph16EmptyStateValuesEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.81") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1144) %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr %i.f, ptr %10, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.n = load ptr, ptr %11, align 8
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = load ptr, ptr %12, align 8
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %7, ptr %i.s, align 8
  %i.t = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef %i.l, i32 noundef 6, ptr noundef nonnull %10, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  ret ptr %i.t
}

declare void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode") align 8, ptr noundef nonnull align 8 dereferenceable(1144)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler45CreateJSWasmCallBuiltinContinuationFrameStateEPNS1_7JSGraphEPNS1_4NodeES5_PKNS0_4wasm12CanonicalSigE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal8compiler39CreateStubBuiltinContinuationFrameStateEPNS1_7JSGraphENS0_7BuiltinEPNS1_4NodeEPKS6_iS6_NS1_26ContinuationFrameStateModeEPKNS0_4wasm12CanonicalSigE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #12
  unreachable

_ZN2v88internal8compiler39CreateStubBuiltinContinuationFrameStateEPNS1_7JSGraphENS0_7BuiltinEPNS1_4NodeEPKS6_iS6_NS1_26ContinuationFrameStateModeEPKNS0_4wasm12CanonicalSigE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1144) %0) #11
  %i.a = load ptr, ptr %4, align 8
  %i.b = call fastcc noundef ptr @_ZN2v88internal8compiler12_GLOBAL__N_141CreateBuiltinContinuationFrameStateCommonEPNS1_7JSGraphENS1_14FrameStateTypeENS0_7BuiltinEPNS1_4NodeES8_PKS8_iS8_NS0_6HandleINS0_18SharedFunctionInfoEEEPKNS0_4wasm12CanonicalSigE(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 715, ptr noundef %i.a, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef %2, i64 0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler45CreateJavaScriptBuiltinContinuationFrameStateEPNS1_7JSGraphENS1_21SharedFunctionInfoRefENS0_7BuiltinEPNS1_4NodeES7_PKS7_iS7_NS1_26ContinuationFrameStateModeE(ptr noundef %0, ptr %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #1 {
bb.a:
  %9 = alloca %"struct.std::array", align 8       ; 9 uses
  %10 = alloca %"class.v8::internal::TNode.81", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::TNode.81", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::compiler::SharedFunctionInfoRef", align 8 ; 2 uses
  %13 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  store ptr %1, ptr %12, align 8
  %i.a = tail call noundef i32 @_ZN2v88internal8Builtins22GetStackParameterCountENS0_7BuiltinE(i32 noundef %2) #11
  %i.b = sitofp i32 %i.a to double
  %i.c = tail call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleEd(ptr noundef nonnull align 8 dereferenceable(1144) %0, double noundef %i.b) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %13, ptr noundef nonnull align 8 dereferenceable(1144) %0) #11
  %i.d = load ptr, ptr %13, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.e = add nsw i32 %6, 3                        ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp slt i32 %6, -3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit.thread, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit: ; preds = %bb.c
  %i.h = shl nuw nsw i64 %i.f, 3
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #13 ; 5 uses
  %i.j = icmp slt i32 %6, 0
  br i1 %i.j, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit.thread, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit19

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit.thread: ; preds = %bb.c, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #12
  unreachable

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit19: ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not96 = icmp eq i32 %6, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit19
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit19
  %.sroa.0.0.lcssa = phi ptr [ %i.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit19 ], [ %.sroa.0.6, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44 ] ; 5 uses
  %.sroa.20.0.lcssa = phi ptr [ %i.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit19 ], [ %.sroa.20.6, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44 ] ; 4 uses
  %.sroa.43.0.lcssa = phi ptr [ %i.k, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit19 ], [ %.sroa.43.6, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44 ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.20.0.lcssa, %.sroa.43.0.lcssa
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store ptr %3, ptr %.sroa.20.0.lcssa, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit

bb.e:                                             ; preds = %._crit_edge
  %i.l = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.m = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.f, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #12
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #13 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %3, ptr %i.w, align 8
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.g, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %.sroa.0.0.lcssa, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.n) #14
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %.sroa.0.3 = phi ptr [ %i.v, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.0.0.lcssa, %bb.d ] ; 5 uses
  %.pn = phi ptr [ %i.w, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.20.0.lcssa, %bb.d ] ; 2 uses
  %.sroa.43.3 = phi ptr [ %i.y, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.43.0.lcssa, %bb.d ] ; 3 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %.sroa.20.3, %.sroa.43.3
  br i1 %.not.i20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit
  store ptr %i.d, ptr %.sroa.20.3, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit27

bb.j:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit
  %i.aa = ptrtoint ptr %.sroa.43.3 to i64
  %i.ab = ptrtoint ptr %.sroa.0.3 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 6 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.k, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i21

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #12
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i21: ; preds = %bb.j
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i22 = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i22, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i23 = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %.not.i.i.i23)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #13 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store ptr %i.d, ptr %i.al, align 8
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.l, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i24

bb.l:                                             ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i21
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %.sroa.0.3, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i24

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i24: ; preds = %bb.l, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i21
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.not.i17.i.i25 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i17.i.i25, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i26, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i24
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.ac) #14
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i26

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i26: ; preds = %bb.m, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i24
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit27

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit27: ; preds = %bb.i, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i26
  %.sroa.0.4 = phi ptr [ %i.ak, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i26 ], [ %.sroa.0.3, %bb.i ] ; 5 uses
  %.sroa.20.4 = phi ptr [ %i.an, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i26 ], [ %i.z, %bb.i ] ; 4 uses
  %.sroa.43.4 = phi ptr [ %i.ao, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i26 ], [ %.sroa.43.3, %bb.i ] ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.20.4, %.sroa.43.4
  br i1 %.not.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit27
  store ptr %i.c, ptr %.sroa.20.4, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit27
  %i.ap = ptrtoint ptr %.sroa.20.4 to i64
  %i.aq = ptrtoint ptr %.sroa.0.4 to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.p, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i29

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #12
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i29: ; preds = %bb.o
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i30 = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i30, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i31)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #13 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  store ptr %i.c, ptr %i.ba, align 8
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.q, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i32

bb.q:                                             ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i29
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %.sroa.0.4, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i32

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i32: ; preds = %bb.q, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i29
  %.not.i17.i.i33 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i17.i.i33, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i34, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i32
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.ar) #14
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i34

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i34: ; preds = %bb.r, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i32
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit: ; preds = %bb.n, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i34
  %.sroa.0.5 = phi ptr [ %i.az, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i34 ], [ %.sroa.0.4, %bb.n ] ; 3 uses
  %.pn85 = phi ptr [ %i.ba, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i34 ], [ %.sroa.20.4, %bb.n ]
  %.sroa.43.5 = phi ptr [ %i.bc, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i34 ], [ %.sroa.43.4, %bb.n ]
  %.sroa.20.5 = getelementptr inbounds nuw i8, ptr %.pn85, i64 8
  %i.bd = icmp eq i32 %8, 2
  %i.be = select i1 %i.bd, i32 9, i32 8
  %i.bf = ptrtoint ptr %.sroa.20.5 to i64
  %i.bg = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 3                 ; 2 uses
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = call ptr @_ZNK2v88internal8compiler21SharedFunctionInfoRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.bl = load ptr, ptr %0, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11StateValuesEiNS1_15SparseInputMaskE(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i32 noundef %i.bj, i32 0) #11
  %i.bp = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef %i.bo, i32 noundef %i.bj, ptr noundef nonnull %.sroa.0.5, i1 noundef zeroext false) #11
  %i.bq = call i32 @_ZN2v88internal8Builtins29GetContinuationBytecodeOffsetENS0_7BuiltinE(i32 noundef %2) #11
  %i.br = trunc i64 %i.bi to i16
  %i.bs = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder28CreateFrameStateFunctionInfoENS1_14FrameStateTypeEttiNS0_6HandleINS0_18SharedFunctionInfoEEENS4_INS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i32 noundef range(i32 4, 10) %i.be, i16 noundef zeroext %i.br, i16 noundef zeroext 0, i32 noundef 0, ptr %i.bk, i64 0) #11
  %i.bt = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder10FrameStateENS0_14BytecodeOffsetENS1_23OutputFrameStateCombineEPKNS1_22FrameStateFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i32 %i.bq, i64 -1, ptr noundef %i.bs) #11
  call void @_ZN2v88internal8compiler7JSGraph16EmptyStateValuesEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.81") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1144) %0) #11
  call void @_ZN2v88internal8compiler7JSGraph16EmptyStateValuesEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.81") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1144) %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.bp, ptr %9, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = load ptr, ptr %10, align 8
  store ptr %i.bv, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bx = load ptr, ptr %11, align 8
  store ptr %i.bx, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %4, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %3, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %7, ptr %i.ca, align 8
  %i.cb = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef %i.bt, i32 noundef 6, ptr noundef nonnull %9, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.cc = ptrtoint ptr %.sroa.43.5 to i64
  %i.cd = sub i64 %i.cc, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.cd) #14
  ret ptr %i.cb

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44 ] ; 2 uses
  %.sroa.43.092 = phi ptr [ %i.k, %.lr.ph.preheader ], [ %.sroa.43.6, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44 ] ; 3 uses
  %.sroa.20.091 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %.sroa.20.6, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44 ] ; 3 uses
  %.sroa.0.090 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %.sroa.0.6, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44 ] ; 5 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %.not.i37 = icmp eq ptr %.sroa.20.091, %.sroa.43.092
  br i1 %.not.i37, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.cf = load ptr, ptr %i.ce, align 8
  store ptr %i.cf, ptr %.sroa.20.091, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit44

bb.t:                                             ; preds = %.lr.ph
  %i.cg = ptrtoint ptr %.sroa.43.092 to i64
  %i.ch = ptrtoint ptr %.sroa.0.090 to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 6 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.u, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i38

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #12
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i38: ; preds = %bb.t
end_hunk_0
