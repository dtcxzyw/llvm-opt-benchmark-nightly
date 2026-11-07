Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/load_balanced_call_destination?download=true
inline.NumInlined: 3361
inline.NumDeleted: 2355
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZN9grpc_core5Party15ParticipantImplIZNS_9CallSpine30SpawnGuardedUntilCallCompletesIZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEE3$_0EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlvE_ZNS2_12SpawnGuardedISD_EEvSA_SC_NS_13DebugLocationEEUlON4absl12lts_202505126StatusEE_E22PollParticipantPromiseEv":bb.a

bb.bt:                                            ; preds = %.noexc17.i
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #41, !noalias !337
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i.i.i, %.noexc16.i, %bb.bs, %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

.body14.i:                                        ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit40.i.i.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp339, %_ZNSt14_Function_baseD2Ev.exit40.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #39, !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39, !noalias !335
  %i.kv = load i8, ptr %19, align 8, !tbaa !91, !range !28, !noalias !326, !noundef !29
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.ci, label %_ZN9grpc_core4PollINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEED2Ev.exit9.i

"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vEclEOS9_.exit.i": ; preds = %bb.bi, %_ZNSt14_Function_baseD2Ev.exit30.i.i.i
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEED2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(208) %10) #39, !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !337
  %i.kx = load ptr, ptr %18, align 8, !tbaa !78, !noalias !335 ; 6 uses
  %.not.i18.i = icmp eq ptr %i.kx, null
  br i1 %.not.i18.i, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vEclEOS9_.exit.i"
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %i.kz = atomicrmw add ptr %i.ky, i64 -4294967295 acq_rel, align 8, !noalias !335
  %.mask.i.i.i = and i64 %i.kz, -4294967296
  %i.la = icmp eq i64 %.mask.i.i.i, 4294967296
  br i1 %i.la, label %bb.bv, label %.noexc.i.i, !prof !69

bb.bv:                                            ; preds = %bb.bu
  %i.lb = load ptr, ptr %i.kx, align 8, !tbaa !36, !noalias !335
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !335
  invoke void %i.ld(ptr noundef nonnull align 8 dereferenceable(16) %i.kx)
          to label %.noexc.i.i unwind label %bb.bx, !noalias !335, !inline_history !2

.noexc.i.i:                                       ; preds = %bb.bv, %bb.bu
  %i.le = atomicrmw add ptr %i.ky, i64 -1 acq_rel, align 8, !noalias !335
  %i.lf = icmp eq i64 %i.le, 1
  br i1 %i.lf, label %bb.bw, label %bb.by, !prof !69

bb.bw:                                            ; preds = %.noexc.i.i
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !36, !noalias !335
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !335
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #39, !noalias !335, !inline_history !286
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #41, !noalias !335
  unreachable

bb.by:                                            ; preds = %bb.bw, %.noexc.i.i, %"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vEclEOS9_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !326
  %i.ll = load i8, ptr %i.hk, align 8, !tbaa !110, !noalias !326 ; 5 uses
  %i.lm = icmp eq i8 %i.ll, 1
  br i1 %i.lm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ln = load i64, ptr %20, align 8, !tbaa !112, !noalias !326 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 1
  %i.lp = load ptr, ptr %i.hl, align 8
  %spec.select320 = select i1 %i.lo, ptr %i.lp, ptr undef
  br label %"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i"

bb.ca:                                            ; preds = %bb.by
  %.off.i.i = add i8 %i.ll, -1
  %switch.i.i = icmp ult i8 %.off.i.i, -2
  br i1 %switch.i.i, label %.thread.i, label %"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i", !prof !352

.thread.i:                                        ; preds = %bb.ca
  %.pre.i = load i64, ptr %20, align 8, !tbaa !112, !noalias !326 ; 3 uses
  %i.lq = icmp eq i64 %.pre.i, 1
  br i1 %i.lq, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %bb.cf

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i
  %.pr = load ptr, ptr %i.hl, align 8, !tbaa !115, !noalias !326 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i", label %bb.cb

bb.cb:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 2 uses
  %i.ls = atomicrmw add ptr %i.lr, i64 -4294967295 acq_rel, align 8, !noalias !326
  %.mask.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.ls, -4294967296
  %i.lt = icmp eq i64 %.mask.i.i.i.i.i.i.i.i.i.i.i.i, 4294967296
  br i1 %i.lt, label %bb.cc, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, !prof !69

bb.cc:                                            ; preds = %bb.cb
  %i.lu = load ptr, ptr %.pr, align 8, !tbaa !36, !noalias !326
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !326
  invoke void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %.pr)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ce, !noalias !326, !inline_history !4

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cc, %bb.cb
  %i.lx = atomicrmw add ptr %i.lr, i64 -1 acq_rel, align 8, !noalias !326
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.cd, label %"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i", !prof !69

bb.cd:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.lz = load ptr, ptr %.pr, align 8, !tbaa !36, !noalias !326
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !noalias !326
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #39, !noalias !326, !inline_history !287
  br label %"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i"

bb.ce:                                            ; preds = %bb.cc
  %i.mc = landingpad { ptr, i32 }
          catch ptr null
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  call void @__clang_call_terminate(ptr %i.md) #41, !noalias !326
  unreachable

bb.cf:                                            ; preds = %.thread.i
  %i.me = trunc i64 %.pre.i to i1
  br i1 %i.me, label %"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mf = inttoptr i64 %.pre.i to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.mf)
          to label %"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i" unwind label %bb.ch, !noalias !326

bb.ch:                                            ; preds = %bb.cg
  %i.mg = landingpad { ptr, i32 }
          catch ptr null
  %i.mh = extractvalue { ptr, i32 } %i.mg, 0
  call void @__clang_call_terminate(ptr %i.mh) #41, !noalias !326
  unreachable

bb.ci:                                            ; preds = %.body14.i
  call void @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gy) #39, !noalias !326
  br label %_ZN9grpc_core4PollINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEED2Ev.exit9.i

_ZN9grpc_core4PollINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEED2Ev.exit9.i: ; preds = %bb.ci, %.body14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39, !noalias !335
  br label %.body

"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i": ; preds = %bb.bz, %bb.cg, %bb.cf, %bb.cd, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i.i.i.i.i, %bb.ca
  %.sroa.1071.4 = phi i64 [ undef, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.cd ], [ undef, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.cf ], [ undef, %bb.cg ], [ undef, %bb.ca ], [ %i.ln, %bb.bz ] ; 7 uses
  %.sroa.15.4 = phi ptr [ undef, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.cd ], [ undef, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.cf ], [ undef, %bb.cg ], [ undef, %bb.ca ], [ %spec.select320, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39, !noalias !335
  %.pre184.i = load i8, ptr %19, align 8, !tbaa !91, !range !28, !noalias !326
  %i.mi = trunc nuw i8 %.pre184.i to i1
  br i1 %i.mi, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i"
  %i.mj = load ptr, ptr %i.gy, align 8, !tbaa !78, !noalias !326 ; 6 uses
  %.not.i19.i = icmp eq ptr %i.mj, null
  br i1 %.not.i19.i, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 2 uses
  %i.ml = atomicrmw add ptr %i.mk, i64 -4294967295 acq_rel, align 8, !noalias !326
  %.mask.i.i20.i = and i64 %i.ml, -4294967296
  %i.mm = icmp eq i64 %.mask.i.i20.i, 4294967296
  br i1 %i.mm, label %bb.cl, label %.noexc.i21.i, !prof !69

bb.cl:                                            ; preds = %bb.ck
  %i.mn = load ptr, ptr %i.mj, align 8, !tbaa !36, !noalias !326
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !326
  invoke void %i.mp(ptr noundef nonnull align 8 dereferenceable(16) %i.mj)
          to label %.noexc.i21.i unwind label %bb.cn, !noalias !326, !inline_history !2

.noexc.i21.i:                                     ; preds = %bb.cl, %bb.ck
  %i.mq = atomicrmw add ptr %i.mk, i64 -1 acq_rel, align 8, !noalias !326
  %i.mr = icmp eq i64 %i.mq, 1
  br i1 %i.mr, label %bb.cm, label %bb.co, !prof !69

bb.cm:                                            ; preds = %.noexc.i21.i
  %i.ms = load ptr, ptr %i.mj, align 8, !tbaa !36, !noalias !326
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !noalias !326
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(16) %i.mj) #39, !noalias !326, !inline_history !286
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.mv = landingpad { ptr, i32 }
          catch ptr null
  %i.mw = extractvalue { ptr, i32 } %i.mv, 0
  call void @__clang_call_terminate(ptr %i.mw) #41, !noalias !326
  unreachable

bb.co:                                            ; preds = %bb.cj, %bb.cm, %.noexc.i21.i, %"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39, !noalias !335
  %.not = icmp eq i8 %i.ll, 1
  br i1 %.not, label %bb.cp, label %_ZNSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS0_13RefCountedPtrINS0_24UnstartedCallDestinationEEEEEEEC2EOS9_.exit24.i

bb.cp:                                            ; preds = %bb.co
  %i.mx = icmp eq i64 %.sroa.1071.4, 1
  %i.my = load i8, ptr %i.fq, align 8, !tbaa !27, !range !28, !noalias !326, !noundef !29
  store i8 1, ptr %27, align 8, !tbaa !354, !alias.scope !326
  %i.mz = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 %i.my, ptr %i.mz, align 8, !tbaa !27, !alias.scope !326
  %i.na = getelementptr inbounds nuw i8, ptr %27, i64 16
  br i1 %i.mx, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, label %bb.di

_ZNSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS0_13RefCountedPtrINS0_24UnstartedCallDestinationEEEEEEEC2EOS9_.exit24.i: ; preds = %bb.co
  %.off.i25.i = add i8 %i.ll, -1
  %switch.i26.i = icmp ult i8 %.off.i25.i, -2     ; 0 uses
  switch i8 %i.ll, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i [
    i8 0, label %bb.cq
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i.loopexit341
  ], !prof !355

bb.cq:                                            ; preds = %_ZNSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS0_13RefCountedPtrINS0_24UnstartedCallDestinationEEEEEEEC2EOS9_.exit24.i
  %.val.i.i32.i = load ptr, ptr %i.gz, align 8, !tbaa !21, !noalias !326 ; 3 uses
  %.not.i.i.i.i.i.i33.i = icmp eq ptr %.val.i.i32.i, null
  br i1 %.not.i.i.i.i.i.i33.i, label %"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vED2Ev.exit.i.i34.i", label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nb = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 16
  %i.nc = atomicrmw add ptr %i.nb, i64 -1099511627776 acq_rel, align 8, !noalias !326
  %i.nd = and i64 %i.nc, -1099511627776
  %i.ne = icmp eq i64 %i.nd, 1099511627776
  br i1 %i.ne, label %bb.cs, label %"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vED2Ev.exit.i.i34.i"

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN9grpc_core5Party11PartyIsOverEv(ptr noundef nonnull align 8 dereferenceable(168) %.val.i.i32.i)
          to label %"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vED2Ev.exit.i.i34.i" unwind label %bb.ct, !noalias !326

bb.ct:                                            ; preds = %bb.cs
  %i.nf = landingpad { ptr, i32 }
          catch ptr null
  %i.ng = extractvalue { ptr, i32 } %i.nf, 0
  call void @__clang_call_terminate(ptr %i.ng) #41, !noalias !326
  unreachable

"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vED2Ev.exit.i.i34.i": ; preds = %bb.cs, %bb.cr, %bb.cq
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_EE, i64 16), ptr %i.gx, align 8, !tbaa !36, !noalias !326
  %i.nh = load ptr, ptr %i.hm, align 8, !tbaa !78, !noalias !326 ; 6 uses
  %.not.i.i.i.i1.i.i35.i = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i1.i.i35.i, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS8_4NextES7_EUlRKS7_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS7_E_EEvED2Ev.exit38.i", label %bb.cu

bb.cu:                                            ; preds = %"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vED2Ev.exit.i.i34.i"
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  %i.nj = atomicrmw add ptr %i.ni, i64 -4294967295 acq_rel, align 8, !noalias !326
  %.mask.i.i.i.i.i.i.i36.i = and i64 %i.nj, -4294967296
  %i.nk = icmp eq i64 %.mask.i.i.i.i.i.i.i36.i, 4294967296
  br i1 %i.nk, label %bb.cv, label %.noexc.i.i.i.i.i.i37.i, !prof !69

bb.cv:                                            ; preds = %bb.cu
  %i.nl = load ptr, ptr %i.nh, align 8, !tbaa !36, !noalias !326
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !noalias !326
  invoke void %i.nn(ptr noundef nonnull align 8 dereferenceable(16) %i.nh)
          to label %.noexc.i.i.i.i.i.i37.i unwind label %bb.cx, !noalias !326, !inline_history !1

.noexc.i.i.i.i.i.i37.i:                           ; preds = %bb.cv, %bb.cu
  %i.no = atomicrmw add ptr %i.ni, i64 -1 acq_rel, align 8, !noalias !326
  %i.np = icmp eq i64 %i.no, 1
  br i1 %i.np, label %bb.cw, label %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS8_4NextES7_EUlRKS7_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS7_E_EEvED2Ev.exit38.i", !prof !69

bb.cw:                                            ; preds = %.noexc.i.i.i.i.i.i37.i
  %i.nq = load ptr, ptr %i.nh, align 8, !tbaa !36, !noalias !326
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !noalias !326
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #39, !noalias !326, !inline_history !288
  br label %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS8_4NextES7_EUlRKS7_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS7_E_EEvED2Ev.exit38.i"

bb.cx:                                            ; preds = %bb.cv
  %i.nt = landingpad { ptr, i32 }
          catch ptr null
  %i.nu = extractvalue { ptr, i32 } %i.nt, 0
  call void @__clang_call_terminate(ptr %i.nu) #41, !noalias !326, !inline_history !80
  unreachable

"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS8_4NextES7_EUlRKS7_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS7_E_EEvED2Ev.exit38.i": ; preds = %bb.cw, %.noexc.i.i.i.i.i.i37.i, %"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vED2Ev.exit.i.i34.i"
  call void @_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(64) %i.gx) #39, !noalias !326, !inline_history !80
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #39, !noalias !327
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !357
  %i.nv = load ptr, ptr %i.fr, align 8, !tbaa !78, !noalias !357 ; 2 uses
  %.not.i.i39.i = icmp eq ptr %i.nv, null
  br i1 %.not.i.i39.i, label %_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEC2ERKS3_.exit.i41.i, label %bb.cy

bb.cy:                                            ; preds = %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS8_4NextES7_EUlRKS7_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS7_E_EEvED2Ev.exit38.i"
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = atomicrmw add ptr %i.nw, i64 4294967296 monotonic, align 8, !noalias !357 ; 0 uses
  %.pre.i.i40.i = load ptr, ptr %i.fr, align 8, !tbaa !78, !noalias !357
  br label %_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEC2ERKS3_.exit.i41.i

_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEC2ERKS3_.exit.i41.i: ; preds = %bb.cy, %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS8_4NextES7_EUlRKS7_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS7_E_EEvED2Ev.exit38.i"
  %i.ny = phi ptr [ %.pre.i.i40.i, %bb.cy ], [ null, %"_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS8_4NextES7_EUlRKS7_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS7_E_EEvED2Ev.exit38.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.nz = load ptr, ptr %i.hn, align 8, !tbaa !57, !noalias !360 ; 2 uses
  %.not.i.i.i.i42.i = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i.i42.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEC2ERKS3_.exit.i41.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = atomicrmw add ptr %i.oa, i64 1 monotonic, align 8, !noalias !360 ; 0 uses
  %.pre.i.i.i.i43.i = load ptr, ptr %i.hn, align 8, !tbaa !57, !noalias !360
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEC2ERKS3_.exit.i41.i
  %i.oc = phi ptr [ %.pre.i.i.i.i43.i, %bb.cz ], [ null, %_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEC2ERKS3_.exit.i41.i ]
  store ptr %i.oc, ptr %i.ho, align 8, !tbaa !57, !alias.scope !361, !noalias !357
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, ptr %i.hp, align 8, !tbaa !85, !alias.scope !361, !noalias !357
  store i16 0, ptr %i.hq, align 8, !tbaa !86, !alias.scope !361, !noalias !357
  store i8 0, ptr %i.hr, align 8, !tbaa !89, !alias.scope !361, !noalias !357
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_EE, i64 16), ptr %5, align 8, !tbaa !36, !alias.scope !361, !noalias !357
  store ptr %i.ny, ptr %i.hs, align 8, !tbaa !78, !alias.scope !361, !noalias !357
  %i.od = load ptr, ptr %i.ht, align 8, !tbaa !21, !noalias !357 ; 2 uses
  %.not.i.i.i44.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i44.i, label %.backedge.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = atomicrmw add ptr %i.oe, i64 1099511627776 monotonic, align 8, !noalias !357 ; 0 uses
  %.pre.i.i.i45.i = load ptr, ptr %i.ht, align 8, !tbaa !21, !noalias !357
  br label %.backedge.i

_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i.loopexit341: ; preds = %_ZNSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS0_13RefCountedPtrINS0_24UnstartedCallDestinationEEEEEEEC2EOS9_.exit24.i
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i

_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i: ; preds = %_ZNSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS0_13RefCountedPtrINS0_24UnstartedCallDestinationEEEEEEEC2EOS9_.exit24.i, %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i.loopexit341
  %.sroa.20.1185 = phi i1 [ false, %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i.loopexit341 ], [ true, %_ZNSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS0_13RefCountedPtrINS0_24UnstartedCallDestinationEEEEEEEC2EOS9_.exit24.i ]
  %.str.33.sink.i = phi ptr [ @.str.32, %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i.loopexit341 ], [ @.str.33, %_ZNSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS0_13RefCountedPtrINS0_24UnstartedCallDestinationEEEEEEEC2EOS9_.exit24.i ]
  %i.og = call ptr @__cxa_allocate_exception(i64 16) #39, !noalias !326 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.og, align 8, !tbaa !36, !noalias !326
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store ptr %.str.33.sink.i, ptr %i.oh, align 8, !tbaa !118, !noalias !326
  invoke void @__cxa_throw(ptr nonnull %i.og, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.cont.i unwind label %bb.dc, !noalias !326

_ZSt26__throw_bad_variant_accessb.exit.i.i.cont.i: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i
  unreachable

bb.dc:                                            ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke.i
  %i.oi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.sroa.20.1185, label %bb.dd, label %.body, !prof !362

bb.dd:                                            ; preds = %bb.dc
  %i.oj = icmp ne i64 %.sroa.1071.4, 1
  call void @llvm.assume(i1 %i.oj)
  %i.ok = trunc i64 %.sroa.1071.4 to i1
  br i1 %i.ok, label %.thread298, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ol = inttoptr i64 %.sroa.1071.4 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ol)
          to label %.thread298 unwind label %bb.df, !noalias !326

bb.df:                                            ; preds = %bb.de
  %i.om = landingpad { ptr, i32 }
          catch ptr null
  %i.on = extractvalue { ptr, i32 } %i.om, 0
  call void @__clang_call_terminate(ptr %i.on) #41, !noalias !326
  unreachable

.backedge.i:                                      ; preds = %bb.da, %bb.db
  %i.oo = phi ptr [ %.pre.i.i.i45.i, %bb.db ], [ null, %bb.da ]
  call void @_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverC2EOS6_(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull align 8 dereferenceable(48) %5) #39, !noalias !326
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_EE, i64 16), ptr %22, align 8, !tbaa !36, !alias.scope !356, !noalias !326
  %i.op = load ptr, ptr %i.hs, align 8, !tbaa !78, !noalias !357
  store ptr %i.op, ptr %i.hu, align 8, !tbaa !78, !alias.scope !356, !noalias !326
  store ptr null, ptr %i.hs, align 8, !tbaa !78, !noalias !357
  store ptr %i.oo, ptr %i.hv, align 8, !tbaa !21, !alias.scope !356, !noalias !326
  store ptr %i.fr, ptr %i.hw, align 8, !tbaa !311, !alias.scope !356, !noalias !326
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_EE, i64 16), ptr %5, align 8, !tbaa !36, !noalias !357
  call void @_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(48) %5) #39, !noalias !326, !inline_history !80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !357
  call void @_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverC2EOS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.gx, ptr noundef nonnull align 8 dereferenceable(64) %22) #39, !noalias !326
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_EE, i64 16), ptr %i.gx, align 8, !tbaa !36, !noalias !326
  %i.oq = load <2 x ptr>, ptr %i.hu, align 8, !tbaa !32, !noalias !326
  store ptr null, ptr %i.hu, align 8, !tbaa !78, !noalias !326
  store <2 x ptr> %i.oq, ptr %i.hm, align 8, !tbaa !32, !noalias !326
  store ptr null, ptr %i.hv, align 8, !tbaa !21, !noalias !326
  %i.or = load ptr, ptr %i.hw, align 8, !tbaa !310, !noalias !326, !nonnull !29, !align !79
  store ptr %i.or, ptr %i.ha, align 8, !tbaa !311, !noalias !326
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_EE, i64 16), ptr %22, align 8, !tbaa !36, !noalias !326
  call void @_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(64) %22) #39, !noalias !326, !inline_history !80
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #39, !noalias !327
  br label %bb.ar

.thread298:                                       ; preds = %bb.de, %bb.dd
  %i.os = trunc i64 %.sroa.1071.4 to i1
  br i1 %i.os, label %.body, label %bb.dg

bb.dg:                                            ; preds = %.thread298
  %i.ot = inttoptr i64 %.sroa.1071.4 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ot)
          to label %.body unwind label %bb.dh, !noalias !326

bb.dh:                                            ; preds = %bb.dg
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #41, !noalias !326
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i:       ; preds = %bb.cp
  %i.ow = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %.sroa.15.4, ptr %i.ow, align 8, !tbaa !115, !alias.scope !326
  br label %bb.di

bb.di:                                            ; preds = %bb.cp, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i
  %.sroa.1071.4.lcssa313.sink = phi i64 [ 1, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i ], [ %.sroa.1071.4, %bb.cp ]
  store i64 %.sroa.1071.4.lcssa313.sink, ptr %i.na, align 8, !tbaa !112, !alias.scope !326
  %i.ox = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  %i.oz = load i8, ptr %i.ox, align 8, !tbaa !27, !noalias !363 ; 2 uses
  store i8 %i.oz, ptr %26, align 8, !tbaa !27, !noalias !363
  %i.pa = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.pb = load i64, ptr %.sroa.gep, align 8, !tbaa !112, !noalias !363 ; 6 uses
  %i.pc = icmp eq i64 %i.pb, 1
  br i1 %i.pc, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store i64 %i.pb, ptr %i.pa, align 8, !tbaa !112, !noalias !363
  store i64 55, ptr %.sroa.gep, align 8, !tbaa !112, !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.pd = trunc i64 %i.pb to i1
  br i1 %i.pd, label %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit.thread", label %bb.dk

"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit.thread": ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ec

bb.dk:                                            ; preds = %bb.dj
  %i.pe = inttoptr i64 %i.pb to ptr
  %i.pf = atomicrmw add ptr %i.pe, i32 1 monotonic, align 4, !noalias !364 ; 0 uses
  br label %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit"

bb.dl:                                            ; preds = %bb.di
  %.sroa.gep60 = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ph = load ptr, ptr %.sroa.gep60, align 8, !tbaa !115, !noalias !363
  store ptr %i.ph, ptr %i.pg, align 8, !tbaa !115, !noalias !363
  store ptr null, ptr %.sroa.gep60, align 8, !tbaa !115, !noalias !363
  store i64 1, ptr %i.pa, align 8, !tbaa !112, !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.pi = trunc nuw i8 %i.oz to i1
  %i.pj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core14promise_detail18ThreadLocalContextIN4absl12lts_2025051212AnyInvocableIFvvEEEE8current_E)
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !366, !noalias !364 ; 3 uses
  %.not.i29 = icmp eq ptr %i.pk, null
  br i1 %.not.i29, label %.noexc32, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !368, !noalias !364 ; 2 uses
  %.not14.i = icmp eq ptr %i.pm, null
  br i1 %.not14.i, label %.noexc32, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  invoke void %i.pm(ptr noundef nonnull align 16 dereferenceable(32) %i.pk)
          to label %.noexc32 unwind label %bb.dx, !inline_history !299

.noexc32:                                         ; preds = %bb.dn, %bb.dm, %bb.dl
  br i1 %i.pi, label %bb.do, label %.noexc33

bb.do:                                            ; preds = %.noexc32
  %i.pn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core14promise_detail18ThreadLocalContextINS_5ArenaEE8current_E)
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !31, !noalias !364
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 56
  %i.pq = load i16, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_10CallTracerEE3id_E, align 2, !tbaa !25, !noalias !364
  %i.pr = zext i16 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.pr
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !32, !noalias !364 ; 2 uses
  %.not12.i = icmp eq ptr %i.pt, null
  br i1 %.not12.i, label %.noexc33, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !54, !noalias !364 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !36, !noalias !364
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !noalias !364
  invoke void %i.px(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, i64 25, ptr nonnull @.str.34)
          to label %.noexc33 unwind label %bb.dx, !inline_history !299

.noexc33:                                         ; preds = %bb.dp, %bb.do, %.noexc32
  %i.py = load i64, ptr %i.pa, align 8, !tbaa !112, !noalias !364
  %i.pz = icmp eq i64 %i.py, 1
  br i1 %i.pz, label %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_24UnstartedCallDestinationEEEEdeEv.exit.i, label %bb.dq, !prof !92

bb.dq:                                            ; preds = %.noexc33
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #43
          to label %.noexc34 unwind label %bb.dx

.noexc34:                                         ; preds = %bb.dq
  unreachable

_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_24UnstartedCallDestinationEEEEdeEv.exit.i: ; preds = %.noexc33
  %i.qa = load ptr, ptr %i.pg, align 8, !tbaa !115, !noalias !364 ; 2 uses
  %i.qb = load ptr, ptr %i.oy, align 8, !tbaa !21, !noalias !364 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i30, label %_ZN9grpc_core20UnstartedCallHandlerC2ERKS0_.exit.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_24UnstartedCallDestinationEEEEdeEv.exit.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = atomicrmw add ptr %i.qc, i64 1099511627776 monotonic, align 8, !noalias !364 ; 0 uses
  %.pre.i.i.i31 = load ptr, ptr %i.oy, align 8, !tbaa !21, !noalias !364
  br label %_ZN9grpc_core20UnstartedCallHandlerC2ERKS0_.exit.i

_ZN9grpc_core20UnstartedCallHandlerC2ERKS0_.exit.i: ; preds = %bb.dr, %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_24UnstartedCallDestinationEEEEdeEv.exit.i
  %i.qe = phi ptr [ %.pre.i.i.i31, %bb.dr ], [ null, %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS2_24UnstartedCallDestinationEEEEdeEv.exit.i ]
  store ptr %i.qe, ptr %4, align 8, !tbaa !21, !noalias !364
  %i.qf = load ptr, ptr %i.qa, align 8, !tbaa !36, !noalias !364
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !noalias !364
  invoke void %i.qh(ptr noundef nonnull align 8 dereferenceable(16) %i.qa, ptr noundef nonnull align 8 %4)
          to label %bb.ds unwind label %bb.dw, !noalias !364

bb.ds:                                            ; preds = %_ZN9grpc_core20UnstartedCallHandlerC2ERKS0_.exit.i
  %i.qi = load ptr, ptr %4, align 8, !tbaa !21, !noalias !364 ; 3 uses
  %.not.i.i13.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i13.i, label %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit", label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = atomicrmw add ptr %i.qj, i64 -1099511627776 acq_rel, align 8, !noalias !364
  %i.ql = and i64 %i.qk, -1099511627776
  %i.qm = icmp eq i64 %i.ql, 1099511627776
  br i1 %i.qm, label %bb.du, label %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit"

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN9grpc_core5Party11PartyIsOverEv(ptr noundef nonnull align 8 dereferenceable(168) %i.qi)
          to label %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit" unwind label %bb.dv, !noalias !364

bb.dv:                                            ; preds = %bb.du
  %i.qn = landingpad { ptr, i32 }
          catch ptr null
  %i.qo = extractvalue { ptr, i32 } %i.qn, 0
  call void @__clang_call_terminate(ptr %i.qo) #41, !noalias !364
  unreachable

bb.dw:                                            ; preds = %_ZN9grpc_core20UnstartedCallHandlerC2ERKS0_.exit.i
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core20UnstartedCallHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #39, !noalias !364
  br label %_ZN9grpc_core4PollISt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEED2Ev.exit19

bb.dx:                                            ; preds = %bb.dq, %bb.dp, %bb.dn
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core4PollISt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEED2Ev.exit19

"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit": ; preds = %bb.dk, %bb.du, %bb.dt, %bb.ds
  %.pr303 = load i64, ptr %i.pa, align 8, !tbaa !112, !noalias !325 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.qr = icmp eq i64 %.pr303, 1
  br i1 %i.qr, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i, label %bb.ec

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i:     ; preds = %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit"
  %i.qs = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !115, !noalias !325 ; 6 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i.i37, label %"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit", label %bb.dy

bb.dy:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 2 uses
  %i.qv = atomicrmw add ptr %i.qu, i64 -4294967295 acq_rel, align 8, !noalias !325
  %.mask.i.i.i.i.i38 = and i64 %i.qv, -4294967296
  %i.qw = icmp eq i64 %.mask.i.i.i.i.i38, 4294967296
  br i1 %i.qw, label %bb.dz, label %.noexc.i.i.i.i, !prof !69

bb.dz:                                            ; preds = %bb.dy
  %i.qx = load ptr, ptr %i.qt, align 8, !tbaa !36, !noalias !325
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !325
  invoke void %i.qz(ptr noundef nonnull align 8 dereferenceable(16) %i.qt)
          to label %.noexc.i.i.i.i unwind label %bb.eb, !noalias !325, !inline_history !4

.noexc.i.i.i.i:                                   ; preds = %bb.dz, %bb.dy
  %i.ra = atomicrmw add ptr %i.qu, i64 -1 acq_rel, align 8, !noalias !325
  %i.rb = icmp eq i64 %i.ra, 1
  br i1 %i.rb, label %bb.ea, label %"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit", !prof !69

bb.ea:                                            ; preds = %.noexc.i.i.i.i
  %i.rc = load ptr, ptr %i.qt, align 8, !tbaa !36, !noalias !325
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !noalias !325
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(16) %i.qt) #39, !noalias !325, !inline_history !300
  br label %"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit"

bb.eb:                                            ; preds = %bb.dz
  %i.rf = landingpad { ptr, i32 }
          catch ptr null
  %i.rg = extractvalue { ptr, i32 } %i.rf, 0
  call void @__clang_call_terminate(ptr %i.rg) #41, !noalias !325
  unreachable

bb.ec:                                            ; preds = %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit.thread", %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit"
  %i.rh = phi i64 [ %i.pb, %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit.thread" ], [ %.pr303, %"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_.exit" ] ; 2 uses
  %i.ri = trunc i64 %i.rh to i1
  br i1 %i.ri, label %"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit", label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rj = inttoptr i64 %i.rh to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.rj)
          to label %"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit" unwind label %bb.ee, !noalias !325

bb.ee:                                            ; preds = %bb.ed
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  %i.rl = extractvalue { ptr, i32 } %i.rk, 0
  call void @__clang_call_terminate(ptr %i.rl) #41, !noalias !325
  unreachable

"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit.thread": ; preds = %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39, !noalias !335
  store i8 1, ptr %i.fq, align 8, !tbaa !306, !noalias !326
  store i8 0, ptr %30, align 8, !tbaa !324, !alias.scope !325
  br label %bb.ep

_ZN9grpc_core4PollISt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEED2Ev.exit19: ; preds = %bb.dw, %bb.dx
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.qq, %bb.dx ], [ %i.qp, %bb.dw ]
  call void @_ZNSt11_Tuple_implILm0EJN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS3_24UnstartedCallDestinationEEEEEbEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #39, !noalias !325
  call void @_ZNSt11_Tuple_implILm0EJN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS3_24UnstartedCallDestinationEEEEEbEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ox) #39, !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #39, !noalias !325
  br label %.body

"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit": ; preds = %bb.ed, %bb.ec, %bb.ea, %.noexc.i.i.i.i, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  store i8 1, ptr %30, align 8, !tbaa !324, !alias.scope !325
  %i.rm = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.pb, ptr %i.rm, align 8, !tbaa !112
  %.pre = load i8, ptr %27, align 8, !tbaa !354, !range !28
  %i.rn = trunc nuw i8 %.pre to i1
  br i1 %i.rn, label %bb.ef, label %bb.ep

bb.ef:                                            ; preds = %"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit"
  %i.ro = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !112 ; 3 uses
  %i.rq = icmp eq i64 %i.rp, 1
  br i1 %i.rq, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i40, label %bb.ek

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i40:   ; preds = %bb.ef
  %i.rr = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !115 ; 6 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.rs, null
  br i1 %.not.i.i.i.i41, label %bb.ep, label %bb.eg

bb.eg:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i40
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 2 uses
  %i.ru = atomicrmw add ptr %i.rt, i64 -4294967295 acq_rel, align 8
  %.mask.i.i.i.i.i42 = and i64 %i.ru, -4294967296
  %i.rv = icmp eq i64 %.mask.i.i.i.i.i42, 4294967296
  br i1 %i.rv, label %bb.eh, label %.noexc.i.i.i.i43, !prof !69

bb.eh:                                            ; preds = %bb.eg
  %i.rw = load ptr, ptr %i.rs, align 8, !tbaa !36
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8
  invoke void %i.ry(ptr noundef nonnull align 8 dereferenceable(16) %i.rs)
          to label %.noexc.i.i.i.i43 unwind label %bb.ej, !inline_history !4

.noexc.i.i.i.i43:                                 ; preds = %bb.eh, %bb.eg
  %i.rz = atomicrmw add ptr %i.rt, i64 -1 acq_rel, align 8
  %i.sa = icmp eq i64 %i.rz, 1
  br i1 %i.sa, label %bb.ei, label %bb.ep, !prof !69

bb.ei:                                            ; preds = %.noexc.i.i.i.i43
  %i.sb = load ptr, ptr %i.rs, align 8, !tbaa !36
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(16) %i.rs) #39, !inline_history !300
  br label %bb.ep

bb.ej:                                            ; preds = %bb.eh
  %i.se = landingpad { ptr, i32 }
          catch ptr null
  %i.sf = extractvalue { ptr, i32 } %i.se, 0
  call void @__clang_call_terminate(ptr %i.sf) #41
  unreachable

bb.ek:                                            ; preds = %bb.ef
  %i.sg = trunc i64 %i.rp to i1
  br i1 %i.sg, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.sh = inttoptr i64 %i.rp to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.sh)
          to label %bb.ep unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.si = landingpad { ptr, i32 }
          catch ptr null
  %i.sj = extractvalue { ptr, i32 } %i.si, 0
  call void @__clang_call_terminate(ptr %i.sj) #41
  unreachable

bb.en:                                            ; preds = %bb.ar
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.dc, %bb.en, %_ZN9grpc_core4PollINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEED2Ev.exit9.i, %bb.dg, %.thread298, %_ZN9grpc_core4PollISt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEED2Ev.exit19
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body36, %_ZN9grpc_core4PollISt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEED2Ev.exit19 ], [ %i.sk, %bb.en ], [ %eh.lpad-body15.i, %_ZN9grpc_core4PollINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEED2Ev.exit9.i ], [ %i.oi, %bb.dg ], [ %i.oi, %.thread298 ], [ %i.oi, %bb.dc ]
  %i.sl = load i8, ptr %28, align 8, !tbaa !324, !range !28, !noalias !316, !noundef !29
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %bb.eo, label %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit2.i

bb.eo:                                            ; preds = %.body
  %i.sn = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.sn) #39
  br label %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit2.i

common.resume:                                    ; preds = %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit8, %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit2.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit2.i ], [ %eh.lpad-body50, %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit2.i: ; preds = %bb.eo, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #39, !noalias !316
  br label %common.resume

.thread304:                                       ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.so = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 5, ptr %i.so, align 8, !tbaa !112, !noalias !316
  %i.sp = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i8 1, ptr %30, align 8, !tbaa !324
  %i.sq = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 5, ptr %i.sq, align 8, !tbaa !112
  store i64 55, ptr %i.sp, align 8, !tbaa !112
  br label %bb.eq

bb.ep:                                            ; preds = %bb.el, %bb.ek, %bb.ei, %.noexc.i.i.i.i43, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i40, %"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit", %"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #39, !noalias !325
  %.pre210 = load i8, ptr %28, align 8, !tbaa !324, !range !28, !noalias !316
  %i.sr = trunc nuw i8 %.pre210 to i1
  br i1 %i.sr, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %.thread304, %bb.ep
  %i.ss = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !112 ; 2 uses
  %i.su = trunc i64 %i.st to i1
  br i1 %i.su, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.sv = inttoptr i64 %i.st to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.sv)
          to label %bb.et unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.sw = landingpad { ptr, i32 }
          catch ptr null
  %i.sx = extractvalue { ptr, i32 } %i.sw, 0
  call void @__clang_call_terminate(ptr %i.sx) #41
  unreachable

bb.et:                                            ; preds = %bb.ep, %bb.eq, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #39, !noalias !316
  %i.sy = load i8, ptr %30, align 8, !tbaa !324, !range !28, !noundef !29
  %i.sz = trunc nuw i8 %i.sy to i1                ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  br i1 %i.sz, label %bb.eu, label %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit

bb.eu:                                            ; preds = %bb.et
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val = load ptr, ptr %i.tb, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.tc = load i64, ptr %i.ta, align 8, !tbaa !112
  %i.td = icmp eq i64 %i.tc, 1
  br i1 %i.td, label %.critedge, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  invoke void @_ZN9grpc_core24ServerMetadataFromStatusERKN4absl12lts_202505126StatusE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ta)
          to label %.noexc48 unwind label %bb.ez

.noexc48:                                         ; preds = %bb.ev
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.tf = load ptr, ptr %i.te, align 8            ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 4 ; 2 uses
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !25
  %storemerge.i.i.i.i.i = or i16 %i.th, 2
  store i16 %storemerge.i.i.i.i.i, ptr %i.tg, align 2, !tbaa !25
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 635
  store i8 1, ptr %i.ti, align 1, !tbaa !371
  %i.tj = load i8, ptr %2, align 8, !tbaa !27     ; 2 uses
  store i8 %i.tj, ptr %3, align 8, !tbaa !27
  %i.tk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.tl = ptrtoint ptr %i.tf to i64
  store ptr null, ptr %i.te, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.tm = getelementptr inbounds nuw i8, ptr %.val, i64 184
  store i8 %i.tj, ptr %1, align 8, !tbaa !27
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.tl, ptr %i.tn, align 8, !tbaa !23
  store ptr null, ptr %i.tk, align 8, !tbaa !23
  invoke void @_ZN9grpc_core11CallFilters26PushServerTrailingMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEE(ptr noundef nonnull align 8 dereferenceable(144) %i.tm, ptr noundef nonnull align 8 %1)
          to label %bb.ew unwind label %.body.i

bb.ew:                                            ; preds = %.noexc48
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !23 ; 3 uses
  %.not.i.i.i46 = icmp ne ptr %i.to, null
  %i.tp = load i8, ptr %1, align 8, !range !28
  %i.tq = trunc nuw i8 %i.tp to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i46, i1 %i.tq, i1 false
  br i1 %or.cond.i.i.i, label %bb.ex, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit.i

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.to) #39
  call void @_ZdlPvm(ptr noundef nonnull %i.to, i64 noundef 664) #42
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit.i

.body.i:                                          ; preds = %.noexc48
  %i.tr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #39
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #39
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %.body49

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit.i: ; preds = %bb.ex, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.pre.i47 = load ptr, ptr %i.te, align 8, !tbaa !23 ; 3 uses
  %.pre1.i = load i8, ptr %2, align 8, !range !28
  %.not.i6.i = icmp ne ptr %.pre.i47, null
  %i.ts = trunc nuw i8 %.pre1.i to i1
  %or.cond.i7.i = select i1 %.not.i6.i, i1 %i.ts, i1 false
  br i1 %or.cond.i7.i, label %bb.ey, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit8.i

bb.ey:                                            ; preds = %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit.i
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.pre.i47) #39
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i47, i64 noundef 664) #42
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit8.i
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!153 = !{!152, !152, i64 0}
!154 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !37, i64 0}
!155 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !37, i64 0, !154, i64 8, !14, i64 16}
!156 = !{!155, !37, i64 0}
!157 = !{!154, !37, i64 0}
!158 = !{!"p1 _ZTSN9grpc_core19SubchannelInterfaceE", !18, i64 0}
!159 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_19SubchannelInterfaceEEE", !158, i64 0}
!160 = !{!159, !158, i64 0}
!161 = !{!158, !158, i64 0}
!162 = !{!"p1 _ZTSN9grpc_core19LoadBalancingPolicy30SubchannelCallTrackerInterfaceE", !18, i64 0}
!163 = !{!162, !162, i64 0}
!164 = !{!"p1 _ZTSSt9type_info", !18, i64 0}
!165 = !{!164, !164, i64 0}
!166 = !{!146, !97, i64 0}
!167 = !{!147, !37, i64 8}
!168 = !{!"_ZTS19grpc_slice_refcount", !43, i64 0, !18, i64 8}
!169 = !{!168, !18, i64 8}
!170 = !{i64 0, i64 8, !96, i64 8, i64 8, !98}
!171 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEE", !14, i64 0, !14, i64 48}
!172 = !{!171, !14, i64 48}
!173 = !{!"_ZTSSt14_Rb_tree_color", !14, i64 0}
!174 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!175 = !{!"_ZTSSt18_Rb_tree_node_base", !173, i64 0, !174, i64 8, !174, i64 16, !174, i64 24}
!176 = !{!"_ZTSSt15_Rb_tree_header", !175, i64 0, !37, i64 32}
!177 = !{!176, !173, i64 0}
!178 = !{!176, !174, i64 8}
!179 = !{!176, !174, i64 16}
!180 = !{!176, !174, i64 24}
!181 = !{!176, !37, i64 32}
!182 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !18, i64 0}
!183 = !{!182, !182, i64 0}
!184 = !{ptr @_ZN9grpc_core12experimental4JsonD2Ev, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!185 = !{!"p1 _ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEE", !18, i64 0}
!186 = !{!"_ZTSZNSt8__detail9__variant15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEC1EOSO_EUlOT_T0_E_", !185, i64 0}
!187 = !{!186, !185, i64 0}
!188 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!189 = !{!"p1 _ZTSN9grpc_core12experimental4JsonE", !18, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core12experimental4JsonESaIS2_EE17_Vector_impl_dataE", !189, i64 0, !189, i64 8, !189, i64 16}
!191 = !{!190, !189, i64 0}
!192 = !{!190, !189, i64 8}
!193 = !{!190, !189, i64 16}
!194 = !{!175, !174, i64 24}
!195 = !{!175, !174, i64 16}
!196 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIbLb1EEE", !26, i64 0}
!197 = !{!196, !26, i64 0}
!198 = !{!174, !174, i64 0}
!199 = !{!175, !174, i64 8}
!200 = !{!189, !189, i64 0}
!201 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_Alloc_nodeE", !182, i64 0}
!202 = !{!201, !182, i64 0}
!203 = !{!"p1 _ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEE", !18, i64 0}
!204 = !{!"_ZTSZNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEC1ERKSO_EUlOT_T0_E_", !203, i64 0}
!205 = !{!204, !203, i64 0}
!206 = !{!"p1 _ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEE", !18, i64 0}
!207 = !{!"_ZTSZNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEC1ERKSL_EUlOT_T0_E_", !206, i64 0}
!208 = !{!207, !206, i64 0}
!209 = distinct !{null, null}
!210 = !{!"p1 _ZTSN9grpc_core25ClientCallTracerInterfaceE", !18, i64 0}
!211 = !{!"_ZTSN9grpc_core16ClientCallTracerE", !34, i64 0, !210, i64 8}
!212 = !{!211, !210, i64 8}
!213 = !{!"_ZTSN9grpc_core5Arena16ManagedNewObjectE", !47, i64 8}
!214 = !{!213, !47, i64 8}
!215 = !{!"p1 _ZTSN9grpc_core19CallTracerInterfaceE", !18, i64 0}
!216 = !{!"_ZTSN9grpc_core10CallTracerE", !34, i64 0, !215, i64 8}
!217 = !{!216, !215, i64 8}
!218 = !{!"p1 _ZTSN9grpc_core25ClientCallTracerInterface17CallAttemptTracerE", !18, i64 0}
!219 = !{!"_ZTSN9grpc_core17CallAttemptTracerE", !216, i64 0, !218, i64 16}
!220 = !{!219, !218, i64 16}
!221 = !{!64, !63, i64 8}
!222 = !{!19, !19, i64 0}
!223 = !{!"_ZTSSt8functionIFN9grpc_core11ChannelArgsES1_EE", !70, i64 0, !18, i64 24}
!224 = !{!223, !18, i64 24}
!225 = distinct !{ptr @_ZN9grpc_core27LoadBalancedCallDestinationD2Ev, null, null, null, null}
!226 = !{!"branch_weights", i32 1, i32 1048575}
!227 = !{!"any p2 pointer", !18, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIPFvPvESaIS2_EE17_Vector_impl_dataE", !227, i64 0, !227, i64 8, !227, i64 16}
!229 = !{!228, !227, i64 8}
!230 = !{!228, !227, i64 0}
!231 = !{!228, !227, i64 16}
!232 = distinct !{null}
!233 = distinct !{ptr @"_ZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0D2Ev", null, null, null, null}
!234 = distinct !{!234, i1 true, !"_ZZN9grpc_core9CallSpine30SpawnGuardedUntilCallCompletesIZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEE3$_0EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_ENUlvE_clEv"}
!235 = distinct !{!235, !234, !"_ZZN9grpc_core9CallSpine30SpawnGuardedUntilCallCompletesIZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEE3$_0EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_ENUlvE_clEv: argument 0"}
!236 = distinct !{!236, i1 true, !"_ZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEv"}
!237 = distinct !{!237, !236, !"_ZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEv: argument 0"}
!238 = distinct !{!238, i1 true, !"_ZN9grpc_core12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_"}
!239 = distinct !{!239, !238, !"_ZN9grpc_core12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_: argument 0"}
!240 = distinct !{null, null, null, null, null, ptr @_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_ED2Ev, null, ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev, null, null, null}
!241 = distinct !{null, null, null, null, null, null, null, null}
!242 = distinct !{null, null, null, null, ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev, null, null, null}
!243 = distinct !{!243, i1 true, !"_ZN9grpc_core9CallSpine18UntilCallCompletesINS_3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS5_9StartCallES6_ENS7_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSB_"}
!244 = distinct !{!244, !243, !"_ZN9grpc_core9CallSpine18UntilCallCompletesINS_3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS5_9StartCallES6_ENS7_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSB_: argument 0"}
!245 = distinct !{!245, i1 true, !"_ZN9grpc_core4RaceIJNS_3MapIZNS_11CallFilters12WasCancelledEvEUlvE_ZNS_9CallSpine18UntilCallCompletesINS1_IZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS8_9StartCallES9_ENSA_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSE_EUlbE_EESQ_EEclEv"}
!246 = distinct !{!246, !245, !"_ZN9grpc_core4RaceIJNS_3MapIZNS_11CallFilters12WasCancelledEvEUlvE_ZNS_9CallSpine18UntilCallCompletesINS1_IZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS8_9StartCallES9_ENSA_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSE_EUlbE_EESQ_EEclEv: argument 0"}
!247 = distinct !{!247, i1 true, !"_ZN9grpc_core3MapIZNS_11CallFilters12WasCancelledEvEUlvE_ZNS_9CallSpine18UntilCallCompletesINS0_IZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS7_9StartCallES8_ENS9_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSD_EUlbE_EclEv"}
!248 = distinct !{!248, !247, !"_ZN9grpc_core3MapIZNS_11CallFilters12WasCancelledEvEUlvE_ZNS_9CallSpine18UntilCallCompletesINS0_IZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS7_9StartCallES8_ENS9_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSD_EUlbE_EclEv: argument 0"}
!249 = distinct !{!249, i1 true, !"_ZZN9grpc_core11CallFilters12WasCancelledEvENKUlvE_clEv"}
!250 = distinct !{!250, !249, !"_ZZN9grpc_core11CallFilters12WasCancelledEvENKUlvE_clEv: argument 0"}
!251 = distinct !{!251, i1 true, !"_ZN9grpc_core9CallState16PollWasCancelledEv"}
!252 = distinct !{!252, !251, !"_ZN9grpc_core9CallState16PollWasCancelledEv: argument 0"}
!253 = distinct !{null, null}
!254 = distinct !{!254, i1 true, !"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv"}
!255 = distinct !{!255, !254, !"_ZN9grpc_core3MapIZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNS3_9StartCallES4_ENS5_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EclEv: argument 0"}
!256 = distinct !{!256, i1 true, !"_ZZN9grpc_core12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_ENUlvE_clEv"}
!257 = distinct !{!257, !256, !"_ZZN9grpc_core12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_ENUlvE_clEv: argument 0"}
!258 = distinct !{!258, i1 true, !"_ZN9grpc_core4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEclEv"}
!259 = distinct !{!259, !258, !"_ZN9grpc_core4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEclEv: argument 0"}
!260 = distinct !{!260, i1 true, !"_ZZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEv"}
!261 = distinct !{!261, !260, !"_ZZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEv: argument 0"}
!262 = distinct !{!262, i1 true, !"_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE4NextES4_"}
!263 = distinct !{!263, !262, !"_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE4NextES4_: argument 0"}
!264 = distinct !{!264, i1 true, !"_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE8NextWhenIZNS5_4NextES4_EUlRKS4_E_EEDaOT_"}
!265 = distinct !{!265, !264, !"_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE8NextWhenIZNS5_4NextES4_EUlRKS4_E_EEDaOT_: argument 0"}
!266 = distinct !{!266, i1 true, !"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv"}
!267 = distinct !{!267, !266, !"_ZN9grpc_core3MapINS_10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS6_4NextES5_EUlRKS5_E_EEZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlS5_E_EclEv: argument 0"}
!268 = distinct !{!268, i1 true, !"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vEclEOS9_"}
!269 = distinct !{!269, !268, !"_ZN9grpc_core14promise_detail9WrappedFnIZZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_S9_vEclEOS9_: argument 0"}
!270 = distinct !{!270, i1 true, !"_ZZZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvENUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_clES7_"}
!271 = distinct !{!271, !270, !"_ZZZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvENUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_clES7_: argument 0"}
!272 = distinct !{null}
!273 = distinct !{null, null, null, null, null, null, null}
!274 = distinct !{!274, i1 true, !"_ZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerE"}
!275 = distinct !{!275, !274, !"_ZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerE: argument 0"}
!276 = distinct !{null}
!277 = distinct !{!277, i1 true, !"_ZN9grpc_core12_GLOBAL__N_116HandlePickResultISt7variantIJNS_8ContinueEN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEEEEET_PNS_19LoadBalancingPolicy10PickResultESt8functionIFSC_PNSE_8CompleteEEESG_IFSC_PNSE_5QueueEEESG_IFSC_PNSE_4FailEEESG_IFSC_PNSE_4DropEEE"}
!278 = distinct !{!278, !277, !"_ZN9grpc_core12_GLOBAL__N_116HandlePickResultISt7variantIJNS_8ContinueEN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEEEEET_PNS_19LoadBalancingPolicy10PickResultESt8functionIFSC_PNSE_8CompleteEEESG_IFSC_PNSE_5QueueEEESG_IFSC_PNSE_4FailEEESG_IFSC_PNSE_4DropEEE: argument 0"}
!279 = distinct !{!279, i1 true, !"_ZNKSt8functionIFSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEEPNS1_19LoadBalancingPolicy10PickResult8CompleteEEEclESE_"}
!280 = distinct !{!280, !279, !"_ZNKSt8functionIFSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEEPNS1_19LoadBalancingPolicy10PickResult8CompleteEEEclESE_: argument 0"}
!281 = distinct !{null}
!282 = distinct !{!282, i1 true, !"_ZNKSt8functionIFSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEEPNS1_19LoadBalancingPolicy10PickResult4FailEEEclESE_"}
!283 = distinct !{!283, !282, !"_ZNKSt8functionIFSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEEPNS1_19LoadBalancingPolicy10PickResult4FailEEEclESE_: argument 0"}
!284 = distinct !{!284, i1 true, !"_ZNKSt8functionIFSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEEPNS1_19LoadBalancingPolicy10PickResult4DropEEEclESE_"}
!285 = distinct !{!285, !284, !"_ZNKSt8functionIFSt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEEPNS1_19LoadBalancingPolicy10PickResult4DropEEEclESE_: argument 0"}
!286 = distinct !{null, ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev, null, null, null}
!287 = distinct !{null, null, null, null, null, null, null, null, null, null, ptr @_ZN9grpc_core13RefCountedPtrINS_24UnstartedCallDestinationEED2Ev, null, null, null}
!288 = distinct !{null, null, null, null, ptr @_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_ED2Ev, null, ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev, null, null, null}
!289 = distinct !{!289, i1 true, !"_ZZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEv"}
!290 = distinct !{!290, !289, !"_ZZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEv: argument 0"}
!291 = distinct !{!291, i1 true, !"_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE4NextES4_"}
!292 = distinct !{!292, !291, !"_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE4NextES4_: argument 0"}
!293 = distinct !{!293, i1 true, !"_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE8NextWhenIZNS5_4NextES4_EUlRKS4_E_EEDaOT_"}
!294 = distinct !{!294, !293, !"_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE8NextWhenIZNS5_4NextES4_EUlRKS4_E_EEDaOT_: argument 0"}
!295 = distinct !{!295, i1 true, !"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_"}
!296 = distinct !{!296, !295, !"_ZN9grpc_core14promise_detail9WrappedFnIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_SD_vEclEOSD_: argument 0"}
!297 = distinct !{!297, i1 true, !"_ZZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENKUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_clESB_"}
!298 = distinct !{!298, !297, !"_ZZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENKUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_clESB_: argument 0"}
!299 = distinct !{null}
!300 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJN4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrINS3_24UnstartedCallDestinationEEEEEbEED2Ev, null, null, ptr @_ZN9grpc_core13RefCountedPtrINS_24UnstartedCallDestinationEED2Ev, null, null, null}
!301 = !{!235}
!302 = !{!237}
!303 = !{!237, !235}
!304 = !{!"_ZTSN9grpc_core14promise_detail11PromiseLikeINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEvEE", !76, i64 0}
!305 = !{!"_ZTSZN9grpc_core12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_", !26, i64 0, !304, i64 8}
!306 = !{!305, !26, i64 0}
!307 = !{!239}
!308 = !{!"p1 _ZTSN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEE", !18, i64 0}
!309 = !{!"_ZTSZZZN9grpc_core27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvENUlvE_clEvEUlNS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE_", !58, i64 0, !308, i64 8}
!310 = !{!309, !308, i64 8}
!311 = !{!308, !308, i64 0}
!312 = !{!244}
!313 = !{!"p1 _ZTSN9grpc_core11CallFiltersE", !18, i64 0}
!314 = !{!313, !313, i64 0}
!315 = !{!244, !235}
!316 = !{!246}
!317 = !{!"_ZTSZN9grpc_core11CallFilters12WasCancelledEvEUlvE_", !313, i64 0}
!318 = !{!317, !313, i64 0}
!319 = !{!250, !248, !246}
!320 = !{!252, !250, !248, !246}
!321 = !{!"_ZTSN9grpc_core19IntraActivityWaiterE", !24, i64 0}
!322 = !{!321, !24, i64 0}
!323 = !{!"_ZTSN9grpc_core4PollIN4absl12lts_202505126StatusEEE", !26, i64 0, !14, i64 8}
!324 = !{!323, !26, i64 0}
!325 = !{!255}
!326 = !{!257}
!327 = !{!259, !257}
!328 = !{!261}
!329 = !{!261, !259, !257}
!330 = !{!263}
!331 = !{!259}
!332 = !{!265}
!333 = !{!265, !263, !261, !259, !257}
!334 = !{!265, !263}
!335 = !{!267, !257}
!336 = !{!269, !267, !257}
!337 = !{!271, !267, !257}
!338 = !{!72, !72, i64 0}
!339 = !{!275, !271, !267, !257}
!340 = !{!"_ZTSN9grpc_core19LoadBalancingPolicy17MetadataInterfaceE"}
!341 = !{!"_ZTSN9grpc_core10LbMetadataE", !340, i64 0, !22, i64 8}
!342 = !{!341, !22, i64 8}
!343 = !{!"p1 _ZTSN9grpc_core19LoadBalancingPolicy17MetadataInterfaceE", !18, i64 0}
!344 = !{!343, !343, i64 0}
!345 = !{!"p1 _ZTSN9grpc_core19LoadBalancingPolicy9CallStateE", !18, i64 0}
!346 = !{!345, !345, i64 0}
!347 = !{!278, !275, !271, !267, !257}
!348 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2001, i32 2000}
!349 = !{!280, !278, !275, !271, !267, !257}
!350 = !{!283, !278, !275, !271, !267, !257}
!351 = !{!285, !278, !275, !271, !267, !257}
!352 = !{!"branch_weights", i32 0, i32 -2147483648}
!353 = !{!"_ZTSN9grpc_core4PollISt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEEE", !26, i64 0, !14, i64 8}
!354 = !{!353, !26, i64 0}
!355 = !{!"branch_weights", i32 715470148, i32 1431655765, i32 357735}
!356 = !{!290}
!357 = !{!290, !257}
!358 = !{!292}
!359 = !{!294}
!360 = !{!294, !292, !290, !257}
!361 = !{!294, !292}
!362 = !{!"branch_weights", i32 2000, i32 2002}
!363 = !{!296, !255}
!364 = !{!298, !255}
!365 = !{!"p1 _ZTSN4absl12lts_2025051212AnyInvocableIFvvEEE", !18, i64 0}
!366 = !{!365, !365, i64 0}
!367 = !{!"_ZTSN4absl12lts_2025051222internal_any_invocable8CoreImplILb0EvJEEE", !14, i64 0, !18, i64 16, !18, i64 24}
!368 = !{!367, !18, i64 24}
!369 = !{!66, !19, i64 0}
!370 = !{!"_ZTSN9grpc_core15metadata_detail5ValueINS_20GrpcCallWasCancelledEvEE", !26, i64 0}
!371 = !{!370, !26, i64 0}
!372 = distinct !{!372, i1 true, !"_ZZN9grpc_core5Party15ParticipantImplIZNS_9CallSpine30SpawnGuardedUntilCallCompletesIZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEE3$_0EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlvE_ZNS2_12SpawnGuardedISD_EEvSA_SC_NS_13DebugLocationEEUlON4absl12lts_202505126StatusEE_E18ChannelzPropertiesEvENKUlvE_clEv"}
!373 = distinct !{!373, !372, !"_ZZN9grpc_core5Party15ParticipantImplIZNS_9CallSpine30SpawnGuardedUntilCallCompletesIZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEE3$_0EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlvE_ZNS2_12SpawnGuardedISD_EEvSA_SC_NS_13DebugLocationEEUlON4absl12lts_202505126StatusEE_E18ChannelzPropertiesEvENKUlvE_clEv: argument 0"}
!374 = distinct !{!374, i1 true, !"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_11CallFilters12WasCancelledEvEUlvE_ZNS_9CallSpine18UntilCallCompletesINS7_IZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNSE_9StartCallESF_ENSG_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSK_EUlbE_EESW_EEEvEEEEvE4WrapB5cxx11ES11_"}
!375 = distinct !{!375, !374, !"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_11CallFilters12WasCancelledEvEUlvE_ZNS_9CallSpine18UntilCallCompletesINS7_IZNS_12CheckDelayedINS_4LoopIZZNS_27LoadBalancedCallDestination9StartCallENS_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNSE_9StartCallESF_ENSG_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS_13RefCountedPtrINS_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSK_EUlbE_EESW_EEEvEEEEvE4WrapB5cxx11ES11_: argument 0"}
!376 = distinct !{!376, i1 true, !"_ZSt11make_sharedIN9grpc_core8channelz20property_list_detail20PromisePropertyValueEJPNS0_14promise_detail11PromiseLikeINS0_4RaceIJNS0_3MapIZNS0_11CallFilters12WasCancelledEvEUlvE_ZNS0_9CallSpine18UntilCallCompletesINS7_IZNS0_12CheckDelayedINS0_4LoopIZZNS0_27LoadBalancedCallDestination9StartCallENS0_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNSE_9StartCallESF_ENSG_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS0_13RefCountedPtrINS0_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSK_EUlbE_EESW_EEEvEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayISJ_EE5valueESJ_E4typeEEDpOT0_"}
!377 = distinct !{!377, !376, !"_ZSt11make_sharedIN9grpc_core8channelz20property_list_detail20PromisePropertyValueEJPNS0_14promise_detail11PromiseLikeINS0_4RaceIJNS0_3MapIZNS0_11CallFilters12WasCancelledEvEUlvE_ZNS0_9CallSpine18UntilCallCompletesINS7_IZNS0_12CheckDelayedINS0_4LoopIZZNS0_27LoadBalancedCallDestination9StartCallENS0_20UnstartedCallHandlerEEN3$_0clEvEUlvE_Lb0EEEEEDaOT_EUlvE_ZZNSE_9StartCallESF_ENSG_clEvEUlSt5tupleIJN4absl12lts_202505128StatusOrINS0_13RefCountedPtrINS0_24UnstartedCallDestinationEEEEEbEEE_EEEEDaSK_EUlbE_EESW_EEEvEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayISJ_EE5valueESJ_E4typeEEDpOT0_: argument 0"}
!378 = !{!373}
!379 = !{!375}
!380 = !{!375, !373}
!381 = !{!377, !375, !373}
!382 = !{!"p1 _ZTS18upb_MiniTableField", !18, i64 0}
!383 = !{!"_ZTS13upb_MiniTable", !382, i64 0, !24, i64 8, !24, i64 10, !14, i64 12, !14, i64 13, !14, i64 14, !14, i64 15}
!384 = !{!383, !24, i64 8}
!385 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!386 = !{i64 11518404}
!387 = !{!124, !124, i64 0}
!388 = !{!"p1 _ZTSN9grpc_core8channelz18OtherPropertyValueE", !18, i64 0}
!389 = !{!"_ZTSSt12__shared_ptrIN9grpc_core8channelz18OtherPropertyValueELN9__gnu_cxx12_Lock_policyE2EE", !388, i64 0, !136, i64 8}
!390 = !{!389, !388, i64 0}
!391 = distinct !{null, ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev, null, null, null}
!392 = distinct !{ptr @_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_ED2Ev, null, ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev, null, null, null}
!393 = distinct !{null, null, null}
!394 = distinct !{!394, i1 true, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!395 = distinct !{!395, !394, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!396 = distinct !{!396, !149}
!397 = !{!395}
!398 = distinct !{null, null, null}
!399 = distinct !{null, null, null, null, ptr @_ZN9grpc_core10ObservableINS_13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEEE12ObserverWhenIZNS5_4NextES4_EUlRKS4_E_ED2Ev, null, ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev, null, null, null}
!400 = distinct !{null, null, null, null, null, null, null}
!401 = distinct !{null, null, null, ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev, null, null, null}
!402 = distinct !{null, null, ptr @_ZN9grpc_core13RefCountedPtrINS_24UnstartedCallDestinationEED2Ev, null, null, null}
!403 = !{i64 0, i64 8, !151, i64 8, i64 2, !25}
!404 = distinct !{!404, i1 true, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE6insertISC_Li0EEESt4pairINSJ_8iteratorEbERKT_"}
!405 = distinct !{!405, !404, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE6insertISC_Li0EEESt4pairINSJ_8iteratorEbERKT_: argument 0"}
!406 = distinct !{!406, i1 true, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE7emplaceIJRKSC_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSJ_8iteratorEbEDpOSO_"}
!407 = distinct !{!407, !406, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE7emplaceIJRKSC_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSJ_8iteratorEbEDpOSO_: argument 0"}
!408 = distinct !{!408, i1 true, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEEvE5applyINS1_12raw_hash_setISD_NS1_6HashEqISC_vE4HashENSI_2EqESaISC_EE19EmplaceDecomposableEJRKSC_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_"}
!409 = distinct !{!409, !408, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEEvE5applyINS1_12raw_hash_setISD_NS1_6HashEqISC_vE4HashENSI_2EqESaISC_EE19EmplaceDecomposableEJRKSC_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_: argument 0"}
!410 = distinct !{!410, i1 true, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIPN9grpc_core10ObservableINS3_13RefCountedPtrINS3_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEE5applyINS1_12raw_hash_setISC_NS1_6HashEqISB_vE4HashENSG_2EqESaISB_EE19EmplaceDecomposableEJRKSB_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_"}
!411 = distinct !{!411, !410, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIPN9grpc_core10ObservableINS3_13RefCountedPtrINS3_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEE5applyINS1_12raw_hash_setISC_NS1_6HashEqISB_vE4HashENSG_2EqESaISB_EE19EmplaceDecomposableEJRKSB_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_: argument 0"}
!412 = distinct !{!412, i1 true, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS5_13RefCountedPtrINS5_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISD_vE4HashENSG_2EqESaISD_EE19EmplaceDecomposableERKSD_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_"}
!413 = distinct !{!413, !412, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS5_13RefCountedPtrINS5_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISD_vE4HashENSG_2EqESaISD_EE19EmplaceDecomposableERKSD_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_: argument 0"}
!414 = distinct !{!414, i1 true, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE19EmplaceDecomposableclISC_JRKSC_EEESt4pairINSJ_8iteratorEbERKT_DpOT0_"}
!415 = distinct !{!415, !414, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE19EmplaceDecomposableclISC_JRKSC_EEESt4pairINSJ_8iteratorEbERKT_DpOT0_: argument 0"}
!416 = distinct !{!416, i1 true, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE22find_or_prepare_insertISC_EESt4pairINSJ_8iteratorEbERKT_"}
!417 = distinct !{!417, !416, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE22find_or_prepare_insertISC_EESt4pairINSJ_8iteratorEbERKT_: argument 0"}
!418 = distinct !{!418, i1 true, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE26find_or_prepare_insert_sooISC_EESt4pairINSJ_8iteratorEbERKT_"}
!419 = distinct !{!419, !418, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE26find_or_prepare_insert_sooISC_EESt4pairINSJ_8iteratorEbERKT_: argument 0"}
!420 = distinct !{!420, i1 true, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE30find_or_prepare_insert_non_sooISC_EESt4pairINSJ_8iteratorEbERKT_"}
!421 = distinct !{!421, !420, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN9grpc_core10ObservableINS4_13RefCountedPtrINS4_19LoadBalancingPolicy16SubchannelPickerEEEE8ObserverEEENS1_6HashEqISC_vE4HashENSF_2EqESaISC_EE30find_or_prepare_insert_non_sooISC_EESt4pairINSJ_8iteratorEbERKT_: argument 0"}
!422 = distinct !{!422, i1 true, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!423 = distinct !{!423, !422, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!424 = !{!417, !415, !413, !411, !409, !407, !405}
!425 = !{!419, !417, !415, !413, !411, !409, !407, !405}
!426 = !{!421}
!427 = !{!423, !421}
!428 = distinct !{!428, !149}
!429 = !{!"_ZTSN4absl12lts_2025051218container_internal6ctrl_tE", !14, i64 0}
!430 = !{!429, !429, i64 0}
!431 = distinct !{null}
!432 = distinct !{!432, !149, !441}
!433 = !{!"p1 _ZTSN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE5ChunkE", !18, i64 0}
!434 = !{!"_ZTSN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EEE", !30, i64 0, !433, i64 8, !433, i64 16}
!435 = !{!434, !433, i64 8}
!436 = !{!"_ZTSN9grpc_core13ChunkedVectorIPNS_21ServiceConfigCallData22CallAttributeInterfaceELm4EE5ChunkE", !433, i64 0, !37, i64 8, !14, i64 16}
!437 = !{!436, !37, i64 8}
!438 = !{!"p1 _ZTSN9grpc_core21ServiceConfigCallData22CallAttributeInterfaceE", !18, i64 0}
!439 = !{!438, !438, i64 0}
!440 = !{!436, !433, i64 0}
!441 = !{!"llvm.loop.peeled.count", i32 1}
!442 = distinct !{!442, i1 true, !"_ZSt10__invoke_rISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_0JPNSC_10PickResult8CompleteEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_"}
!443 = distinct !{!443, !442, !"_ZSt10__invoke_rISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_0JPNSC_10PickResult8CompleteEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_: argument 0"}
!444 = distinct !{!444, i1 true, !"_ZSt13__invoke_implISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_0JPNSC_10PickResult8CompleteEEET_St14__invoke_otherOT0_DpOT1_"}
!445 = distinct !{!445, !444, !"_ZSt13__invoke_implISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_0JPNSC_10PickResult8CompleteEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!446 = distinct !{!446, i1 true, !"_ZZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerEENK3$_0clEPNS1_10PickResult8CompleteE"}
!447 = distinct !{!447, !446, !"_ZZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerEENK3$_0clEPNS1_10PickResult8CompleteE: argument 0"}
!448 = distinct !{null, null, null}
!449 = distinct !{!449, i1 true, !"_ZN17grpc_event_engine12experimental12slice_detail9BaseSlice10TakeCSliceEv"}
!450 = distinct !{!450, !449, !"_ZN17grpc_event_engine12experimental12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!451 = distinct !{null, null, null, ptr @_ZN9grpc_core13RefCountedPtrINS_24UnstartedCallDestinationEED2Ev, null, null, null}
!452 = !{!443}
!453 = !{!445}
!454 = !{!445, !443}
!455 = !{!447}
!456 = !{!447, !445, !443}
!457 = !{!"_ZTSZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerEE3$_0", !22, i64 0}
!458 = !{!457, !22, i64 0}
!459 = !{!450, !447, !445, !443}
!460 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !18, i64 0}
!461 = !{!460, !460, i64 0}
!462 = distinct !{null, null, null}
!463 = distinct !{!463, i1 true, !"_ZSt10__invoke_rISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_1JPNSC_10PickResult5QueueEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_"}
!464 = distinct !{!464, !463, !"_ZSt10__invoke_rISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_1JPNSC_10PickResult5QueueEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_: argument 0"}
!465 = !{!464}
!466 = distinct !{!466, i1 true, !"_ZSt10__invoke_rISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_2JPNSC_10PickResult4FailEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_"}
!467 = distinct !{!467, !466, !"_ZSt10__invoke_rISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_2JPNSC_10PickResult4FailEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_: argument 0"}
!468 = distinct !{!468, i1 true, !"_ZSt13__invoke_implISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_2JPNSC_10PickResult4FailEEET_St14__invoke_otherOT0_DpOT1_"}
!469 = distinct !{!469, !468, !"_ZSt13__invoke_implISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_2JPNSC_10PickResult4FailEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!470 = distinct !{!470, i1 true, !"_ZZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerEENK3$_2clEPNS1_10PickResult4FailE"}
!471 = distinct !{!471, !470, !"_ZZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerEENK3$_2clEPNS1_10PickResult4FailE: argument 0"}
!472 = !{!467}
!473 = !{!469}
!474 = !{!469, !467}
!475 = !{!471}
!476 = !{!471, !469, !467}
!477 = !{!"_ZTSZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerEE3$_2", !99, i64 0}
!478 = !{!477, !99, i64 0}
!479 = !{!"_ZTSN9grpc_core12WaitForReady9ValueTypeE", !26, i64 0, !26, i64 1}
!480 = !{!479, !26, i64 0}
!481 = distinct !{!481, i1 true, !"_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE"}
!482 = distinct !{!482, !481, !"_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE: argument 0"}
!483 = !{!482}
!484 = distinct !{!484, i1 true, !"_ZSt10__invoke_rISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_3JPNSC_10PickResult4DropEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_"}
!485 = distinct !{!485, !484, !"_ZSt10__invoke_rISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_3JPNSC_10PickResult4DropEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_: argument 0"}
!486 = distinct !{!486, i1 true, !"_ZSt13__invoke_implISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_3JPNSC_10PickResult4DropEEET_St14__invoke_otherOT0_DpOT1_"}
!487 = distinct !{!487, !486, !"_ZSt13__invoke_implISt7variantIJN9grpc_core8ContinueEN4absl12lts_202505128StatusOrINS1_13RefCountedPtrINS1_24UnstartedCallDestinationEEEEEEERZNS1_12_GLOBAL__N_114PickSubchannelERNS1_19LoadBalancingPolicy16SubchannelPickerERNS1_20UnstartedCallHandlerEE3$_3JPNSC_10PickResult4DropEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!488 = distinct !{!488, i1 true, !"_ZZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerEENK3$_3clEPNS1_10PickResult4DropE"}
!489 = distinct !{!489, !488, !"_ZZN9grpc_core12_GLOBAL__N_114PickSubchannelERNS_19LoadBalancingPolicy16SubchannelPickerERNS_20UnstartedCallHandlerEENK3$_3clEPNS1_10PickResult4DropE: argument 0"}
!490 = !{!485}
!491 = !{!487}
!492 = !{!487, !485}
!493 = !{!489}
!494 = !{!489, !487, !485}
!495 = distinct !{null, null, null, null, null}
!496 = distinct !{null}
!497 = distinct !{null, null, null, null, null, null, null}
!498 = distinct !{!498, !149}
!499 = distinct !{!499, !149}
!500 = !{!"p1 _ZTSSt4pairIN9grpc_core5SliceES1_E", !18, i64 0}
!501 = !{!"_ZTSNSt12_Vector_baseISt4pairIN9grpc_core5SliceES2_ESaIS3_EE17_Vector_impl_dataE", !500, i64 0, !500, i64 8, !500, i64 16}
!502 = !{!501, !500, i64 0}
!503 = !{!501, !500, i64 8}
!504 = !{!501, !500, i64 16}
!505 = distinct !{!505, !149}
!506 = distinct !{!506, !149}
!507 = distinct !{!507, i1 true, !"_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_"}
!508 = distinct !{!508, !507, !"_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_: argument 0"}
!509 = !{!508}
!510 = distinct !{null, null, null, null, null, null, null, null}
!511 = distinct !{null}
!512 = !{!"_ZTSSt9type_info", !97, i64 8}
!513 = !{!512, !97, i64 8}
!514 = distinct !{!514, i1 true, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!515 = distinct !{!515, !514, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!516 = distinct !{!516, i1 true, !"_ZN9grpc_core12experimental4Json10FromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!517 = distinct !{!517, !516, !"_ZN9grpc_core12experimental4Json10FromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!518 = distinct !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!519 = !{!515}
!520 = !{!517}
!521 = !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev, ptr @_ZN9grpc_core12experimental4JsonD2Ev, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!522 = !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev}
!523 = !{!"_ZTS18upb_MiniTableField", !15, i64 0, !24, i64 4, !24, i64 6, !24, i64 8, !14, i64 10, !14, i64 11}
!524 = !{!523, !14, i64 11}
!525 = !{!523, !24, i64 4}
!526 = !{!523, !14, i64 10}
!527 = !{!"branch_weights", !"expected", i32 1609807, i32 2145873841}
!528 = !{!"_ZTS9upb_Array", !37, i64 0, !37, i64 8, !37, i64 16}
!529 = !{!528, !37, i64 0}
!530 = !{!528, !37, i64 8}
!531 = !{!528, !37, i64 16}
!532 = distinct !{null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!533 = !{ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!534 = distinct !{null, null, null, null, null, null, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev}
!535 = distinct !{null, null, null, null, null, null, null, ptr @_ZSt8_DestroyIPN9grpc_core12experimental4JsonEEvT_S4_, null, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!536 = distinct !{null, null, null, null, null, null, null, ptr @_ZSt8_DestroyIPN9grpc_core12experimental4JsonEEvT_S4_, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!537 = distinct !{null, null, null, null, null, null}
!538 = distinct !{ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, null, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!539 = distinct !{ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, null, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!540 = distinct !{!540, !149}
!541 = distinct !{null, null, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!542 = distinct !{null, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!543 = distinct !{null}
!544 = distinct !{null, null}
!545 = distinct !{!545, !149}
!546 = distinct !{null, null, null, null, null}
!547 = distinct !{null, null, null, null}
!548 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!549 = distinct !{!549, !149}
!550 = distinct !{!550, !149}
!551 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null}
!552 = distinct !{null, null}
!553 = distinct !{null, null, null}
!554 = distinct !{!554, !149}
!555 = !{!175, !173, i64 0}
end_hunk_1
