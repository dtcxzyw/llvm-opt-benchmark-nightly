Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/dns_resolver_ares?download=true
inline.NumInlined: 1969
inline.NumDeleted: 986
begin_hunk_0_@_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE12AssignStatusIRNS0_6StatusEEEvOT_:bb.a
  %.not4.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  tail call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #32
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #35
  br label %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.c, align 8, !tbaa !156
  br label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.o = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE5ClearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !147
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #35
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE5ClearEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE5ClearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  %i.u = load i64, ptr %1, align 8, !tbaa !25     ; 7 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE5ClearEv.exit
  %i.w = load i64, ptr %0, align 8, !tbaa !25     ; 2 uses
  %.not.i = icmp eq i64 %i.u, %i.w
  br i1 %.not.i, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.e

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE5ClearEv.exit
  %i.x = inttoptr i64 %i.u to ptr
  %i.y = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.z = load i64, ptr %0, align 8, !tbaa !25     ; 2 uses
  %.not.i11 = icmp eq i64 %i.u, %i.z
  br i1 %.not.i11, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.aa = phi i64 [ %i.z, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread ], [ %i.w, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit ] ; 2 uses
  store i64 %i.u, ptr %0, align 8, !tbaa !25
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = inttoptr i64 %i.aa to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #34
  unreachable

bb.h:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread
  %i.af = inttoptr i64 %i.u to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #34
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split: ; preds = %bb.f, %bb.e, %bb.h
  %.pr = load i64, ptr %0, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split
  %i.ai = phi i64 [ %.pr, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split ], [ %i.u, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit ]
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.j, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE11EnsureNotOkEv.exit, !prof !53

bb.j:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  tail call void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE11EnsureNotOkEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE11EnsureNotOkEv.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE12AssignStatusIRNS0_6StatusEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !25
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit, !prof !53

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !4
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = load i64, ptr %1, align 8, !tbaa !25     ; 7 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit
  %i.m = load i64, ptr %0, align 8, !tbaa !25     ; 2 uses
  %.not.i = icmp eq i64 %i.k, %i.m
  br i1 %.not.i, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.e

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE5ClearEv.exit
  %i.n = inttoptr i64 %i.k to ptr
  %i.o = atomicrmw add ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  %i.p = load i64, ptr %0, align 8, !tbaa !25     ; 2 uses
  %.not.i6 = icmp eq i64 %i.k, %i.p
  br i1 %.not.i6, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.q = phi i64 [ %i.p, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread ], [ %i.m, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit ] ; 2 uses
  store i64 %i.k, ptr %0, align 8, !tbaa !25
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = inttoptr i64 %i.q to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #34
  unreachable

bb.h:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.thread
  %i.v = inttoptr i64 %i.k to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split: ; preds = %bb.f, %bb.e, %bb.h
  %.pr = load i64, ptr %0, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split
  %i.y = phi i64 [ %.pr, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split ], [ %i.k, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit ]
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.j, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE11EnsureNotOkEv.exit, !prof !53

bb.j:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  tail call void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE11EnsureNotOkEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE11EnsureNotOkEv.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE14_M_move_assignEOS3_(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(121) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !143, !range !126, !noundef !127
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load i8, ptr %i.d, align 8, !range !126
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN9grpc_core8Resolver6ResultaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) ; 0 uses
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !145
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !145
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !147
  store ptr %i.o, ptr %i.m, align 8, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store i64 1, ptr %0, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  store i64 %i.h, ptr %0, align 8, !tbaa !25
  store i64 55, ptr %1, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i

_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !150
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !150
  store ptr %i.v, ptr %i.u, align 8, !tbaa !150
  store ptr null, ptr %i.t, align 8, !tbaa !150
  store i64 1, ptr %i.p, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i

bb.h:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i.i.i
  store i64 %i.r, ptr %i.p, align 8, !tbaa !25
  store i64 55, ptr %i.q, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i

_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !63
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.i:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i.i.i
  store ptr %i.z, ptr %i.w, align 8, !tbaa !23
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !51
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !22
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !23
  store i64 0, ptr %i.ah, align 8, !tbaa !22
  store i8 0, ptr %i.aa, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN9grpc_core11ChannelArgsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al) #32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 24, i1 false)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !153
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !153
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !154
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE12_M_constructIJS2_EEEvDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 16, i1 false), !tbaa.struct !155
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !154
  store ptr %i.au, ptr %i.at, align 8, !tbaa !154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE12_M_constructIJS2_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE12_M_constructIJS2_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i, %bb.j
  store i8 1, ptr %i.a, align 8, !tbaa !143
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit

bb.k:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.l, label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(121) %0) #32
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE8_M_resetEv.exit: ; preds = %bb.l, %bb.k, %_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE12_M_constructIJS2_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(120) ptr @_ZN9grpc_core8Resolver6ResultaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %i.a = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.a, label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !25
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE6AssignIS7_EEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEE12AssignStatusINS0_6StatusEEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !25   ; 3 uses
  %i.k = icmp eq i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !179
  store ptr null, ptr %i.i, align 8, !tbaa !179
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !179  ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !179
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = atomicrmw add ptr %i.o, i64 -1 acq_rel, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.i, label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit, !prof !53

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #32, !inline_history !269
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit

bb.j:                                             ; preds = %bb.f
  store ptr null, ptr %i.l, align 8, !tbaa !150
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !150
  store ptr %i.u, ptr %i.l, align 8, !tbaa !150
  store ptr null, ptr %i.i, align 8, !tbaa !150
  store i64 1, ptr %i.e, align 8, !tbaa !25
  %i.v = trunc i64 %i.j to i1
  br i1 %i.v, label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = inttoptr i64 %i.j to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #34
  unreachable

bb.m:                                             ; preds = %bb.e
  tail call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_13ServiceConfigEEEE12AssignStatusINS0_6StatusEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit

_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit: ; preds = %bb.a, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !23  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.ag = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit
  br i1 %i.ag, label %bb.n, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEaSEOS6_.exit
  br i1 %i.ag, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  br i1 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.o, !prof !53

bb.o:                                             ; preds = %bb.n
  switch i64 %i.ai, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !51
  store i8 %i.ak, ptr %i.ab, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.al, ptr %i.am, align 8, !tbaa !22
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !51
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !22
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !22
  %i.as = load i64, ptr %i.af, align 8, !tbaa !51
  store i64 %i.as, ptr %i.ac, align 8, !tbaa !51
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !51
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load i64, ptr %i.au, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !22
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !51
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !23
  store i64 %i.at, ptr %i.af, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.r, %bb.s
  %i.ay = phi ptr [ %i.ab, %bb.r ], [ %i.af, %bb.s ], [ %i.ae, %bb.n ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 0, ptr %i.az, align 8, !tbaa !22
  store i8 0, ptr %i.ay, align 1, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #32 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.bf = load <2 x ptr>, ptr %i.be, align 8, !tbaa !58
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !154
  %.not.i.i.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvN4absl12lts_202505126StatusEEEC2EOS4_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 16, i1 false), !tbaa.struct !155
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN4absl12lts_202505126StatusEEEC2EOS4_.exit.i

_ZNSt8functionIFvN4absl12lts_202505126StatusEEEC2EOS4_.exit.i: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 16, i1 false), !tbaa.struct !155
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.bd, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !58
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !58 ; 2 uses
  store <2 x ptr> %i.bk, ptr %i.bi, align 16, !tbaa !58
  store <2 x ptr> %i.bf, ptr %i.bj, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvN4absl12lts_202505126StatusEEEaSEOS4_.exit, label %bb.u

end_hunk_0
