Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/fake_resolver?download=true
inline.NumInlined: 667
inline.NumDeleted: 420
begin_hunk_0_@_ZN9grpc_core12FakeResolverC2ENS_12ResolverArgsE:bb.a
bb.c:                                             ; preds = %.noexc
  store ptr null, ptr %i.k, align 8, !tbaa !27, !alias.scope !135
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.n, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.o, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 0, ptr %i.p, align 1, !tbaa !55
  br label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit

bb.d:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !136 ; 0 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !27, !alias.scope !135
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.u, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 0, ptr %i.v, align 1, !tbaa !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8, !noalias !137 ; 0 uses
  store ptr %0, ptr %2, align 8, !tbaa !58, !alias.scope !137
  invoke void @_ZN9grpc_core29FakeResolverResponseGenerator15SetFakeResolverENS_13RefCountedPtrINS_12FakeResolverEEE(ptr noundef nonnull align 8 dereferenceable(192) %i.l, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %2, align 8, !tbaa !58     ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = atomicrmw add ptr %i.z, i64 -1 acq_rel, align 8
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26, !inline_history !0
  br label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %2, align 8, !tbaa !58    ; 4 uses
  %.not.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i8, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 acq_rel, align 8
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.l, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit9, !prof !59

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #26, !inline_history !0
  br label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit9

_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  ret void

_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit9: ; preds = %bb.l, %bb.k, %bb.j
  %i.ap = load i8, ptr %i.t, align 8, !tbaa !30, !range !60, !noundef !61
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.m, label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit

bb.m:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit9
  tail call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #26
  br label %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit9, %bb.m
  tail call void @_ZN9grpc_core13RefCountedPtrINS_29FakeResolverResponseGeneratorEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #26
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %_ZNSt14_Optional_baseIN9grpc_core8Resolver6ResultELb0ELb0EED2Ev.exit ], [ %i.ag, %bb.i ]
  tail call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.af, %bb.h ]
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !24  ; 3 uses
  %.not.i10 = icmp eq ptr %i.ar, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN9grpc_core8Resolver13ResultHandlerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN9grpc_core8Resolver13ResultHandlerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN9grpc_core8Resolver13ResultHandlerEEclEPS2_.exit.i: ; preds = %bb.o
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #26, !inline_history !1
  br label %_ZNSt10unique_ptrIN9grpc_core8Resolver13ResultHandlerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core8Resolver13ResultHandlerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN9grpc_core8Resolver13ResultHandlerEEclEPS2_.exit.i
  tail call void @_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #26
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN9grpc_core8ResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK9grpc_core11ChannelArgs6RemoveESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.grpc_core::ChannelArgs") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64, ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core29FakeResolverResponseGenerator15SetFakeResolverENS_13RefCountedPtrINS_12FakeResolverEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.grpc_core::Resolver::Result", align 8 ; 32 uses
  %3 = alloca %"class.grpc_core::RefCountedPtr.27", align 8 ; 4 uses
  %4 = alloca %"struct.grpc_core::Resolver::Result", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN9grpc_core8Resolver6ResultC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.g

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.f = phi ptr [ %.pre.i, %bb.b ], [ null, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit ]
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !62   ; 4 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i64 -1 acq_rel, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEEaSERKS2_.exit, !prof !59

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !138
  br label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEEaSERKS2_.exit

_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEEaSERKS2_.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEEaSERKS2_.exit
  invoke void @_ZN4absl12lts_202505127CondVar9SignalAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.j unwind label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit

bb.h:                                             ; preds = %bb.l, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable

bb.j:                                             ; preds = %bb.f, %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEEaSERKS2_.exit
  %i.t = load ptr, ptr %1, align 8, !tbaa !58
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !30, !range !60, !noundef !61
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN9grpc_core8Resolver6ResultaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.v)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = load i8, ptr %i.w, align 8, !tbaa !30, !range !60, !noundef !61
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.n, label %5

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #26
  br label %_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit

5:                                                ; preds = %bb.m
  store i8 0, ptr %i.w, align 8, !tbaa !30
  br label %_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit

_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit: ; preds = %bb.n, %5
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit10 unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit10:      ; preds = %_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit
  %i.ae = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %i.ae, ptr %3, align 8, !tbaa !58
  store ptr null, ptr %1, align 8, !tbaa !58
  %i.af = load i64, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit10
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !72
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !72
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i

bb.q:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit10
  store i64 55, ptr %2, align 8, !tbaa !70
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i

_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i: ; preds = %bb.q, %bb.p
  store i64 %i.af, ptr %4, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !70 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !77
  store ptr %i.at, ptr %i.as, align 8, !tbaa !77
  store ptr null, ptr %i.ar, align 8, !tbaa !77
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i

bb.s:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i
  store i64 55, ptr %i.ao, align 8, !tbaa !70
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i

_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i: ; preds = %bb.s, %bb.r
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 5 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !80
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !82 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.t:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !83 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !82
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !84
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !84
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %i.bf = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bb, %bb.t ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !83
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !82
  store i64 0, ptr %i.bg, align 8, !tbaa !83
  store i8 0, ptr %i.ay, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZN9grpc_core11ChannelArgsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !87
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.not.i.i, label %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 16, i1 false), !tbaa.struct !89
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  br label %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit

_ZN9grpc_core8Resolver6ResultC2EOS1_.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %bb.u
  invoke void @_ZN9grpc_core29FakeResolverResponseGenerator20SendResultToResolverENS_13RefCountedPtrINS_12FakeResolverEEENS_8Resolver6ResultEPNS_12NotificationE(ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noundef null)
          to label %bb.v unwind label %bb.ax

bb.v:                                             ; preds = %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !88 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i11, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.w, %bb.v
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #26
  %i.bx = load ptr, ptr %i.au, align 8, !tbaa !82 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aw
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.bz = load i64, ptr %i.aw, align 8, !tbaa !84
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cb = load i64, ptr %i.an, align 8, !tbaa !70 ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, label %bb.aa

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !77 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %_ZN9grpc_core8Resolver6ResultD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.z, label %_ZN9grpc_core8Resolver6ResultD2Ev.exit, !prof !59

bb.z:                                             ; preds = %bb.y
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #26, !inline_history !2
  br label %_ZN9grpc_core8Resolver6ResultD2Ev.exit

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cl = trunc i64 %i.cb to i1
  br i1 %i.cl, label %_ZN9grpc_core8Resolver6ResultD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = inttoptr i64 %i.cb to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cm)
          to label %_ZN9grpc_core8Resolver6ResultD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #27
  unreachable

_ZN9grpc_core8Resolver6ResultD2Ev.exit:           ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.cp = load i64, ptr %4, align 8, !tbaa !70    ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.af

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZN9grpc_core8Resolver6ResultD2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !90 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dc, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i ], [ %i.cs, %_ZN4absl12lts_202505126StatusD2Ev.exit.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN9grpc_core29FakeResolverResponseGenerator15SetFakeResolverENS_13RefCountedPtrINS_12FakeResolverEEE:bb.a
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i.i25 = icmp eq ptr %i.fb, %i.fd
  br i1 %.not4.i.i.i.i25, label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i33, label %.lr.ph.i.i.i.i26

.lr.ph.i.i.i.i26:                                 ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i24, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i29
  %.05.i.i.i.i27 = phi ptr [ %i.fl, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i29 ], [ %i.fb, %_ZN4absl12lts_202505126StatusD2Ev.exit.i24 ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i27, i64 24
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fe) #26
  %i.ff = load ptr, ptr %.05.i.i.i.i27, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i29, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i26
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i27, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !95
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #28
  br label %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i29

_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i29: ; preds = %bb.as, %.lr.ph.i.i.i.i26
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i27, i64 32 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.fl, %i.fd
  br i1 %.not.i.i.i.i30, label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i31, label %.lr.ph.i.i.i.i26, !llvm.loop !3

_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i31: ; preds = %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i29
  %.pr.i.i32 = load ptr, ptr %i.fa, align 8, !tbaa !90
  br label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i33

_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i33: ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i31, %_ZN4absl12lts_202505126StatusD2Ev.exit.i24
  %i.fm = phi ptr [ %.pr.i.i32, %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i31 ], [ %i.fb, %_ZN4absl12lts_202505126StatusD2Ev.exit.i24 ] ; 3 uses
  %.not.i.i1.i.i34 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i1.i.i34, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit35, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i33
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !74
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #28
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit35

bb.au:                                            ; preds = %_ZN9grpc_core8Resolver6ResultD2Ev.exit21
  %i.fs = trunc i64 %i.ey to i1
  br i1 %i.fs, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit35, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = inttoptr i64 %i.ey to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ft)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit35 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #27
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit35: ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i33, %bb.at, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.ax:                                            ; preds = %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @_ZN9grpc_core8Resolver6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #26
  %i.fx = load ptr, ptr %3, align 8, !tbaa !58    ; 4 uses
  %.not.i22 = icmp eq ptr %i.fx, null
  br i1 %.not.i22, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = atomicrmw add ptr %i.fy, i64 -1 acq_rel, align 8
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.az, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, !prof !59

bb.az:                                            ; preds = %bb.ay
  %i.gb = load ptr, ptr %i.fx, align 8, !tbaa !14
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #26, !inline_history !0
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.az, %bb.ay, %bb.ax, %bb.g, %bb.h
  %.pn8 = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.p, %bb.g ], [ %i.fw, %bb.ax ], [ %i.fw, %bb.ay ], [ %i.fw, %bb.az ]
  call void @_ZN9grpc_core8Resolver6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core13RefCountedPtrINS_29FakeResolverResponseGeneratorEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK9grpc_core10RefCountedINS_29FakeResolverResponseGeneratorENS_19PolymorphicRefCountENS_11UnrefDeleteEE5UnrefEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZNK9grpc_core10RefCountedINS_29FakeResolverResponseGeneratorENS_19PolymorphicRefCountENS_11UnrefDeleteEE5UnrefEv.exit, !prof !59

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN9grpc_core29FakeResolverResponseGeneratorD1Ev(ptr noundef nonnull align 8 dead_on_return(185) dereferenceable(192) %i.a) #26
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef 192) #28
  br label %_ZNK9grpc_core10RefCountedINS_29FakeResolverResponseGeneratorENS_19PolymorphicRefCountENS_11UnrefDeleteEE5UnrefEv.exit

_ZNK9grpc_core10RefCountedINS_29FakeResolverResponseGeneratorENS_19PolymorphicRefCountENS_11UnrefDeleteEE5UnrefEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !99
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !139
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !139
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !59

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core12FakeResolver11StartLockedEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((184, 185)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.a, align 8, !tbaa !54
  tail call void @_ZN9grpc_core12FakeResolver21MaybeSendResultLockedEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core12FakeResolver21MaybeSendResultLockedEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::ChannelArgs", align 8 ; 6 uses
  %2 = alloca %"class.grpc_core::ChannelArgs", align 8 ; 4 uses
  %3 = alloca %"struct.grpc_core::Resolver::Result", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i8, ptr %i.a, align 8, !tbaa !54, !range !60, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.e = load i8, ptr %i.d, align 1, !range !60
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !30, !range !60, !noundef !61
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN9grpc_core11ChannelArgsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  invoke void @_ZNK9grpc_core11ChannelArgs9UnionWithES0_(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::ChannelArgs") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %1) #26 ; 0 uses
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = load i64, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !72
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  store ptr %i.w, ptr %i.u, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i

bb.f:                                             ; preds = %bb.d
  store i64 55, ptr %i.g, align 8, !tbaa !70
  br label %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i

_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.p, ptr %3, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !70   ; 2 uses
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !77
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !77
  store ptr null, ptr %i.ab, align 8, !tbaa !77
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i

bb.h:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EEEC2EOS7_.exit.i
  store i64 55, ptr %i.y, align 8, !tbaa !70
  br label %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i

_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i: ; preds = %bb.h, %bb.g
  store i64 %i.z, ptr %i.x, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !80
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !83 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_13ServiceConfigEEEEC2EOS6_.exit.i
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !82
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !84
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !84
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.ap = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !83
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !82
  store i64 0, ptr %i.aq, align 8, !tbaa !83
  store i8 0, ptr %i.ai, align 8, !tbaa !84
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  call void @_ZN9grpc_core11ChannelArgsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.k) #26
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !87
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.not.i.i, label %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 16, i1 false), !tbaa.struct !89
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br label %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit

_ZN9grpc_core8Resolver6ResultC2EOS1_.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %bb.j
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 %3)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.l, %bb.k
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #26
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !82 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ag
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.bl = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bn = load i64, ptr %i.x, align 8, !tbaa !70  ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, label %bb.p

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !77 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZN9grpc_core8Resolver6ResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = atomicrmw add ptr %i.br, i64 -1 acq_rel, align 8
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.o, label %_ZN9grpc_core8Resolver6ResultD2Ev.exit, !prof !59

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #26, !inline_history !2
  br label %_ZN9grpc_core8Resolver6ResultD2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %_ZN9grpc_core8Resolver6ResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = inttoptr i64 %i.bn to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.by)
          to label %_ZN9grpc_core8Resolver6ResultD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27
  unreachable

_ZN9grpc_core8Resolver6ResultD2Ev.exit:           ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, %bb.n, %bb.o, %bb.p, %bb.q
  %i.cb = load i64, ptr %3, align 8, !tbaa !70    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.u

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZN9grpc_core8Resolver6ResultD2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !90 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.co, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i ], [ %i.ce, %_ZN4absl12lts_202505126StatusD2Ev.exit.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ch) #26
  %i.ci = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !95
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #28
  br label %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, %i.cg
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.cd, align 8, !tbaa !90
  br label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.cp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ce, %_ZN4absl12lts_202505126StatusD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !74
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #28
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit

bb.u:                                             ; preds = %_ZN9grpc_core8Resolver6ResultD2Ev.exit
  %i.cv = trunc i64 %i.cb to i1
  br i1 %i.cv, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = inttoptr i64 %i.cb to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cw)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #27
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.t, %bb.u, %bb.v
  %i.cz = load i8, ptr %i.h, align 8, !tbaa !30, !range !60, !noundef !61
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.x, label %4

bb.x:                                             ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core8Resolver6ResultEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #26
  br label %_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit

4:                                                ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core17EndpointAddressesESaIS5_EEED2Ev.exit
  store i8 0, ptr %i.h, align 8, !tbaa !30
  br label %_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit

bb.y:                                             ; preds = %bb.c
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.aa

bb.z:                                             ; preds = %_ZN9grpc_core8Resolver6ResultC2EOS1_.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core8Resolver6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #26
  br label %bb.aa

_ZNSt8optionalIN9grpc_core8Resolver6ResultEE5resetEv.exit: ; preds = %4, %bb.x, %bb.a, %bb.b
  ret void

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.z ], [ %i.db, %bb.y ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core12FakeResolver25RequestReresolutionLockedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !59

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 97, ptr noundef nonnull @.str.2) #29
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 1, ptr %i.e, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.critedge
  invoke void @_ZN4absl12lts_202505127CondVar9SignalAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit.i:      ; preds = %bb.e
  resume { ptr, i32 } %i.h

bb.g:                                             ; preds = %bb.d, %.critedge
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN9grpc_core29FakeResolverResponseGenerator21ReresolutionRequestedEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN9grpc_core29FakeResolverResponseGenerator21ReresolutionRequestedEv.exit: ; preds = %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core29FakeResolverResponseGenerator21ReresolutionRequestedEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.b, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202505127CondVar9SignalAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit2 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit2:       ; preds = %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core12FakeResolver14ShutdownLockedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((185, 186)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::RefCountedPtr.27", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 1, ptr %i.a, align 1, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN9grpc_core13RefCountedPtrINS_29FakeResolverResponseGeneratorEE5resetEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !58
  invoke void @_ZN9grpc_core29FakeResolverResponseGenerator15SetFakeResolverENS_13RefCountedPtrINS_12FakeResolverEEE(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit, !prof !59

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !0
  br label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit

_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !140  ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !140
  %.not.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i2, label %_ZN9grpc_core13RefCountedPtrINS_29FakeResolverResponseGeneratorEE5resetEPS1_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 -1 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZN9grpc_core13RefCountedPtrINS_29FakeResolverResponseGeneratorEE5resetEPS1_.exit, !prof !59

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN9grpc_core29FakeResolverResponseGeneratorD1Ev(ptr noundef nonnull align 8 dead_on_return(185) dereferenceable(192) %i.k) #26
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef 192) #28
  br label %_ZN9grpc_core13RefCountedPtrINS_29FakeResolverResponseGeneratorEE5resetEPS1_.exit

bb.h:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %1, align 8, !tbaa !58     ; 4 uses
  %.not.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i3, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit4, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw add ptr %i.q, i64 -1 acq_rel, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %_ZN9grpc_core13RefCountedPtrINS_12FakeResolverEED2Ev.exit4, !prof !59

end_hunk_1
