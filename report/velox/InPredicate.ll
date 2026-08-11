inline.NumInlined: 8492
inline.NumDeleted: 2879
loop-unroll.NumCompletelyUnrolled: 139
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJPNS1_6memory10MemoryPoolERibSt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEbEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.52", align 16 ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.163", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !1151
  %i.e = load i32, ptr %2, align 4, !tbaa !42
  %i.f = load i8, ptr %3, align 1, !tbaa !56, !range !162, !noundef !163
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load <2 x ptr>, ptr %4, align 8, !tbaa !41
  store ptr null, ptr %i.h, align 8, !tbaa !38
  store <2 x ptr> %i.i, ptr %6, align 16, !tbaa !41
  store ptr null, ptr %4, align 8, !tbaa !655
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !638
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 0, ptr %i.k, align 1, !tbaa !638
  invoke void @_ZN8facebook5velox14ConstantVectorIbEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %7, i64 0, i64 0)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !46
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #41, !inline_history !1159
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #41, !inline_history !1159
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !50

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #41
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ac

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorIbEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorIbED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #41
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIbEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.55", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.52", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !41
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !41
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !42
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !42
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !675
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIbEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIbEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !675   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !1160

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1161
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !47
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !1160

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !38  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !46
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !200
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !200
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIbEE, i64 16), ptr %0, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !675
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i8, ptr %5, align 1, !tbaa !56, !range !162, !noundef !163
  store i8 %i.at, ptr %i.as, align 8, !tbaa !1162
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  store i8 %i.l, ptr %i.au, align 1, !tbaa !1166
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.av, align 2, !tbaa !1167
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.aw, align 8, !tbaa !1168
  invoke void @_ZN8facebook5velox14ConstantVectorIbE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !75
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !1166, !range !162, !noundef !163
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !68

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIbEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_E18veloxCheckFailArgs) #45
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #41
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !1169
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.55") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !41, !noalias !1172
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !1169
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !38 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !41
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !46
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !1175
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !1175
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox12SimpleVectorIbE25hashValueAtWithCustomTypeERKSt10shared_ptrIKNS0_4TypeEEbENKUlvE_clEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIb, i64 8), align 8, !tbaa !577 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !31
  %i.dy = icmp eq i8 %i.dx, 42
  %.idx.i.i37 = zext i1 %i.dy to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx.i.i37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !1469
  store ptr @_ZTSN8facebook5velox10StringViewE, ptr %4, align 16, !tbaa !31, !noalias !1469
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.dz, ptr %i.ea, align 16, !tbaa !31, !noalias !1469
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.65, i64 140, i64 204, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !1469
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIbE25hashValueAtWithCustomTypeILNS0_8TypeKindE8EEEmRKSt10shared_ptrIKNS0_4TypeEERKbE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.65) #45
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38: ; preds = %bb.ac
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !31
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %common.resume

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIb, i64 8), align 8, !tbaa !577 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !31
  %i.ej = icmp eq i8 %i.ei, 42
  %.idx.i.i41 = zext i1 %i.ej to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i.i41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41, !noalias !1472
  store ptr @_ZTSN8facebook5velox9TimestampE, ptr %2, align 16, !tbaa !31, !noalias !1472
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ek, ptr %i.el, align 16, !tbaa !31, !noalias !1472
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.65, i64 140, i64 204, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41, !noalias !1472
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIbE25hashValueAtWithCustomTypeILNS0_8TypeKindE9EEEmRKSt10shared_ptrIKNS0_4TypeEERKbE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.65) #45
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %bb.af
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !31
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %common.resume

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  %i.es = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %i.d) ; 2 uses
  %i.et = extractvalue { i64, ptr } %i.es, 0
  %i.eu = extractvalue { i64, ptr } %i.es, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41, !noalias !1475
  %i.ev = ptrtoint ptr %i.eu to i64
  store i64 %i.ev, ptr %1, align 16, !noalias !1475
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.et, ptr %.sroa_idx3.i, align 8, !noalias !1475
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr nonnull @.str.112, i64 27, i64 13, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41, !noalias !1475
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox12SimpleVectorIbE25hashValueAtWithCustomTypeERKSt10shared_ptrIKNS0_4TypeEEbENKUlvE_clEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr nonnull @.str.112) #45
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %22, align 8, !tbaa !51   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !31
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  br label %common.resume
}

declare void @_ZN8facebook5velox6BIGINTEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.255") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !46
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !218
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !218
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.55", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.52", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !41
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !41
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !42
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !42
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !675
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorImEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsImEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !675   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !1160

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1161
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !47
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !1160

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !38  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !46
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !200
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !200
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorImEE, i64 16), ptr %0, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !675
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i64, ptr %5, align 8, !tbaa !269
  store i64 %i.at, ptr %i.as, align 8, !tbaa !1478
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 %i.l, ptr %i.au, align 8, !tbaa !1485
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.av, align 1, !tbaa !1486
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !1168
  invoke void @_ZN8facebook5velox14ConstantVectorImE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !75
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 8, !tbaa !1485, !range !162, !noundef !163
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !68

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_E18veloxCheckFailArgs) #45
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #41
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !1487
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.55") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !41, !noalias !1490
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !1487
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !38 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !41
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !46
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !1175
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !1175
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsImEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %.pn13 = phi { ptr, i32 } [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bz, %bb.x ], [ %i.ca, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.ag

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 2, ptr %i.c, align 4, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  store i32 2, ptr %i.d, align 4, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41, !noalias !1701
  store ptr %i.c, ptr %6, align 16, !tbaa !31, !noalias !1701
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.cg, align 8, !tbaa !31, !noalias !1701
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %i.ch, align 16, !tbaa !31, !noalias !1701
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ci, align 8, !tbaa !31, !noalias !1701
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.124, i64 57, i64 255, ptr nonnull %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41, !noalias !1701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImEC1EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsImEEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.124) #45
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.ad:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.ad
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.cj, %bb.ac ], [ %i.ck, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  invoke void @_ZN8facebook5velox14ConstantVectorImE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.w

bb.af:                                            ; preds = %bb.ae
  ret void

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.by, %bb.w ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #41
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bc) #41
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #41
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.v
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ag ], [ %i.bx, %bb.v ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorImE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !162, !noundef !163
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.139) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !42
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !46
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !1158
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !1158
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !38
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !84
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1507
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !1485
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %i.ao to i64
  %.sroa.010.0.insert.insert = xor i64 %.sroa.010.0.insert.ext, 4294967297
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !674
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorImEE, i64 0) #41 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !1507
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !1485
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !1507
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(136) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !1478
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !304
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !38  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !38
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !46
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #41, !inline_history !1175
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #41, !inline_history !1175
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorImE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.ck, align 1, !tbaa !1486
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !466
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.a = load ptr, ptr %4, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32
  store ptr %i.a, ptr %3, align 16, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !31
  invoke void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, ptr nonnull @.str.125, i64 2, i64 13, ptr nonnull %3, ptr null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.e = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !31
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #43
  br label %_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !31
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  resume { ptr, i32 } %i.j

_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8facebook5velox14VectorEncodinglsERSoRKNS1_6SimpleE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !28, !alias.scope !1710
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !32, !alias.scope !1710
  store i8 0, ptr %i.c, align 8, !tbaa !31, !alias.scope !1710
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1291, !noalias !1710 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1710 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1295, !noalias !1710 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !51, !alias.scope !1710 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox14ConstantVectorIbEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIbEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.ag

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 2, ptr %i.c, align 4, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  store i32 2, ptr %i.d, align 4, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41, !noalias !1722
  store ptr %i.c, ptr %6, align 16, !tbaa !31, !noalias !1722
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.cf, align 8, !tbaa !31, !noalias !1722
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %i.cg, align 16, !tbaa !31, !noalias !1722
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ch, align 8, !tbaa !31, !noalias !1722
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.124, i64 57, i64 255, ptr nonnull %6)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41, !noalias !1722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIbEC1EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIbEEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.124) #45
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.ac:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.ac
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.ci, %bb.ab ], [ %i.cj, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  invoke void @_ZN8facebook5velox14ConstantVectorIbE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  ret void

bb.af:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.cp, %bb.af ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #41
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bc) #41
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %0) #41
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.v
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ag ], [ %i.bx, %bb.v ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIbE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !162, !noundef !163
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIbE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.139) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !42
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !46
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !1158
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !1158
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !38
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !84
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1217
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !1166
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %i.ao to i64
  %.sroa.010.0.insert.insert = xor i64 %.sroa.010.0.insert.ext, 4294967297
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !674
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIbEE, i64 0) #41 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !1217
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 1, !tbaa !1166
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !1217
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(108) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = zext i1 %i.bs to i8
  store i8 %i.bu, ptr %i.bt, align 8, !tbaa !1162
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !304
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !38  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !38
  %.not.i.i.i.i4 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bw, align 8, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !46
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #41, !inline_history !1175
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #41, !inline_history !1175
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.t ], [ %i.cj, %bb.u ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIbE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.cl, align 2, !tbaa !1167
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEbRKNS1_17SimpleVectorStatsIbEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.52", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !1151
  %i.e = load i32, ptr %2, align 4, !tbaa !42
  %i.f = load i8, ptr %3, align 1, !tbaa !56, !range !162, !noundef !163
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !41
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !41
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !42
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !42
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIbEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !1725

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !38   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !46
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !1726
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !1726
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !50

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !1725
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
end_hunk_3
