Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SocketAddress?download=true
inline.NumInlined: 545
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK5folly13SocketAddress11getIpStringEPcmi:bb.a
  unreachable

bb.d:                                             ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit.thread
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  br label %bb.l

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit19: ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i16, ptr %i.l, align 8, !tbaa !82   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  store i16 %i.h, ptr %5, align 8, !tbaa !972
  switch i16 %i.h, label %bb.e [
    i16 2, label %_ZNK5folly9IPAddress4asV4Ev.exit.i
    i16 10, label %_ZNK5folly9IPAddress4asV6Ev.exit16.i
  ]

_ZNK5folly9IPAddress4asV4Ev.exit.i:               ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit19
  %.sroa.0.0.copyload.i.i = load i32, ptr %0, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.n, align 4, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %i.m, ptr %i.o, align 2, !tbaa !975
  br label %_ZNK5folly9IPAddress17toSockaddrStorageEP16sockaddr_storaget.exit

_ZNK5folly9IPAddress4asV6Ev.exit16.i:             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit19
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load <2 x i64>, ptr %0, align 8
  store <2 x i64> %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %i.m, ptr %i.r, align 2, !tbaa !978
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i16, ptr %i.s, align 8, !tbaa !980
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.u, ptr %i.v, align 8, !tbaa !981
  br label %_ZNK5folly9IPAddress17toSockaddrStorageEP16sockaddr_storaget.exit

bb.e:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit19
  tail call void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJtEEEvDpT0_(i16 noundef zeroext %i.h) #5
  unreachable

_ZNK5folly9IPAddress17toSockaddrStorageEP16sockaddr_storaget.exit: ; preds = %_ZNK5folly9IPAddress4asV4Ev.exit.i, %_ZNK5folly9IPAddress4asV6Ev.exit16.i
  %i.w = trunc i64 %2 to i32
  %i.x = call i32 @getnameinfo(ptr noundef nonnull %5, i32 noundef 128, ptr noundef %1, i32 noundef %i.w, ptr noundef null, i32 noundef 0, i32 noundef %3) ; 3 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZNK5folly9IPAddress17toSockaddrStorageEP16sockaddr_storaget.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.y = call ptr @gai_strerror(i32 noundef %i.x) #27 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  %spec.select.i = select i1 %.not.i, ptr @.str.42, ptr %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !982
  %i.z = ptrtoint ptr %spec.select.i to i64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.z to i128
  store i128 %.sroa.01.sroa.0.0.insert.ext.i, ptr %4, align 16, !noalias !982
  call void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.46, i64 48, i64 12, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !982
  %i.aa = call ptr @__cxa_allocate_exception(i64 32) #27 ; 3 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  invoke void @_ZNSt12system_errorC2EiRKNSt3_V214error_categoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #30
          to label %bb.m unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aa) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.ac, %bb.h ]
  %i.ae = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !50
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.l

bb.k:                                             ; preds = %_ZNK5folly9IPAddress17toSockaddrStorageEP16sockaddr_storaget.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.pn16 = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn16

bb.m:                                             ; preds = %bb.g
  unreachable
}

declare i32 @getnameinfo(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJtEEEvDpT0_(i16 noundef zeroext %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::InvalidAddressFamilyException", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN5folly29InvalidAddressFamilyExceptionC2Et(ptr noundef nonnull align 8 dereferenceable(16) %1, i16 noundef zeroext %0) #27
  invoke void @_ZN5folly15throw_exceptionINS_29InvalidAddressFamilyExceptionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly13SocketAddressltERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !34    ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 1, label %_ZNK5folly13SocketAddress9getFamilyEv.exit
    i8 0, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !77

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.1, ptr %i.d, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str, ptr %i.f, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i16, ptr %i.g, align 4, !tbaa !37
  br label %_ZNK5folly13SocketAddress9getFamilyEv.exit

_ZNK5folly13SocketAddress9getFamilyEv.exit:       ; preds = %bb.a, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.0.i = phi i16 [ %i.h, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !34    ; 4 uses
  switch i8 %i.j, label %bb.c [
    i8 1, label %_ZNK5folly13SocketAddress9getFamilyEv.exit35
    i8 0, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i33
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i32
  ], !prof !77

bb.c:                                             ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @.str.1, ptr %i.l, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i32:   ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @.str, ptr %i.n, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i33: ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i16, ptr %i.o, align 4, !tbaa !37
  br label %_ZNK5folly13SocketAddress9getFamilyEv.exit35

_ZNK5folly13SocketAddress9getFamilyEv.exit35:     ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i33
  %.0.i34 = phi i16 [ %i.p, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i33 ], [ 1, %_ZNK5folly13SocketAddress9getFamilyEv.exit ]
  %.not = icmp eq i16 %.0.i, %.0.i34
  %i.q = icmp eq i8 %i.b, 1                       ; 2 uses
  br i1 %.not, label %bb.d, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i41

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i41: ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit35
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %3 = load i16, ptr %2, align 4
  %.0.i38 = select i1 %i.q, i16 1, i16 %3, !prof !983
  %4 = icmp eq i8 %i.j, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load i16, ptr %i.r, align 4
  %.0.i42 = select i1 %4, i16 1, i16 %i.s, !prof !983
  %5 = icmp ult i16 %.0.i38, %.0.i42
  br label %bb.p

bb.d:                                             ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit35
  br i1 %i.q, label %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit, label %_ZNK5folly13SocketAddress9getFamilyEv.exit49

_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %i.v = add i32 %i.u, -2                         ; 3 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %cond = icmp eq i8 %i.j, 1
  br i1 %cond, label %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit45, label %bb.f, !prof !83

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @.str.1, ptr %i.y, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit45: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !73  ; 2 uses
  %i.ab = add i32 %i.aa, -2                       ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.g

bb.g:                                             ; preds = %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit45
  %.not31 = icmp eq i32 %i.u, %i.aa
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp ult i32 %i.v, %i.ab
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load ptr, ptr %1, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = zext i32 %i.v to i64
  %i.aj = tail call i32 @memcmp(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah, i64 noundef %i.ai) #32
  %i.ak = icmp slt i32 %i.aj, 0
  br label %bb.p

_ZNK5folly13SocketAddress9getFamilyEv.exit49:     ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i16, ptr %i.al, align 4, !tbaa !37
  switch i16 %i.am, label %bb.m [
    i16 2, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
    i16 10, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  ]

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit49, %_ZNK5folly13SocketAddress9getFamilyEv.exit49
  %cond53 = icmp eq i8 %i.j, 0
  br i1 %cond53, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit52, label %bb.j, !prof !83

bb.j:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.an = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @.str.1, ptr %i.ao, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit52: ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !82 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !82 ; 2 uses
  %.not30 = icmp eq i16 %i.aq, %i.as
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit52
  %i.at = icmp ult i16 %i.aq, %i.as
  br label %bb.p

bb.l:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit52
  %i.au = tail call i8 @_ZN5follyssERKNS_9IPAddressES2_(ptr noundef nonnull align 4 dereferenceable(22) %0, ptr noundef nonnull align 4 dereferenceable(22) %1) #27
  %i.av = icmp slt i8 %i.au, 0
  br label %bb.p

bb.m:                                             ; preds = %_ZNK5folly13SocketAddress9getFamilyEv.exit49
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.49)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #30
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aw) #27
  resume { ptr, i32 } %i.ax

bb.p:                                             ; preds = %bb.k, %bb.l, %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit45, %bb.i, %bb.h, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i41
  %.3 = phi i1 [ %5, %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit.i41 ], [ true, %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit45 ], [ false, %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit ], [ %i.ak, %bb.i ], [ %i.ad, %bb.h ], [ %i.at, %bb.k ], [ %i.av, %bb.l ]
  ret i1 %.3
}

; Function Attrs: nounwind
declare i8 @_ZN5follyssERKNS_9IPAddressES2_(ptr noundef nonnull align 4 dereferenceable(22), ptr noundef nonnull align 4 dereferenceable(22)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly10hash_valueERKNS_13SocketAddressE(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5folly13SocketAddress4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsERSoRKNS_13SocketAddressE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNK5folly13SocketAddress8describeB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !79
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !50
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !63     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !50
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.j
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { cold }

!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}
!llvm.errno.tbaa = !{!32}

!0 = distinct !{!0, !59}
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !86, file: !530, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !86, file: !530, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!3 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !86, file: !531, line: 45, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIcE")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !86, file: !543, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !585, templateParams: !587, identifier: "_ZTSSt15iterator_traitsIPKcE")
!5 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !532, file: !530, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !584, templateParams: !589, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !532, file: !530, line: 1047, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sv_wrapper", scope: !18, file: !94, line: 160, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperE")
!8 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !86, file: !530, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKcE")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !86, file: !737, line: 337, size: 8, flags: DIFlagTypePassByValue, elements: !785, templateParams: !786, identifier: "_ZTSSt11char_traitsIcE")
!10 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !86, file: !590, line: 106, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !733, templateParams: !736, identifier: "_ZTSSt17basic_string_viewIcSt11char_traitsIcEE")
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<char>", scope: !86, file: !810, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !837, templateParams: !839, identifier: "_ZTSSt15__new_allocatorIcE")
!12 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !86, file: !787, line: 287, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !809, templateParams: !841, identifier: "_ZTSSaIcE")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !17, file: !96, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !585, templateParams: !839, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!14 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !94, line: 204, size: 128, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !847, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt0_E")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !18, file: !94, line: 181, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !858, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !86, file: !97, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !880, templateParams: !882, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !532, file: !96, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !897, templateParams: !899, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!18 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !95, file: !94, line: 87, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !529, templateParams: !901, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "error_category", scope: !902, file: !84, line: 106, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3_V214error_categoryE")
!20 = distinct !{null}
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 7, !"openmp", i32 51}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!27 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!"omnipotent char", !28, i64 0}
!30 = !{!"int", !29, i64 0}
!31 = !{!"__libc_errno", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !29, i64 0, !29, i64 32}
!34 = !{!33, !29, i64 32}
!35 = !{!"short", !29, i64 0}
!36 = !{!"_ZTSN5folly9IPAddressE", !29, i64 0, !35, i64 20}
!37 = !{!36, !35, i64 20}
!38 = !{!"_ZTSSt9exception"}
!39 = !{!"any pointer", !29, i64 0}
!40 = !{!"p1 omnipotent char", !39, i64 0}
!41 = !{!"_ZTSSt18bad_variant_access", !38, i64 0, !40, i64 8}
!42 = !{!41, !40, i64 8}
!43 = !{!"vtable pointer", !28, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 _ZTS8sockaddr", !39, i64 0}
!46 = !{!"p1 _ZTS8addrinfo", !39, i64 0}
!47 = !{!"_ZTS8addrinfo", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !45, i64 24, !40, i64 32, !46, i64 40}
!48 = !{!47, !45, i64 24}
!49 = !{!47, !30, i64 16}
!50 = !{!29, !29, i64 0}
!51 = !{!35, !35, i64 0}
!52 = !{i64 0, i64 20, !50, i64 20, i64 2, !51}
!53 = !{!"p1 _ZTS11sockaddr_un", !39, i64 0}
!54 = !{!"_ZTSN5folly13SocketAddress16ExternalUnixAddrE", !53, i64 0, !30, i64 8}
!55 = !{!54, !53, i64 0}
!56 = !{i64 0, i64 20, !50, i64 20, i64 2, !51, i64 24, i64 2, !51}
!57 = !{!47, !30, i64 4}
!58 = !{!47, !46, i64 40}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!61 = !{!"long", !29, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !60, i64 0, !61, i64 8, !29, i64 16}
!63 = !{!62, !40, i64 0}
!64 = !{!"_ZTSN12_GLOBAL__N_111HostAndPortE", !40, i64 0, !40, i64 8, !40, i64 16}
!65 = !{!64, !40, i64 8}
!66 = !{!64, !40, i64 16}
!67 = !{!64, !40, i64 0}
!68 = !{!"_ZTS8sockaddr", !35, i64 0, !29, i64 2}
!69 = !{!68, !35, i64 0}
!70 = !{!"branch_weights", i32 2000, i32 2002, i32 2}
!71 = !{!"_ZTS11sockaddr_un", !35, i64 0, !29, i64 2}
!72 = !{!71, !35, i64 0}
!73 = !{!54, !30, i64 8}
!74 = !{!30, !30, i64 0}
!75 = !{ptr @_ZN5folly13SocketAddress13setFromSocketENS_13NetworkSocketEPFiS1_P8sockaddrPjE}
!76 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!77 = !{!"branch_weights", i32 2000, i32 4002, i32 2001, i32 1}
!78 = !{!60, !40, i64 0}
!79 = !{!62, !61, i64 8}
!80 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!81 = !{!"_ZTSN5folly13SocketAddress6IPAddrE", !36, i64 0, !35, i64 24}
!82 = !{!81, !35, i64 24}
end_hunk_0
