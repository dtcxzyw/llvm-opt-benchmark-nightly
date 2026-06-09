inline.NumInlined: 640
inline.NumDeleted: 371
begin_hunk_0_@_ZN8v8_crdtp16ObjectSerializerC2Ev:bb.a

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.p = add i64 %.sroa.speculated.i.i.i.i, %i.n  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 9223372036854775807)
  %i.s = select i1 %i.q, i64 9223372036854775807, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #15 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 2 uses
  store i8 %i.b, ptr %i.u, align 1
  %i.v = icmp sgt i64 %i.n, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #18
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.t, ptr %i.d, align 8
  store ptr %i.w, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store ptr %i.x, ptr %i.g, align 8
  br label %_ZN8v8_crdtp19ContainerSerializerC2EPSt6vectorIhSaIhEEh.exit

_ZN8v8_crdtp19ContainerSerializerC2EPSt6vectorIhSaIhEEh.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  ret void
}

declare noundef zeroext i8 @_ZN8v8_crdtp4cbor30EncodeIndefiniteLengthMapStartEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8v8_crdtp16ObjectSerializerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8v8_crdtp16ObjectSerializer6FinishEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector", align 16      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN8v8_crdtp19ContainerSerializer10EncodeStopEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.b = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.b, ptr %2, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %i.c, align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN8v8_crdtp12Serializable4FromESt6vectorIhSaIhEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull %2) #16
  %i.f = load ptr, ptr %2, align 16               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 16
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.j) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN8v8_crdtp12Serializable4FromESt6vectorIhSaIhEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN8v8_crdtp18ProtocolTypeTraitsIdvE11DeserializeEPNS_17DeserializerStateEPd(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = tail call noundef i32 @_ZNK8v8_crdtp4cbor13CBORTokenizer8TokenTagEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK8v8_crdtp4cbor13CBORTokenizer8GetInt32Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16
  %i.e = sitofp i32 %i.d to double
  store double %i.e, ptr %1, align 8
  br label %_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK8v8_crdtp4cbor13CBORTokenizer8TokenTagEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16
  %.not = icmp eq i32 %i.f, 5
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call { i32, i64 } @_ZNK8v8_crdtp4cbor13CBORTokenizer6StatusEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16
  %i.h = extractvalue { i32, i64 } %i.g, 0
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit

bb.e:                                             ; preds = %bb.d
  %i.j = tail call { i32, i64 } @_ZNK8v8_crdtp4cbor13CBORTokenizer6StatusEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16
  %i.k = extractvalue { i32, i64 } %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 51, ptr %i.l, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.k, ptr %.sroa.42.0..sroa_idx.i, align 8
  br label %_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit

bb.f:                                             ; preds = %bb.c
  %i.m = tail call noundef double @_ZNK8v8_crdtp4cbor13CBORTokenizer9GetDoubleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16
  store double %i.m, ptr %1, align 8
  br label %_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit

_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %.0
}

declare noundef double @_ZNK8v8_crdtp4cbor13CBORTokenizer9GetDoubleEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8v8_crdtp18ProtocolTypeTraitsIdvE9SerializeEdPSt6vectorIhSaIhEE(double noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN8v8_crdtp4cbor12EncodeDoubleEdPSt6vectorIhSaIhEE(double noundef %0, ptr noundef %1) #16
  ret void
}

declare void @_ZN8v8_crdtp4cbor12EncodeDoubleEdPSt6vectorIhSaIhEE(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8v8_crdtp15DeferredMessage16FromSerializableESt10unique_ptrINS_12SerializableESt14default_deleteIS2_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.11") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN8v8_crdtp23OutgoingDeferredMessageESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15, !noalias !31 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !noalias !31
  store ptr null, ptr %1, align 8, !noalias !31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8v8_crdtp23OutgoingDeferredMessageE, i64 16), ptr %i.a, align 8, !noalias !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !31
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8v8_crdtp15DeferredMessage8FromSpanESt4spanIKhLm18446744073709551615EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.11") align 8 captures(none) initializes((0, 8)) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN8v8_crdtp23IncomingDeferredMessageESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15, !noalias !34 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8v8_crdtp23IncomingDeferredMessageE, i64 16), ptr %i.a, align 8, !noalias !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !34
  store ptr %1, ptr %i.c, align 8, !noalias !34
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !34
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN8v8_crdtp18ProtocolTypeTraitsISt10unique_ptrINS_15DeferredMessageESt14default_deleteIS2_EEvE11DeserializeEPNS_17DeserializerStateEPS5_(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = tail call noundef i32 @_ZNK8v8_crdtp4cbor13CBORTokenizer8TokenTagEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16
  %.not = icmp eq i32 %i.b, 12                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZNK8v8_crdtp4cbor13CBORTokenizer6StatusEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call { i32, i64 } @_ZNK8v8_crdtp4cbor13CBORTokenizer6StatusEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16
  %i.g = extractvalue { i32, i64 } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 16, ptr %i.h, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.g, ptr %.sroa.42.0..sroa_idx.i, align 8
  br label %_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call { ptr, i64 } @_ZNK8v8_crdtp4cbor13CBORTokenizer11GetEnvelopeEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #16 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15, !noalias !37 ; 11 uses
  %i.m = load ptr, ptr %0, align 8, !noalias !37  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !37 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZN8v8_crdtp23IncomingDeferredMessageC2ESt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 9 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !noalias !37
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.t = load i32, ptr %i.q, align 4, !noalias !37
  %i.u = add nsw i32 %i.t, 1
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8v8_crdtp23IncomingDeferredMessageE, i64 16), ptr %i.l, align 8, !noalias !37
  store ptr %i.m, ptr %i.p, align 8, !noalias !37
  store ptr %i.o, ptr %i.s, align 8, !noalias !37
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4, !noalias !37 ; 0 uses
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !noalias !37
  %i.w = icmp eq i8 %.pre.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8v8_crdtp23IncomingDeferredMessageE, i64 16), ptr %i.l, align 8, !noalias !37
  store ptr %i.m, ptr %i.p, align 8, !noalias !37
  store ptr %i.o, ptr %i.s, align 8, !noalias !37
  br i1 %i.w, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i32, ptr %i.q, align 4, !noalias !37
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.thread.i
  %i.x = phi i32 [ %.pre, %._crit_edge ], [ %i.u, %.thread.i ]
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.q, align 4, !noalias !37
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4, !noalias !37 ; 0 uses
  br label %bb.i

_ZN8v8_crdtp23IncomingDeferredMessageC2ESt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EE.exit.i: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8v8_crdtp23IncomingDeferredMessageE, i64 16), ptr %i.l, align 8, !noalias !37
  store ptr %i.m, ptr %i.p, align 8, !noalias !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr null, ptr %i.aa, align 8, !noalias !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.j, ptr %i.ab, align 8, !noalias !37
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.k, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !37
  br label %_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJRKSt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.j, ptr %i.ac, align 8, !noalias !37
  %.sroa.2.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.k, ptr %.sroa.2.0..sroa_idx.i14.i, align 8, !noalias !37
  %i.ad = load atomic i64, ptr %i.q acquire, align 8, !noalias !37 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8, !noalias !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.ag, align 4, !noalias !37
  %i.ah = load ptr, ptr %i.o, align 8, !noalias !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !37
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #16, !noalias !37, !inline_history !40
  %i.ak = load ptr, ptr %i.o, align 8, !noalias !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !37
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #16, !noalias !37, !inline_history !40
  br label %_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJRKSt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.k:                                             ; preds = %bb.i
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !noalias !37
  %.not.i.i.i3.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.q, align 8, !noalias !37
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ap = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4, !noalias !37
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.af, %bb.l ], [ %i.ap, %bb.m ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.n, label %_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJRKSt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, !prof !41

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #16, !noalias !37
  br label %_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJRKSt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJRKSt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN8v8_crdtp23IncomingDeferredMessageC2ESt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EE.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  %i.ar = load ptr, ptr %1, align 8               ; 3 uses
  store ptr %i.l, ptr %1, align 8
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit, label %_ZNKSt14default_deleteIN8v8_crdtp15DeferredMessageEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN8v8_crdtp15DeferredMessageEEclEPS1_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJRKSt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #16, !inline_history !42
  br label %_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit

_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE.exit: ; preds = %_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJRKSt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNKSt14default_deleteIN8v8_crdtp15DeferredMessageEEclEPS1_.exit.i.i.i, %bb.c, %bb.b
  ret i1 %.not
}

declare { ptr, i64 } @_ZNK8v8_crdtp4cbor13CBORTokenizer11GetEnvelopeEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8v8_crdtp18ProtocolTypeTraitsINS_15DeferredMessageEvE9SerializeERKS1_PSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchIN9__gnu_cxx17__normal_iteratorIPKcSt4spanIS8_Lm18446744073709551615EEEEEERS4_NS7_IS9_S4_EESE_T_SF_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  %i.c = ptrtoint ptr %4 to i64
  %i.d = ptrtoint ptr %3 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 7 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !41

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #15 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  store i64 %i.e, ptr %i.a, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %.pre11.i.i = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.k = icmp eq ptr %3, %4
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKcSt4spanIS8_Lm18446744073709551615EEEEvEET_SD_RKS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre11.i.i, ptr align 1 %3, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKcSt4spanIS8_Lm18446744073709551615EEEEvEET_SD_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKcSt4spanIS8_Lm18446744073709551615EEEEvEET_SD_RKS3_.exit: ; preds = %._crit_edge.i.i, %.lr.ph.i.i.i.preheader
  store i64 %i.e, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.pre11.i.i, i64 %i.e
  store i8 0, ptr %i.l, align 1
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = load ptr, ptr %0, align 8
  %i.q = ptrtoint ptr %i.p to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.al = load i8, ptr %i.ag, align 1
  store i8 %i.al, ptr %i.h, align 1
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.am = sub nuw i64 %i.d, %i.m
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 3 uses
  store ptr %i.ao, ptr %i.g, align 8
  %i.ap = icmp sgt i64 %i.m, 1
  br i1 %i.ap, label %bb.q, label %bb.r, !prof !43

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit
  br i1 %i.af, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.s:                                             ; preds = %bb.r
  %i.aq = load i8, ptr %1, align 1
  store i8 %i.aq, ptr %i.ao, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43: ; preds = %bb.q, %bb.r, %bb.s
  %i.ar = load ptr, ptr %i.g, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.m
  store ptr %i.as, ptr %i.g, align 8
  %i.at = icmp sgt i64 %i.m, 1
  br i1 %i.at, label %bb.t, label %bb.u, !prof !43

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEENS1_IPhSt6vectorIhSaIhEEEEET0_T_SD_SC_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  %i.au = icmp eq i64 %i.m, 1
  br i1 %i.au, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEENS1_IPhSt6vectorIhSaIhEEEEET0_T_SD_SC_.exit

bb.v:                                             ; preds = %bb.u
  %i.av = load i8, ptr %2, align 1
  store i8 %i.av, ptr %1, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEENS1_IPhSt6vectorIhSaIhEEEEET0_T_SD_SC_.exit

bb.w:                                             ; preds = %bb.b
  %i.aw = load ptr, ptr %0, align 8               ; 5 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.ay = sub i64 %i.j, %i.ax                     ; 4 uses
  %i.az = sub i64 9223372036854775807, %i.ay
  %i.ba = icmp ult i64 %i.az, %i.d
  br i1 %i.ba, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.d)
  %i.bb = add i64 %.sroa.speculated.i, %i.ay      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ay
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775807)
  %i.be = select i1 %i.bc, i64 9223372036854775807, i64 %i.bd ; 3 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #15
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bg = phi ptr [ %i.bf, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bh = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bi = sub i64 %i.bh, %i.ax                    ; 4 uses
  %i.bj = icmp sgt i64 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %bb.aa, !prof !43

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.aw, i64 %i.bi, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bk = icmp eq i64 %i.bi, 1
  br i1 %i.bk, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load i8, ptr %i.aw, align 1
  store i8 %i.bl, ptr %i.bg, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bm = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi ; 3 uses
  %i.bn = icmp sgt i64 %i.d, 1
  br i1 %i.bn, label %bb.ac, label %bb.ad, !prof !43

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit45

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bo = icmp eq i64 %i.d, 1
  br i1 %i.bo, label %bb.ae, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit45

bb.ae:                                            ; preds = %bb.ad
  %i.bp = load i8, ptr %2, align 1
  store i8 %i.bp, ptr %i.bm, align 1
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit45

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit45: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.d ; 3 uses
  %i.br = sub i64 %i.j, %i.bh                     ; 4 uses
  %i.bs = icmp sgt i64 %i.br, 1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !43

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %1, i64 %i.br, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit45
  %i.bt = icmp eq i64 %i.br, 1
  br i1 %i.bt, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ah:                                            ; preds = %bb.ag
  %i.bu = load i8, ptr %1, align 1
  store i8 %i.bu, ptr %i.bq, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bv = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %.not.i47 = icmp eq ptr %i.aw, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46
  %i.bw = sub i64 %i.i, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bw) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46, %bb.ai
  store ptr %i.bg, ptr %0, align 8
  store ptr %i.bv, ptr %i.g, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store ptr %i.bx, ptr %i.e, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEENS1_IPhSt6vectorIhSaIhEEEEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS2_Lm18446744073709551615EEEENS1_IPhSt6vectorIhSaIhEEEEET0_T_SD_SC_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !49
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { builtin nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"_ZSt19__relocate_object_aISt4spanIKcLm18446744073709551615EES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!7 = distinct !{!7, !"_ZSt19__relocate_object_aISt4spanIKcLm18446744073709551615EES2_SaIS2_EEvPT_PT0_RT1_"}
!8 = distinct !{!8, !7, !"_ZSt19__relocate_object_aISt4spanIKcLm18446744073709551615EES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!14 = distinct !{!14, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_ZSt19__relocate_object_aISt4spanIKcLm18446744073709551615EES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!24 = distinct !{!24, !"_ZSt19__relocate_object_aISt4spanIKcLm18446744073709551615EES2_SaIS2_EEvPT_PT0_RT1_"}
!25 = distinct !{!25, !24, !"_ZSt19__relocate_object_aISt4spanIKcLm18446744073709551615EES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!26 = distinct !{!26, !10}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"_ZSt19__relocate_object_aISt4spanIKcLm18446744073709551615EES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !"_ZSt19__relocate_object_aISt4spanIKcLm18446744073709551615EES2_SaIS2_EEvPT_PT0_RT1_"}
!30 = distinct !{!30, !29, !"_ZSt19__relocate_object_aISt4spanIKcLm18446744073709551615EES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZSt11make_uniqueIN8v8_crdtp23OutgoingDeferredMessageEJSt10unique_ptrINS0_12SerializableESt14default_deleteIS3_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!33 = distinct !{!33, !"_ZSt11make_uniqueIN8v8_crdtp23OutgoingDeferredMessageEJSt10unique_ptrINS0_12SerializableESt14default_deleteIS3_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJDnRSt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!36 = distinct !{!36, !"_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJDnRSt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJRKSt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!39 = distinct !{!39, !"_ZSt11make_uniqueIN8v8_crdtp23IncomingDeferredMessageEJRKSt10shared_ptrIKSt6vectorIhSaIhEEESt4spanIKhLm18446744073709551615EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!40 = distinct !{null, null, null, null}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = distinct !{null, null, null, null}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = distinct !{null, null}
!45 = distinct !{ptr @_ZN8v8_crdtp23OutgoingDeferredMessageD2Ev, null, null}
!46 = distinct !{null, null, null}
!47 = distinct !{ptr @_ZN8v8_crdtp23IncomingDeferredMessageD2Ev, null, null, null}
!48 = !{ptr @_ZN8v8_crdtp23IncomingDeferredMessageD2Ev}
!49 = distinct !{null}
end_hunk_1
