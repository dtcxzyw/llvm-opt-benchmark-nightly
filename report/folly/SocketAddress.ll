Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SocketAddress?download=true
inline.NumInlined: 545
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK5folly13SocketAddress17isLoopbackAddressEv:bb.a
  switch i16 %i.e, label %bb.b [
    i16 2, label %_ZNK5folly9IPAddress4asV4Ev.exit.i.i
    i16 10, label %_ZNK5folly9IPAddress4asV6Ev.exit.i.i
    i16 0, label %_ZNK5folly9IPAddress6asNoneEv.exit.i.i
  ]

_ZNK5folly9IPAddress4asV4Ev.exit.i.i:             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.f = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV410isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(22) %0)
  br label %_ZNK5folly9IPAddress10isLoopbackEv.exit

_ZNK5folly9IPAddress4asV6Ev.exit.i.i:             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.g = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV610isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(22) %0)
  br label %_ZNK5folly9IPAddress10isLoopbackEv.exit

bb.b:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  tail call void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.3) #5
  unreachable

_ZNK5folly9IPAddress6asNoneEv.exit.i.i:           ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  tail call void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #5
  unreachable

_ZNK5folly9IPAddress10isLoopbackEv.exit:          ; preds = %_ZNK5folly9IPAddress4asV6Ev.exit.i.i, %_ZNK5folly9IPAddress4asV4Ev.exit.i.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.f, %_ZNK5folly9IPAddress4asV4Ev.exit.i.i ], [ %i.g, %_ZNK5folly9IPAddress4asV6Ev.exit.i.i ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK5folly11IPAddressV410isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK5folly11IPAddressV610isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(18)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress15setFromHostPortEPKct(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = zext i16 %2 to i32
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 6, ptr noundef nonnull @.str.39, i32 noundef %i.b) #27 ; 0 uses
  %i.d = call noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcS2_i(ptr nonnull readnone align 8 poison, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  invoke void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.f, i32 noundef %i.h)
          to label %_ZN5folly13SocketAddress15setFromAddrInfoEPK8addrinfo.exit unwind label %bb.b

_ZN5folly13SocketAddress15setFromAddrInfoEPK8addrinfo.exit: ; preds = %bb.a
  call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcti(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = zext i16 %2 to i32
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 6, ptr noundef nonnull @.str.39, i32 noundef %i.b) #27 ; 0 uses
  %i.d = call noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcS2_i(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress15setFromAddrInfoEPK8addrinfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49
  tail call void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.b, i32 noundef %i.d)
  ret void
}

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress13setFromIpPortEPKct(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = zext i16 %2 to i32
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 6, ptr noundef nonnull @.str.39, i32 noundef %i.b) #27 ; 0 uses
  %i.d = call noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcS2_i(ptr nonnull readnone align 8 poison, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 4) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  invoke void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.f, i32 noundef %i.h)
          to label %_ZN5folly13SocketAddress15setFromAddrInfoEPK8addrinfo.exit unwind label %bb.b

_ZN5folly13SocketAddress15setFromAddrInfoEPK8addrinfo.exit: ; preds = %bb.a
  call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly13SocketAddress17setFromIpAddrPortERKNS_9IPAddressEt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((8, 26)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(22) %1, i16 noundef zeroext %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca %"class.folly::IPAddress", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !34
  switch i8 %i.b, label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm0EJS2_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i [
    i8 0, label %_ZSt3getILm0EJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit.i
    i8 1, label %bb.b
  ], !prof !905

_ZSt3getILm0EJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit.i: ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %2, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !51
  br label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEEaSIS2_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS2_S3_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm0EJS2_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 110) #29
  br label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm0EJS2_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i

_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm0EJS2_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !tbaa.struct !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !51
  store i8 0, ptr %i.a, align 8, !tbaa !34
  br label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEEaSIS2_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS2_S3_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_.exit

_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEEaSIS2_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS2_S3_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_.exit: ; preds = %_ZSt3getILm0EJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit.i, %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm0EJS2_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress16setFromLocalPortEt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = zext i16 %1 to i32
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 6, ptr noundef nonnull @.str.39, i32 noundef %i.b) #27 ; 0 uses
  %i.d = call noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcS2_i(ptr nonnull readnone align 8 poison, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 32) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.0913.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0913.i, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !57
  %i.g = icmp eq i32 %i.f, 10
  br i1 %i.g, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0913.i, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.0913.lcssa.sink20.i = phi ptr [ %.0913.i, %.lr.ph.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0913.lcssa.sink20.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %.0913.lcssa.sink20.i, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !49
  invoke void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.k, i32 noundef %i.m)
          to label %_ZN5folly13SocketAddress16setFromLocalAddrEPK8addrinfo.exit unwind label %bb.c

_ZN5folly13SocketAddress16setFromLocalAddrEPK8addrinfo.exit: ; preds = %._crit_edge.i
  call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  ret void

bb.c:                                             ; preds = %._crit_edge.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress16setFromLocalAddrEPK8addrinfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not12 = icmp eq ptr %1, null
  %2 = xor i1 %.not12, true
  call void @llvm.assume(i1 %2)
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0913 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0913, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  %i.c = icmp eq i32 %i.b, 10
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.0913.lcssa.sink20 = phi ptr [ %1, %bb.b ], [ %.0913, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0913.lcssa.sink20, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %.0913.lcssa.sink20, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !49
  tail call void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.g, i32 noundef %i.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress16setFromLocalPortEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcS2_i(ptr nonnull align 8 poison, ptr noundef null, ptr noundef %1, i32 noundef 32) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.0913.i = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0913.i, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !57
  %i.d = icmp eq i32 %i.c, 10
  br i1 %i.d, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0913.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.0913.lcssa.sink20.i = phi ptr [ %.0913.i, %.lr.ph.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0913.lcssa.sink20.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %.0913.lcssa.sink20.i, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49
  invoke void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.h, i32 noundef %i.j)
          to label %_ZN5folly13SocketAddress16setFromLocalAddrEPK8addrinfo.exit unwind label %bb.c

_ZN5folly13SocketAddress16setFromLocalAddrEPK8addrinfo.exit: ; preds = %._crit_edge.i
  tail call void @freeaddrinfo(ptr noundef nonnull %i.a) #27
  ret void

bb.c:                                             ; preds = %._crit_edge.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @freeaddrinfo(ptr noundef nonnull %i.a) #27
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcS2_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v9::format_arg_store.27", align 16 ; 6 uses
  %5 = alloca %struct.addrinfo, align 8           ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.b, align 8, !tbaa !910
  %i.c = or i32 %3, 1025
  store i32 %i.c, ptr %5, align 8, !tbaa !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.d = call i32 @getaddrinfo(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %i.a) ; 4 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %.not7 = icmp eq ptr %1, null
  %i.e = select i1 %.not7, ptr @.str.41, ptr %1
  %i.f = call ptr @gai_strerror(i32 noundef %i.d) #27 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %spec.select.i = select i1 %.not.i, ptr @.str.42, ptr %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !912
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %spec.select.i to i64
  %.sroa.011.0.insert.ext.i = zext i32 %i.d to i128
  %.sroa.04.sroa.0.0.insert.ext.i = zext i64 %i.g to i128
  store i128 %.sroa.04.sroa.0.0.insert.ext.i, ptr %4, align 16, !tbaa !50, !alias.scope !913, !noalias !912
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.03.sroa.0.0.insert.ext.i = zext i64 %i.h to i128
  store i128 %.sroa.03.sroa.0.0.insert.ext.i, ptr %i.i, align 16, !tbaa !50, !alias.scope !913, !noalias !912
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i128 %.sroa.011.0.insert.ext.i, ptr %i.j, align 16, !tbaa !50, !alias.scope !913, !noalias !912
  call void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.40, i64 49, i64 460, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !912
  %i.k = call ptr @__cxa_allocate_exception(i64 32) #27 ; 3 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  invoke void @_ZNSt12system_errorC2EiRKNSt3_V214error_categoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #30
          to label %bb.h unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.m, %bb.d ]
  %i.o = load ptr, ptr %6, align 8, !tbaa !63     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !50
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %i.t

bb.h:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress18setFromLocalIpPortEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 58) #32 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN12_GLOBAL__N_111HostAndPortC2EPKcb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull %1) #27 ; 9 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !44
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.g ; 3 uses
  store i8 0, ptr %i.h, align 1, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !tbaa !50
  %i.k = icmp eq i8 %i.j, 91
  br i1 %i.k, label %bb.e, label %_ZN12_GLOBAL__N_111HostAndPortC2EPKcb.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !50
  %i.n = icmp eq i8 %i.m, 93
  br i1 %i.n, label %bb.f, label %_ZN12_GLOBAL__N_111HostAndPortC2EPKcb.exit

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.l, align 1, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %_ZN12_GLOBAL__N_111HostAndPortC2EPKcb.exit

_ZN12_GLOBAL__N_111HostAndPortC2EPKcb.exit:       ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.sroa.09.0 = phi ptr [ %i.c, %bb.d ], [ %i.o, %bb.f ], [ %i.c, %bb.e ], [ null, %bb.a ]
  %.sroa.7.0 = phi ptr [ %i.i, %bb.d ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %1, %bb.a ]
  %.sroa.10.0 = phi ptr [ %i.c, %bb.d ], [ %i.c, %bb.f ], [ %i.c, %bb.e ], [ null, %bb.a ] ; 2 uses
  %i.p = invoke noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcS2_i(ptr nonnull align 8 poison, ptr noundef %.sroa.09.0, ptr noundef nonnull %.sroa.7.0, i32 noundef 36)
          to label %bb.g unwind label %bb.i       ; 5 uses

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_111HostAndPortC2EPKcb.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.0913.i = phi ptr [ %i.u, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !57
  %i.s = icmp eq i32 %i.r, 10
  br i1 %i.s, label %._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0913.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 2 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i
end_hunk_0
