Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/linked_hash_map_test?download=true
inline.NumInlined: 57403
inline.NumDeleted: 11627
loop-unroll.NumCompletelyUnrolled: 191
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 211
begin_hunk_0_@_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJSt4pairIKiiES5_S5_EENS0_22CastAndAppendTransformIRKS5_EESt20back_insert_iteratorISt6vectorINS_7MatcherIS9_EESaISE_EEEE16IterateOverTupleIS6_Lm3EEclESA_RKS6_SH_:bb.a
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !242
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !244
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !155
  invoke void %i.s(ptr noundef %i.t)
          to label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit unwind label %bb.e, !inline_history !11

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #36, !inline_history !245
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.thread, %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.w = call ptr @_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJSt4pairIKiiES5_S5_EENS0_22CastAndAppendTransformIRKS5_EESt20back_insert_iteratorISt6vectorINS_7MatcherIS9_EESaISE_EEEE16IterateOverTupleIS6_Lm2EEclESA_RKS6_SH_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret ptr %i.w

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJSt4pairIKiiES5_S5_EENS0_22CastAndAppendTransformIRKS5_EESt20back_insert_iteratorISt6vectorINS_7MatcherIS9_EESaISE_EEEE16IterateOverTupleIS6_Lm2EEclESA_RKS6_SH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Matcher.98", align 8 ; 9 uses
  %4 = alloca %"class.testing::Matcher.98", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIKiiEEE, i64 16), ptr %4, align 8, !tbaa !167, !alias.scope !2193
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 4, !noalias !2193 ; 2 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE9GetVTableINS7_11ValuePolicyINS0_9EqMatcherIS4_EELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.b, align 8, !tbaa !242, !alias.scope !2193
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.c, align 8, !tbaa !155, !alias.scope !2193
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !233  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !234
  %.not.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.thread

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.thread: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE9GetVTableINS7_11ValuePolicyINS0_9EqMatcherIS4_EELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.h, align 8, !tbaa !242
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.i, align 8, !tbaa !155
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIKiiEEE, i64 16), ptr %i.e, align 8, !tbaa !167
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !233
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.k, ptr %i.d, align 8, !tbaa !233
  br label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit unwind label %bb.k

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !242  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt4pairIKiiEEE, i64 16), ptr %4, align 8, !tbaa !167
  %.not.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i4, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !244
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !155
  %i.o = atomicrmw add ptr %i.n, i32 -1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !242
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !244
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !155
  invoke void %i.s(ptr noundef %i.t)
          to label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit unwind label %bb.e, !inline_history !11

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #36, !inline_history !245
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.thread, %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIKiiEEE, i64 16), ptr %3, align 8, !tbaa !167, !alias.scope !2198
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 4, !noalias !2198 ; 2 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE9GetVTableINS7_11ValuePolicyINS0_9EqMatcherIS4_EELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.w, align 8, !tbaa !242, !alias.scope !2198
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.x, align 8, !tbaa !155, !alias.scope !2198
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !233  ; 5 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !234
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.thread.i

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.thread.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE9GetVTableINS7_11ValuePolicyINS0_9EqMatcherIS4_EELb1EEEEEPKNS7_6VTableEvE7kVTable, ptr %i.aa, align 8, !tbaa !242
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !155
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIKiiEEE, i64 16), ptr %i.y, align 8, !tbaa !167
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !233
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !233
  br label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJSt4pairIKiiES5_S5_EENS0_22CastAndAppendTransformIRKS5_EESt20back_insert_iteratorISt6vectorINS_7MatcherIS9_EESaISE_EEEE16IterateOverTupleIS6_Lm1EEclESA_RKS6_SH_.exit

bb.f:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev.exit
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.i unwind label %bb.j

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.i: ; preds = %bb.f
  %.pr.i = load ptr, ptr %i.w, align 8, !tbaa !242 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt4pairIKiiEEE, i64 16), ptr %3, align 8, !tbaa !167
  %.not.i.i.i4.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i4.i, label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJSt4pairIKiiES5_S5_EENS0_22CastAndAppendTransformIRKS5_EESt20back_insert_iteratorISt6vectorINS_7MatcherIS9_EESaISE_EEEE16IterateOverTupleIS6_Lm1EEclESA_RKS6_SH_.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !244
  %.not.i.i.i5 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i5, label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJSt4pairIKiiES5_S5_EENS0_22CastAndAppendTransformIRKS5_EESt20back_insert_iteratorISt6vectorINS_7MatcherIS9_EESaISE_EEEE16IterateOverTupleIS6_Lm1EEclESA_RKS6_SH_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i.i
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJSt4pairIKiiES5_S5_EENS0_22CastAndAppendTransformIRKS5_EESt20back_insert_iteratorISt6vectorINS_7MatcherIS9_EESaISE_EEEE16IterateOverTupleIS6_Lm1EEclESA_RKS6_SH_.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !242
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !244
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !155
  invoke void %i.al(ptr noundef %i.am)
          to label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJSt4pairIKiiES5_S5_EENS0_22CastAndAppendTransformIRKS5_EESt20back_insert_iteratorISt6vectorINS_7MatcherIS9_EESaISE_EEEE16IterateOverTupleIS6_Lm1EEclESA_RKS6_SH_.exit unwind label %bb.i, !inline_history !11

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #36, !inline_history !245
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.aq, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %common.resume

_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJSt4pairIKiiES5_S5_EENS0_22CastAndAppendTransformIRKS5_EESt20back_insert_iteratorISt6vectorINS_7MatcherIS9_EESaISE_EEEE16IterateOverTupleIS6_Lm1EEclESA_RKS6_SH_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.thread.i, %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKiiEEESaIS8_EEEaSEOS8_.exit.i, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKiiEE8IsSharedEv.exit.i.i.i, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret ptr %2

bb.k:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE19MatchAndExplainImplINS7_11ValuePolicyINS0_9EqMatcherIS4_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS7_S6_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x i32>, ptr %1, align 4
  %i.c = load <2 x i32>, ptr %i.a, align 8
  %i.d = icmp eq <2 x i32> %i.b, %i.c             ; 2 uses
  %3 = extractelement <2 x i1> %i.d, i64 0
  %4 = extractelement <2 x i1> %i.d, i64 1
  %5 = select i1 %3, i1 %4, i1 false
  ret i1 %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE12DescribeImplINS7_11ValuePolicyINS0_9EqMatcherIS4_EELb1EEEEEvRKS7_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.218, i64 noundef 14) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.219, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.217, i64 noundef 1) ; 0 uses
  tail call void @_ZN7testing8internal7PrintToIKiiEEvRKSt4pairIT_T0_EPSo(ptr noundef nonnull align 4 dereferenceable(8) %i.c, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairIKiiEE16GetDescriberImplINS7_11ValuePolicyINS0_9EqMatcherIS4_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_138LinkedHashMapTest_InitializerList_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_138LinkedHashMapTest_InitializerList_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_138LinkedHashMapTest_InitializerList_TestE, i64 16), ptr %i.a, align 8, !tbaa !167
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_138LinkedHashMapTest_InitializerList_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_138LinkedHashMapTest_InitializerList_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %1 = alloca %class.anon.167, align 8            ; 10 uses
  %2 = alloca %"class.absl::lts_20260526::linked_hash_map", align 8 ; 21 uses
  %3 = alloca [2 x %"struct.std::pair.114"], align 16 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %12 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 13 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %25 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 13 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %3, align 16, !tbaa !262
  store i64 1, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.j, ptr %i.k, align 8, !tbaa !185
  store ptr %i.j, ptr %i.j, align 8, !tbaa !186
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.l, align 8, !tbaa !188
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.a, ptr %1, align 8, !tbaa !194
  store ptr %2, ptr %i.m, align 8, !tbaa !286
  store ptr %3, ptr %i.n, align 8, !tbaa !199
  %i.o = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE12lazy_emplaceIiZNSH_14InsertInternalIRKS7_EES5_IS8_bEOT_EUlRKSR_E_EENSL_8iteratorESU_OT0_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc.i.i unwind label %.body ; 0 uses

.noexc.i.i:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.a, ptr %1, align 8, !tbaa !194
  store ptr %2, ptr %i.m, align 8, !tbaa !286
  store ptr %i.p, ptr %i.n, align 8, !tbaa !199
  %i.q = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaIS7_EE7WrappedISD_EENSI_ISF_EESG_EE12lazy_emplaceIiZNSH_14InsertInternalIRKS7_EES5_IS8_bEOT_EUlRKSR_E_EENSL_8iteratorESU_OT0_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc.i.i.1 unwind label %.body ; 0 uses

.noexc.i.i.1:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 2, ptr %i.b, align 4, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.r = load i64, ptr %2, align 8
  %i.s = lshr i64 %i.r, 17                        ; 2 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !154
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %bb.b, label %bb.c

.body:                                            ; preds = %.noexc.i.i, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.dc

bb.b:                                             ; preds = %.noexc.i.i.1
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i.i.1
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.302, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.d

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.v = load i8, ptr %4, align 8, !tbaa !207, !range !146, !noundef !147
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.critedge, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.r

bb.e:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !208  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %bb.f
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_6InsertINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.d = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  store i64 %i.d, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.e = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  %i.g = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  store i64 1, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.e, ptr %i.i, align 8, !tbaa !639
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.g, ptr %i.j, align 8, !tbaa !641
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !185
  store ptr %i.l, ptr %i.l, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.n, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i8 0, ptr %i.c, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.c, ptr %3, align 8, !tbaa !194
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %6, ptr %i.o, align 8, !tbaa !804
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %i.p, align 8, !tbaa !199
  %i.q = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE12lazy_emplaceIiZNSF_14InsertInternalIRKS7_EES5_IS8_bEOT_EUlRKSP_E_EENSJ_8iteratorESS_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = extractvalue { ptr, ptr } %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.s = load i64, ptr %i.r, align 8, !tbaa !269
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.c, align 1, !tbaa !192, !range !146, !noundef !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i8 %i.u, ptr %7, align 8, !tbaa !207
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !287
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.w, align 8, !tbaa !289
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %bb.d, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %11, align 8, !tbaa !152
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !156
  store i64 %i.aa, ptr %10, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.y, ptr %i.ab, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 51, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %10)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  %i.ac = load ptr, ptr %11, align 8, !tbaa !152  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !155
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ah = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !167
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(128) %i.ah) #37, !inline_history !5
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit41

bb.j:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.k:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %i.ap = load ptr, ptr %11, align 8, !tbaa !152  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.m
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !155
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.au = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.au, null
  br i1 %.not.i.i39, label %_ZN7testing7MessageD2Ev.exit41, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !167
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit41

_ZN7testing7MessageD2Ev.exit41:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bl

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %.pr = load ptr, ptr %i.v, align 8, !tbaa !208  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %.pr, align 8, !tbaa !152 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !155
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.b, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.be = load <2 x i32>, ptr %4, align 8, !noalias !13629
  %i.bf = load <2 x i32>, ptr %i.bd, align 4, !noalias !13629
  %i.bg = icmp eq <2 x i32> %i.be, %i.bf          ; 2 uses
  %24 = extractelement <2 x i1> %i.bg, i64 0
  %25 = extractelement <2 x i1> %i.bg, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

bb.q:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.486, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.bd)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.p, %bb.q
  %i.bh = load i8, ptr %12, align 8, !tbaa !207, !range !146, !noundef !147
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !208 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i43, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.bn = phi ptr [ %i.bm, %bb.u ], [ @.str.261, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 52, ptr noundef %i.bn)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.bo = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i44, label %_ZN7testing7MessageD2Ev.exit46, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45: ; preds = %bb.w
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !167
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit46

_ZN7testing7MessageD2Ev.exit46:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit49

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn22 = phi { ptr, i32 } [ %i.bu, %bb.z ], [ %i.bt, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.bv = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i47, label %_ZN7testing7MessageD2Ev.exit49, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.aa
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !167
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(128) %i.bv) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit49

_ZN7testing7MessageD2Ev.exit49:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, %bb.aa, %bb.x
  %.pn22.pn = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %.pn22, %bb.aa ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #37
  br label %bb.af

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit46
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !208 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i50, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !152 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !155
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.b, i64 noundef 16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cg = load i32, ptr %i.b, align 16, !tbaa !262
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !262
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw i64 %i.cj, 32
  %i.cl = zext i32 %i.cg to i128
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !262
  %i.co = zext i32 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  %i.cq = zext i64 %i.cp to i128
  %i.cr = shl nuw i128 %i.cl, 96
  %i.cs = shl nuw nsw i128 %i.cq, 32              ; 2 uses
  %i.ct = trunc i128 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !262
  %i.cw = zext i32 %i.cv to i64
  %i.cx = or disjoint i64 %i.ct, %i.cw
  %.masked.i.i.i.i.i.i.i = and i128 %i.cs, 79228162495817593519834398720
  %i.cy = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.cr
  %i.cz = zext i64 %i.cx to i128
  %i.da = add nuw nsw i128 %i.cz, 1442695040888963407 ; 2 uses
  %i.db = add i128 %i.cy, %i.da
  %i.dc = lshr i128 %i.db, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.dc to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.dd = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.de = shl nuw i128 %i.dd, 64
  %i.df = and i128 %i.da, 18446744073709551615
  %i.dg = or disjoint i128 %i.de, %i.df
  %i.dh = mul i128 %i.dg, 47026247687942121848144207491837523525
  %i.di = add i128 %i.dh, 1442695040888963407     ; 2 uses
  %i.dj = lshr i128 %i.di, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.dj to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.dk = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.dl = shl nuw i128 %i.dk, 64
  %i.dm = and i128 %i.di, 18446744073709551615
  %i.dn = or disjoint i128 %i.dl, %i.dm
  %i.do = mul i128 %i.dn, 47026247687942121848144207491837523525
  %i.dp = add i128 %i.do, 1442695040888963407     ; 2 uses
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = lshr i128 %i.dp, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.dr to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.ds = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.dt = xor i64 %.narrow.i.i.i.i.i.i, %i.dq     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.dt, i64 %i.dt, i64 %i.ds)
  %i.du = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = load i32, ptr %4, align 8, !tbaa !262
  store i32 %i.dw, ptr %15, align 4, !tbaa !190
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.a, ptr %2, align 8, !tbaa !194
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %6, ptr %i.dy, align 8, !tbaa !804
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %15, ptr %i.dz, align 8, !tbaa !199
  %i.ea = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE12lazy_emplaceIiZNSF_14InsertInternalIRKS7_EES5_IS8_bEOT_EUlRKSP_E_EENSJ_8iteratorESS_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.eb = extractvalue { ptr, ptr } %i.ea, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !269
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load i8, ptr %i.a, align 1, !tbaa !192, !range !146, !noundef !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  store i8 %i.ee, ptr %16, align 8, !tbaa !207
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr null, ptr %i.ef, align 8, !tbaa !287
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i8 0, ptr %i.eg, align 8, !tbaa !289
  %i.eh = icmp eq i8 %i.ee, 0
  br i1 %i.eh, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit49, %bb.r
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit49 ], [ %i.bj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.bl

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ad
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.263)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ej = load ptr, ptr %20, align 8, !tbaa !152
  %i.ek = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !156
  store i64 %i.el, ptr %19, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ej, ptr %i.em, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 55, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %19)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  %i.en = load ptr, ptr %20, align 8, !tbaa !152  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.al
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !155
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.es = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.es, null
  br i1 %.not.i.i62, label %bb.ar, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !167
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(128) %i.es) #37, !inline_history !5
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit70

bb.an:                                            ; preds = %bb.ai
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.ao:                                            ; preds = %bb.aj
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn26 = phi { ptr, i32 } [ %i.ez, %bb.ap ], [ %i.ey, %bb.ao ] ; 2 uses
  %i.fa = load ptr, ptr %20, align 8, !tbaa !152  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.aq
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !155
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.an
  %.pn26.pn = phi { ptr, i32 } [ %i.ex, %bb.an ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn26, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.ff = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i68, label %_ZN7testing7MessageD2Ev.exit70, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !167
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(128) %i.ff) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit70

_ZN7testing7MessageD2Ev.exit70:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.am
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.am ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn26.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.bk

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %.pr104 = load ptr, ptr %i.ef, align 8, !tbaa !208 ; 4 uses
  %.not.i.i.i71 = icmp eq ptr %.pr104, null
  br i1 %.not.i.i.i71, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fj = load ptr, ptr %.pr104, align 8, !tbaa !152 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.pr104, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72: ; preds = %bb.as
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !155
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i73

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i73: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72
  call void @_ZdlPvm(ptr noundef nonnull %.pr104, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75: ; preds = %bb.ae, %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.fp = load <2 x i32>, ptr %4, align 8, !noalias !13630
  %i.fq = load <2 x i32>, ptr %i.fo, align 4, !noalias !13630
  %i.fr = icmp eq <2 x i32> %i.fp, %i.fq          ; 2 uses
  %27 = extractelement <2 x i1> %i.fr, i64 0
  %28 = extractelement <2 x i1> %i.fr, i64 1
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78 unwind label %bb.av

bb.au:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.486, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.fo)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78: ; preds = %bb.at, %bb.au
  %i.fs = load i8, ptr %21, align 8, !tbaa !207, !range !146, !noundef !147
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.bf, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  %i.fv = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !208 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i79, label %_ZNK7testing15AssertionResult15failure_messageEv.exit80, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit80

_ZNK7testing15AssertionResult15failure_messageEv.exit80: ; preds = %bb.ay, %bb.ax
  %i.fy = phi ptr [ %i.fx, %bb.ay ], [ @.str.261, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 56, ptr noundef %i.fy)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit80
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.fz = load ptr, ptr %22, align 8, !tbaa !210  ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i81, label %_ZN7testing7MessageD2Ev.exit83, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %bb.ba
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !167
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(128) %i.fz) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit83

_ZN7testing7MessageD2Ev.exit83:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit86

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit80
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #37
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn30 = phi { ptr, i32 } [ %i.gf, %bb.bd ], [ %i.ge, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.gg = load ptr, ptr %22, align 8, !tbaa !210  ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit86, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %bb.be
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !167
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit86

_ZN7testing7MessageD2Ev.exit86:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85, %bb.be, %bb.bb
  %.pn30.pn = phi { ptr, i32 } [ %i.gd, %bb.bb ], [ %.pn30, %bb.be ], [ %.pn30, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #37
  br label %bb.bj

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78, %_ZN7testing7MessageD2Ev.exit83
  %i.gk = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !208 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i87, label %_ZN7testing15AssertionResultD2Ev.exit91, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !152 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88: ; preds = %bb.bg
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !155
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit91

_ZN7testing15AssertionResultD2Ev.exit91:          ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.gr = load ptr, ptr %i.l, align 8, !tbaa !186 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.gr, %i.l
  br i1 %.not7.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit91, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i ], [ %i.gr, %_ZN7testing15AssertionResultD2Ev.exit91 ] ; 2 uses
  %i.gs = load ptr, ptr %.08.i.i.i, align 8, !tbaa !186 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.08.i.i.i, i64 noundef 24) #40
  %.not.i.i.i92 = icmp eq ptr %i.gs, %i.l
  br i1 %.not.i.i.i92, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit91
  %i.gt = load i64, ptr %6, align 8               ; 2 uses
  %i.gu = and i64 %i.gt, 255
  %i.gv = icmp ne i64 %i.gu, 0
  call void @llvm.assume(i1 %i.gv)
  %i.gw = and i64 %i.gt, 254
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %6, ptr %1, align 8, !tbaa !644
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocIS9_EEE7WrappedISD_EENSI_ISE_EESG_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i unwind label %bb.bi

.noexc.i.i:                                       ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.gy = load i64, ptr %6, align 8               ; 2 uses
  %i.gz = and i64 %i.gy, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.gz  ; 4 uses
  %i.ha = add nsw i64 %notmask.i.i.i.i.i.i.i, 281474976710655
  %i.hb = or i64 %i.ha, %notmask.i.i.i.i.i.i.i
  %i.hc = icmp eq i64 %i.hb, -1
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp ne i64 %i.gz, 0
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.he)
  %i.hf = and i64 %i.gy, 65536
  %.not.i.i.i.i.i.i = icmp ne i64 %i.hf, 0
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hg, align 8, !tbaa !155
  %i.hh = xor i64 %notmask.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.k, i64 noundef %i.hh, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %.noexc.i.i, %bb.bh
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #36
  unreachable

_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit86, %bb.av
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit86 ], [ %i.fu, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN7testing7MessageD2Ev.exit70, %bb.ag
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %bb.bj ], [ %.pn26.pn.pn, %_ZN7testing7MessageD2Ev.exit70 ], [ %i.ei, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.af, %_ZN7testing7MessageD2Ev.exit41, %bb.c
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn, %bb.bk ], [ %.pn22.pn.pn, %bb.af ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit41 ], [ %i.x, %bb.c ]
  call void @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn
}
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10InsertHintINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.d = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  store i64 %i.d, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.e = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  %i.g = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  store i64 1, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.e, ptr %i.i, align 8, !tbaa !639
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.g, ptr %i.j, align 8, !tbaa !641
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !185
  store ptr %i.l, ptr %i.l, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.n, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i8 0, ptr %i.c, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.c, ptr %3, align 8, !tbaa !194
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %6, ptr %i.o, align 8, !tbaa !804
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %i.p, align 8, !tbaa !199
  %i.q = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE12lazy_emplaceIiZNSF_14InsertInternalIRKS7_EES5_IS8_bEOT_EUlRKSP_E_EENSJ_8iteratorESS_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = extractvalue { ptr, ptr } %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.s = load i64, ptr %i.r, align 8, !tbaa !269
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.u = icmp ne ptr %i.l, %i.t                   ; 2 uses
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %7, align 8, !tbaa !207
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !287
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.x, align 8, !tbaa !289
  br i1 %i.u, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %11, align 8, !tbaa !152
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !156
  store i64 %i.ab, ptr %10, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.z, ptr %i.ac, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 65, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %10)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  %i.ad = load ptr, ptr %11, align 8, !tbaa !152  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !155
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ai = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !167
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %i.ai) #37, !inline_history !5
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit39

bb.j:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.k:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.ao, %bb.k ] ; 2 uses
  %i.aq = load ptr, ptr %11, align 8, !tbaa !152  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.m
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !155
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.av = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.av, null
  br i1 %.not.i.i37, label %_ZN7testing7MessageD2Ev.exit39, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !167
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit39

_ZN7testing7MessageD2Ev.exit39:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bl

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %.pr = load ptr, ptr %i.w, align 8, !tbaa !208  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !152 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !155
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.b, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.bf = load <2 x i32>, ptr %4, align 8, !noalias !13785
  %i.bg = load <2 x i32>, ptr %i.be, align 4, !noalias !13785
  %i.bh = icmp eq <2 x i32> %i.bf, %i.bg          ; 2 uses
  %24 = extractelement <2 x i1> %i.bh, i64 0
  %25 = extractelement <2 x i1> %i.bh, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

bb.q:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.487, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.be)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.p, %bb.q
  %i.bi = load i8, ptr %12, align 8, !tbaa !207, !range !146, !noundef !147
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !208 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i41, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.bo = phi ptr [ %i.bn, %bb.u ], [ @.str.261, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 66, ptr noundef %i.bo)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.bp = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i42, label %_ZN7testing7MessageD2Ev.exit44, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43: ; preds = %bb.w
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !167
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(128) %i.bp) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit44

_ZN7testing7MessageD2Ev.exit44:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit47

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn20 = phi { ptr, i32 } [ %i.bv, %bb.z ], [ %i.bu, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.bw = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i45, label %_ZN7testing7MessageD2Ev.exit47, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46: ; preds = %bb.aa
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !167
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit47

_ZN7testing7MessageD2Ev.exit47:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46, %bb.aa, %bb.x
  %.pn20.pn = phi { ptr, i32 } [ %i.bt, %bb.x ], [ %.pn20, %bb.aa ], [ %.pn20, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #37
  br label %bb.af

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit44
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !208 ; 4 uses
  %.not.i.i48 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i48, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !152 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !155
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.b, i64 noundef 16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ch = load i32, ptr %i.b, align 16, !tbaa !262
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !262
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw i64 %i.ck, 32
  %i.cm = zext i32 %i.ch to i128
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !262
  %i.cp = zext i32 %i.co to i64
  %i.cq = or disjoint i64 %i.cl, %i.cp
  %i.cr = zext i64 %i.cq to i128
  %i.cs = shl nuw i128 %i.cm, 96
  %i.ct = shl nuw nsw i128 %i.cr, 32              ; 2 uses
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !262
  %i.cx = zext i32 %i.cw to i64
  %i.cy = or disjoint i64 %i.cu, %i.cx
  %.masked.i.i.i.i.i.i.i = and i128 %i.ct, 79228162495817593519834398720
  %i.cz = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.cs
  %i.da = zext i64 %i.cy to i128
  %i.db = add nuw nsw i128 %i.da, 1442695040888963407 ; 2 uses
  %i.dc = add i128 %i.cz, %i.db
  %i.dd = lshr i128 %i.dc, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.dd to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.de = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.df = shl nuw i128 %i.de, 64
  %i.dg = and i128 %i.db, 18446744073709551615
  %i.dh = or disjoint i128 %i.df, %i.dg
  %i.di = mul i128 %i.dh, 47026247687942121848144207491837523525
  %i.dj = add i128 %i.di, 1442695040888963407     ; 2 uses
  %i.dk = lshr i128 %i.dj, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.dk to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.dl = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.dm = shl nuw i128 %i.dl, 64
  %i.dn = and i128 %i.dj, 18446744073709551615
  %i.do = or disjoint i128 %i.dm, %i.dn
  %i.dp = mul i128 %i.do, 47026247687942121848144207491837523525
  %i.dq = add i128 %i.dp, 1442695040888963407     ; 2 uses
  %i.dr = trunc i128 %i.dq to i64
  %i.ds = lshr i128 %i.dq, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.ds to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.dt = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.du = xor i64 %.narrow.i.i.i.i.i.i, %i.dr     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.du, i64 %i.du, i64 %i.dt)
  %i.dv = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = load i32, ptr %4, align 8, !tbaa !262
  store i32 %i.dx, ptr %15, align 4, !tbaa !190
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.a, ptr %2, align 8, !tbaa !194
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %6, ptr %i.dz, align 8, !tbaa !804
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %15, ptr %i.ea, align 8, !tbaa !199
  %i.eb = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE12lazy_emplaceIiZNSF_14InsertInternalIRKS7_EES5_IS8_bEOT_EUlRKSP_E_EENSJ_8iteratorESS_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ec = extractvalue { ptr, ptr } %i.eb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !269
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ef = icmp ne ptr %i.l, %i.ee                 ; 2 uses
  %i.eg = zext i1 %i.ef to i8
  store i8 %i.eg, ptr %16, align 8, !tbaa !207
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr null, ptr %i.eh, align 8, !tbaa !287
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i8 1, ptr %i.ei, align 8, !tbaa !289
  br i1 %i.ef, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit47, %bb.r
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit47 ], [ %i.bk, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.bl

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ad
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ek = load ptr, ptr %20, align 8, !tbaa !152
  %i.el = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !156
  store i64 %i.em, ptr %19, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ek, ptr %i.en, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 69, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %19)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  %i.eo = load ptr, ptr %20, align 8, !tbaa !152  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.al
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !155
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.et = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.et, null
  br i1 %.not.i.i58, label %bb.ar, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !167
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #37, !inline_history !5
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit66

bb.an:                                            ; preds = %bb.ai
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.ao:                                            ; preds = %bb.aj
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn24 = phi { ptr, i32 } [ %i.fa, %bb.ap ], [ %i.ez, %bb.ao ] ; 2 uses
  %i.fb = load ptr, ptr %20, align 8, !tbaa !152  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.aq
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !155
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.an
  %.pn24.pn = phi { ptr, i32 } [ %i.ey, %bb.an ], [ %.pn24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.pn24, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.fg = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !167
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(128) %i.fg) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.am
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.am ], [ %.pn24.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn24.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.bk

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %.pr107 = load ptr, ptr %i.eh, align 8, !tbaa !208 ; 4 uses
  %.not.i.i.i67 = icmp eq ptr %.pr107, null
  br i1 %.not.i.i.i67, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fk = load ptr, ptr %.pr107, align 8, !tbaa !152 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.pr107, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68: ; preds = %bb.as
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !155
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i69

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i69: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %.pr107, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71: ; preds = %bb.ae, %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.fq = load <2 x i32>, ptr %4, align 8, !noalias !13786
  %i.fr = load <2 x i32>, ptr %i.fp, align 4, !noalias !13786
  %i.fs = icmp eq <2 x i32> %i.fq, %i.fr          ; 2 uses
  %27 = extractelement <2 x i1> %i.fs, i64 0
  %28 = extractelement <2 x i1> %i.fs, i64 1
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74 unwind label %bb.av

bb.au:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.487, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.fp)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74: ; preds = %bb.at, %bb.au
  %i.ft = load i8, ptr %21, align 8, !tbaa !207, !range !146, !noundef !147
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.bf, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  %i.fw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !208 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i75, label %_ZNK7testing15AssertionResult15failure_messageEv.exit76, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit76

_ZNK7testing15AssertionResult15failure_messageEv.exit76: ; preds = %bb.ay, %bb.ax
  %i.fz = phi ptr [ %i.fy, %bb.ay ], [ @.str.261, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 70, ptr noundef %i.fz)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit76
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.ga = load ptr, ptr %22, align 8, !tbaa !210  ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i77, label %_ZN7testing7MessageD2Ev.exit79, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %bb.ba
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !167
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(128) %i.ga) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit79

_ZN7testing7MessageD2Ev.exit79:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit82

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit76
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #37
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn28 = phi { ptr, i32 } [ %i.gg, %bb.bd ], [ %i.gf, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.gh = load ptr, ptr %22, align 8, !tbaa !210  ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i80, label %_ZN7testing7MessageD2Ev.exit82, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81: ; preds = %bb.be
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !167
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(128) %i.gh) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit82

_ZN7testing7MessageD2Ev.exit82:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81, %bb.be, %bb.bb
  %.pn28.pn = phi { ptr, i32 } [ %i.ge, %bb.bb ], [ %.pn28, %bb.be ], [ %.pn28, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #37
  br label %bb.bj

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74, %_ZN7testing7MessageD2Ev.exit79
  %i.gl = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !208 ; 4 uses
  %.not.i.i83 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i83, label %_ZN7testing15AssertionResultD2Ev.exit87, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !152 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84: ; preds = %bb.bg
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !155
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit87

_ZN7testing15AssertionResultD2Ev.exit87:          ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.gs = load ptr, ptr %i.l, align 8, !tbaa !186 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.gs, %i.l
  br i1 %.not7.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit87, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i ], [ %i.gs, %_ZN7testing15AssertionResultD2Ev.exit87 ] ; 2 uses
  %i.gt = load ptr, ptr %.08.i.i.i, align 8, !tbaa !186 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.08.i.i.i, i64 noundef 24) #40
  %.not.i.i.i88 = icmp eq ptr %i.gt, %i.l
  br i1 %.not.i.i.i88, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit87
  %i.gu = load i64, ptr %6, align 8               ; 2 uses
  %i.gv = and i64 %i.gu, 255
  %i.gw = icmp ne i64 %i.gv, 0
  call void @llvm.assume(i1 %i.gw)
  %i.gx = and i64 %i.gu, 254
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %6, ptr %1, align 8, !tbaa !644
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocIS9_EEE7WrappedISD_EENSI_ISE_EESG_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i unwind label %bb.bi

.noexc.i.i:                                       ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.gz = load i64, ptr %6, align 8               ; 2 uses
  %i.ha = and i64 %i.gz, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ha  ; 4 uses
  %i.hb = add nsw i64 %notmask.i.i.i.i.i.i.i, 281474976710655
  %i.hc = or i64 %i.hb, %notmask.i.i.i.i.i.i.i
  %i.hd = icmp eq i64 %i.hc, -1
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.hf)
  %i.hg = and i64 %i.gz, 65536
  %.not.i.i.i.i.i.i = icmp ne i64 %i.hg, 0
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hh, align 8, !tbaa !155
  %i.hi = xor i64 %notmask.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.k, i64 noundef %i.hi, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %.noexc.i.i, %bb.bh
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #36
  unreachable

_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit82, %bb.av
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %_ZN7testing7MessageD2Ev.exit82 ], [ %i.fv, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN7testing7MessageD2Ev.exit66, %bb.ag
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.bj ], [ %.pn24.pn.pn, %_ZN7testing7MessageD2Ev.exit66 ], [ %i.ej, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.af, %_ZN7testing7MessageD2Ev.exit39, %bb.c
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn, %bb.bk ], [ %.pn20.pn.pn, %bb.af ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit39 ], [ %i.y, %bb.c ]
  call void @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn
}
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_7EmplaceINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %3 = alloca %"struct.absl::lts_20260526::container_internal::Generator", align 1 ; 3 uses
  %4 = alloca %"class.absl::lts_20260526::linked_hash_map.1173", align 8 ; 18 uses
  %5 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"struct.std::pair.114", align 4   ; 6 uses
  %14 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  store i64 %i.b, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  %i.e = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  store i64 1, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.c, ptr %i.g, align 8, !tbaa !639
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.e, ptr %i.h, align 8, !tbaa !641
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !185
  store ptr %i.j, ptr %i.j, align 8, !tbaa !186
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 0, ptr %i.l, align 8, !tbaa !188
  %i.m = invoke { ptr, i8 } @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE7emplaceIJRS8_EEES6_ISt14_List_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract1 = extractvalue { ptr, i8 } %i.m, 0
  %.fca.1.extract2 = extractvalue { ptr, i8 } %i.m, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store i8 %.fca.1.extract2, ptr %5, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !287
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.o, align 8, !tbaa !289
  %i.p = icmp eq i8 %.fca.1.extract2, 1
  br i1 %i.p, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %9, align 8, !tbaa !152
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !156
  store i64 %i.t, ptr %8, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.r, ptr %i.u, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 156, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %8)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  %i.v = load ptr, ptr %9, align 8, !tbaa !152    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.w, align 8, !tbaa !155
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.aa = load ptr, ptr %6, align 8, !tbaa !210   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #37, !inline_history !5
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit41

bb.j:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.k:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ag, %bb.k ] ; 2 uses
  %i.ai = load ptr, ptr %9, align 8, !tbaa !152   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.m
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !155
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.an = load ptr, ptr %6, align 8, !tbaa !210   ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.an, null
  br i1 %.not.i.i39, label %_ZN7testing7MessageD2Ev.exit41, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !167
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(128) %i.an) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit41

_ZN7testing7MessageD2Ev.exit41:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.bl

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %.pr = load ptr, ptr %i.n, align 8, !tbaa !208  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %.pr, align 8, !tbaa !152 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.au = load i64, ptr %i.as, align 8, !tbaa !155
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.b, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.aw = getelementptr inbounds nuw i8, ptr %.fca.0.extract1, i64 16 ; 2 uses
  %i.ax = load <2 x i32>, ptr %2, align 8, !noalias !14910
  %i.ay = load <2 x i32>, ptr %i.aw, align 4, !noalias !14910
  %i.az = icmp eq <2 x i32> %i.ax, %i.ay          ; 2 uses
  %22 = extractelement <2 x i1> %i.az, i64 0
  %23 = extractelement <2 x i1> %i.az, i64 1
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

bb.q:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.486, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.aw)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.p, %bb.q
  %i.ba = load i8, ptr %10, align 8, !tbaa !207, !range !146, !noundef !147
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !208 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.be, null
  br i1 %.not.i.i43, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.bg = phi ptr [ %i.bf, %bb.u ], [ @.str.261, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 157, ptr noundef %i.bg)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.bh = load ptr, ptr %11, align 8, !tbaa !210  ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i44, label %_ZN7testing7MessageD2Ev.exit46, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45: ; preds = %bb.w
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !167
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit46

_ZN7testing7MessageD2Ev.exit46:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit49

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #37
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn22 = phi { ptr, i32 } [ %i.bn, %bb.z ], [ %i.bm, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.bo = load ptr, ptr %11, align 8, !tbaa !210  ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i47, label %_ZN7testing7MessageD2Ev.exit49, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !167
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit49

_ZN7testing7MessageD2Ev.exit49:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, %bb.aa, %bb.x
  %.pn22.pn = phi { ptr, i32 } [ %i.bl, %bb.x ], [ %.pn22, %bb.aa ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #37
  br label %bb.af

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit46
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !208 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i50, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !152 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !155
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.bz = load i32, ptr %i.a, align 16, !tbaa !262
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !262
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw i64 %i.cc, 32
  %i.ce = zext i32 %i.bz to i128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !262
  %i.ch = zext i32 %i.cg to i64
  %i.ci = or disjoint i64 %i.cd, %i.ch
  %i.cj = zext i64 %i.ci to i128
  %i.ck = shl nuw i128 %i.ce, 96
  %i.cl = shl nuw nsw i128 %i.cj, 32              ; 2 uses
  %i.cm = trunc i128 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !262
  %i.cp = zext i32 %i.co to i64
  %i.cq = or disjoint i64 %i.cm, %i.cp
  %.masked.i.i.i.i.i.i.i = and i128 %i.cl, 79228162495817593519834398720
  %i.cr = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.ck
  %i.cs = zext i64 %i.cq to i128
  %i.ct = add nuw nsw i128 %i.cs, 1442695040888963407 ; 2 uses
  %i.cu = add i128 %i.cr, %i.ct
  %i.cv = lshr i128 %i.cu, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.cv to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.cw = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.cx = shl nuw i128 %i.cw, 64
  %i.cy = and i128 %i.ct, 18446744073709551615
  %i.cz = or disjoint i128 %i.cx, %i.cy
  %i.da = mul i128 %i.cz, 47026247687942121848144207491837523525
  %i.db = add i128 %i.da, 1442695040888963407     ; 2 uses
  %i.dc = lshr i128 %i.db, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.dc to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.dd = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.de = shl nuw i128 %i.dd, 64
  %i.df = and i128 %i.db, 18446744073709551615
  %i.dg = or disjoint i128 %i.de, %i.df
  %i.dh = mul i128 %i.dg, 47026247687942121848144207491837523525
  %i.di = add i128 %i.dh, 1442695040888963407     ; 2 uses
  %i.dj = trunc i128 %i.di to i64
  %i.dk = lshr i128 %i.di, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.dk to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.dl = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.dm = xor i64 %.narrow.i.i.i.i.i.i, %i.dj     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.dm, i64 %i.dm, i64 %i.dl)
  %i.dn = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = load i32, ptr %2, align 8, !tbaa !262
  store i32 %i.dp, ptr %13, align 4, !tbaa !190
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !191
  %i.dr = invoke { ptr, i8 } @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE7emplaceIJRS8_EEES6_ISt14_List_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.ag     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %.fca.0.extract = extractvalue { ptr, i8 } %i.dr, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.dr, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  store i8 %.fca.1.extract, ptr %14, align 8, !tbaa !207
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr null, ptr %i.ds, align 8, !tbaa !287
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 0, ptr %i.dt, align 8, !tbaa !289
  %i.du = icmp eq i8 %.fca.1.extract, 0
  br i1 %i.du, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit49, %bb.r
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit49 ], [ %i.bc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.bl

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ad
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.263)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dw = load ptr, ptr %18, align 8, !tbaa !152
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !156
  store i64 %i.dy, ptr %17, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.dw, ptr %i.dz, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 160, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %17)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #37
  %i.ea = load ptr, ptr %18, align 8, !tbaa !152  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.al
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !155
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.ef = load ptr, ptr %15, align 8, !tbaa !210  ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i58, label %bb.ar, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !167
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(128) %i.ef) #37, !inline_history !5
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit66

bb.an:                                            ; preds = %bb.ai
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.ao:                                            ; preds = %bb.aj
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #37
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn26 = phi { ptr, i32 } [ %i.em, %bb.ap ], [ %i.el, %bb.ao ] ; 2 uses
  %i.en = load ptr, ptr %18, align 8, !tbaa !152  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.aq
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !155
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.an
  %.pn26.pn = phi { ptr, i32 } [ %i.ek, %bb.an ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.pn26, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.es = load ptr, ptr %15, align 8, !tbaa !210  ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.es, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !167
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(128) %i.es) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.am
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.am ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn26.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bk

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %.pr100 = load ptr, ptr %i.ds, align 8, !tbaa !208 ; 4 uses
  %.not.i.i.i67 = icmp eq ptr %.pr100, null
  br i1 %.not.i.i.i67, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ew = load ptr, ptr %.pr100, align 8, !tbaa !152 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pr100, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68: ; preds = %bb.as
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !155
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i69

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i69: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %.pr100, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71: ; preds = %bb.ae, %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  %i.fb = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16 ; 2 uses
  %i.fc = load <2 x i32>, ptr %2, align 8, !noalias !14911
  %i.fd = load <2 x i32>, ptr %i.fb, align 4, !noalias !14911
  %i.fe = icmp eq <2 x i32> %i.fc, %i.fd          ; 2 uses
  %25 = extractelement <2 x i1> %i.fe, i64 0
  %26 = extractelement <2 x i1> %i.fe, i64 1
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74 unwind label %bb.av

bb.au:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit71
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.486, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.fb)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74: ; preds = %bb.at, %bb.au
  %i.ff = load i8, ptr %19, align 8, !tbaa !207, !range !146, !noundef !147
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.bf, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.fi = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !208 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i75, label %_ZNK7testing15AssertionResult15failure_messageEv.exit76, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit76

_ZNK7testing15AssertionResult15failure_messageEv.exit76: ; preds = %bb.ay, %bb.ax
  %i.fl = phi ptr [ %i.fk, %bb.ay ], [ @.str.261, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 161, ptr noundef %i.fl)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit76
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  %i.fm = load ptr, ptr %20, align 8, !tbaa !210  ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i77, label %_ZN7testing7MessageD2Ev.exit79, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %bb.ba
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !167
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit79

_ZN7testing7MessageD2Ev.exit79:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit82

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit76
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #37
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn30 = phi { ptr, i32 } [ %i.fs, %bb.bd ], [ %i.fr, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  %i.ft = load ptr, ptr %20, align 8, !tbaa !210  ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i80, label %_ZN7testing7MessageD2Ev.exit82, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81: ; preds = %bb.be
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !167
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(128) %i.ft) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit82

_ZN7testing7MessageD2Ev.exit82:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81, %bb.be, %bb.bb
  %.pn30.pn = phi { ptr, i32 } [ %i.fq, %bb.bb ], [ %.pn30, %bb.be ], [ %.pn30, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #37
  br label %bb.bj

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit74, %_ZN7testing7MessageD2Ev.exit79
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !208 ; 4 uses
  %.not.i.i83 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i83, label %_ZN7testing15AssertionResultD2Ev.exit87, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !152 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84: ; preds = %bb.bg
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !155
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit87

_ZN7testing15AssertionResultD2Ev.exit87:          ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.ge = load ptr, ptr %i.j, align 8, !tbaa !186 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.ge, %i.j
  br i1 %.not7.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit87, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i ], [ %i.ge, %_ZN7testing15AssertionResultD2Ev.exit87 ] ; 2 uses
  %i.gf = load ptr, ptr %.08.i.i.i, align 8, !tbaa !186 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.08.i.i.i, i64 noundef 24) #40
  %.not.i.i.i88 = icmp eq ptr %i.gf, %i.j
  br i1 %.not.i.i.i88, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit87
  %i.gg = load i64, ptr %4, align 8               ; 2 uses
  %i.gh = and i64 %i.gg, 255
  %i.gi = icmp ne i64 %i.gh, 0
  call void @llvm.assume(i1 %i.gi)
  %i.gj = and i64 %i.gg, 254
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %4, ptr %1, align 8, !tbaa !644
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocIS9_EEE7WrappedISD_EENSI_ISE_EESG_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i unwind label %bb.bi

.noexc.i.i:                                       ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.gl = load i64, ptr %4, align 8               ; 2 uses
  %i.gm = and i64 %i.gl, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.gm  ; 4 uses
  %i.gn = add nsw i64 %notmask.i.i.i.i.i.i.i, 281474976710655
  %i.go = or i64 %i.gn, %notmask.i.i.i.i.i.i.i
  %i.gp = icmp eq i64 %i.go, -1
  call void @llvm.assume(i1 %i.gp)
  %i.gq = icmp ne i64 %i.gm, 0
  call void @llvm.assume(i1 %i.gq)
  %i.gr = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.gr)
  %i.gs = and i64 %i.gl, 65536
  %.not.i.i.i.i.i.i = icmp ne i64 %i.gs, 0
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gt, align 8, !tbaa !155
  %i.gu = xor i64 %notmask.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.i, i64 noundef %i.gu, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %.noexc.i.i, %bb.bh
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #36
  unreachable

_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit82, %bb.av
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit82 ], [ %i.fh, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN7testing7MessageD2Ev.exit66, %bb.ag
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %bb.bj ], [ %.pn26.pn.pn, %_ZN7testing7MessageD2Ev.exit66 ], [ %i.dv, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.af, %_ZN7testing7MessageD2Ev.exit41, %bb.c
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn, %bb.bk ], [ %.pn22.pn.pn, %bb.af ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit41 ], [ %i.q, %bb.c ]
  call void @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn
}
end_hunk_3
begin_hunk_4_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal13ModifiersTestENS0_11TemplateSelINS4_26gtest_suite_ModifiersTest_11EmplaceHintEEENS0_5TypesINS3_15linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSH_iEEEEEJNSB_INS4_4EnumESH_SI_SJ_NSK_ISL_IKSQ_SH_EEEEENSB_INS4_9EnumClassEiSI_SJ_NSK_ISL_IKSV_iEEEEENSB_IiNS4_17NonStandardLayoutESI_SJ_NSK_ISL_IKiS10_EEEEENSB_IS10_iSI_SJ_NSK_ISL_IKS10_iEEEEEEEEE8RegisterEPKcNS0_12CodeLocationES1C_S1C_iRKSt6vectorISH_SaISH_EE:bb.a
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !155
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %i.gq, %bb.am ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit88 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.hc = load ptr, ptr %11, align 8, !tbaa !152  ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.cy
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.he = load i64, ptr %i.cy, align 8, !tbaa !155
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.al
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gp, %bb.al ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ] ; 2 uses
  %i.hg = load ptr, ptr %12, align 8, !tbaa !152  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !155
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ak
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.go, %bb.ak ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hl = load ptr, ptr %6, align 8, !tbaa !152   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.by
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hn = load i64, ptr %i.by, align 8, !tbaa !155
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.aj
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.aj ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hp = load ptr, ptr %7, align 8, !tbaa !152   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.bc
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.hr = load i64, ptr %i.bc, align 8, !tbaa !155
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ai ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.ht = load ptr, ptr %8, align 8, !tbaa !152   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.an
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hv = load i64, ptr %i.an, align 8, !tbaa !155
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ah
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ah ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 2 uses
  %i.hx = load ptr, ptr %9, align 8, !tbaa !152   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.w
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.hz = load i64, ptr %i.w, align 8, !tbaa !155
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.ag ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 2 uses
  %i.ib = load ptr, ptr %10, align 8, !tbaa !152  ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.c
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.id = load i64, ptr %i.c, align 8, !tbaa !155
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.af ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

bb.ap:                                            ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %15, align 8, !tbaa !152  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fr
  br i1 %i.ih, label %_ZN7testing8internal12CodeLocationD2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.ap
  %i.ii = load i64, ptr %i.fr, align 8, !tbaa !155
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

_ZN7testing8internal12CodeLocationD2Ev.exit115:   ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113 ], [ %i.if, %bb.ap ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS3_15linked_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS3_15linked_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !167
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1190, align 8           ; 4 uses
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %2 = alloca %"struct.std::pair.114", align 8    ; 10 uses
  %3 = alloca %"struct.absl::lts_20260526::container_internal::Generator", align 1 ; 3 uses
  %4 = alloca %"class.absl::lts_20260526::linked_hash_map.1173", align 8 ; 18 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"struct.std::pair.114", align 4    ; 6 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  store i64 %i.b, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  %i.e = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  store i64 1, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.c, ptr %i.g, align 8, !tbaa !639
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.e, ptr %i.h, align 8, !tbaa !641
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !185
  store ptr %i.j, ptr %i.j, align 8, !tbaa !186
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 0, ptr %i.l, align 8, !tbaa !188
  %i.m = invoke { ptr, i8 } @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE7emplaceIJRS8_EEES6_ISt14_List_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.m, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 2 uses
  %i.o = load <2 x i32>, ptr %2, align 8, !noalias !15216
  %i.p = load <2 x i32>, ptr %i.n, align 4, !noalias !15216
  %i.q = icmp eq <2 x i32> %i.o, %i.p             ; 2 uses
  %12 = extractelement <2 x i1> %i.q, i64 0
  %13 = extractelement <2 x i1> %i.q, i64 1
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.487, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.n)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.c, %bb.d
  %i.r = load i8, ptr %5, align 8, !tbaa !207, !range !146, !noundef !147
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.p, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !208  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.y = phi ptr [ %i.x, %bb.i ], [ @.str.261, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 172, ptr noundef %i.y)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.z = load ptr, ptr %6, align 8, !tbaa !210    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.z, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !167
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit22

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ag = load ptr, ptr %6, align 8, !tbaa !210   ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %bb.o
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !167
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21, %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %.pn, %bb.o ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  br label %bb.v

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !208 ; 4 uses
  %.not.i.i23 = icmp eq ptr %i.al, null
  br i1 %.not.i.i23, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !152 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !155
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ar = load i32, ptr %i.a, align 16, !tbaa !262
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !262
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw i64 %i.au, 32
  %i.aw = zext i32 %i.ar to i128
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !262
  %i.az = zext i32 %i.ay to i64
  %i.ba = or disjoint i64 %i.av, %i.az
  %i.bb = zext i64 %i.ba to i128
  %i.bc = shl nuw i128 %i.aw, 96
  %i.bd = shl nuw nsw i128 %i.bb, 32              ; 2 uses
  %i.be = trunc i128 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !262
  %i.bh = zext i32 %i.bg to i64
  %i.bi = or disjoint i64 %i.be, %i.bh
  %.masked.i.i.i.i.i.i.i = and i128 %i.bd, 79228162495817593519834398720
  %i.bj = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.bc
  %i.bk = zext i64 %i.bi to i128
  %i.bl = add nuw nsw i128 %i.bk, 1442695040888963407 ; 2 uses
  %i.bm = add i128 %i.bj, %i.bl
  %i.bn = lshr i128 %i.bm, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bn to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.bo = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.bp = shl nuw i128 %i.bo, 64
  %i.bq = and i128 %i.bl, 18446744073709551615
  %i.br = or disjoint i128 %i.bp, %i.bq
  %i.bs = mul i128 %i.br, 47026247687942121848144207491837523525
  %i.bt = add i128 %i.bs, 1442695040888963407     ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bu to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bv = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.bw = shl nuw i128 %i.bv, 64
  %i.bx = and i128 %i.bt, 18446744073709551615
  %i.by = or disjoint i128 %i.bw, %i.bx
  %i.bz = mul i128 %i.by, 47026247687942121848144207491837523525
  %i.ca = add i128 %i.bz, 1442695040888963407     ; 2 uses
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = lshr i128 %i.ca, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.cc to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.cd = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.ce = xor i64 %.narrow.i.i.i.i.i.i, %i.cb     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.ce, i64 %i.ce, i64 %i.cd)
  %i.cf = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = load i32, ptr %2, align 8, !tbaa !262
  store i32 %i.ch, ptr %8, align 4, !tbaa !190
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !191
  %i.cj = invoke { ptr, i8 } @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE7emplaceIJRS8_EEES6_ISt14_List_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %.fca.0.extract.i26 = extractvalue { ptr, i8 } %i.cj, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ck = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i26, i64 16 ; 2 uses
  %i.cl = load <2 x i32>, ptr %2, align 8, !noalias !15217
  %i.cm = load <2 x i32>, ptr %i.ck, align 4, !noalias !15217
  %i.cn = icmp eq <2 x i32> %i.cl, %i.cm          ; 2 uses
  %15 = extractelement <2 x i1> %i.cn, i64 0
  %16 = extractelement <2 x i1> %i.cn, i64 1
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31 unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.487, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.ck)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31 unwind label %bb.x

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31: ; preds = %bb.t, %bb.u
  %i.co = load i8, ptr %9, align 8, !tbaa !207, !range !146, !noundef !147
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.ah, label %bb.y

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit22, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit22 ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.an

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.r
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !208 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i32, label %_ZNK7testing15AssertionResult15failure_messageEv.exit33, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit33

_ZNK7testing15AssertionResult15failure_messageEv.exit33: ; preds = %bb.aa, %bb.z
  %i.cv = phi ptr [ %i.cu, %bb.aa ], [ @.str.261, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 175, ptr noundef %i.cv)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit33
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.cw = load ptr, ptr %10, align 8, !tbaa !210  ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %bb.ac
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !167
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit39

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit33
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #37
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn12 = phi { ptr, i32 } [ %i.dc, %bb.af ], [ %i.db, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.dd = load ptr, ptr %10, align 8, !tbaa !210  ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i37, label %_ZN7testing7MessageD2Ev.exit39, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38: ; preds = %bb.ag
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !167
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.dd) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit39

_ZN7testing7MessageD2Ev.exit39:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38, %bb.ag, %bb.ad
  %.pn12.pn = phi { ptr, i32 } [ %i.da, %bb.ad ], [ %.pn12, %bb.ag ], [ %.pn12, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.al

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31, %_ZN7testing7MessageD2Ev.exit36
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !208 ; 4 uses
  %.not.i.i40 = icmp eq ptr %i.di, null
  br i1 %.not.i.i40, label %_ZN7testing15AssertionResultD2Ev.exit44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !152 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41: ; preds = %bb.ai
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !155
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit44

_ZN7testing15AssertionResultD2Ev.exit44:          ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !186 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.do, %i.j
  br i1 %.not7.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit44, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i ], [ %i.do, %_ZN7testing15AssertionResultD2Ev.exit44 ] ; 2 uses
  %i.dp = load ptr, ptr %.08.i.i.i, align 8, !tbaa !186 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.08.i.i.i, i64 noundef 24) #40
  %.not.i.i.i = icmp eq ptr %i.dp, %i.j
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit44
  %i.dq = load i64, ptr %4, align 8               ; 2 uses
  %i.dr = and i64 %i.dq, 255
  %i.ds = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %i.ds)
  %i.dt = and i64 %i.dq, 254
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %4, ptr %1, align 8, !tbaa !644
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocIS9_EEE7WrappedISD_EENSI_ISE_EESG_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i unwind label %bb.ak

.noexc.i.i:                                       ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.dv = load i64, ptr %4, align 8               ; 2 uses
  %i.dw = and i64 %i.dv, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.dw  ; 4 uses
  %i.dx = add nsw i64 %notmask.i.i.i.i.i.i.i, 281474976710655
  %i.dy = or i64 %i.dx, %notmask.i.i.i.i.i.i.i
  %i.dz = icmp eq i64 %i.dy, -1
  call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.eb)
  %i.ec = and i64 %i.dv, 65536
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ec, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ed, align 8, !tbaa !155
  %i.ee = xor i64 %notmask.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.i, i64 noundef %i.ee, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %.noexc.i.i, %bb.aj
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #36
  unreachable

_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit39, %bb.x
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %_ZN7testing7MessageD2Ev.exit39 ], [ %i.cr, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.w
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn, %bb.al ], [ %i.cq, %bb.w ]
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10TryEmplaceINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.d = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  store i64 %i.d, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.e = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  %i.g = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  store i64 1, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.e, ptr %i.i, align 8, !tbaa !639
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.g, ptr %i.j, align 8, !tbaa !641
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !185
  store ptr %i.l, ptr %i.l, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.n, align 8, !tbaa !188
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i8 0, ptr %i.c, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %6, ptr %3, align 8, !tbaa !1194
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.p, align 8, !tbaa !194
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %i.q, align 8, !tbaa !277
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.o, ptr %i.r, align 8, !tbaa !277
  %i.s = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE12lazy_emplaceIiZNSF_19LazyEmplaceInternalIRS6_JRiEEES5_IS8_bEOT_DpOT0_EUlRKSP_E_EENSJ_8iteratorESV_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = extractvalue { ptr, ptr } %i.s, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.u = load i64, ptr %i.t, align 8, !tbaa !269
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i8, ptr %i.c, align 1, !tbaa !192, !range !146, !noundef !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i8 %i.w, ptr %7, align 8, !tbaa !207
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !287
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.y, align 8, !tbaa !289
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.d, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %11, align 8, !tbaa !152
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !156
  store i64 %i.ac, ptr %10, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.aa, ptr %i.ad, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 186, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %10)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  %i.ae = load ptr, ptr %11, align 8, !tbaa !152  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !155
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.aj = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !167
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #37, !inline_history !5
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit41

bb.j:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.ap, %bb.k ] ; 2 uses
  %i.ar = load ptr, ptr %11, align 8, !tbaa !152  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !155
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.aw = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i39, label %_ZN7testing7MessageD2Ev.exit41, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !167
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit41

_ZN7testing7MessageD2Ev.exit41:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bl

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %.pr = load ptr, ptr %i.x, align 8, !tbaa !208  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %.pr, align 8, !tbaa !152 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !155
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.b, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.bg = load <2 x i32>, ptr %4, align 8, !noalias !15372
  %i.bh = load <2 x i32>, ptr %i.bf, align 4, !noalias !15372
  %i.bi = icmp eq <2 x i32> %i.bg, %i.bh          ; 2 uses
  %24 = extractelement <2 x i1> %i.bi, i64 0
  %25 = extractelement <2 x i1> %i.bi, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

bb.q:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.486, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.bf)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.p, %bb.q
  %i.bj = load i8, ptr %12, align 8, !tbaa !207, !range !146, !noundef !147
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !208 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i43, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.bp = phi ptr [ %i.bo, %bb.u ], [ @.str.261, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 187, ptr noundef %i.bp)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.bq = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i44, label %_ZN7testing7MessageD2Ev.exit46, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45: ; preds = %bb.w
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !167
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit46

_ZN7testing7MessageD2Ev.exit46:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit49

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn22 = phi { ptr, i32 } [ %i.bw, %bb.z ], [ %i.bv, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.bx = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i47, label %_ZN7testing7MessageD2Ev.exit49, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.aa
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !167
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(128) %i.bx) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit49

_ZN7testing7MessageD2Ev.exit49:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, %bb.aa, %bb.x
  %.pn22.pn = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %.pn22, %bb.aa ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #37
  br label %bb.af

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit46
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !208 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i50, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !152 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !155
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.b, i64 noundef 16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ci = load i32, ptr %i.b, align 16, !tbaa !262
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !262
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw i64 %i.cl, 32
  %i.cn = zext i32 %i.ci to i128
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !262
  %i.cq = zext i32 %i.cp to i64
  %i.cr = or disjoint i64 %i.cm, %i.cq
  %i.cs = zext i64 %i.cr to i128
  %i.ct = shl nuw i128 %i.cn, 96
  %i.cu = shl nuw nsw i128 %i.cs, 32              ; 2 uses
  %i.cv = trunc i128 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !262
  %i.cy = zext i32 %i.cx to i64
  %i.cz = or disjoint i64 %i.cv, %i.cy
  %.masked.i.i.i.i.i.i.i = and i128 %i.cu, 79228162495817593519834398720
  %i.da = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.ct
  %i.db = zext i64 %i.cz to i128
  %i.dc = add nuw nsw i128 %i.db, 1442695040888963407 ; 2 uses
  %i.dd = add i128 %i.da, %i.dc
  %i.de = lshr i128 %i.dd, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.de to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.df = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.dg = shl nuw i128 %i.df, 64
  %i.dh = and i128 %i.dc, 18446744073709551615
  %i.di = or disjoint i128 %i.dg, %i.dh
  %i.dj = mul i128 %i.di, 47026247687942121848144207491837523525
  %i.dk = add i128 %i.dj, 1442695040888963407     ; 2 uses
  %i.dl = lshr i128 %i.dk, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.dl to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.dm = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.dn = shl nuw i128 %i.dm, 64
  %i.do = and i128 %i.dk, 18446744073709551615
  %i.dp = or disjoint i128 %i.dn, %i.do
  %i.dq = mul i128 %i.dp, 47026247687942121848144207491837523525
  %i.dr = add i128 %i.dq, 1442695040888963407     ; 2 uses
  %i.ds = trunc i128 %i.dr to i64
  %i.dt = lshr i128 %i.dr, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.dt to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.du = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.dv = xor i64 %.narrow.i.i.i.i.i.i, %i.ds     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.dv, i64 %i.dv, i64 %i.du)
  %i.dw = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = load i32, ptr %4, align 8, !tbaa !262
  store i32 %i.dy, ptr %15, align 4, !tbaa !190
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  store i32 %i.dx, ptr %i.dz, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %6, ptr %2, align 8, !tbaa !1194
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.ea, align 8, !tbaa !194
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %15, ptr %i.eb, align 8, !tbaa !277
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.dz, ptr %i.ec, align 8, !tbaa !277
  %i.ed = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE12lazy_emplaceIiZNSF_19LazyEmplaceInternalIRS6_JRiEEES5_IS8_bEOT_DpOT0_EUlRKSP_E_EENSJ_8iteratorESV_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ee = extractvalue { ptr, ptr } %i.ed, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !269
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i8, ptr %i.a, align 1, !tbaa !192, !range !146, !noundef !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  store i8 %i.eh, ptr %16, align 8, !tbaa !207
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr null, ptr %i.ei, align 8, !tbaa !287
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i8 0, ptr %i.ej, align 8, !tbaa !289
  %i.ek = icmp eq i8 %i.eh, 0
  br i1 %i.ek, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit49, %bb.r
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit49 ], [ %i.bl, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.bl

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ad
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.263)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.em = load ptr, ptr %20, align 8, !tbaa !152
  %i.en = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !156
  store i64 %i.eo, ptr %19, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.em, ptr %i.ep, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 190, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %19)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  %i.eq = load ptr, ptr %20, align 8, !tbaa !152  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.al
  %i.et = load i64, ptr %i.er, align 8, !tbaa !155
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.ev = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i62, label %bb.ar, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !167
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(128) %i.ev) #37, !inline_history !5
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit70

bb.an:                                            ; preds = %bb.ai
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.ao:                                            ; preds = %bb.aj
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn26 = phi { ptr, i32 } [ %i.fc, %bb.ap ], [ %i.fb, %bb.ao ] ; 2 uses
  %i.fd = load ptr, ptr %20, align 8, !tbaa !152  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.aq
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !155
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.an
  %.pn26.pn = phi { ptr, i32 } [ %i.fa, %bb.an ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn26, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.fi = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i68, label %_ZN7testing7MessageD2Ev.exit70, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !167
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(128) %i.fi) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit70

_ZN7testing7MessageD2Ev.exit70:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.am
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.am ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn26.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.bk

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %.pr104 = load ptr, ptr %i.ei, align 8, !tbaa !208 ; 4 uses
  %.not.i.i.i71 = icmp eq ptr %.pr104, null
  br i1 %.not.i.i.i71, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fm = load ptr, ptr %.pr104, align 8, !tbaa !152 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.pr104, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72: ; preds = %bb.as
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !155
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i73

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i73: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72
  call void @_ZdlPvm(ptr noundef nonnull %.pr104, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75: ; preds = %bb.ae, %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %i.fs = load <2 x i32>, ptr %4, align 8, !noalias !15373
  %i.ft = load <2 x i32>, ptr %i.fr, align 4, !noalias !15373
  %i.fu = icmp eq <2 x i32> %i.fs, %i.ft          ; 2 uses
  %27 = extractelement <2 x i1> %i.fu, i64 0
  %28 = extractelement <2 x i1> %i.fu, i64 1
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78 unwind label %bb.av

bb.au:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit75
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.486, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.fr)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78: ; preds = %bb.at, %bb.au
  %i.fv = load i8, ptr %21, align 8, !tbaa !207, !range !146, !noundef !147
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.bf, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  %i.fy = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !208 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i79, label %_ZNK7testing15AssertionResult15failure_messageEv.exit80, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit80

_ZNK7testing15AssertionResult15failure_messageEv.exit80: ; preds = %bb.ay, %bb.ax
  %i.gb = phi ptr [ %i.ga, %bb.ay ], [ @.str.261, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 191, ptr noundef %i.gb)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit80
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.gc = load ptr, ptr %22, align 8, !tbaa !210  ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i81, label %_ZN7testing7MessageD2Ev.exit83, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %bb.ba
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !167
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(128) %i.gc) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit83

_ZN7testing7MessageD2Ev.exit83:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit86

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit80
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #37
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn30 = phi { ptr, i32 } [ %i.gi, %bb.bd ], [ %i.gh, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.gj = load ptr, ptr %22, align 8, !tbaa !210  ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit86, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %bb.be
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !167
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(128) %i.gj) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit86

_ZN7testing7MessageD2Ev.exit86:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85, %bb.be, %bb.bb
  %.pn30.pn = phi { ptr, i32 } [ %i.gg, %bb.bb ], [ %.pn30, %bb.be ], [ %.pn30, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #37
  br label %bb.bj

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit78, %_ZN7testing7MessageD2Ev.exit83
  %i.gn = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !208 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.go, null
  br i1 %.not.i.i87, label %_ZN7testing15AssertionResultD2Ev.exit91, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !152 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88: ; preds = %bb.bg
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !155
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit91

_ZN7testing15AssertionResultD2Ev.exit91:          ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.gu = load ptr, ptr %i.l, align 8, !tbaa !186 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.gu, %i.l
  br i1 %.not7.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit91, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i ], [ %i.gu, %_ZN7testing15AssertionResultD2Ev.exit91 ] ; 2 uses
  %i.gv = load ptr, ptr %.08.i.i.i, align 8, !tbaa !186 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.08.i.i.i, i64 noundef 24) #40
  %.not.i.i.i92 = icmp eq ptr %i.gv, %i.l
  br i1 %.not.i.i.i92, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit91
  %i.gw = load i64, ptr %6, align 8               ; 2 uses
  %i.gx = and i64 %i.gw, 255
  %i.gy = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %i.gy)
  %i.gz = and i64 %i.gw, 254
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %6, ptr %1, align 8, !tbaa !644
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocIS9_EEE7WrappedISD_EENSI_ISE_EESG_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i unwind label %bb.bi

.noexc.i.i:                                       ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.hb = load i64, ptr %6, align 8               ; 2 uses
  %i.hc = and i64 %i.hb, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.hc  ; 4 uses
  %i.hd = add nsw i64 %notmask.i.i.i.i.i.i.i, 281474976710655
  %i.he = or i64 %i.hd, %notmask.i.i.i.i.i.i.i
  %i.hf = icmp eq i64 %i.he, -1
  call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp ne i64 %i.hc, 0
  call void @llvm.assume(i1 %i.hg)
  %i.hh = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.hh)
  %i.hi = and i64 %i.hb, 65536
  %.not.i.i.i.i.i.i = icmp ne i64 %i.hi, 0
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hj, align 8, !tbaa !155
  %i.hk = xor i64 %notmask.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.k, i64 noundef %i.hk, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %.noexc.i.i, %bb.bh
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #36
  unreachable

_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit86, %bb.av
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit86 ], [ %i.fx, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN7testing7MessageD2Ev.exit70, %bb.ag
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %bb.bj ], [ %.pn26.pn.pn, %_ZN7testing7MessageD2Ev.exit70 ], [ %i.el, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.af, %_ZN7testing7MessageD2Ev.exit41, %bb.c
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn, %bb.bk ], [ %.pn22.pn.pn, %bb.af ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit41 ], [ %i.z, %bb.c ]
  call void @_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn
}
end_hunk_5
begin_hunk_6_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal13ModifiersTestENS0_11TemplateSelINS4_26gtest_suite_ModifiersTest_14TryEmplaceHintEEENS0_5TypesINS3_15linked_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSH_iEEEEEJNSB_INS4_4EnumESH_SI_SJ_NSK_ISL_IKSQ_SH_EEEEENSB_INS4_9EnumClassEiSI_SJ_NSK_ISL_IKSV_iEEEEENSB_IiNS4_17NonStandardLayoutESI_SJ_NSK_ISL_IKiS10_EEEEENSB_IS10_iSI_SJ_NSK_ISL_IKS10_iEEEEEEEEE8RegisterEPKcNS0_12CodeLocationES1C_S1C_iRKSt6vectorISH_SaISH_EE:bb.a
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gp, %bb.al ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ] ; 2 uses
  %i.hg = load ptr, ptr %12, align 8, !tbaa !152  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !155
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ak
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.go, %bb.ak ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hl = load ptr, ptr %6, align 8, !tbaa !152   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.by
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hn = load i64, ptr %i.by, align 8, !tbaa !155
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.aj
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.aj ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hp = load ptr, ptr %7, align 8, !tbaa !152   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.bc
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.hr = load i64, ptr %i.bc, align 8, !tbaa !155
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ai ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.ht = load ptr, ptr %8, align 8, !tbaa !152   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.an
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hv = load i64, ptr %i.an, align 8, !tbaa !155
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ah
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ah ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 2 uses
  %i.hx = load ptr, ptr %9, align 8, !tbaa !152   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.w
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.hz = load i64, ptr %i.w, align 8, !tbaa !155
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.ag ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 2 uses
  %i.ib = load ptr, ptr %10, align 8, !tbaa !152  ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.c
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.id = load i64, ptr %i.c, align 8, !tbaa !155
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.af ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

bb.ap:                                            ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %15, align 8, !tbaa !152  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fr
  br i1 %i.ih, label %_ZN7testing8internal12CodeLocationD2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.ap
  %i.ii = load i64, ptr %i.fr, align 8, !tbaa !155
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit115

_ZN7testing8internal12CodeLocationD2Ev.exit115:   ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113 ], [ %i.if, %bb.ap ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS3_15linked_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS3_15linked_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #42 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !167
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1190, align 8           ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon.2585, align 8           ; 7 uses
  %i.b = alloca [4 x i32], align 16               ; 7 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.2585, align 8           ; 7 uses
  %4 = alloca %"struct.std::pair.114", align 8    ; 12 uses
  %5 = alloca %"struct.absl::lts_20260526::container_internal::Generator", align 1 ; 3 uses
  %6 = alloca %"class.absl::lts_20260526::linked_hash_map.1173", align 8 ; 20 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"struct.std::pair.114", align 4   ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.d = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  store i64 %i.d, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.e = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  %i.g = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !154
  store i64 1, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.e, ptr %i.i, align 8, !tbaa !639
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.g, ptr %i.j, align 8, !tbaa !641
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !185
  store ptr %i.l, ptr %i.l, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.n, align 8, !tbaa !188
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i8 0, ptr %i.c, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %6, ptr %3, align 8, !tbaa !1194
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.p, align 8, !tbaa !194
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %i.q, align 8, !tbaa !277
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.o, ptr %i.r, align 8, !tbaa !277
  %i.s = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE12lazy_emplaceIiZNSF_19LazyEmplaceInternalIRS6_JRiEEES5_IS8_bEOT_DpOT0_EUlRKSP_E_EENSJ_8iteratorESV_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = extractvalue { ptr, ptr } %i.s, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.u = load i64, ptr %i.t, align 8, !tbaa !269
  %i.v = inttoptr i64 %i.u to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load <2 x i32>, ptr %4, align 8, !noalias !15630
  %i.y = load <2 x i32>, ptr %i.w, align 4, !noalias !15630
  %i.z = icmp eq <2 x i32> %i.x, %i.y             ; 2 uses
  %14 = extractelement <2 x i1> %i.z, i64 0
  %15 = extractelement <2 x i1> %i.z, i64 1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.487, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.w)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.c, %bb.d
  %i.aa = load i8, ptr %7, align 8, !tbaa !207, !range !146, !noundef !147
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.p, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.ag, %bb.i ], [ @.str.261, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 202, ptr noundef %i.ah)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ai = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !167
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %i.ai) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit22

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.an, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ap = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %bb.o
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !167
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21, %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.l ], [ %.pn, %bb.o ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  br label %bb.v

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !208 ; 4 uses
  %.not.i.i23 = icmp eq ptr %i.au, null
  br i1 %.not.i.i23, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !152 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !155
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.b, i64 noundef 16)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ba = load i32, ptr %i.b, align 16, !tbaa !262
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !262
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw i64 %i.bd, 32
  %i.bf = zext i32 %i.ba to i128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !262
  %i.bi = zext i32 %i.bh to i64
  %i.bj = or disjoint i64 %i.be, %i.bi
  %i.bk = zext i64 %i.bj to i128
  %i.bl = shl nuw i128 %i.bf, 96
  %i.bm = shl nuw nsw i128 %i.bk, 32              ; 2 uses
  %i.bn = trunc i128 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !262
  %i.bq = zext i32 %i.bp to i64
  %i.br = or disjoint i64 %i.bn, %i.bq
  %.masked.i.i.i.i.i.i.i = and i128 %i.bm, 79228162495817593519834398720
  %i.bs = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.bl
  %i.bt = zext i64 %i.br to i128
  %i.bu = add nuw nsw i128 %i.bt, 1442695040888963407 ; 2 uses
  %i.bv = add i128 %i.bs, %i.bu
  %i.bw = lshr i128 %i.bv, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bw to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.bx = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.by = shl nuw i128 %i.bx, 64
  %i.bz = and i128 %i.bu, 18446744073709551615
  %i.ca = or disjoint i128 %i.by, %i.bz
  %i.cb = mul i128 %i.ca, 47026247687942121848144207491837523525
  %i.cc = add i128 %i.cb, 1442695040888963407     ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.cd to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.ce = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.cf = shl nuw i128 %i.ce, 64
  %i.cg = and i128 %i.cc, 18446744073709551615
  %i.ch = or disjoint i128 %i.cf, %i.cg
  %i.ci = mul i128 %i.ch, 47026247687942121848144207491837523525
  %i.cj = add i128 %i.ci, 1442695040888963407     ; 2 uses
  %i.ck = trunc i128 %i.cj to i64
  %i.cl = lshr i128 %i.cj, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.cl to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.cm = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.cn = xor i64 %.narrow.i.i.i.i.i.i, %i.ck     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.cn, i64 %i.cn, i64 %i.cm)
  %i.co = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = load i32, ptr %4, align 8, !tbaa !262
  store i32 %i.cq, ptr %10, align 4, !tbaa !190
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 0, ptr %i.a, align 1, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %6, ptr %2, align 8, !tbaa !1194
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.cs, align 8, !tbaa !194
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %i.ct, align 8, !tbaa !277
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !277
  %i.cv = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE12lazy_emplaceIiZNSF_19LazyEmplaceInternalIRS6_JRiEEES5_IS8_bEOT_DpOT0_EUlRKSP_E_EENSJ_8iteratorESV_OT0_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cw = extractvalue { ptr, ptr } %i.cv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !269
  %i.cy = inttoptr i64 %i.cx to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.da = load <2 x i32>, ptr %4, align 8, !noalias !15631
  %i.db = load <2 x i32>, ptr %i.cz, align 4, !noalias !15631
  %i.dc = icmp eq <2 x i32> %i.da, %i.db          ; 2 uses
  %17 = extractelement <2 x i1> %i.dc, i64 0
  %18 = extractelement <2 x i1> %i.dc, i64 1
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit30 unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.487, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.cz)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit30 unwind label %bb.x

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit30: ; preds = %bb.t, %bb.u
  %i.dd = load i8, ptr %11, align 8, !tbaa !207, !range !146, !noundef !147
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.ah, label %bb.y

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit22, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit22 ], [ %i.ad, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.an

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !208 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.di, null
  br i1 %.not.i.i31, label %_ZNK7testing15AssertionResult15failure_messageEv.exit32, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit32

_ZNK7testing15AssertionResult15failure_messageEv.exit32: ; preds = %bb.aa, %bb.z
  %i.dk = phi ptr [ %i.dj, %bb.aa ], [ @.str.261, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 205, ptr noundef %i.dk)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit32
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dl = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i33, label %_ZN7testing7MessageD2Ev.exit35, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34: ; preds = %bb.ac
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !167
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(128) %i.dl) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit35

_ZN7testing7MessageD2Ev.exit35:                   ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit38

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit32
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn12 = phi { ptr, i32 } [ %i.dr, %bb.af ], [ %i.dq, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.ds = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i36, label %_ZN7testing7MessageD2Ev.exit38, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i37

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i37: ; preds = %bb.ag
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !167
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(128) %i.ds) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit38

_ZN7testing7MessageD2Ev.exit38:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i37, %bb.ag, %bb.ad
  %.pn12.pn = phi { ptr, i32 } [ %i.dp, %bb.ad ], [ %.pn12, %bb.ag ], [ %.pn12, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #37
  br label %bb.al

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit30, %_ZN7testing7MessageD2Ev.exit35
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !208 ; 4 uses
  %.not.i.i39 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i39, label %_ZN7testing15AssertionResultD2Ev.exit43, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !152 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i40: ; preds = %bb.ai
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !155
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i40
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit43

_ZN7testing15AssertionResultD2Ev.exit43:          ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !186 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.ed, %i.l
  br i1 %.not7.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit43, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i ], [ %i.ed, %_ZN7testing15AssertionResultD2Ev.exit43 ] ; 2 uses
  %i.ee = load ptr, ptr %.08.i.i.i, align 8, !tbaa !186 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.08.i.i.i, i64 noundef 24) #40
  %.not.i.i.i = icmp eq ptr %i.ee, %i.l
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit43
  %i.ef = load i64, ptr %6, align 8               ; 2 uses
  %i.eg = and i64 %i.ef, 255
  %i.eh = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %i.eh)
  %i.ei = and i64 %i.ef, 254
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %6, ptr %1, align 8, !tbaa !644
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocIS9_EEE7WrappedISD_EENSI_ISE_EESG_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i unwind label %bb.ak

.noexc.i.i:                                       ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.ek = load i64, ptr %6, align 8               ; 2 uses
  %i.el = and i64 %i.ek, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.el  ; 4 uses
  %i.em = add nsw i64 %notmask.i.i.i.i.i.i.i, 281474976710655
  %i.en = or i64 %i.em, %notmask.i.i.i.i.i.i.i
  %i.eo = icmp eq i64 %i.en, -1
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.eq)
  %i.er = and i64 %i.ek, 65536
  %.not.i.i.i.i.i.i = icmp ne i64 %i.er, 0
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.es, align 8, !tbaa !155
  %i.et = xor i64 %notmask.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.k, i64 noundef %i.et, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %.noexc.i.i, %bb.aj
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #36
  unreachable

_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EEED2Ev.exit.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit38, %bb.x
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %_ZN7testing7MessageD2Ev.exit38 ], [ %i.dg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.w
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn, %bb.al ], [ %i.df, %bb.w ]
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_5EraseINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.hu = load ptr, ptr %15, align 8, !tbaa !152
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !156
  store i64 %i.hw, ptr %14, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hu, ptr %i.hx, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, i64 92, ptr nonnull @.str.82, i32 noundef 239, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %14)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  %i.hy = load ptr, ptr %15, align 8, !tbaa !152  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ax
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !155
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.id = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i112 = icmp eq ptr %i.id, null
  br i1 %.not.i.i112, label %_ZN7testing7MessageD2Ev.exit114, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !167
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(128) %i.id) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit114

_ZN7testing7MessageD2Ev.exit114:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.ih = load ptr, ptr %i.hs, align 8, !tbaa !208 ; 4 uses
  %.not.i.i.i115 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i115, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN7testing7MessageD2Ev.exit114
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !152 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ay
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !155
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZN7testing7MessageD2Ev.exit114, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.cu

bb.az:                                            ; preds = %bb.at
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit121

bb.ba:                                            ; preds = %bb.au
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.bb:                                            ; preds = %bb.av
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.aw
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn53 = phi { ptr, i32 } [ %i.iq, %bb.bc ], [ %i.ip, %bb.bb ] ; 2 uses
  %i.ir = load ptr, ptr %15, align 8, !tbaa !152  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.bd
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !155
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.ba
  %.pn53.pn = phi { ptr, i32 } [ %i.io, %bb.ba ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %.pn53, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.iw = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !167
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(128) %i.iw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit121

_ZN7testing7MessageD2Ev.exit121:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.az
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.in, %bb.az ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn53.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.da

bb.be:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 1, ptr %i.b, align 4, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %.not5.i.i = icmp eq ptr %.sroa.0238.0.lcssa, %.sroa.10243.0.lcssa ; 2 uses
  br i1 %.not5.i.i, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread, label %.lr.ph.i.i127

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread: ; preds = %bb.be
  store i64 0, ptr %i.c, align 8, !tbaa !154
  br label %bb.bg

.lr.ph.i.i127:                                    ; preds = %bb.be
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.jb = load <2 x i32>, ptr %i.ja, align 4      ; 3 uses
  %i.jc = add i64 %.sroa.10243.0.lcssa480, -8
  %i.jd = sub i64 %i.jc, %.sroa.0238.0.lcssa479   ; 2 uses
  %i.je = lshr i64 %i.jd, 3
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  %min.iters.check482 = icmp ult i64 %i.jd, 24
  br i1 %min.iters.check482, label %scalar.ph481.preheader, label %vector.ph483

vector.ph483:                                     ; preds = %.lr.ph.i.i127
  %n.vec484 = and i64 %i.jf, 4611686018427387900  ; 3 uses
  %i.jg = shl i64 %n.vec484, 3
  %i.jh = getelementptr i8, ptr %.sroa.0238.0.lcssa, i64 %i.jg
  %broadcast.splat = shufflevector <2 x i32> %i.jb, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat486 = shufflevector <2 x i32> %i.jb, <2 x i32> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph483
  %index488 = phi i64 [ 0, %vector.ph483 ], [ %index.next496, %vector.body487 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph483 ], [ %i.js, %vector.body487 ]
  %vec.phi489 = phi <2 x i64> [ zeroinitializer, %vector.ph483 ], [ %i.jt, %vector.body487 ]
  %i.ji = shl i64 %index488, 3                    ; 2 uses
  %next.gep490 = getelementptr i8, ptr %.sroa.0238.0.lcssa, i64 %i.ji
  %i.jj = getelementptr i8, ptr %.sroa.0238.0.lcssa, i64 %i.ji
  %next.gep491 = getelementptr i8, ptr %i.jj, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep490, align 4 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec492 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec493 = load <4 x i32>, ptr %next.gep491, align 4 ; 2 uses
  %strided.vec494 = shufflevector <4 x i32> %wide.vec493, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec495 = shufflevector <4 x i32> %wide.vec493, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.jk = icmp eq <2 x i32> %strided.vec, %broadcast.splat
  %i.jl = icmp eq <2 x i32> %strided.vec494, %broadcast.splat
  %i.jm = icmp eq <2 x i32> %strided.vec492, %broadcast.splat486
  %i.jn = icmp eq <2 x i32> %strided.vec495, %broadcast.splat486
  %i.jo = select <2 x i1> %i.jk, <2 x i1> %i.jm, <2 x i1> zeroinitializer
  %i.jp = select <2 x i1> %i.jl, <2 x i1> %i.jn, <2 x i1> zeroinitializer
  %i.jq = zext <2 x i1> %i.jo to <2 x i64>
  %i.jr = zext <2 x i1> %i.jp to <2 x i64>
  %i.js = add <2 x i64> %vec.phi, %i.jq           ; 2 uses
  %i.jt = add <2 x i64> %vec.phi489, %i.jr        ; 2 uses
  %index.next496 = add nuw i64 %index488, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next496, %n.vec484
  br i1 %i.ju, label %middle.block497, label %vector.body487, !llvm.loop !15801

middle.block497:                                  ; preds = %vector.body487
  %bin.rdx = add <2 x i64> %i.jt, %i.js
  %i.jv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n498 = icmp eq i64 %i.jf, %n.vec484
  br i1 %cmp.n498, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit, label %scalar.ph481.preheader

scalar.ph481.preheader:                           ; preds = %.lr.ph.i.i127, %middle.block497
  %.07.i.i.ph = phi i64 [ 0, %.lr.ph.i.i127 ], [ %i.jv, %middle.block497 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.0238.0.lcssa, %.lr.ph.i.i127 ], [ %i.jh, %middle.block497 ]
  br label %scalar.ph481

scalar.ph481:                                     ; preds = %scalar.ph481.preheader, %scalar.ph481
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph481 ], [ %.07.i.i.ph, %scalar.ph481.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.jz, %scalar.ph481 ], [ %.sroa.03.06.i.i.ph, %scalar.ph481.preheader ] ; 2 uses
  %i.jw = load <2 x i32>, ptr %.sroa.03.06.i.i, align 4
  %i.jx = icmp eq <2 x i32> %i.jw, %i.jb          ; 2 uses
  %24 = extractelement <2 x i1> %i.jx, i64 0
  %25 = extractelement <2 x i1> %i.jx, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  %i.jy = zext i1 %26 to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.jy ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8 ; 2 uses
  %.not.i.i128 = icmp eq ptr %i.jz, %.sroa.10243.0.lcssa
  br i1 %.not.i.i128, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit, label %scalar.ph481, !llvm.loop !15802

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit: ; preds = %scalar.ph481, %middle.block497
  %spec.select.i.i.lcssa = phi i64 [ %i.jv, %middle.block497 ], [ %spec.select.i.i, %scalar.ph481 ] ; 2 uses
  store i64 %spec.select.i.i.lcssa, ptr %i.c, align 8, !tbaa !154
  %i.ka = icmp eq i64 %spec.select.i.i.lcssa, 1
  br i1 %i.ka, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bh

bb.bg:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.494, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bh

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.kb = load i8, ptr %16, align 8, !tbaa !207, !range !146, !noundef !147
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.br, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.cd

bb.bi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.ke = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !208 ; 2 uses
  %.not.i.i131 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i131, label %_ZNK7testing15AssertionResult15failure_messageEv.exit132, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit132

_ZNK7testing15AssertionResult15failure_messageEv.exit132: ; preds = %bb.bk, %bb.bj
  %i.kh = phi ptr [ %i.kg, %bb.bk ], [ @.str.261, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 240, ptr noundef %i.kh)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit132
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.ki = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i133, label %_ZN7testing7MessageD2Ev.exit135, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134: ; preds = %bb.bm
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !167
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(128) %i.ki) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit135

_ZN7testing7MessageD2Ev.exit135:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit138

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit132
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn57 = phi { ptr, i32 } [ %i.ko, %bb.bp ], [ %i.kn, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.kp = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i136, label %_ZN7testing7MessageD2Ev.exit138, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.bq
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !167
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit138

_ZN7testing7MessageD2Ev.exit138:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, %bb.bq, %bb.bn
  %.pn57.pn = phi { ptr, i32 } [ %i.km, %bb.bn ], [ %.pn57, %bb.bq ], [ %.pn57, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #37
  br label %bb.cd

bb.br:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit135
  %i.kt = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !208 ; 4 uses
  %.not.i.i139 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i139, label %_ZN7testing15AssertionResultD2Ev.exit143, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !152 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140: ; preds = %bb.bs
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !155
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit143

_ZN7testing15AssertionResultD2Ev.exit143:         ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  %i.la = ptrtoint ptr %.sroa.10243.0.lcssa to i64
  %i.lb = ptrtoint ptr %.sroa.0238.0.lcssa to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 5 uses
  %i.ld = icmp ugt i64 %i.lc, 9223372036854775800
  br i1 %i.ld, label %.noexc.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit143
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #39
          to label %.noexc146 unwind label %bb.ce

.noexc146:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit143
  br i1 %.not5.i.i, label %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr null, i64 %i.lc
  br label %bb.bt

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lc) #42
          to label %.noexc147 unwind label %bb.ce ; 4 uses

.noexc147:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lc
  %i.lh = and i64 %i.lc, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lf, ptr align 4 %.sroa.0238.0.lcssa, i64 %i.lh, i1 false), !noalias !15823
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.lf, i64 %i.lh
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, %.noexc147
  %.sroa.2.0 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.lf, %.noexc147 ]
  %.sink.i = phi ptr [ %i.le, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.lg, %.noexc147 ]
  %.0.lcssa.i.i.i.i.i.i.i.i145 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i, %.noexc147 ]
  store i32 3, ptr %20, align 8, !tbaa !809, !alias.scope !15824
  %i.li = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store ptr %.sroa.2.0, ptr %i.li, align 8, !tbaa !800, !alias.scope !15824
  %i.lj = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i145, ptr %i.lj, align 8, !tbaa !810, !alias.scope !15824
  %i.lk = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 3 uses
  store ptr %.sink.i, ptr %i.lk, align 8, !tbaa !801, !alias.scope !15824
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !15825)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !alias.scope !15825
  %i.ll = load i64, ptr %5, align 8, !noalias !15825
  %i.lm = lshr i64 %i.ll, 17                      ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %.not.i148 = icmp eq i64 %i.lm, 0
  br i1 %.not.i148, label %_ZNSt6vectorISt4pairIiiESaIS1_EE7reserveEm.exit.i150, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i149

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i149: ; preds = %bb.bt
  %i.lo = shl nuw nsw i64 %i.lm, 3
  %i.lp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lo) #42
          to label %.noexc159 unwind label %bb.cf ; 4 uses

.noexc159:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i149
  %i.lq = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.lp, ptr %21, align 8, !tbaa !813, !alias.scope !15825
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !814, !alias.scope !15825
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lm ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_8EraseKeyINS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 1, ptr %i.b, align 4, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.fy = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE4findIiEENSJ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0210.2)
          to label %.noexc89 unwind label %bb.aq  ; 2 uses

.noexc89:                                         ; preds = %bb.aj
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0      ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE5eraseIiEEmRS7_.exit, label %bb.ak

bb.ak:                                            ; preds = %.noexc89
  %i.gb = extractvalue { ptr, ptr } %i.fy, 1
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !269
  %i.gd = inttoptr i64 %i.gc to ptr               ; 2 uses
  %i.ge = load i64, ptr %4, align 8
  %i.gf = and i64 %i.ge, 254
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext true, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE5eraseENSJ_8iteratorE.exit.i unwind label %bb.aq

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.fz, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE5eraseENSJ_8iteratorE.exit.i unwind label %bb.aq

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE5eraseENSJ_8iteratorE.exit.i: ; preds = %bb.am, %bb.al
  %i.gh = load i64, ptr %i.au, align 8, !tbaa !837
  %i.gi = add i64 %i.gh, -1
  store i64 %i.gi, ptr %i.au, align 8, !tbaa !837
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #37
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef 24) #40
  br label %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE5eraseIiEEmRS7_.exit

_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE5eraseIiEEmRS7_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE5eraseENSJ_8iteratorE.exit.i, %.noexc89
  %.0.i = phi i64 [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiiEEEEJNS0_15linked_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS7_EEE7WrappedISB_EENSG_ISC_EESE_EE5eraseENSJ_8iteratorE.exit.i ], [ 0, %.noexc89 ] ; 2 uses
  store i64 %.0.i, ptr %i.c, align 8, !tbaa !154
  %i.gj = load i32, ptr %i.b, align 4, !tbaa !262, !noalias !16277
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp eq i64 %.0.i, %i.gk
  br i1 %i.gl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE5eraseIiEEmRS7_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.aq

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052615linked_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE5eraseIiEEmRS7_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.495, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.gm = load i8, ptr %10, align 8, !tbaa !207, !range !146, !noundef !147
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.ba, label %bb.ar

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit83, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt4pairIKiiEED2Ev.exit77
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit83 ], [ %.pn35.pn.pn, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt4pairIKiiEED2Ev.exit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.body

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.aj
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.bf

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !208 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95

_ZNK7testing15AssertionResult15failure_messageEv.exit95: ; preds = %bb.at, %bb.as
  %i.gs = phi ptr [ %i.gr, %bb.at ], [ @.str.261, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 262, ptr noundef %i.gs)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.gt = load ptr, ptr %11, align 8, !tbaa !210  ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.av
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !167
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(128) %i.gt) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit101

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #37
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn43 = phi { ptr, i32 } [ %i.gz, %bb.ay ], [ %i.gy, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.ha = load ptr, ptr %11, align 8, !tbaa !210  ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit101, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100: ; preds = %bb.az
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !167
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(128) %i.ha) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit101

_ZN7testing7MessageD2Ev.exit101:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100, %bb.az, %bb.aw
  %.pn43.pn = phi { ptr, i32 } [ %i.gx, %bb.aw ], [ %.pn43, %bb.az ], [ %.pn43, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #37
  br label %bb.bf

bb.ba:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit98
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !208 ; 4 uses
  %.not.i.i102 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i102, label %_ZN7testing15AssertionResultD2Ev.exit106, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !152 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103: ; preds = %bb.bb
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !155
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit106

_ZN7testing15AssertionResultD2Ev.exit106:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 0, ptr %i.d, align 4, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.hl = load ptr, ptr %i.as, align 8, !tbaa !186 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.hl, %i.as
  br i1 %.not5.i.i, label %_ZSt5countISt14_List_iteratorISt4pairIKiiEES3_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit.thread, label %.lr.ph.i.i107

_ZSt5countISt14_List_iteratorISt4pairIKiiEES3_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit.thread: ; preds = %_ZN7testing15AssertionResultD2Ev.exit106
  store i64 0, ptr %i.e, align 8, !tbaa !154
  br label %bb.bd

.lr.ph.i.i107:                                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit106
  %i.hm = load <2 x i32>, ptr %.sroa.0210.2, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph.i.i107
  %.07.i.i = phi i64 [ 0, %.lr.ph.i.i107 ], [ %spec.select.i.i, %bb.bc ]
  %.sroa.03.06.i.i = phi ptr [ %i.hl, %.lr.ph.i.i107 ], [ %i.hr, %bb.bc ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16
  %i.ho = load <2 x i32>, ptr %i.hn, align 4
  %i.hp = icmp eq <2 x i32> %i.ho, %i.hm          ; 2 uses
  %21 = extractelement <2 x i1> %i.hp, i64 0
  %22 = extractelement <2 x i1> %i.hp, i64 1
  %23 = select i1 %21, i1 %22, i1 false
  %i.hq = zext i1 %23 to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.hq ; 3 uses
  %i.hr = load ptr, ptr %.sroa.03.06.i.i, align 8, !tbaa !186 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.hr, %i.as
  br i1 %.not.i.i108, label %_ZSt5countISt14_List_iteratorISt4pairIKiiEES3_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit, label %bb.bc, !llvm.loop !16258

_ZSt5countISt14_List_iteratorISt4pairIKiiEES3_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit: ; preds = %bb.bc
  store i64 %spec.select.i.i, ptr %i.e, align 8, !tbaa !154
  %i.hs = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.hs, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZSt5countISt14_List_iteratorISt4pairIKiiEES3_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit.thread, %_ZSt5countISt14_List_iteratorISt4pairIKiiEES3_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bg

bb.be:                                            ; preds = %_ZSt5countISt14_List_iteratorISt4pairIKiiEES3_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.496, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bg

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.ht = load i8, ptr %13, align 8, !tbaa !207, !range !146, !noundef !147
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.bq, label %bb.bh

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101, %bb.aq
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %_ZN7testing7MessageD2Ev.exit101 ], [ %i.go, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %.body

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.cc

bb.bh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !208 ; 2 uses
  %.not.i.i111 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i111, label %_ZNK7testing15AssertionResult15failure_messageEv.exit112, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !152
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit112

_ZNK7testing15AssertionResult15failure_messageEv.exit112: ; preds = %bb.bj, %bb.bi
  %i.hz = phi ptr [ %i.hy, %bb.bj ], [ @.str.261, %bb.bi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 263, ptr noundef %i.hz)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit112
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.ia = load ptr, ptr %14, align 8, !tbaa !210  ; 3 uses
  %.not.i.i113 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i113, label %_ZN7testing7MessageD2Ev.exit115, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114: ; preds = %bb.bl
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !167
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(128) %i.ia) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit115

_ZN7testing7MessageD2Ev.exit115:                  ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bh
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit118

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit112
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #37
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn47 = phi { ptr, i32 } [ %i.ig, %bb.bo ], [ %i.if, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.ih = load ptr, ptr %14, align 8, !tbaa !210  ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.bp
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !167
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(128) %i.ih) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117, %bb.bp, %bb.bm
  %.pn47.pn = phi { ptr, i32 } [ %i.ie, %bb.bm ], [ %.pn47, %bb.bp ], [ %.pn47, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #37
  br label %bb.cc

bb.bq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit115
  %i.il = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !208 ; 4 uses
  %.not.i.i119 = icmp eq ptr %i.im, null
  br i1 %.not.i.i119, label %_ZN7testing15AssertionResultD2Ev.exit123, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !152 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120: ; preds = %bb.br
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !155
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit123

_ZN7testing15AssertionResultD2Ev.exit123:         ; preds = %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0210.2, i64 8 ; 2 uses
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = sub i64 %i.bk, %i.it                    ; 5 uses
  %i.iv = icmp ugt i64 %i.iu, 9223372036854775800
  br i1 %i.iv, label %.noexc.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit123
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #39
          to label %.noexc126 unwind label %bb.cd

.noexc126:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit123
  %.not.i.i.i.i.i124 = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, %.sroa.0210.2
  br i1 %.not.i.i.i.i.i124, label %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr null, i64 %i.iu
  br label %bb.bs

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.ix = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #42
          to label %.noexc127 unwind label %bb.cd ; 4 uses

.noexc127:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iu
  %i.iz = and i64 %i.iu, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ix, ptr nonnull align 4 %i.is, i64 %i.iz, i1 false), !noalias !16278
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ix, i64 %i.iz
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, %.noexc127
  %.sroa.2.0 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.ix, %.noexc127 ]
  %.sink.i = phi ptr [ %i.iw, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.iy, %.noexc127 ]
  %.0.lcssa.i.i.i.i.i.i.i.i125 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i, %.noexc127 ]
  store i32 3, ptr %17, align 8, !tbaa !809, !alias.scope !16279
  %i.ja = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %.sroa.2.0, ptr %i.ja, align 8, !tbaa !800, !alias.scope !16279
  %i.jb = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i125, ptr %i.jb, align 8, !tbaa !810, !alias.scope !16279
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  store ptr %.sink.i, ptr %i.jc, align 8, !tbaa !801, !alias.scope !16279
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !16280)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !alias.scope !16280
  %i.jd = load i64, ptr %4, align 8, !noalias !16280
  %i.je = lshr i64 %i.jd, 17                      ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %.not.i128 = icmp eq i64 %i.je, 0
  br i1 %.not.i128, label %_ZNSt6vectorISt4pairIiiESaIS1_EE7reserveEm.exit.i130, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i129

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i129: ; preds = %bb.bs
  %i.jg = shl nuw nsw i64 %i.je, 3
  %i.jh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jg) #42
          to label %.noexc139 unwind label %bb.ce ; 4 uses

end_hunk_8
