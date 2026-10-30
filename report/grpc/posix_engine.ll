Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/posix_engine?download=true
inline.NumInlined: 2796
inline.NumDeleted: 1499
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17grpc_event_engine12experimental16PosixEventEngine28MakeTestOnlyPosixEventEngineESt10shared_ptrINS0_16PosixEventPollerEE:bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.l

bb.k:                                             ; preds = %.thread12, %.thread
  %.pn11 = phi { ptr, i32 } [ %i.aa, %.thread ], [ %i.j, %.thread12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 232) #39
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn10 = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %.pn11, %bb.k ]
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define void @_ZN17grpc_event_engine12experimental16PosixEventEngineC2ERKNS1_7OptionsESt10shared_ptrINS0_16PosixEventPollerEE(ptr noundef nonnull align 8 dereferenceable(232) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN17grpc_event_engine12experimental16PosixEventEngineE, i64 16), ptr %0, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN17grpc_event_engine12experimental16PosixEventEngineE, i64 168), ptr %i.b, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !161    ; 5 uses
  %i.e = sext i32 %i.d to i64                     ; 5 uses
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %bb.b, label %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #41
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.g = mul nuw nsw i64 %i.e, 40
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #38
          to label %.noexc8 unwind label %bb.e    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EEC2EmRKS4_.exit.i
  store ptr %i.h, ptr %i.c, align 8, !tbaa !154
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !163
  %xtraiter = and i64 %i.e, 7
  %i.k = and i32 %i.d, 7
  %lcmp.mod.not = icmp eq i32 %i.k, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.prol ], [ %i.h, %.noexc8 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.prol ], [ %i.e, %.noexc8 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc8 ]
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.013.i.i.i.i.i.prol, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.l, align 8
  %i.m = add nsw i64 %.01012.i.i.i.i.i.prol, -1   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !313

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc8
  %.lcssa.unr = phi ptr [ poison, %.noexc8 ], [ %i.n, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.h, %.noexc8 ], [ %i.n, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.e, %.noexc8 ], [ %i.m, %.lr.ph.i.i.i.i.i.prol ]
  %i.o = icmp ult i32 %i.d, 8
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.013.i.i.i.i.i, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 280
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.ad, align 8
  %i.ae = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 320 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !153
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.aj, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load <2 x ptr>, ptr %2, align 8, !tbaa !52
  store ptr null, ptr %i.ak, align 8, !tbaa !51
  store <2 x ptr> %i.al, ptr %i.ai, align 8, !tbaa !52
  store ptr null, ptr %2, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i8 0, ptr %i.an, align 8, !tbaa !166
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.ao, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.ap, align 8, !tbaa !192
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i64 1, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.ar, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !162
  %i.av = sext i32 %i.au to i64
  invoke void @_ZN17grpc_event_engine12experimental14MakeThreadPoolEm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.as, i64 noundef %i.av)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  store ptr null, ptr %i.aw, align 8, !tbaa !193, !alias.scope !316
  %i.ax = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #38
          to label %.noexc9 unwind label %bb.g    ; 4 uses

.noexc9:                                          ; preds = %bb.c
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN17grpc_event_engine12experimental12TimerManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS1_10ThreadPoolEEEEES3_DpOT_(ptr noundef nonnull align 8 dereferenceable(120) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %bb.d unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN17grpc_event_engine12experimental12TimerManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !316

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN17grpc_event_engine12experimental12TimerManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc9
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 120) #39, !noalias !316
  br label %.body

bb.d:                                             ; preds = %.noexc9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !51, !alias.scope !316
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !194, !alias.scope !316
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EEC2EmRKS4_.exit.i, %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %.loopexit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN17grpc_event_engine12experimental12TimerManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.ay, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN17grpc_event_engine12experimental12TimerManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  tail call void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.as) #35
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bc, %bb.f ]
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aq) #35
  %i.be = load i8, ptr %i.an, align 8, !tbaa !166, !range !89, !noundef !90
  %i.bf = trunc nuw i8 %i.be to i1
  store i8 0, ptr %i.an, align 8, !tbaa !166
  br i1 %i.bf, label %bb.i, label %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.am) #35
  br label %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit: ; preds = %bb.h, %bb.i
  tail call void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ai) #35
  tail call void @_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #35
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit ], [ %i.bb, %bb.e ]
  tail call void @_ZN17grpc_event_engine12experimental12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN17grpc_event_engine12experimental14MakeThreadPoolEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !157    ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !158
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !154    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !157  ; 3 uses
  %i.f = icmp ne i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ult i64 %i.e, 2
  br i1 %i.g, label %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !158
  %i.l = and i64 %i.k, 65536
  %i.m = icmp ne i64 %i.l, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.e, ptr noundef %i.i, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.m)
          to label %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #37
  unreachable

_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !14

_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !163
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #39
  br label %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN17grpc_event_engine12experimental16PosixEventEngineC2ERKNS1_7OptionsE(ptr noundef nonnull align 8 dereferenceable(232) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 16 ; 7 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN17grpc_event_engine12experimental16PosixEventEngineE, i64 16), ptr %0, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN17grpc_event_engine12experimental16PosixEventEngineE, i64 168), ptr %i.b, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !161    ; 5 uses
  %i.e = sext i32 %i.d to i64                     ; 5 uses
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %bb.b, label %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #41
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.g = mul nuw nsw i64 %i.e, 40
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #38
          to label %.noexc12 unwind label %bb.ab  ; 4 uses

.noexc12:                                         ; preds = %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EEC2EmRKS4_.exit.i
  store ptr %i.h, ptr %i.c, align 8, !tbaa !154
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !163
  %xtraiter = and i64 %i.e, 7
  %i.k = and i32 %i.d, 7
  %lcmp.mod.not = icmp eq i32 %i.k, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc12, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.prol ], [ %i.h, %.noexc12 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.prol ], [ %i.e, %.noexc12 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc12 ]
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.013.i.i.i.i.i.prol, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.l, align 8
  %i.m = add nsw i64 %.01012.i.i.i.i.i.prol, -1   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !317

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc12
  %.lcssa.unr = phi ptr [ poison, %.noexc12 ], [ %i.n, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.h, %.noexc12 ], [ %i.n, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.e, %.noexc12 ], [ %i.m, %.lr.ph.i.i.i.i.i.prol ]
  %i.o = icmp ult i32 %i.d, 8
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.013.i.i.i.i.i, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false)
end_hunk_0
begin_hunk_1_@_ZN17grpc_event_engine12experimental16PosixEventEngineC2ERKNS1_7OptionsE:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load <2 x ptr>, ptr %2, align 16, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !51 ; 8 uses
  store <2 x ptr> %i.bj, ptr %i.ai, align 8, !tbaa !52
  %.not.i.i.i.i15 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i15, label %_ZNSt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEaSEOS3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bl, align 8, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !83
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #35, !inline_history !320
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !80
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #35, !inline_history !320
  br label %_ZNSt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEaSEOS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i16 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.l ], [ %i.by, %bb.m ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.n, label %_ZNSt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEaSEOS3_.exit, !prof !73

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #35
  br label %_ZNSt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEaSEOS3_.exit

_ZNSt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEaSEOS3_.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  %i.ca = load ptr, ptr %i.bh, align 8, !tbaa !51 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEaSEOS3_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cb, align 8, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !83
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #35, !inline_history !2
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #35, !inline_history !2
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i17 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i17, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.ce, %bb.r ], [ %i.co, %bb.s ]
  %i.cp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cp, label %bb.t, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #35
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEaSEOS3_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !51 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cr, align 8, !tbaa !82
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !83
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !80
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #35, !inline_history !3
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !80
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #35, !inline_history !3
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i19 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i19, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.y:                                             ; preds = %bb.w
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i21 = phi i32 [ %i.cu, %bb.x ], [ %i.de, %bb.y ]
  %i.df = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.df, label %bb.z, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #35
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  invoke void @_ZN17grpc_event_engine12experimental16PosixEventEngine14SchedulePollerEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.ab:                                            ; preds = %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EEC2EmRKS4_.exit.i, %bb.b
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ac:                                            ; preds = %.loopexit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %bb.c
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIN17grpc_event_engine12experimental10ThreadPoolEEC2ERKS3_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.af ], [ %i.dj, %bb.ae ]
  call void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental12TimerManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.at) #35
  br label %.body

.body:                                            ; preds = %bb.ad, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN17grpc_event_engine12experimental12TimerManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ag ], [ %i.di, %bb.ad ], [ %i.av, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN17grpc_event_engine12experimental12TimerManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ap) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.body, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.dh, %bb.ac ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.an) #35
  %i.dl = load i8, ptr %i.ak, align 8, !tbaa !166, !range !89, !noundef !90
  %i.dm = trunc nuw i8 %i.dl to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !166
  br i1 %i.dm, label %bb.ai, label %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.aj) #35
  br label %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit: ; preds = %bb.ah, %bb.ai
  call void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ai) #35
  call void @_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #35
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit ], [ %i.dg, %bb.ab ]
  call void @_ZN17grpc_event_engine12experimental12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN17grpc_event_engine12experimental17MakeDefaultPollerESt10shared_ptrINS0_10ThreadPoolEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.0") align 8, ptr noundef align 8) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN17grpc_event_engine12experimental16PosixEventEngine14SchedulePollerEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !166, !range !89, !noundef !90
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt19_Optional_base_implIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i, !prof !73

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 874, ptr noundef nonnull @.str.34) #36
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #37
  unreachable

_ZNSt19_Optional_base_implIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.d, align 8, !tbaa !166
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke void @_ZSt10_ConstructIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEJRSt10shared_ptrINS1_10ThreadPoolEERS4_INS1_16PosixEventPollerEEEEvPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt19_Optional_base_implIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i
  store i8 1, ptr %i.d, align 8, !tbaa !166
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #37
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.g, %bb.a
  ret void

bb.i:                                             ; preds = %_ZNSt19_Optional_base_implIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.g, %bb.e ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit11 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #37
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit11:      ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental12TimerManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !83
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN17grpc_event_engine12experimental16PosixEventEngine22CancelAllPendingTimersEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.276, align 8            ; 5 uses
  %2 = alloca %"class.absl::lts_20250512::flat_hash_set", align 8 ; 14 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store i64 1, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !158
  %.not.i.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr %2, ptr %1, align 8, !tbaa !323
  invoke void @_ZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS7_20TaskHandleComparatorIS9_E4HashESt8equal_toIS9_ESaIS9_EEC1ERKSH_RKSG_EUlPvPKvE_vJSM_SO_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %_ZN4absl12lts_2025051213flat_hash_setIN17grpc_event_engine12experimental11EventEngine10TaskHandleENS3_20TaskHandleComparatorIS5_E4HashESt8equal_toIS5_ESaIS5_EEC2ERKSC_.exit unwind label %.body.i.i

.body.i.i:                                        ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br label %.body

_ZN4absl12lts_2025051213flat_hash_setIN17grpc_event_engine12experimental11EventEngine10TaskHandleENS3_20TaskHandleComparatorIS5_E4HashESt8equal_toIS5_ESaIS5_EEC2ERKSC_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  %.pr = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !158
  %.not.i.i = icmp ult i64 %.pr, 131072
  br i1 %.not.i.i, label %._crit_edge, label %bb.c, !prof !324

bb.c:                                             ; preds = %_ZN4absl12lts_2025051213flat_hash_setIN17grpc_event_engine12experimental11EventEngine10TaskHandleENS3_20TaskHandleComparatorIS5_E4HashESt8equal_toIS5_ESaIS5_EEC2ERKSC_.exit
  %i.f = load i64, ptr %2, align 8, !tbaa !157    ; 2 uses
  %i.g = icmp ne i64 %i.f, 0
  call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84, !nonnull !90, !noundef !90 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !84 ; 2 uses
  %i.l = load i8, ptr %i.j, align 1, !tbaa !197
  %i.m = icmp slt i8 %i.l, -1
  br i1 %i.m, label %.lr.ph.i.i, label %.lr.ph.preheader

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.n = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ]
  %i.o = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !84
  %i.q = icmp slt <16 x i8> %i.p, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32
  %i.t = add nuw nsw i32 %i.s, 1
  %i.u = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.t, i1 true)
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !197
  %i.z = icmp slt i8 %i.y, -1
  br i1 %i.z, label %.lr.ph.i.i, label %.lr.ph.preheader, !llvm.loop !15

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i, %bb.c, %bb.d
  %.sroa.023.035.ph = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ %i.j, %bb.d ], [ %i.w, %.lr.ph.i.i ]
  %.sroa.9.034.ph = phi ptr [ %i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %i.x, %.lr.ph.i.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i
  %.sroa.023.035 = phi ptr [ %.sroa.023.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.023.035.ph, %.lr.ph.preheader ]
  %.sroa.9.034 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.9.034.ph, %.lr.ph.preheader ] ; 3 uses
  %.sroa.04.0.copyload = load i64, ptr %.sroa.9.034, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.034, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !84
  %i.aa = invoke noundef zeroext i1 @_ZN17grpc_event_engine12experimental16PosixEventEngine14CancelInternalENS0_11EventEngine10TaskHandleE(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 %.sroa.04.0.copyload, i64 %.sroa.5.0.copyload)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.023.035, i64 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.9.034, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !197 ; 2 uses
  %i.ae = icmp slt i8 %i.ad, -1
  br i1 %i.ae, label %.lr.ph.i.i20, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i20:                                     ; preds = %bb.e, %.lr.ph.i.i20
  %i.af = phi ptr [ %i.ap, %.lr.ph.i.i20 ], [ %i.ac, %bb.e ]
  %i.ag = phi ptr [ %i.ao, %.lr.ph.i.i20 ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !84
  %i.ai = icmp slt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ak, 1
  %i.am = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 true)
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.an ; 2 uses
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !197 ; 2 uses
  %i.ar = icmp slt i8 %i.aq, -1
  br i1 %i.ar, label %.lr.ph.i.i20, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !15
end_hunk_1
begin_hunk_2_@_ZN17grpc_event_engine12experimental16PosixEventEngine14CancelInternalENS0_11EventEngine10TaskHandleE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !148    ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = call noundef zeroext i1 @_ZN17grpc_event_engine12experimental12TimerManager11TimerCancelEPNS0_5TimerE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull %i.i) ; 2 uses
  %i.k = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE4findIS7_EENSF_8iteratorERKS7_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE5eraseIS7_EEmRKS7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %i.o = icmp ne i64 %i.n, 0
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.q, align 8, !tbaa !148
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE5eraseIS7_EEmRKS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.v, i64 noundef 16)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE5eraseIS7_EEmRKS7_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE5eraseIS7_EEmRKS7_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.w = icmp ne i64 %i.e, 0
  %or.cond.not = and i1 %i.w, %i.j
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE5eraseIS7_EEmRKS7_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !78
  call void %i.z(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.x, ptr noundef nonnull align 16 dereferenceable(32) %i.x) #35, !inline_history !16
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 144) #39
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE5eraseIS7_EEmRKS7_.exit, %bb.f, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ %i.j, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE5eraseIS7_EEmRKS7_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN17grpc_event_engine12experimental16PosixEventEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.a
  %i.c = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core18event_engine_traceE, i64 8) monotonic, align 8, !range !89, !noundef !90
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.loopexit, !prof !73

bb.b:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iteratorppEv.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iteratorppEv.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i, %.lr.ph
  %.sroa.8.029 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i ] ; 3 uses
  %.sroa.020.028 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.020.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i ]
  %.sroa.017.0.copyload = load i64, ptr %.sroa.8.029, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.029, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 471) #36
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iteratorppEv.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 32, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store ptr %0, ptr %i.a, align 8, !tbaa !199
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN17grpc_event_engine12experimental16PosixEventEngineEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 34, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  invoke void @_ZN17grpc_event_engine12experimental22HandleToStringInternalB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 noundef %.sroa.017.0.copyload, i64 noundef %.sroa.4.0.copyload)
          to label %_ZN17grpc_event_engine12experimental14HandleToStringINS0_11EventEngine10TaskHandleEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN17grpc_event_engine12experimental14HandleToStringINS0_11EventEngine10TaskHandleEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZN17grpc_event_engine12experimental14HandleToStringINS0_11EventEngine10TaskHandleEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.f
  %i.l = load ptr, ptr %2, align 8, !tbaa !128    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %i.n = load i64, ptr %i.i, align 8, !tbaa !84
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 1 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.8.029, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !197   ; 2 uses
  %i.s = icmp slt i8 %i.r, -1
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i
  %i.t = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.u = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.v = load <16 x i8>, ptr %i.u, align 1, !tbaa !84
  %i.w = icmp slt <16 x i8> %i.v, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = zext i16 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 1
  %i.aa = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.ab ; 2 uses
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !197 ; 2 uses
  %i.af = icmp slt i8 %i.ae, -1
  br i1 %i.af, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !15

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.020.1 = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %.lr.ph.i.i ]
  %.sroa.8.1 = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %.lr.ph.i.i ]
  %i.ag = phi i8 [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %.lr.ph.i.i ]
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iteratorppEv.exit, !prof !73

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iterator21skip_empty_or_deletedEv.exit.i, %bb.c, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !158
  %.not.i = icmp ult i64 %i.ak, 131072
  br i1 %.not.i, label %.critedge, label %bb.g, !prof !86

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.13) #36
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit6: ; preds = %bb.h
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #37
  unreachable

.critedge:                                        ; preds = %.loopexit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #37
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !166, !range !89, !noundef !90
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !166
  br i1 %i.aq, label %bb.j, label %_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  call void @_ZN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.an) #35
  br label %_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit

_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !193
  invoke void @_ZN17grpc_event_engine12experimental12TimerManager8ShutdownEv(ptr noundef nonnull align 8 dereferenceable(104) %i.as)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51 ; 8 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental12TimerManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !83
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #35, !inline_history !326
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #35, !inline_history !326
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental12TimerManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental12TimerManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #35
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental12TimerManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental12TimerManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !51 ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental12TimerManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.br, align 8, !tbaa !82
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !83
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #35, !inline_history !3
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !80
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #35, !inline_history !3
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i8 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i8, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

bb.w:                                             ; preds = %bb.u
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i10 = phi i32 [ %i.bu, %bb.v ], [ %i.ce, %bb.w ]
  %i.cf = icmp eq i32 %.0.i.i.i.i10, 1
  br i1 %i.cf, label %bb.x, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #35
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental12TimerManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9, %bb.x
  %i.cg = load i64, ptr %i.ai, align 8, !tbaa !157 ; 3 uses
  %i.ch = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp ult i64 %i.cg, 2
  br i1 %i.ci, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !84
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !158
  %i.cm = and i64 %i.cl, 65536
  %i.cn = icmp ne i64 %i.cm, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef %i.cg, ptr noundef %i.ck, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.cn)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #37
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  %i.cq = load i8, ptr %i.ao, align 8, !tbaa !166, !range !89, !noundef !90
  %i.cr = trunc nuw i8 %i.cq to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !166
  br i1 %i.cr, label %bb.aa, label %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EED2Ev.exit
  call void @_ZN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.an) #35
  br label %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EED2Ev.exit, %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !51 ; 8 uses
  %.not.i.i11 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i11, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cu, align 8, !tbaa !82
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !83
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !80
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #35, !inline_history !2
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !80
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #35, !inline_history !2
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i12 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i12, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

bb.af:                                            ; preds = %bb.ad
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i14 = phi i32 [ %i.cx, %bb.ae ], [ %i.dh, %bb.af ]
  %i.di = icmp eq i32 %.0.i.i.i.i14, 1
  br i1 %i.di, label %bb.ag, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #35
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleELb0ELb0EED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13, %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !154 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !153 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dk, %i.dm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dz, %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i.i ], [ %i.dk, %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !157 ; 3 uses
  %i.dp = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp ult i64 %i.do, 2
  br i1 %i.dq, label %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !84
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !158
  %i.dv = and i64 %i.du, 65536
  %i.dw = icmp ne i64 %i.dv, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 noundef %i.do, ptr noundef %i.ds, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.dw)
          to label %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #37
  unreachable

_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.dz, %i.dm
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.dj, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ea = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.dk, %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !163
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #39
  br label %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev.exit

_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardES3_EvT_S5_RSaIT0_E.exit.i, %bb.aj
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !200 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i, label %_ZN17grpc_event_engine12experimental12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12 ; 3 uses
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !85 ; 2 uses
  %i.el = add nsw i32 %i.ek, -1
  store i32 %i.el, ptr %i.ei, align 4, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.em = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ek, %bb.al ], [ %i.em, %bb.am ]
  %i.en = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.en, label %bb.an, label %_ZN17grpc_event_engine12experimental12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEED2Ev.exit

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.eo = load ptr, ptr %i.eh, align 8, !tbaa !80
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #35, !inline_history !327
  br label %_ZN17grpc_event_engine12experimental12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEED2Ev.exit

_ZN17grpc_event_engine12experimental12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEED2Ev.exit: ; preds = %_ZNSt6vectorIN17grpc_event_engine12experimental16PosixEventEngine15ConnectionShardESaIS3_EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.an
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit, %bb.e, %bb.d, %_ZN17grpc_event_engine12experimental14HandleToStringINS0_11EventEngine10TaskHandleEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN17grpc_event_engine12experimental11EventEngine10TaskHandleEEENS5_20TaskHandleComparatorIS7_E4HashESt8equal_toIS7_ESaIS7_EE8iteratorppEv.exit, %bb.h, %bb.a, %bb.k, %_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit, %bb.g, %bb.b
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %lpad.loopexit.split-lp53, 0
  call void @__clang_call_terminate(ptr %i.er) #37
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN17grpc_event_engine12experimental16PosixEventEngineEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !199
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.f
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZN17grpc_event_engine12experimental12TimerManager8ShutdownEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @_ZThn24_N17grpc_event_engine12experimental16PosixEventEngineD1Ev(ptr noundef %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN17grpc_event_engine12experimental16PosixEventEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.a) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN17grpc_event_engine12experimental16PosixEventEngineD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN17grpc_event_engine12experimental16PosixEventEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) #35
end_hunk_2
begin_hunk_3_@_ZSt11make_uniqueIN17grpc_event_engine12experimental19PosixEngineListenerEJN4absl12lts_2025051212AnyInvocableIFviSt10unique_ptrINS1_11EventEngine8EndpointESt14default_deleteIS8_EEbNS1_15MemoryAllocatorEPNS1_11SliceBufferEEEENS5_IFvNS4_6StatusEEEERKNS1_14EndpointConfigES6_INS1_22MemoryAllocatorFactoryES9_ISN_EEPNS1_16PosixEventPollerESt10shared_ptrIS7_EEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_:bb.a
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.h, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #35
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ak = load ptr, ptr %10, align 8, !tbaa !253  ; 3 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN17grpc_event_engine12experimental22MemoryAllocatorFactoryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN17grpc_event_engine12experimental22MemoryAllocatorFactoryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN17grpc_event_engine12experimental22MemoryAllocatorFactoryEEclEPS2_.exit.i: ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #35, !inline_history !35
  br label %_ZNSt10unique_ptrIN17grpc_event_engine12experimental22MemoryAllocatorFactoryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN17grpc_event_engine12experimental22MemoryAllocatorFactoryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN17grpc_event_engine12experimental22MemoryAllocatorFactoryEEclEPS2_.exit.i
  %i.ao = load ptr, ptr %i.j, align 16, !tbaa !92
  call void %i.ao(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9) #35, !inline_history !9
  %i.ap = load ptr, ptr %i.e, align 16, !tbaa !245
  call void %i.ap(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) %8) #35, !inline_history !31
  ret void

bb.i:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #35
  %i.ar = load ptr, ptr %10, align 8, !tbaa !253  ; 3 uses
  %.not.i8 = icmp eq ptr %i.ar, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN17grpc_event_engine12experimental22MemoryAllocatorFactoryESt14default_deleteIS2_EED2Ev.exit10, label %_ZNKSt14default_deleteIN17grpc_event_engine12experimental22MemoryAllocatorFactoryEEclEPS2_.exit.i9

_ZNKSt14default_deleteIN17grpc_event_engine12experimental22MemoryAllocatorFactoryEEclEPS2_.exit.i9: ; preds = %bb.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #35, !inline_history !35
  br label %_ZNSt10unique_ptrIN17grpc_event_engine12experimental22MemoryAllocatorFactoryESt14default_deleteIS2_EED2Ev.exit10

_ZNSt10unique_ptrIN17grpc_event_engine12experimental22MemoryAllocatorFactoryESt14default_deleteIS2_EED2Ev.exit10: ; preds = %bb.i, %_ZNKSt14default_deleteIN17grpc_event_engine12experimental22MemoryAllocatorFactoryEEclEPS2_.exit.i9
  %i.av = load ptr, ptr %i.j, align 16, !tbaa !92
  call void %i.av(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9) #35, !inline_history !9
  %i.aw = load ptr, ptr %i.e, align 16, !tbaa !245
  call void %i.aw(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) %8) #35, !inline_history !31
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #39
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress uwtable
define void @_ZN17grpc_event_engine12experimental16PosixEventEngine19CreatePosixListenerEN4absl12lts_2025051212AnyInvocableIFviSt10unique_ptrINS0_11EventEngine8EndpointESt14default_deleteIS7_EEbNS0_15MemoryAllocatorEPNS0_11SliceBufferEEEENS4_IFvNS3_6StatusEEEERKNS0_14EndpointConfigES5_INS0_22MemoryAllocatorFactoryES8_ISM_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.absl::lts_20250512::StatusOr.215") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, ptr noundef align 16 %2, ptr noundef align 16 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.246", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::shared_ptr.17", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  store ptr %i.c, ptr %i.a, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !200, !noalias !441 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !51, !alias.scope !441
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 8, !noalias !441
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.j, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %.06.i.i.i.i.i, 1
  %i.l = cmpxchg weak ptr %i.i, i32 %.06.i.i.i.i.i, i32 %i.k acq_rel monotonic, align 8, !noalias !441 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  %i.n = extractvalue { i32, i1 } %i.l, 0
  br i1 %i.m, label %_ZNSt23enable_shared_from_thisIN17grpc_event_engine12experimental11EventEngineEE16shared_from_thisEv.exit, label %bb.c, !llvm.loop !19

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #35, !noalias !441 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.o, align 8, !tbaa !80, !noalias !441
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #41, !noalias !441
  unreachable

_ZNSt23enable_shared_from_thisIN17grpc_event_engine12experimental11EventEngineEE16shared_from_thisEv.exit: ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !211, !noalias !441
  store ptr %i.p, ptr %7, align 8, !tbaa !124, !alias.scope !441
  invoke void @_ZSt11make_uniqueIN17grpc_event_engine12experimental19PosixEngineListenerEJN4absl12lts_2025051212AnyInvocableIFviSt10unique_ptrINS1_11EventEngine8EndpointESt14default_deleteIS8_EEbNS1_15MemoryAllocatorEPNS1_11SliceBufferEEEENS5_IFvNS4_6StatusEEEERKNS1_14EndpointConfigES6_INS1_22MemoryAllocatorFactoryES9_ISN_EEPNS1_16PosixEventPollerESt10shared_ptrIS7_EEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.246") align 8 %6, ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt10unique_ptrIN17grpc_event_engine12experimental19PosixEngineListenerESt14default_deleteIS2_EED2Ev.exit unwind label %bb.k

_ZNSt10unique_ptrIN17grpc_event_engine12experimental19PosixEngineListenerESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt23enable_shared_from_thisIN17grpc_event_engine12experimental11EventEngineEE16shared_from_thisEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %6, align 8, !tbaa !249
  store ptr null, ptr %6, align 8, !tbaa !249
  store ptr %i.r, ptr %i.q, align 8, !tbaa !252
  store i64 1, ptr %0, align 8, !tbaa !100
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !51   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN17grpc_event_engine12experimental19PosixEngineListenerESt14default_deleteIS2_EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !83
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #35, !inline_history !7
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #35, !inline_history !7
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #35
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN17grpc_event_engine12experimental19PosixEngineListenerESt14default_deleteIS2_EED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret void

bb.k:                                             ; preds = %_ZNSt23enable_shared_from_thisIN17grpc_event_engine12experimental11EventEngineEE16shared_from_thisEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %i.ai
}

; Function Attrs: uwtable
define void @_ZThn24_N17grpc_event_engine12experimental16PosixEventEngine19CreatePosixListenerEN4absl12lts_2025051212AnyInvocableIFviSt10unique_ptrINS0_11EventEngine8EndpointESt14default_deleteIS7_EEbNS0_15MemoryAllocatorEPNS0_11SliceBufferEEEENS4_IFvNS3_6StatusEEEERKNS0_14EndpointConfigES5_INS0_22MemoryAllocatorFactoryES8_ISM_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.absl::lts_20250512::StatusOr.215") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef align 16 %2, ptr noundef align 16 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 %5) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -24
  tail call void @_ZN17grpc_event_engine12experimental16PosixEventEngine19CreatePosixListenerEN4absl12lts_2025051212AnyInvocableIFviSt10unique_ptrINS0_11EventEngine8EndpointESt14default_deleteIS7_EEbNS0_15MemoryAllocatorEPNS0_11SliceBufferEEEENS4_IFvNS3_6StatusEEEERKNS0_14EndpointConfigES5_INS0_22MemoryAllocatorFactoryES8_ISM_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr.215") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef align 16 %2, ptr noundef align 16 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN17grpc_event_engine12experimental16PosixEventEngine14ResetPollCycleEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !166, !range !89, !noundef !90
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !166
  br i1 %i.d, label %bb.b, label %_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.e) #35
  br label %_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit

_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit: ; preds = %bb.a, %bb.b
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #37
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %_ZNSt8optionalIN17grpc_event_engine12experimental16PosixEventEngine12PollingCycleEE5resetEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN17grpc_event_engine12experimental12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEE14QueryExtensionESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 55
  br i1 %i.a, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %_ZN17grpc_event_engine12experimental15endpoint_detail23QueryExtensionRecursionINS0_12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEEEJS5_EE5QueryESt17basic_string_viewIcSt11char_traitsIcEEPS6_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.a
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(55) %2, ptr noundef nonnull dereferenceable(55) @.str.49, i64 55)
  %i.b = icmp eq i32 %bcmp.i.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %spec.select = select i1 %i.b, ptr %i.c, ptr null
  br label %_ZN17grpc_event_engine12experimental15endpoint_detail23QueryExtensionRecursionINS0_12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEEEJS5_EE5QueryESt17basic_string_viewIcSt11char_traitsIcEEPS6_.exit

_ZN17grpc_event_engine12experimental15endpoint_detail23QueryExtensionRecursionINS0_12ExtendedTypeINS0_11EventEngineEJNS0_30EventEngineSupportsFdExtensionEEEEJS5_EE5QueryESt17basic_string_viewIcSt11char_traitsIcEEPS6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.a
  %.0.i = phi ptr [ %spec.select, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN17grpc_event_engine12experimental10Extensible14QueryExtensionESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17grpc_event_engine12experimental16PosixEventEngine16PosixDNSResolverD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN17grpc_event_engine12experimental16PosixEventEngine16PosixDNSResolverE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN17grpc_event_engine12experimental30RefCountedDNSResolverInterfaceEN9grpc_core16OrphanableDeleteEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt10unique_ptrIN17grpc_event_engine12experimental30RefCountedDNSResolverInterfaceEN9grpc_core16OrphanableDeleteEED2Ev.exit unwind label %bb.c, !inline_history !20

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #37
  unreachable

_ZNSt10unique_ptrIN17grpc_event_engine12experimental30RefCountedDNSResolverInterfaceEN9grpc_core16OrphanableDeleteEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17grpc_event_engine12experimental16PosixEventEngine16PosixDNSResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN17grpc_event_engine12experimental16PosixEventEngine16PosixDNSResolverE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN17grpc_event_engine12experimental16PosixEventEngine16PosixDNSResolverD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN17grpc_event_engine12experimental16PosixEventEngine16PosixDNSResolverD2Ev.exit unwind label %bb.c, !inline_history !442

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #37, !inline_history !443
  unreachable

_ZN17grpc_event_engine12experimental16PosixEventEngine16PosixDNSResolverD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #22 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core14promise_detail10UnwakeableE, i64 16), ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIRKSt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEPKvEEPKcT_T0_SD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::CheckOpMessageBuilder", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef %2)
  %i.a = load ptr, ptr %0, align 8, !tbaa !58
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.a)
          to label %_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringISt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEEEvRSoRKT_.exit unwind label %bb.e ; 0 uses

_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringISt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEEEvRSoRKT_.exit: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringISt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEEEvRSoRKT_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringERSoPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder9NewStringEv(ptr noundef nonnull align 8 dereferenceable(376) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !80
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !84
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #39
  br label %_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev.exit

_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #35
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.r) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret ptr %i.d

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b, %_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringISt10shared_ptrIN17grpc_event_engine12experimental16PosixEventPollerEEEEvRSoRKT_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.s
}

declare void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef) unnamed_addr #7

declare void @_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringERSoPKv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #7

declare noundef ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder9NewStringEv(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !80
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !84
end_hunk_3
