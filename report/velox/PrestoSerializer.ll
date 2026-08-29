Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/PrestoSerializer?download=true
inline.NumInlined: 1237
inline.NumDeleted: 725
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8facebook5velox10BaseVectorD2Ev:bb.a

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZN8facebook5velox11StreamArenaC1EPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #1

declare void @_ZN8facebook5velox10serializer6presto6detail12VectorStreamC1ERKSt10shared_ptrIKNS0_4TypeEESt8optionalINS0_14VectorEncoding6SimpleEESB_IS5_INS0_10BaseVectorEEEPNS0_11StreamArenaEiRKNS2_17PrestoVectorSerde13PrestoOptionsE(ptr noundef nonnull align 8 dereferenceable(330), ptr noundef nonnull align 8 dereferenceable(16), i64, ptr noundef align 8, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseISt10shared_ptrIN8facebook5velox10BaseVectorEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !247, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !247
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt10shared_ptrIN8facebook5velox10BaseVectorEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt17_Optional_payloadISt10shared_ptrIN8facebook5velox10BaseVectorEELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !129
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !460
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !460
  br label %_ZNSt17_Optional_payloadISt10shared_ptrIN8facebook5velox10BaseVectorEELb0ELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt17_Optional_payloadISt10shared_ptrIN8facebook5velox10BaseVectorEELb0ELb0ELb0EED2Ev.exit, !prof !17

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZNSt17_Optional_payloadISt10shared_ptrIN8facebook5velox10BaseVectorEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadISt10shared_ptrIN8facebook5velox10BaseVectorEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10serializer6presto6detail12VectorStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(330) dereferenceable(330) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !463  ; 2 uses
  %.not.i5 = icmp eq ptr %i.c, %i.e
  br i1 %.not.i5, label %_ZSt8_DestroyIPN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEEvT_SA_RT0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i6 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_ZN8facebook5velox10serializer6presto6detail12VectorStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(330) dereferenceable(330) %.0.i6) #25, !inline_history !464
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i6, i64 336 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %_ZSt8_DestroyIPN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEEvT_SA_RT0_.exit, label %.lr.ph, !llvm.loop !465

_ZSt8_DestroyIPN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEEvT_SA_RT0_.exit: ; preds = %.lr.ph, %bb.a
  tail call void @_ZNSt12_Vector_baseIN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #25, !inline_history !466
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEEvT_SA_RT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #28
  br label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit

_ZN8facebook5velox16ByteOutputStreamD2Ev.exit:    ; preds = %_ZSt8_DestroyIPN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEEvT_SA_RT0_.exit, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i1, label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #28
  br label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit2

_ZN8facebook5velox16ByteOutputStreamD2Ev.exit2:   ; preds = %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i3, label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #28
  br label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit4

_ZN8facebook5velox16ByteOutputStreamD2Ev.exit4:   ; preds = %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit2, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !103 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ad, align 8, !tbaa !127
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !129
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #25, !inline_history !131
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #25, !inline_history !131
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.h ], [ %i.aq, %bb.i ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #25
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit4, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.235", align 16 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !461  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !467
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 336                 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEE13_M_deallocateEPS5_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 336) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 1
  br i1 %4, label %bb.c, label %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorINS1_10serializer6presto6detail12VectorStreamEEEE10deallocateERS8_PS7_m.exit.i, !prof !17

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !468
  store ptr @.str.69, ptr %1, align 16, !tbaa !74, !alias.scope !471, !noalias !468
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.h, ptr %i.i, align 16, !tbaa !74, !alias.scope !471, !noalias !468
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 336, ptr %i.j, align 16, !tbaa !74, !alias.scope !471, !noalias !468
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.72, i64 20, i64 1100, ptr nonnull %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !468
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.72) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = load ptr, ptr %2, align 8, !tbaa !68     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !74
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorINS1_10serializer6presto6detail12VectorStreamEEEE10deallocateERS8_PS7_m.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !474    ; 2 uses
  %5 = extractvalue { i64, i1 } %3, 0
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(264) %i.q, ptr noundef nonnull %i.b, i64 noundef %5)
          to label %_ZNSt12_Vector_baseIN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEE13_M_deallocateEPS5_m.exit unwind label %bb.f, !inline_history !476

_ZNSt12_Vector_baseIN8facebook5velox10serializer6presto6detail12VectorStreamENS1_6memory12StlAllocatorIS5_EEE13_M_deallocateEPS5_m.exit: ; preds = %bb.a, %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorINS1_10serializer6presto6detail12VectorStreamEEEE10deallocateERS8_PS7_m.exit.i
  ret void

bb.f:                                             ; preds = %_ZNSt16allocator_traitsIN8facebook5velox6memory12StlAllocatorINS1_10serializer6presto6detail12VectorStreamEEEE10deallocateERS8_PS7_m.exit.i, %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ]
  %i.v = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #22

declare void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { cold noreturn }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN8facebook5velox10serializer6presto12_GLOBAL__N_115toPrestoOptionsEPKNS0_11VectorSerde7OptionsE: argument 0"}
!12 = distinct !{!12, !"_ZN8facebook5velox10serializer6presto12_GLOBAL__N_115toPrestoOptionsEPKNS0_11VectorSerde7OptionsE"}
!13 = !{!14, !16, i64 16}
!14 = !{!"_ZTSN8facebook5velox11VectorSerde7OptionsE", !15, i64 8, !16, i64 16}
!15 = !{!"_ZTSN8facebook5velox6common15CompressionKindE", !6, i64 0}
!16 = !{!"float", !6, i64 0}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!19, !20, i64 20}
!19 = !{!"_ZTSN8facebook5velox10serializer6presto17PrestoVectorSerde13PrestoOptionsE", !14, i64 0, !20, i64 20, !20, i64 21, !20, i64 22, !20, i64 23}
!20 = !{!"bool", !6, i64 0}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!19, !20, i64 21}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZSt11make_uniqueIN8facebook5velox10serializer6presto6detail31PrestoIterativeVectorSerializerEJRSt10shared_ptrIKNS1_7RowTypeEERiRPNS1_11StreamArenaERKNS3_17PrestoVectorSerde13PrestoOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!26 = distinct !{!26, !"_ZSt11make_uniqueIN8facebook5velox10serializer6presto6detail31PrestoIterativeVectorSerializerEJRSt10shared_ptrIKNS1_7RowTypeEERiRPNS1_11StreamArenaERKNS3_17PrestoVectorSerde13PrestoOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox25IterativeVectorSerializerELb0EE", !29, i64 0}
!29 = !{!"p1 _ZTSN8facebook5velox25IterativeVectorSerializerE", !30, i64 0}
!30 = !{!"any pointer", !6, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN8facebook5velox10serializer6presto12_GLOBAL__N_115toPrestoOptionsEPKNS0_11VectorSerde7OptionsE: argument 0"}
!33 = distinct !{!33, !"_ZN8facebook5velox10serializer6presto12_GLOBAL__N_115toPrestoOptionsEPKNS0_11VectorSerde7OptionsE"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZSt11make_uniqueIN8facebook5velox10serializer6presto6detail27PrestoBatchVectorSerializerEJRPNS1_6memory10MemoryPoolERKNS3_17PrestoVectorSerde13PrestoOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!36 = distinct !{!36, !"_ZSt11make_uniqueIN8facebook5velox10serializer6presto6detail27PrestoBatchVectorSerializerEJRPNS1_6memory10MemoryPoolERKNS3_17PrestoVectorSerde13PrestoOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!37 = !{!38, !40, i64 8}
!38 = !{!"_ZTSN8facebook5velox10serializer6presto6detail27PrestoBatchVectorSerializerE", !39, i64 0, !40, i64 8, !41, i64 16, !19, i64 24, !48, i64 48}
!39 = !{!"_ZTSN8facebook5velox21BatchVectorSerializerE"}
!40 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !30, i64 0}
!41 = !{!"_ZTSSt10unique_ptrIN5folly11compression5CodecESt14default_deleteIS2_EE", !42, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly11compression5CodecESt14default_deleteIS2_ELb1ELb1EE", !43, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_implIN5folly11compression5CodecESt14default_deleteIS2_EE", !44, i64 0}
!44 = !{!"_ZTSSt5tupleIJPN5folly11compression5CodecESt14default_deleteIS2_EEE", !45, i64 0}
!45 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly11compression5CodecESt14default_deleteIS2_EEE", !46, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm0EPN5folly11compression5CodecELb0EE", !47, i64 0}
!47 = !{!"p1 _ZTSN5folly11compression5CodecE", !30, i64 0}
!48 = !{!"_ZTSSt6atomicIbE", !49, i64 0}
!49 = !{!"_ZTSSt13__atomic_baseIbE", !20, i64 0}
!50 = !{!49, !20, i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox21BatchVectorSerializerELb0EE", !53, i64 0}
!53 = !{!"p1 _ZTSN8facebook5velox21BatchVectorSerializerE", !30, i64 0}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN8facebook5velox10serializer6presto12_GLOBAL__N_115toPrestoOptionsEPKNS0_11VectorSerde7OptionsE: argument 0"}
!56 = distinct !{!56, !"_ZN8facebook5velox10serializer6presto12_GLOBAL__N_115toPrestoOptionsEPKNS0_11VectorSerde7OptionsE"}
!57 = !{!14, !15, i64 8}
!58 = !{!59, !60, i64 24}
!59 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionIN8facebook5velox10serializer6presto6detail12PrestoHeaderENS3_6StatusEEE", !6, i64 0, !60, i64 24}
!60 = !{!"_ZTSN5folly15expected_detail5WhichE", !6, i64 0}
!61 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTSN8facebook5velox6StatusE", !64, i64 0}
!64 = !{!"p1 _ZTSN8facebook5velox6Status5StateE", !30, i64 0}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!67 = distinct !{!67, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!68 = !{!69, !71, i64 0}
!69 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !70, i64 0, !72, i64 8, !6, i64 16}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !71, i64 0}
!71 = !{!"p1 omnipotent char", !30, i64 0}
!72 = !{!"long", !6, i64 0}
!73 = !{!69, !72, i64 8}
!74 = !{!6, !6, i64 0}
!75 = !{!5, !5, i64 0}
!76 = !{!72, !72, i64 0}
!77 = distinct !{null}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!80 = distinct !{!80, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN8facebook5velox12errorMessageIJimNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!83 = distinct !{!83, !"_ZN8facebook5velox12errorMessageIJimNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELi3ELi0ELy3393EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!86 = distinct !{!86, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELi3ELi0ELy3393EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!89 = distinct !{!89, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN8facebook5velox12errorMessageIJllEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!94 = distinct !{!94, !"_ZN8facebook5velox12errorMessageIJllEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlS3_ELi2ELi0ELy51EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!97 = distinct !{!97, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlS3_ELi2ELi0ELy51EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EE", !100, i64 0, !101, i64 8}
!100 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !30, i64 0}
!101 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !102, i64 0}
!102 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0}
!103 = !{!101, !102, i64 0}
!104 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!107 = distinct !{!107, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!110 = distinct !{!110, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!111 = !{!112, !113, i64 0}
!112 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !113, i64 0, !101, i64 8}
!113 = !{!"p1 _ZTSN8facebook5velox4TypeE", !30, i64 0}
!114 = !{!115, !116, i64 0}
!115 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EE", !116, i64 0, !101, i64 8}
!116 = !{!"p1 _ZTSN8facebook5velox7RowTypeE", !30, i64 0}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!119 = distinct !{!119, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!120 = !{!30, !30, i64 0}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN8facebook5velox10BaseVector6createINS0_9RowVectorEEESt10shared_ptrIT_ERKS4_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE: argument 0"}
!123 = distinct !{!123, !"_ZN8facebook5velox10BaseVector6createINS0_9RowVectorEEESt10shared_ptrIT_ERKS4_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE"}
!124 = !{!125, !122}
!125 = distinct !{!125, !126, !"_ZSt19static_pointer_castIN8facebook5velox9RowVectorENS1_10BaseVectorEESt10shared_ptrIT_EOS4_IT0_E: argument 0"}
!126 = distinct !{!126, !"_ZSt19static_pointer_castIN8facebook5velox9RowVectorENS1_10BaseVectorEESt10shared_ptrIT_EOS4_IT0_E"}
!127 = !{!128, !5, i64 8}
!128 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!129 = !{!128, !5, i64 12}
!130 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!131 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!132 = !{!133, !133, i64 0}
!133 = !{!"p1 _ZTSN5folly5IOBufE", !30, i64 0}
!134 = !{!135, !71, i64 8}
!135 = !{!"_ZTSN5folly5IOBufE", !72, i64 0, !71, i64 8, !72, i64 16, !71, i64 24, !133, i64 32, !133, i64 40, !136, i64 48}
!136 = !{!"p1 _ZTSN5folly5IOBuf10SharedInfoE", !30, i64 0}
!137 = !{!135, !72, i64 0}
!138 = !{!47, !47, i64 0}
!139 = !{!140, !20, i64 8}
!140 = !{!"_ZTSN5folly8OptionalImEE", !141, i64 0}
!141 = !{!"_ZTSN5folly8OptionalImE28StorageTriviallyDestructibleE", !6, i64 0, !20, i64 8}
!142 = !{!143, !144, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
end_hunk_0
