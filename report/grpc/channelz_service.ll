inline.NumInlined: 1765
inline.NumDeleted: 913
begin_hunk_0_@_ZN4grpc17ChannelzV2Service9GetEntityEPNS_13ServerContextEPKNS_8channelz2v216GetEntityRequestEPNS4_17GetEntityResponseE:bb.a

bb.d:                                             ; preds = %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39
  %i.ac = or i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %_ZN4grpc8channelz2v217GetEntityResponse14mutable_entityEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !33 ; 3 uses
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i64 %i.ah, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.am = inttoptr i64 %i.ah to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.al, %bb.g ], [ %i.am, %bb.h ]
  %i.an = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructIN4grpc8channelz2v26EntityEEEPvPS1_(ptr noundef %.0.i.i.i.i)
          to label %.noexc13 unwind label %bb.c   ; 2 uses

.noexc13:                                         ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !8
  %.pre = load ptr, ptr %5, align 8, !tbaa !77
  br label %_ZN4grpc8channelz2v217GetEntityResponse14mutable_entityEv.exit

_ZN4grpc8channelz2v217GetEntityResponse14mutable_entityEv.exit: ; preds = %.noexc13, %bb.e
  %i.ao = phi ptr [ %.pre, %.noexc13 ], [ %i.e, %bb.e ]
  %i.ap = phi ptr [ %i.an, %.noexc13 ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN9grpc_core8channelz8BaseNode23SerializeEntityToStringB5cxx11EN4absl12lts_202505128DurationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(232) %i.ao, i64 0, i32 400000000)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN4grpc8channelz2v217GetEntityResponse14mutable_entityEv.exit
  %i.aq = load ptr, ptr %7, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !27
  %i.at = invoke noundef zeroext i1 @_ZN6google8protobuf11MessageLite15ParseFromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 %i.as, ptr %i.aq)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.j
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.az = load ptr, ptr @_ZN4grpc6Status2OKE, align 8, !tbaa !45, !nonnull !44, !align !47
  invoke void @_ZN4grpc6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.az)
          to label %bb.m unwind label %bb.c

bb.k:                                             ; preds = %_ZN4grpc8channelz2v217GetEntityResponse14mutable_entityEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.l
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.bb, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.p

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load ptr, ptr %5, align 8, !tbaa !77    ; 4 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 acq_rel, align 8
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.o, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit, !prof !35

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(232) %i.bh) #25, !inline_history !162
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit

_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit: ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.d, %bb.c
  %.pn10 = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.y, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  %i.bo = load ptr, ptr %5, align 8, !tbaa !77    ; 4 uses
  %.not.i20 = icmp eq ptr %i.bo, null
  br i1 %.not.i20, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit21, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 acq_rel, align 8
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.r, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit21, !prof !35

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(232) %i.bo) #25, !inline_history !162
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit21

_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit21: ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define void @_ZN4grpc17ChannelzV2Service10QueryTraceEPNS_13ServerContextEPKNS_8channelz2v217QueryTraceRequestEPNS_12ServerWriterINS4_18QueryTraceResponseEEE(ptr dead_on_unwind noalias writable sret(%"class.grpc::Status") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::map", align 8          ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %11 = alloca %"class.grpc_core::WeakRefCountedPtr.64", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::unique_ptr.102", align 8 ; 6 uses
  %14 = alloca %"class.std::map", align 8         ; 10 uses
  %15 = alloca %"class.std::shared_ptr.110", align 8 ; 4 uses
  %16 = alloca %"class.absl::lts_20250512::AnyInvocable", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !198
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !203
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !204
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !205
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !206
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !207, !noalias !213 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.i, 0
  br i1 %.not12.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !218, !noalias !213
  %i.l = zext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !219, !noalias !213 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.l
  br i1 %.not.i.i, label %._crit_edge, label %bb.c, !llvm.loop !221

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph193, %.lr.ph
  %.sroa.13.0126.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph ], [ %indvars.iv.next193, %.lr.ph193 ]
  %.sroa.0114.0125.ph = phi ptr [ %i.n, %.lr.ph ], [ %i.cx, %.lr.ph193 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer, %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit
  %.sroa.0114.0125 = phi ptr [ %i.ct, %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit ], [ %.sroa.0114.0125.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0114.0125, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0114.0125, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  switch i32 %i.t, label %bb.q [
    i32 1, label %bb.g
    i32 2, label %bb.k
    i32 3, label %bb.m
  ]

bb.f:                                             ; preds = %bb.l, %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.g:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0114.0125, i64 56
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJlS5_bEESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.h unwind label %bb.j       ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !222
  switch i8 %i.z, label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm0EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i [
    i8 0, label %_ZSt3getILm0EJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i
    i8 1, label %bb.i
  ]

_ZSt3getILm0EJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i: ; preds = %bb.h
  store i64 %i.w, ptr %i.x, align 8, !tbaa !29
  br label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !23  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm0EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm0EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i

_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm0EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  store i64 %i.w, ptr %i.x, align 8, !tbaa !224
  store i8 0, ptr %i.y, align 8, !tbaa !222
  br label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit

bb.j:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.k:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0114.0125, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJlS5_bEESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.l unwind label %bb.f

bb.l:                                             ; preds = %bb.k
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = and i64 %i.aj, -4
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = invoke noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIRKS5_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISF_SC_E15is_assignable_vIRSF_SC_EERS6_E4typeESD_(ptr noundef nonnull align 8 dereferenceable(33) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit unwind label %bb.f ; 0 uses

bb.m:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0114.0125, i64 56
  %i.ao = load i8, ptr %i.an, align 8, !range !43 ; 2 uses
  %i.ap = invoke noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJlS5_bEESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.n unwind label %bb.p       ; 5 uses

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !222
  switch i8 %i.ar, label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm2EJbEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i [
    i8 2, label %_ZSt3getILm2EJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i
    i8 1, label %bb.o
  ]

_ZSt3getILm2EJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i: ; preds = %bb.n
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !41
  br label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !23 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm2EJbEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i67: ; preds = %bb.o
  %i.av = load i64, ptr %i.at, align 8, !tbaa !8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  br label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm2EJbEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i

_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm2EJbEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i67, %bb.n
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !226
  store i8 2, ptr %i.aq, align 8, !tbaa !222
  br label %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit

bb.p:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.q:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0114.0125, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 25, ptr %8, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.12, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.bb, ptr %10, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.q
  %i.bd = load ptr, ptr %5, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !27
  invoke void @_ZN4absl12lts_2025051216strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 %i.bf, ptr %i.bd)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.bg = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.s:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i: ; preds = %bb.s
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.br = load ptr, ptr %10, align 8, !tbaa !23
  %i.bs = load i64, ptr %i.bc, align 8, !tbaa !27
  store i64 %i.bs, ptr %9, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.br, ptr %i.bt, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.critedge unwind label %bb.u

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  store i32 3, ptr %0, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !28
  %i.bw = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.t:                                             ; preds = %.critedge
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !27 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !23
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !8
  store i64 %i.cd, ptr %i.bv, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ce = phi i64 [ %i.ca, %bb.t ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !27
  store ptr %i.bx, ptr %7, align 8, !tbaa !23
  store i64 0, ptr %i.cf, align 8, !tbaa !27
  store i8 0, ptr %i.bx, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.cj, align 8, !tbaa !27
  store i8 0, ptr %i.ci, align 8, !tbaa !8
  %i.ck = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bb
  br i1 %i.cl, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = load i64, ptr %i.bb, align 8, !tbaa !8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #27
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bq

bb.u:                                             ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.co, %bb.u ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i ]
  %i.cp = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bb
  br i1 %i.cq, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %.body
  %i.cr = load i64, ptr %i.bb, align 8, !tbaa !8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit72

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit72: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bs

_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit: ; preds = %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm2EJbEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i, %_ZSt3getILm2EJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i, %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE7emplaceILm0EJlEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJlS5_bEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i, %_ZSt3getILm0EJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i, %bb.l
  %i.ct = load ptr, ptr %.sroa.0114.0125, align 8, !tbaa !228 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i73, label %bb.v, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit

bb.v:                                             ; preds = %_ZNSt7variantIJlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEaSIlEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJlS5_bEE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS6_E4typeESB_.exit
  %i.cu = load i32, ptr %i.h, align 4, !tbaa !207 ; 2 uses
  %17 = and i64 %.sroa.13.0126.ph, 4294967295
  %indvars.iv.next191 = add nuw nsw i64 %17, 1    ; 2 uses
  %indvars192 = trunc i64 %indvars.iv.next191 to i32
  %18 = icmp ugt i32 %i.cu, %indvars192
  br i1 %18, label %.lr.ph193.preheader, label %._crit_edge

.lr.ph193.preheader:                              ; preds = %bb.v
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !218
  br label %.lr.ph193

bb.w:                                             ; preds = %.lr.ph193
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next193, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %19 = icmp ugt i32 %i.cu, %indvars
  br i1 %19, label %.lr.ph193, label %._crit_edge, !llvm.loop !230

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %bb.w
  %indvars.iv.next193 = phi i64 [ %indvars.iv.next, %bb.w ], [ %indvars.iv.next191, %.lr.ph193.preheader ] ; 3 uses
  %20 = and i64 %indvars.iv.next193, 4294967295
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %20
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !219 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.w, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer, !llvm.loop !230

._crit_edge:                                      ; preds = %bb.d, %bb.v, %bb.w, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !8
  %i.db = invoke noundef ptr @_ZN9grpc_core8channelz16ChannelzRegistry7DefaultEv()
          to label %.noexc74 unwind label %bb.y

.noexc74:                                         ; preds = %._crit_edge
  invoke void @_ZN9grpc_core8channelz16ChannelzRegistry11InternalGetEl(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::WeakRefCountedPtr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.db, i64 noundef %i.da)
          to label %_ZN9grpc_core8channelz16ChannelzRegistry7GetNodeEl.exit unwind label %bb.y

_ZN9grpc_core8channelz16ChannelzRegistry7GetNodeEl.exit: ; preds = %.noexc74
  %i.dc = load ptr, ptr %11, align 8, !tbaa !77   ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.noexc.i, label %bb.aa

.noexc.i:                                         ; preds = %_ZN9grpc_core8channelz16ChannelzRegistry7GetNodeEl.exit
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.de, ptr %12, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 33, ptr %i.a, align 8, !tbaa !29
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc76 unwind label %bb.z   ; 3 uses

.noexc76:                                         ; preds = %.noexc.i
  store ptr %i.df, ptr %12, align 8, !tbaa !23
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.df, ptr noundef nonnull align 1 dereferenceable(33) @.str.11, i64 33, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !27
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i32 5, ptr %0, align 8, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !28
  %i.dl = load ptr, ptr %12, align 8, !tbaa !23   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.de
  br i1 %i.dm, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

bb.x:                                             ; preds = %.noexc76
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !27 ; 3 uses
  %i.do = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.do)
  %i.dp = add nuw nsw i64 %i.dn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.de, i64 %i.dp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %.noexc76
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !23
  %i.dq = load i64, ptr %i.de, align 8, !tbaa !8
  store i64 %i.dq, ptr %i.dk, align 8, !tbaa !8
  %.pre135 = load i64, ptr %i.dh, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  %i.dr = phi i64 [ %i.dn, %bb.x ], [ %.pre135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !27
  store ptr %i.de, ptr %12, align 8, !tbaa !23
  store i64 0, ptr %i.dh, align 8, !tbaa !27
  store i8 0, ptr %i.de, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.dv, align 8, !tbaa !27
  store i8 0, ptr %i.du, align 8, !tbaa !8
  br label %_ZNSt12__shared_ptrIZN4grpc17ChannelzV2Service10QueryTraceEPNS0_13ServerContextEPKNS0_8channelz2v217QueryTraceRequestEPNS0_12ServerWriterINS5_18QueryTraceResponseEEEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %.noexc74, %._crit_edge
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit103

bb.z:                                             ; preds = %.noexc.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.aa:                                            ; preds = %_ZN9grpc_core8channelz16ChannelzRegistry7GetNodeEl.exit
  %i.dy = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29
          to label %bb.ab unwind label %.thread   ; 20 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 8 uses
  store i32 1, ptr %i.dz, align 8, !tbaa !231, !noalias !233
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 12 ; 2 uses
  store i32 1, ptr %i.ea, align 4, !tbaa !236, !noalias !233
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIZN4grpc17ChannelzV2Service10QueryTraceEPNS0_13ServerContextEPKNS0_8channelz2v217QueryTraceRequestEPNS0_12ServerWriterINS5_18QueryTraceResponseEEEE5StateSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dy, align 8, !tbaa !12, !noalias !233
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.eb, i8 0, i64 104, i1 false), !noalias !233
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !28, !noalias !233
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 104
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !28, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !163
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, -4
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !203 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = load i32, ptr %i.b, align 8, !tbaa !198
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !203
  %i.es = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !205
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.eo, ptr %i.eu, align 8, !tbaa !237
  %i.ev = load i64, ptr %i.f, align 8, !tbaa !206
  store ptr null, ptr %i.c, align 8, !tbaa !203
  store ptr %i.b, ptr %i.d, align 8, !tbaa !204
  store ptr %i.b, ptr %i.e, align 8, !tbaa !205
  store i64 0, ptr %i.f, align 8, !tbaa !206
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJlS5_bEESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr null, ptr %i.ew, align 8, !tbaa !203
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJlS5_bEESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJlS5_bEESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit: ; preds = %bb.ac, %bb.ad
  %.sink134.a = phi ptr [ %i.eo, %bb.ad ], [ %i.es, %bb.ac ]
  %.sink133 = phi ptr [ %i.eo, %bb.ad ], [ %i.et, %bb.ac ]
  %.sink = phi i64 [ 0, %bb.ad ], [ %i.ev, %bb.ac ]
  %.sink.i.i.i.i = phi i32 [ 0, %bb.ad ], [ %i.eq, %bb.ac ]
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %.sink134.a, ptr %i.ex, align 8, !tbaa !204
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %.sink133, ptr %i.ey, align 8, !tbaa !205
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %.sink, ptr %i.ez, align 8, !tbaa !206
  store i32 %.sink.i.i.i.i, ptr %i.eo, align 8, !tbaa !198
  invoke void @_ZN17grpc_event_engine12experimental21GetDefaultEventEngineEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.110") align 8 %15)
          to label %bb.ae unwind label %bb.bc

bb.ae:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJlS5_bEESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i83 = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.i.i83, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = load i32, ptr %i.dz, align 8, !tbaa !39
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.dz, align 8, !tbaa !39
  br label %_ZNSt10shared_ptrIZN4grpc17ChannelzV2Service10QueryTraceEPNS0_13ServerContextEPKNS0_8channelz2v217QueryTraceRequestEPNS0_12ServerWriterINS5_18QueryTraceResponseEEEE5StateEC2ERKSE_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fd = atomicrmw volatile add ptr %i.dz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIZN4grpc17ChannelzV2Service10QueryTraceEPNS0_13ServerContextEPKNS0_8channelz2v217QueryTraceRequestEPNS0_12ServerWriterINS5_18QueryTraceResponseEEEE5StateEC2ERKSE_.exit

_ZNSt10shared_ptrIZN4grpc17ChannelzV2Service10QueryTraceEPNS0_13ServerContextEPKNS0_8channelz2v217QueryTraceRequestEPNS0_12ServerWriterINS5_18QueryTraceResponseEEEE5StateEC2ERKSE_.exit: ; preds = %bb.af, %bb.ag
  %i.fe = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.ah unwind label %bb.bd     ; 4 uses

bb.ah:                                            ; preds = %_ZNSt10shared_ptrIZN4grpc17ChannelzV2Service10QueryTraceEPNS0_13ServerContextEPKNS0_8channelz2v217QueryTraceRequestEPNS0_12ServerWriterINS5_18QueryTraceResponseEEEE5StateEC2ERKSE_.exit
  store ptr %i.eb, ptr %i.fe, align 8, !tbaa !238
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.dy, ptr %i.ff, align 8, !tbaa !243
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %4, ptr %i.fg, align 8, !tbaa !244
  store ptr %i.fe, ptr %16, align 16, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN4grpc17ChannelzV2Service10QueryTraceEPNS3_13ServerContextEPKNS3_8channelz2v217QueryTraceRequestEPNS3_12ServerWriterINS8_18QueryTraceResponseEEEE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESJ_", ptr %i.fh, align 16, !tbaa !248
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN4grpc17ChannelzV2Service10QueryTraceEPNS3_13ServerContextEPKNS3_8channelz2v217QueryTraceRequestEPNS3_12ServerWriterINS8_18QueryTraceResponseEEEE3$_0JNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.fi, align 8, !tbaa !250
  invoke void @_ZN9grpc_core8channelz8BaseNode9RunZTraceESt17basic_string_viewIcSt11char_traitsIcEESt3mapINSt7__cxx1112basic_stringIcS4_SaIcEEESt7variantIJlSA_bEESt4lessISA_ESaISt4pairIKSA_SC_EEESt10shared_ptrIN17grpc_event_engine12experimental11EventEngineEEN4absl12lts_2025051212AnyInvocableIFvNSQ_8StatusOrISt8optionalISA_EEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.102") align 8 %13, ptr noundef nonnull align 8 dereferenceable(232) %i.dc, i64 %i.en, ptr %i.el, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 %15, ptr noundef nonnull align 16 %16)
          to label %"_ZZN4grpc17ChannelzV2Service10QueryTraceEPNS_13ServerContextEPKNS_8channelz2v217QueryTraceRequestEPNS_12ServerWriterINS4_18QueryTraceResponseEEEEN3$_0D2Ev.exit" unwind label %bb.be

"_ZZN4grpc17ChannelzV2Service10QueryTraceEPNS_13ServerContextEPKNS_8channelz2v217QueryTraceRequestEPNS_12ServerWriterINS4_18QueryTraceResponseEEEEN3$_0D2Ev.exit": ; preds = %bb.ah
  %i.fj = load ptr, ptr %i.fh, align 16, !tbaa !248
  call void %i.fj(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %16, ptr noundef nonnull align 16 dereferenceable(32) %16) #25, !inline_history !251
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !243 ; 8 uses
  %.not.i.i87 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i87, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %"_ZZN4grpc17ChannelzV2Service10QueryTraceEPNS_13ServerContextEPKNS_8channelz2v217QueryTraceRequestEPNS_12ServerWriterINS4_18QueryTraceResponseEEEEN3$_0D2Ev.exit"
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
end_hunk_0
