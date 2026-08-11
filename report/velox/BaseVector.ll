inline.NumInlined: 39105
inline.NumDeleted: 7520
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZNK8facebook5velox14ConstantVectorINS0_12UnknownValueEE7valueAtEi:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEES3_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.459", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !569
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 0, ptr %i.r, align 1, !tbaa !569
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !5924
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !5924
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorINS4_12UnknownValueEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.030.0.insert.ext = zext i1 %3 to i64
  %.sroa.030.0.insert.insert = xor i64 %.sroa.030.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.027.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorINS0_12UnknownValueEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.030.0.insert.insert, i64 %.sroa.027.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i18 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorINS0_12UnknownValueEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  store i8 %i.l, ptr %i.as, align 1, !tbaa !5925
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.at, align 2, !tbaa !5926
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.au, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr %4, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !16
  %i.bd = icmp eq i8 %i.bc, 32
  br i1 %i.bd, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.be = load i8, ptr %i.as, align 1, !tbaa !5925, !range !59, !noundef !60
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_12UnknownValueEEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_E18veloxCheckFailArgs) #50
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #41
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !5928
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !5931
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !5928
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bk, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i19, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bm, align 8, !tbaa !132
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !134
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #41, !inline_history !996
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox14ConstantVectorINS0_12UnknownValueEE15toSummaryStringB5cxx11Ev:bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !319, !alias.scope !6018 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ax
  br i1 %i.bm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bn = load i64, ptr %i.ax, align 8, !tbaa !124, !alias.scope !6018
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #48
  br label %.body

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.bq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bq, ptr %2, align 8, !tbaa !8
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !8
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bv, ptr %i.b, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bw, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !319 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !124
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #48
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bw, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cd) #41
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ce, ptr %2, align 8, !tbaa !8
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !952
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ck) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void

bb.l:                                             ; preds = %bb.a
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.o:                                             ; preds = %bb.d, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.e
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17, %_ZNK8facebook5velox14ConstantVectorINS0_12UnknownValueEE8toStringB5cxx11Ev.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %4, align 8, !tbaa !319   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.q
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !124
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.p ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.cq, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.co, %bb.o ] ; 2 uses
  %i.cw = load ptr, ptr %3, align 8, !tbaa !319   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.r
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !124
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.cm, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %.body

.body:                                            ; preds = %bb.j, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.s
  %.pn11 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.s ], [ %i.cl, %bb.l ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bk, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox14ConstantVectorINS0_12UnknownValueEE16retainedSizeImplERm(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(94) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1832
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !355  ; 2 uses
  %.not3 = icmp eq ptr %i.h, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !365
  %i.k = load i64, ptr %1, align 8, !tbaa !331
  %i.l = add i64 %i.k, %i.j
  store i64 %i.l, ptr %1, align 8, !tbaa !331
  %i.m = load i64, ptr %i.i, align 8, !tbaa !365
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.m, %bb.d ], [ 1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorImEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsImEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorImEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i64, ptr %5, align 8, !tbaa !331
  store i64 %i.at, ptr %i.as, align 8, !tbaa !2090
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 %i.l, ptr %i.au, align 8, !tbaa !6019
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.av, align 1, !tbaa !6020
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorImE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 8, !tbaa !6019, !range !59, !noundef !60
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_E18veloxCheckFailArgs) #50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6021
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6024
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6021
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !134
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsImEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorImE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !6040
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 8, !tbaa !6019
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorImEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !6040
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 8, !tbaa !6019
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !6040
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(136) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !2090
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dc, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !134
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.y ], [ %i.dp, %bb.z ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorImE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.dr, align 1, !tbaa !6020
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !1635
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.a = load ptr, ptr %4, align 8, !tbaa !319
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !321
  store ptr %i.a, ptr %3, align 16, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !124
  invoke void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, ptr nonnull @.str.222, i64 2, i64 13, ptr nonnull %3, ptr null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.e = load ptr, ptr %4, align 8, !tbaa !319    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !124
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #48
  br label %_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !319    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !124
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  resume { ptr, i32 } %i.j

_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8facebook5velox14VectorEncodinglsERSoRKNS1_6SimpleE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6127)
  call void @llvm.experimental.noalias.scope.decl(metadata !6130)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !316, !alias.scope !6133
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !321, !alias.scope !6133
  store i8 0, ptr %i.c, align 8, !tbaa !124, !alias.scope !6133
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !947, !noalias !6133 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !6133 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !951, !noalias !6133 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !319, !alias.scope !6133 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_12UnknownValueEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !551
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !5925
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_12UnknownValueEEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !551
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 1, !tbaa !5925
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !551
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(108) %i.co, i32 noundef %i.cv)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.cz = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.da, align 8, !tbaa !132
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !134
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #41, !inline_history !996
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.dd, %bb.y ], [ %i.dn, %bb.z ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.do, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.dp, align 2, !tbaa !5926
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEES3_RKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESV_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !6148

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6149
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6149
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6148
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !6148
  resume { ptr, i32 } %i.ag

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEEC2EPNS0_6memory10MemoryPoolEiiS2_INS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS3_EE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread27

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread27, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread27: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread27
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ak

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread27
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !587
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 8, !tbaa !6154
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.023.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.023.0.insert.insert = xor i64 %.sroa.023.0.insert.ext, 4294967297
  store i64 %.sroa.023.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.020.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.020.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorISt10shared_ptrIvEEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !587
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 8, !tbaa !6154
  br i1 %i.ct, label %_ZNSt10shared_ptrIvEaSERKS0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !587
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(152) %i.co, i32 noundef %i.cv) ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !128
  store ptr %i.db, ptr %i.da, align 8, !tbaa !128
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !123 ; 4 uses
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.de, %i.df
  br i1 %.not.i.i.i7, label %_ZNSt10shared_ptrIvEaSERKS0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not7.i.i.i8 = icmp eq ptr %i.de, null
  br i1 %.not7.i.i.i8, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i9 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i9, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !76
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10

bb.x:                                             ; preds = %bb.v
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i16 = load ptr, ptr %i.dc, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10: ; preds = %bb.x, %bb.w, %bb.u
  %i.dl = phi ptr [ %i.df, %bb.u ], [ %i.df, %bb.w ], [ %.pr.pre.i.i.i16, %bb.x ] ; 8 uses
  %.not8.i.i.i11 = icmp eq ptr %i.dl, null
  br i1 %.not8.i.i.i11, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15, label %bb.y

bb.y:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.dm, align 8, !tbaa !132
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !134
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #41, !inline_history !6212
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #41, !inline_history !6212
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15

bb.aa:                                            ; preds = %bb.y
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i12 = icmp eq i8 %i.dx, 0
  br i1 %.not.i9.i.i.i12, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13

bb.ac:                                            ; preds = %bb.aa
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i14 = phi i32 [ %i.dp, %bb.ab ], [ %i.dz, %bb.ac ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i14, 1
  br i1 %i.ea, label %bb.ad, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15, !prof !130

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13, %bb.z, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !123
  br label %_ZNSt10shared_ptrIvEaSERKS0_.exit

_ZNSt10shared_ptrIvEaSERKS0_.exit:                ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15, %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.eb = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i17 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i17, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIvEaSERKS0_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %i.ed = load atomic i64, ptr %i.ec acquire, align 8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 4294967297
  %i.ef = trunc i64 %i.ed to i32                  ; 2 uses
  br i1 %i.ee, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.ec, align 8, !tbaa !132
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !134
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  tail call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #41, !inline_history !996
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i = phi i32 [ %i.ef, %bb.ah ], [ %i.ep, %bb.ai ]
  %i.eq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.eq, label %bb.aj, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIvEaSERKS0_.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aj, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.er, align 1, !tbaa !6213
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.2023", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i8, ptr %i.a, align 8, !tbaa !6154, !range !59, !noundef !60
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !362  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6214)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8, !noalias !6214
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !374
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !373

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !355 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !355 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !356 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !361
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !376
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !383

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #50
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !331
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorISt10shared_ptrIvEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKS3_IKNS1_4TypeEES4_RKNS1_17SimpleVectorStatsIS4_EERKSt8optionalIiESV_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorISt10shared_ptrIvEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEEC2EPNS0_6memory10MemoryPoolEibS2_IKNS0_4TypeEEOS3_RKNS0_17SimpleVectorStatsIS3_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !6223

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6224
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6224
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6223
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !6223
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEEC2EPNS0_6memory10MemoryPoolEibS2_IKNS0_4TypeEEOS3_RKNS0_17SimpleVectorStatsIS3_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorISt10shared_ptrIvEEC2EPNS0_6memory10MemoryPoolES2_IKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS3_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorISt10shared_ptrIvEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.at, align 8, !tbaa !123
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load <2 x ptr>, ptr %5, align 8, !tbaa !131
  store ptr null, ptr %i.au, align 8, !tbaa !123
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !131
  store ptr null, ptr %5, align 8, !tbaa !128
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i8 %i.l, ptr %i.aw, align 8, !tbaa !6154
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.ax, align 1, !tbaa !6213
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.ay, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %4, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !16
  %i.bh = icmp eq i8 %i.bg, 32
  br i1 %i.bh, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bi = load i8, ptr %i.aw, align 8, !tbaa !6154, !range !59, !noundef !60
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorISt10shared_ptrIvEEC1EPNS0_6memory10MemoryPoolEibS2_IKNS0_4TypeEEOS3_RKNS0_17SimpleVectorStatsIS3_EESt8optionalIiESH_E18veloxCheckFailArgs) #50
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #41
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6225
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6228
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6225
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bo, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bq, align 8, !tbaa !132
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !134
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #41, !inline_history !996
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox14ConstantVectorIbE7valueAtEi:bb.a
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEEbEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !917
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 0, ptr %i.r, align 1, !tbaa !917
  invoke void @_ZN8facebook5velox14ConstantVectorIbEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6234
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6234
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #48
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
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #48
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIbEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIbEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIbEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i8, ptr %5, align 1, !tbaa !544, !range !59, !noundef !60
  store i8 %i.at, ptr %i.as, align 8, !tbaa !5667
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  store i8 %i.l, ptr %i.au, align 1, !tbaa !6235
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.av, align 2, !tbaa !6236
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.aw, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorIbE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !6235, !range !59, !noundef !60
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIbEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_E18veloxCheckFailArgs) #50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6237
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6240
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6237
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !134
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox14ConstantVectorIbEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIbEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIbE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIbE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5672
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !6235
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIbEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5672
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 1, !tbaa !6235
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5672
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(108) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.db = zext i1 %i.cz to i8
  store i8 %i.db, ptr %i.da, align 8, !tbaa !5667
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.dc = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dd, align 8, !tbaa !132
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !134
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #41, !inline_history !996
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.y ], [ %i.dq, %bb.z ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIbE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.ds, align 2, !tbaa !6236
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEbRKNS1_17SimpleVectorStatsIbEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIbEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !6325

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6326
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6326
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6325
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox14ConstantVectorIiE7valueAtEi:bb.a
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEEiEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.234", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 0, ptr %i.q, align 4, !tbaa !619
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.r, align 4, !tbaa !619
  invoke void @_ZN8facebook5velox14ConstantVectorIiEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6332
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6332
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorIiEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorIiED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIiEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIiEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIiEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i32, ptr %5, align 4, !tbaa !76
  store i32 %i.at, ptr %i.as, align 8, !tbaa !5685
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i8 %i.l, ptr %i.au, align 4, !tbaa !6333
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 1, ptr %i.av, align 1, !tbaa !6334
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.aw, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorIiE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 4, !tbaa !6333, !range !59, !noundef !60
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIiEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESG_E18veloxCheckFailArgs) #50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6335
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6338
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6335
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !134
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox14ConstantVectorIiEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIiEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIiE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIiE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5690
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 4, !tbaa !6333
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIiEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5690
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 4, !tbaa !6333
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5690
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(120) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !5685
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dc, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !134
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.y ], [ %i.dp, %bb.z ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIiE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 1, ptr %i.dr, align 1, !tbaa !6334
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEiRKNS1_17SimpleVectorStatsIiEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIiEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !6417

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6418
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6418
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6417
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !6417
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox14ConstantVectorIaE7valueAtEi:bb.a
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEEaEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.241", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !764
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 0, ptr %i.r, align 1, !tbaa !764
  invoke void @_ZN8facebook5velox14ConstantVectorIaEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOaRKNS0_17SimpleVectorStatsIaEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6424
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6424
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorIaEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorIaED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIaEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOaRKNS0_17SimpleVectorStatsIaEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIaEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIaEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIaEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i8, ptr %5, align 1, !tbaa !124
  store i8 %i.at, ptr %i.as, align 8, !tbaa !5703
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  store i8 %i.l, ptr %i.au, align 1, !tbaa !6425
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.av, align 2, !tbaa !6426
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.aw, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorIaE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !6425, !range !59, !noundef !60
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIaEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOaRKNS0_17SimpleVectorStatsIaEESt8optionalIiESG_E18veloxCheckFailArgs) #50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6427
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6430
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6427
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !134
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox14ConstantVectorIaEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIaEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIaE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIaE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5708
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !6425
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIaEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5708
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 1, !tbaa !6425
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5708
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef signext i8 %i.cy(ptr noundef nonnull align 8 dereferenceable(108) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.cz, ptr %i.da, align 8, !tbaa !5703
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dc, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !134
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.y ], [ %i.dp, %bb.z ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIaE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.dr, align 2, !tbaa !6426
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEaRKNS1_17SimpleVectorStatsIaEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIaEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOaRKNS0_17SimpleVectorStatsIaEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !6502

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6503
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6503
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6502
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !6502
end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox14ConstantVectorIsE7valueAtEi:bb.a
  ret i16 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEEsEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 2 dereferenceable(2) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.255", align 2 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 0, ptr %i.q, align 2, !tbaa !773
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i8 0, ptr %i.r, align 2, !tbaa !773
  invoke void @_ZN8facebook5velox14ConstantVectorIsEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOsRKNS0_17SimpleVectorStatsIsEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(8) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6516
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6516
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorIsEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorIsED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIsEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOsRKNS0_17SimpleVectorStatsIsEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(8) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIsEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIsEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 2 dereferenceable(8) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIsEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i16, ptr %5, align 2, !tbaa !1096
  store i16 %i.at, ptr %i.as, align 8, !tbaa !5721
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 2 uses
  store i8 %i.l, ptr %i.au, align 2, !tbaa !6517
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 1, ptr %i.av, align 1, !tbaa !6518
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.aw, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorIsE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 2, !tbaa !6517, !range !59, !noundef !60
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIsEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOsRKNS0_17SimpleVectorStatsIsEESt8optionalIiESG_E18veloxCheckFailArgs) #50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6519
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6522
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6519
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !134
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox14ConstantVectorIsEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIsEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIsE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIsE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5726
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 2, !tbaa !6517
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIsEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5726
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 2, !tbaa !6517
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5726
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef signext i16 %i.cy(ptr noundef nonnull align 8 dereferenceable(112) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 %i.cz, ptr %i.da, align 8, !tbaa !5721
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dc, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !134
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.y ], [ %i.dp, %bb.z ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIsE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 1, ptr %i.dr, align 1, !tbaa !6518
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEsRKNS1_17SimpleVectorStatsIsEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIsEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOsRKNS0_17SimpleVectorStatsIsEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(8) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !6594

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6595
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6595
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6594
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !6594
end_hunk_13
begin_hunk_14_@_ZNK8facebook5velox14ConstantVectorIlE7valueAtEi:bb.a
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEElEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.270", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.q, align 8, !tbaa !782
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.r, align 8, !tbaa !782
  invoke void @_ZN8facebook5velox14ConstantVectorIlEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6608
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6608
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorIlEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorIlED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIlEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIlEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIlEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIlEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i64, ptr %5, align 8, !tbaa !331
  store i64 %i.at, ptr %i.as, align 8, !tbaa !5739
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 %i.l, ptr %i.au, align 8, !tbaa !6609
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.av, align 1, !tbaa !6610
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorIlE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 8, !tbaa !6609, !range !59, !noundef !60
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIlEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_E18veloxCheckFailArgs) #50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6611
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6614
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6611
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !134
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox14ConstantVectorIlEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIlEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIlE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIlE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5744
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 8, !tbaa !6609
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIlEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5744
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 8, !tbaa !6609
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5744
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(136) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !5739
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dc, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !134
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.y ], [ %i.dp, %bb.z ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIlE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.dr, align 1, !tbaa !6610
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEElRKNS1_17SimpleVectorStatsIlEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIlEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !6693

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6694
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6694
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6693
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !6693
end_hunk_15
begin_hunk_16_@_ZNK8facebook5velox14ConstantVectorInE7valueAtEi:bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEEnEEES4_DpOT_(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.277", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 16, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.q, align 16, !tbaa !791
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %i.r, align 16, !tbaa !791
  invoke void @_ZN8facebook5velox14ConstantVectorInEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOnRKNS0_17SimpleVectorStatsInEESt8optionalIiESG_(ptr noundef nonnull align 16 dereferenceable(240) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(64) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6700
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6700
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 16 dereferenceable(256) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 16 dereferenceable(256) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorInEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorInED2Ev(ptr noundef nonnull align 16 dead_on_return(240) dereferenceable(240) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 16 dereferenceable(256) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorInEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOnRKNS0_17SimpleVectorStatsInEESt8optionalIiESG_(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorInEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsInEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 16 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorInEE, i64 16), ptr %0, align 16, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i128, ptr %5, align 16, !tbaa !246
  store i128 %i.at, ptr %i.as, align 16, !tbaa !6701
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store i8 %i.l, ptr %i.au, align 16, !tbaa !6702
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 1, ptr %i.av, align 1, !tbaa !6703
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.aw, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorInE15makeNullsBufferEv(ptr noundef nonnull align 16 dereferenceable(240) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 16, !tbaa !6702, !range !59, !noundef !60
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorInEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOnRKNS0_17SimpleVectorStatsInEESt8optionalIiESG_E18veloxCheckFailArgs) #50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6704
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6707
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6704
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 16, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !134
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox14ConstantVectorInEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsInEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorInE16setInternalStateEv(ptr noundef nonnull align 16 dereferenceable(240) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 16, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorInE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 16, !tbaa !52 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 16, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 16, !tbaa !5760
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 16, !tbaa !6702
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 16, !tbaa !52 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 16, !tbaa !52 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorInEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 16, !tbaa !5760
  %i.cq = load ptr, ptr %i.co, align 16, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 16, !tbaa !6702
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 16, !tbaa !5760
  %i.cw = load ptr, ptr %i.co, align 16, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef nonnull align 16 dereferenceable(16) ptr %i.cy(ptr noundef nonnull align 16 dereferenceable(176) %i.co, i32 noundef %i.cv)
  %i.da = load i128, ptr %i.cz, align 16, !tbaa !246
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i128 %i.da, ptr %i.db, align 16, !tbaa !6701
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 16, !tbaa !1003
  %i.dc = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dd, align 8, !tbaa !132
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !134
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #41, !inline_history !996
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.y ], [ %i.dq, %bb.z ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorInE15makeNullsBufferEv(ptr noundef nonnull align 16 dereferenceable(240) %0)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 1, ptr %i.ds, align 1, !tbaa !6703
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEnRKNS1_17SimpleVectorStatsInEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 16, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorInEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOnRKNS0_17SimpleVectorStatsInEESt8optionalIiESG_(ptr noundef nonnull align 16 dereferenceable(240) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !6792

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6793
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6793
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6792
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
end_hunk_17
begin_hunk_18_@_ZNK8facebook5velox14ConstantVectorIfE7valueAtEi:bb.a
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEEfEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.292", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 0, ptr %i.q, align 4, !tbaa !800
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.r, align 4, !tbaa !800
  invoke void @_ZN8facebook5velox14ConstantVectorIfEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOfRKNS0_17SimpleVectorStatsIfEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6799
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6799
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorIfEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorIfED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIfEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOfRKNS0_17SimpleVectorStatsIfEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIfEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIfEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIfEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load float, ptr %5, align 4, !tbaa !1127
  store float %i.at, ptr %i.as, align 8, !tbaa !5774
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i8 %i.l, ptr %i.au, align 4, !tbaa !6800
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 1, ptr %i.av, align 1, !tbaa !6801
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.aw, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorIfE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 4, !tbaa !6800, !range !59, !noundef !60
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIfEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOfRKNS0_17SimpleVectorStatsIfEESt8optionalIiESG_E18veloxCheckFailArgs) #50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6802
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6805
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6802
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !134
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_18
begin_hunk_19_@_ZN8facebook5velox14ConstantVectorIfEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIfEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIfE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIfE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5779
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 4, !tbaa !6800
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIfEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5779
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 4, !tbaa !6800
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5779
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef float %i.cy(ptr noundef nonnull align 8 dereferenceable(120) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %i.cz, ptr %i.da, align 8, !tbaa !5774
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dc, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !134
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.y ], [ %i.dp, %bb.z ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIfE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 1, ptr %i.dr, align 1, !tbaa !6801
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEfRKNS1_17SimpleVectorStatsIfEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIfEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOfRKNS0_17SimpleVectorStatsIfEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !6897

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6898
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6898
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !6897
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !6897
end_hunk_19
begin_hunk_20_@_ZNK8facebook5velox14ConstantVectorIdE7valueAtEi:bb.a
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEEdEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.307", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.q, align 8, !tbaa !809
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.r, align 8, !tbaa !809
  invoke void @_ZN8facebook5velox14ConstantVectorIdEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOdRKNS0_17SimpleVectorStatsIdEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6904
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !6904
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorIdEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorIdED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIdEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOdRKNS0_17SimpleVectorStatsIdEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIdEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIdEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIdEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load double, ptr %5, align 8, !tbaa !1138
  store double %i.at, ptr %i.as, align 8, !tbaa !5792
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 %i.l, ptr %i.au, align 8, !tbaa !6905
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.av, align 1, !tbaa !6906
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorIdE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 8, !tbaa !6905, !range !59, !noundef !60
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIdEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOdRKNS0_17SimpleVectorStatsIdEESt8optionalIiESG_E18veloxCheckFailArgs) #50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !6907
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !6910
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !6907
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !134
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox14ConstantVectorIdEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIdEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIdE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIdE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5797
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 8, !tbaa !6905
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIdEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5797
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 8, !tbaa !6905
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5797
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef double %i.cy(ptr noundef nonnull align 8 dereferenceable(136) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.cz, ptr %i.da, align 8, !tbaa !5792
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dc, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !134
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.y ], [ %i.dp, %bb.z ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIdE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.dr, align 1, !tbaa !6906
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEdRKNS1_17SimpleVectorStatsIdEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIdEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOdRKNS0_17SimpleVectorStatsIdEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !7002

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !7003
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !7003
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !7002
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !7002
end_hunk_21
begin_hunk_22_@_ZNK8facebook5velox14ConstantVectorINS0_10StringViewEE7valueAtEi:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEES3_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.324", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !818
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.r, align 8, !tbaa !818
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(272) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !7009
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !7009
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorINS4_10StringViewEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.039.0.insert.ext = zext i1 %3 to i64
  %.sroa.039.0.insert.insert = xor i64 %.sroa.039.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.036.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.039.0.insert.insert, i64 %.sroa.036.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i21 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i21, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i22 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !5043
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  store i8 %i.l, ptr %i.at, align 8, !tbaa !7010
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 257
  store i8 1, ptr %i.au, align 1, !tbaa !7011
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr null, ptr %i.av, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aw = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %4, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !16
  %i.be = icmp eq i8 %i.bd, 32
  br i1 %i.be, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bf = load i8, ptr %i.at, align 8, !tbaa !7010, !range !59, !noundef !60
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_E18veloxCheckFailArgs) #50
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #41
  br label %bb.aq

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.v:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !7012
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bl = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !7015
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !7012
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i23 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i23, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !132
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !134
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #41, !inline_history !996
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !76
end_hunk_22
begin_hunk_23_@_ZN8facebook5velox14ConstantVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EE:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread33

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread33, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread33: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread33
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ah

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread33
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_10StringViewEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i13 = icmp eq i32 %i.aj, 9
  br i1 %.not.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i14 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i14, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i14, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5813
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 8, !tbaa !7010
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.029.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.029.0.insert.insert = xor i64 %.sroa.029.0.insert.ext, 4294967297
  store i64 %.sroa.029.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.025.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.025.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 0) #41 ; 5 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5813
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 8, !tbaa !7010
  br i1 %i.ct, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5813
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(208) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !5043
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.db = load i32, ptr %i.da, align 8, !tbaa !314 ; 4 uses
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = select i1 %i.dc, ptr %i.dd, ptr %i.df   ; 2 uses
  %i.dh = zext i32 %i.db to i64                   ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.di, ptr %1, align 8, !tbaa !316
  %i.dj = icmp eq ptr %i.dg, null
  br i1 %i.dj, label %.noexc, label %bb.u

.noexc:                                           ; preds = %bb.t
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #50
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.dk = icmp ugt i32 %i.db, 15
  br i1 %i.dk, label %.noexc15, label %._crit_edge.i.i

.noexc15:                                         ; preds = %bb.u
  %i.dl = add nuw nsw i64 %i.dh, 1
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #47 ; 2 uses
  store ptr %i.dm, ptr %1, align 8, !tbaa !319
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !124
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc15, %bb.u
  %i.dn = phi ptr [ %i.dm, %.noexc15 ], [ %i.di, %bb.u ] ; 3 uses
  switch i32 %i.db, label %bb.w [
    i32 1, label %bb.v
    i32 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.do = load i8, ptr %i.dd, align 4, !tbaa !124
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !124
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull align 1 %i.dg, i64 %i.dh, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dh, ptr %i.dp, align 8, !tbaa !321
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dh
  store i8 0, ptr %i.dq, align 1, !tbaa !124
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE8setValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dr = load ptr, ptr %1, align 8, !tbaa !319   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.di
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.dt = load i64, ptr %i.di, align 8, !tbaa !124
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.dv = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.co, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 0) #41
  %i.dw = load i32, ptr %i.bq, align 8, !tbaa !5813
  %i.dx = call i16 @_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE7isAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EESt8optionalIbEE4typeEi(ptr noundef nonnull align 8 dereferenceable(208) %i.dv, i32 noundef %i.dw) ; 2 uses
  %i.dy = and i16 %i.dx, 256
  %.not = icmp eq i16 %i.dy, 0
  br i1 %.not, label %bb.aa, label %_ZNRSt8optionalIbE5valueEv.exit

_ZNRSt8optionalIbE5valueEv.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = trunc i16 %i.dx to i1
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE13setAllIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %i.dz)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %1, align 8, !tbaa !319   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.di
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.z
  %i.ed = load i64, ptr %i.di, align 8, !tbaa !124
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  resume { ptr, i32 } %i.ea

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNRSt8optionalIbE5valueEv.exit, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.ef = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i19 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i19, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.eg, align 8, !tbaa !132
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !134
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #41, !inline_history !996
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i32 [ %i.ej, %bb.ae ], [ %i.et, %bb.af ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.eu, label %bb.ag, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  call void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 257
  store i8 1, ptr %i.ev, align 1, !tbaa !7011
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i16 @_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE7isAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EESt8optionalIbEE4typeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
end_hunk_23
begin_hunk_24_@_ZNK8facebook5velox14ConstantVectorINS0_9TimestampEE7valueAtEi:bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERibRKSt10shared_ptrIKNS1_4TypeEES3_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.339", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !834
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.r, align 8, !tbaa !834
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !7197
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41, !inline_history !7197
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #41
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorINS4_9TimestampEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !124
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
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.031.0.insert.ext = zext i1 %3 to i64
  %.sroa.031.0.insert.insert = xor i64 %.sroa.031.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorINS0_9TimestampEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !5294
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i8 %i.l, ptr %i.at, align 8, !tbaa !7198
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.au, align 1, !tbaa !7199
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.av, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aw = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %4, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !16
  %i.be = icmp eq i8 %i.bd, 32
  br i1 %i.be, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bf = load i8, ptr %i.at, align 8, !tbaa !7198, !range !59, !noundef !60
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_9TimestampEEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_E18veloxCheckFailArgs) #50
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #41
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !7200
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bl = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !7203
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !7200
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !132
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !134
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #41, !inline_history !996
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !76
end_hunk_24
begin_hunk_25_@_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_9TimestampEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5845
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 8, !tbaa !7198
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_9TimestampEEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5845
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 8, !tbaa !7198
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5845
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(152) %i.co, i32 noundef %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !5294
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dc, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !134
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.y ], [ %i.dp, %bb.z ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.dr, align 1, !tbaa !7199
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEES3_RKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESV_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !7294

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !7295
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !7295
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !7294
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !7294
end_hunk_25
begin_hunk_26_@_ZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.backedge, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.be, %tailrecurse.i.backedge ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354
  switch i32 %i.d, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread [
    i32 9, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !393, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(128) %.tr.i), !inline_history !403
  br label %tailrecurse.i.backedge

bb.d:                                             ; preds = %tailrecurse.i, %tailrecurse.i
  %i.l = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

bb.e:                                             ; preds = %tailrecurse.i
  %i.q = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.tr.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.tr.i), !inline_history !403
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.f, %bb.d, %bb.c
  %.tr.i.be = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.z, %bb.f ]
  br label %tailrecurse.i

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit: ; preds = %tailrecurse.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !404, !range !59, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17, label %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17: ; preds = %bb.b, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.af = load atomic i8, ptr %i.ae seq_cst, align 1, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  store atomic i8 1, ptr %i.ae seq_cst, align 1
  br label %bb.ab

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread17
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.119) #50
  unreachable

_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.e, %tailrecurse.i, %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !354
  %.not.i5 = icmp eq i32 %i.aj, 9
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(94) %i.ah), !inline_history !1380 ; 0 uses
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

bb.h:                                             ; preds = %_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE.exit.thread
  tail call void @_ZNK8facebook5velox10LazyVector18loadVectorInternalEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  br label %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit

_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit: ; preds = %bb.g, %bb.h
  %.0.i6 = phi ptr [ %i.a, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %.0.i6, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit
  %.not7.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !76
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !123
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !134
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !391
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i9.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bp = phi ptr [ %i.ap, %_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5869
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bp, i32 noundef %i.br) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.bx = zext i1 %i.bv to i8
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !7302
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.013.0.insert.ext = zext i1 %i.bv to i64
  %.sroa.013.0.insert.insert = xor i64 %.sroa.013.0.insert.ext, 4294967297
  store i64 %.sroa.013.0.insert.insert, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !345
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = zext i32 %i.ca to i64
  %i.cd = or disjoint i64 %i.cc, 4294967296
  %.sroa.010.0.insert.insert = select i1 %i.bv, i64 %i.cd, i64 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.ce)
  br i1 %i.ci, label %bb.s, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(94) %i.cj)
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.cn, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_11ComplexTypeEEE, i64 0) #41 ; 4 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !5869
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(94) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.bw, align 1, !tbaa !7302
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !5869
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 384
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(108) %i.co, i32 noundef %i.cv)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.a, align 8, !tbaa !1003
  %i.cz = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 8 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %.not.i.i.i.i7 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.da, align 8, !tbaa !132
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !134
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #41, !inline_history !996
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.dd, %bb.y ], [ %i.dn, %bb.z ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.do, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #41
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.dp, align 2, !tbaa !7303
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !355  ; 7 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = atomicrmw sub ptr %i.d, i32 1 acq_rel, align 4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.noexc.i unwind label %bb.d, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.k, null
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i.i
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !373

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #48
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52   ; 2 uses
  %.not10 = icmp eq ptr %i.r, null
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 92
  store atomic i8 0, ptr %i.s seq_cst, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !355  ; 7 uses
  %.not.i3 = icmp eq ptr %i.u, null
  br i1 %.not.i3, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i4, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8

.sink.split.i.i4:                                 ; preds = %bb.h
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i5 unwind label %bb.i, !inline_history !373

.noexc.i5:                                        ; preds = %.sink.split.i.i4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !374
  %.not.i.i6 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !8
  %..i.i7 = select i1 %.not.i.i6, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i7
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8 unwind label %bb.i, !inline_history !373

bb.i:                                             ; preds = %.noexc.i5, %.sink.split.i.i4
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8: ; preds = %bb.g, %bb.h, %.noexc.i5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !123 ; 8 uses
  %.not.i.i9 = icmp eq ptr %i.aj, null
end_hunk_26
begin_hunk_27_@_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_11ComplexTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiSF_St10shared_ptrINS1_10BaseVectorEERKNS1_17SimpleVectorStatsIS3_EEEEES5_DpOT_:bb.a
          to label %bb.b unwind label %.body, !inline_history !7389

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !134
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #41, !inline_history !7390
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #41, !inline_history !7390
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %bb.i, !prof !130

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #41, !inline_history !7389
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41, !inline_history !7389
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_11ComplexTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEES3_RKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESV_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_11ComplexTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i8, ptr %3, align 1, !tbaa !544, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !131
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !76
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !7391

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !7392
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !7392
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !7391
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41, !inline_history !7391
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.12", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !131
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !76
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !76
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !355
  %.sroa.030.0.insert.ext = zext i1 %3 to i64
  %.sroa.030.0.insert.insert = xor i64 %.sroa.030.0.insert.ext, 4294967297
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.027.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorINS0_11ComplexTypeEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.030.0.insert.insert, i64 %.sroa.027.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !355   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !374
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !373

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !134
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !714
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i18 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorINS0_11ComplexTypeEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  store i8 %i.l, ptr %i.as, align 1, !tbaa !7302
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.at, align 2, !tbaa !7303
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.au, align 8, !tbaa !5927
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr %4, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !16
  %i.bd = icmp eq i8 %i.bc, 32
  br i1 %i.bd, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.be = load i8, ptr %i.as, align 1, !tbaa !7302, !range !59, !noundef !60
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.w, label %bb.r, !prof !383

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_E18veloxCheckFailArgs) #50
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #41
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !7393
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae, !inline_history !653

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load <2 x ptr>, ptr %9, align 16, !tbaa !131, !noalias !7396
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !7393
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !123 ; 8 uses
  store <2 x ptr> %i.bk, ptr %i.aq, align 8, !tbaa !131
  %.not.i.i.i.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i19, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bm, align 8, !tbaa !132
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !134
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #41, !inline_history !996
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #41, !inline_history !996
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

end_hunk_27
