Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/legacy_api?download=true
inline.NumInlined: 1940
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@grpc_channelz_get_server:bb.a
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, %bb.e
  store ptr %3, ptr %i.e, align 8, !tbaa !68
  %i.p = invoke noundef ptr @_ZN9grpc_core8channelz16ChannelzRegistry7DefaultEv()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !141
  invoke void @_ZN9grpc_core8channelz16ChannelzRegistry11InternalGetEl(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::WeakRefCountedPtr.103") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 noundef %0)
          to label %.noexc40 unwind label %bb.m

.noexc40:                                         ; preds = %.noexc
  %i.q = load ptr, ptr %2, align 8, !tbaa !146, !noalias !141 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.i

.thread:                                          ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !141
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz10ServerNodeEED2Ev.exit62

bb.i:                                             ; preds = %.noexc40
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !149, !noalias !141
  %.not.i.i = icmp eq i32 %i.t, 3
  br i1 %.not.i.i, label %.thread.i.i, label %bb.j

.thread.i.i:                                      ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !179 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.i, %bb.i
  %storemerge.i.i = phi ptr [ %i.q, %.thread.i.i ], [ null, %bb.i ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 1 acq_rel, align 8, !noalias !141
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %bb.l, !prof !49

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !22, !noalias !141
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !141
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(232) %i.q) #28, !noalias !141, !inline_history !182
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !141
  %i.ac = icmp eq ptr %storemerge.i.i, null
  br i1 %i.ac, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz10ServerNodeEED2Ev.exit62, label %bb.n

bb.m:                                             ; preds = %.noexc, %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz10ServerNodeEED2Ev.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz6v2tov112_GLOBAL__N_121RegistryEntityFetcherE, i64 16), ptr %4, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN9grpc_core8channelz8BaseNode23SerializeEntityToStringB5cxx11EN4absl12lts_202505128DurationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(232) %storemerge.i.i, i64 0, i32 0)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN9grpc_core8channelz6v2tov113ConvertServerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_13EntityFetcherEb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.60") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ae = load i64, ptr %6, align 8, !tbaa !8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 161) #32
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 26, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit unwind label %bb.w

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit: ; preds = %bb.r
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.w

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.s
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.av

bb.t:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59

bb.u:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.v:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.r, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.w ], [ %i.aj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.az

bb.y:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19
  invoke void @_ZN9grpc_core9JsonParseESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %8, i64 %i.ao, ptr %i.am)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.ap = load i64, ptr %8, align 8, !tbaa !8
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.1, i32 noundef 166) #32
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 39, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit unwind label %bb.af

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit: ; preds = %bb.ab
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46 unwind label %bb.af

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46: ; preds = %bb.ac
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ap

bb.ad:                                            ; preds = %bb.y
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ae:                                            ; preds = %bb.aa
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac, %bb.ab, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn27 = phi { ptr, i32 } [ %i.au, %bb.af ], [ %i.at, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.at

bb.ah:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA7_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, ptr noundef nonnull align 8 dereferenceable(56) %i.av)
          to label %.lr.ph.i.i unwind label %bb.al

.lr.ph.i.i:                                       ; preds = %bb.ah
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ba, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %11, ptr %1, align 8, !tbaa !36
  %i.bb = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i unwind label %.body.a ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i8 0, ptr %i.bc, align 8, !tbaa !20, !alias.scope !183
  %i.bd = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #28 ; 0 uses
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.be)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader unwind label %bb.ai, !inline_history !48

.body.a:                                          ; preds = %.lr.ph.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #28
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %12) #28
  br label %.loopexit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %.noexc.i
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #28, !inline_history !98
  %16 = load ptr, ptr %12, align 8, !tbaa !16     ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ai:                                            ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #31, !inline_history !48
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.bh = load i64, ptr %17, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %i.bi) #30, !inline_history !98
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN9grpc_core8JsonDumpB5cxx11ERKNS_12experimental4JsonEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 0)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  %i.bj = load ptr, ptr %13, align 8, !tbaa !16
  %i.bk = invoke ptr @gpr_strdup(ptr noundef %i.bj)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bl = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body.a, %bb.al
  %.pn29 = phi { ptr, i32 } [ %i.bq, %bb.al ], [ %14, %.body.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.an:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.an
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !18
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.am
  %.pn31 = phi { ptr, i32 } [ %i.br, %bb.am ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.bs, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #28
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %.loopexit
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn29, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.at

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46
  %.0 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46 ]
  %i.by = load i64, ptr %8, align 8, !tbaa !8     ; 3 uses
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.aq

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.ap
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ca) #28
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  %i.cb = trunc i64 %i.by to i1
  br i1 %i.cb, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cc = inttoptr i64 %i.by to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cc)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.av

bb.at:                                            ; preds = %bb.ao, %bb.ag
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.ao ], [ %.pn27, %bb.ag ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ad
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.at ], [ %i.as, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.az

bb.av:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.1 = phi ptr [ %.0, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit ], [ null, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ] ; 2 uses
  %i.cf = load i64, ptr %6, align 8, !tbaa !8     ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i52, label %bb.aw

_ZN4absl12lts_202505126StatusD2Ev.exit.i52:       ; preds = %bb.av
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i52
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !18
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.aw:                                            ; preds = %bb.av
  %i.cn = trunc i64 %i.cf to i1
  br i1 %i.cn, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.co = inttoptr i64 %i.cf to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.co)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cr = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !18
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56

bb.az:                                            ; preds = %bb.au, %bb.x
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %bb.au ], [ %.pn, %bb.x ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #28
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.u
  %.pn31.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn, %bb.az ], [ %i.ai, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cw = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.ba
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59: ; preds = %bb.ba, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %.pn31.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.t ], [ %.pn31.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn31.pn.pn.pn.pn.pn, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.dc = atomicrmw sub ptr %i.db, i64 1 acq_rel, align 8
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.bb, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz10ServerNodeEED2Ev.exit, !prof !49

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59
  %i.de = load ptr, ptr %storemerge.i.i, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(232) %storemerge.i.i) #28, !inline_history !186
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz10ServerNodeEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.di = atomicrmw sub ptr %i.dh, i64 1 acq_rel, align 8
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.bc, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz10ServerNodeEED2Ev.exit62, !prof !49

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56
  %i.dk = load ptr, ptr %storemerge.i.i, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(232) %storemerge.i.i) #28, !inline_history !186
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz10ServerNodeEED2Ev.exit62

_ZN9grpc_core17WeakRefCountedPtrINS_8channelz10ServerNodeEED2Ev.exit62: ; preds = %.thread, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56, %bb.bc
  %.290 = phi ptr [ %.1, %bb.bc ], [ null, %.thread ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56 ], [ null, %bb.l ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %3, align 8, !tbaa !22
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !54
  %i.do = or i64 %i.dn, 1
  store i64 %i.do, ptr %i.b, align 8, !tbaa !54
  %i.dp = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.bd unwind label %bb.bk, !inline_history !110 ; 0 uses

bb.bd:                                            ; preds = %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz10ServerNodeEED2Ev.exit62
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !69
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.bf unwind label %bb.bk, !inline_history !110

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store ptr %i.dq, ptr %i.e, align 8, !tbaa !68
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ds = and i64 %i.dr, 4
  %.not.i64 = icmp eq i64 %i.ds, 0
  br i1 %.not.i64, label %bb.bg, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.dt = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !70, !noundef !71
  %i.du = trunc nuw i8 %i.dt to i1
end_hunk_0
begin_hunk_1_@grpc_channelz_get_channel:bb.a
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, %bb.e
  store ptr %3, ptr %i.e, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !239
  %i.p = invoke noundef ptr @_ZN9grpc_core8channelz16ChannelzRegistry7DefaultEv()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  invoke void @_ZN9grpc_core8channelz16ChannelzRegistry11InternalGetEl(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::WeakRefCountedPtr.103") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 noundef %0)
          to label %.noexc40 unwind label %bb.m

.noexc40:                                         ; preds = %.noexc
  %i.q = load ptr, ptr %2, align 8, !tbaa !146, !noalias !239 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.i

.thread:                                          ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !239
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit61

bb.i:                                             ; preds = %.noexc40
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !149, !noalias !239
  %switch = icmp ult i32 %i.t, 2
  br i1 %switch, label %.sink.split.i, label %bb.j

.sink.split.i:                                    ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !239 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.sink.split.i
  %.sink.i = phi ptr [ null, %bb.i ], [ %i.q, %.sink.split.i ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 1 acq_rel, align 8, !noalias !239
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %bb.l, !prof !49

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !22, !noalias !239
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !239
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(232) %i.q) #28, !noalias !239, !inline_history !242
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !239
  %i.ac = icmp eq ptr %.sink.i, null
  br i1 %i.ac, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit61, label %bb.n

bb.m:                                             ; preds = %.noexc, %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz6v2tov112_GLOBAL__N_121RegistryEntityFetcherE, i64 16), ptr %4, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN9grpc_core8channelz8BaseNode23SerializeEntityToStringB5cxx11EN4absl12lts_202505128DurationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(232) %.sink.i, i64 0, i32 0)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN9grpc_core8channelz6v2tov114ConvertChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_13EntityFetcherEb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.60") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ae = load i64, ptr %6, align 8, !tbaa !8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 214) #32
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 27, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit unwind label %bb.w

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit: ; preds = %bb.r
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.w

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.s
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.av

bb.t:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58

bb.u:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.v:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.r, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.w ], [ %i.aj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.az

bb.y:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19
  invoke void @_ZN9grpc_core9JsonParseESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %8, i64 %i.ao, ptr %i.am)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.ap = load i64, ptr %8, align 8, !tbaa !8
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.1, i32 noundef 219) #32
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 40, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit unwind label %bb.af

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit: ; preds = %bb.ab
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46 unwind label %bb.af

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46: ; preds = %bb.ac
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ap

bb.ad:                                            ; preds = %bb.y
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ae:                                            ; preds = %bb.aa
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac, %bb.ab, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn27 = phi { ptr, i32 } [ %i.au, %bb.af ], [ %i.at, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.at

bb.ah:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA8_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef nonnull align 1 dereferenceable(8) @.str.4, ptr noundef nonnull align 8 dereferenceable(56) %i.av)
          to label %.lr.ph.i.i unwind label %bb.al

.lr.ph.i.i:                                       ; preds = %bb.ah
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ba, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %11, ptr %1, align 8, !tbaa !36
  %i.bb = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i unwind label %.body.a ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i8 0, ptr %i.bc, align 8, !tbaa !20, !alias.scope !243
  %i.bd = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #28 ; 0 uses
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.be)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader unwind label %bb.ai, !inline_history !48

.body.a:                                          ; preds = %.lr.ph.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #28
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %12) #28
  br label %.loopexit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %.noexc.i
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #28, !inline_history !98
  %16 = load ptr, ptr %12, align 8, !tbaa !16     ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ai:                                            ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #31, !inline_history !48
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.bh = load i64, ptr %17, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %i.bi) #30, !inline_history !98
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN9grpc_core8JsonDumpB5cxx11ERKNS_12experimental4JsonEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 0)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  %i.bj = load ptr, ptr %13, align 8, !tbaa !16
  %i.bk = invoke ptr @gpr_strdup(ptr noundef %i.bj)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bl = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body.a, %bb.al
  %.pn29 = phi { ptr, i32 } [ %i.bq, %bb.al ], [ %14, %.body.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.an:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.an
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !18
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.am
  %.pn31 = phi { ptr, i32 } [ %i.br, %bb.am ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.bs, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #28
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %.loopexit
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn29, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.at

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46
  %.0 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46 ]
  %i.by = load i64, ptr %8, align 8, !tbaa !8     ; 3 uses
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.aq

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.ap
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ca) #28
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  %i.cb = trunc i64 %i.by to i1
  br i1 %i.cb, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cc = inttoptr i64 %i.by to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cc)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.av

bb.at:                                            ; preds = %bb.ao, %bb.ag
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.ao ], [ %.pn27, %bb.ag ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ad
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.at ], [ %i.as, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.az

bb.av:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.1 = phi ptr [ %.0, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit ], [ null, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ] ; 2 uses
  %i.cf = load i64, ptr %6, align 8, !tbaa !8     ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i51, label %bb.aw

_ZN4absl12lts_202505126StatusD2Ev.exit.i51:       ; preds = %bb.av
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i51
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !18
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.aw:                                            ; preds = %bb.av
  %i.cn = trunc i64 %i.cf to i1
  br i1 %i.cn, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.co = inttoptr i64 %i.cf to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.co)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cr = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !18
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55

bb.az:                                            ; preds = %bb.au, %bb.x
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %bb.au ], [ %.pn, %bb.x ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #28
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.u
  %.pn31.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn, %bb.az ], [ %i.ai, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cw = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ba
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58: ; preds = %bb.ba, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  %.pn31.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.t ], [ %.pn31.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn31.pn.pn.pn.pn.pn, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.db = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.dc = atomicrmw sub ptr %i.db, i64 1 acq_rel, align 8
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.bb, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit, !prof !49

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58
  %i.de = load ptr, ptr %.sink.i, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(232) %.sink.i) #28, !inline_history !246
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.di = atomicrmw sub ptr %i.dh, i64 1 acq_rel, align 8
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.bc, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit61, !prof !49

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55
  %i.dk = load ptr, ptr %.sink.i, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(232) %.sink.i) #28, !inline_history !246
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit61

_ZN9grpc_core17WeakRefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit61: ; preds = %.thread, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, %bb.bc
  %.289 = phi ptr [ %.1, %bb.bc ], [ null, %.thread ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55 ], [ null, %bb.l ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %3, align 8, !tbaa !22
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !54
  %i.do = or i64 %i.dn, 1
  store i64 %i.do, ptr %i.b, align 8, !tbaa !54
  %i.dp = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.bd unwind label %bb.bk, !inline_history !110 ; 0 uses

bb.bd:                                            ; preds = %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit61
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !69
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.bf unwind label %bb.bk, !inline_history !110

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store ptr %i.dq, ptr %i.e, align 8, !tbaa !68
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ds = and i64 %i.dr, 4
  %.not.i63 = icmp eq i64 %i.ds, 0
  br i1 %.not.i63, label %bb.bg, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.dt = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !70, !noundef !71
  %i.du = trunc nuw i8 %i.dt to i1
end_hunk_1
begin_hunk_2_@grpc_channelz_get_subchannel:bb.a
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, %bb.e
  store ptr %3, ptr %i.e, align 8, !tbaa !68
  %i.p = invoke noundef ptr @_ZN9grpc_core8channelz16ChannelzRegistry7DefaultEv()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !247
  invoke void @_ZN9grpc_core8channelz16ChannelzRegistry11InternalGetEl(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::WeakRefCountedPtr.103") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 noundef %0)
          to label %.noexc40 unwind label %bb.m

.noexc40:                                         ; preds = %.noexc
  %i.q = load ptr, ptr %2, align 8, !tbaa !146, !noalias !247 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.i

.thread:                                          ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !247
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz14SubchannelNodeEED2Ev.exit62

bb.i:                                             ; preds = %.noexc40
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !149, !noalias !247
  %.not.i.i = icmp eq i32 %i.t, 2
  br i1 %.not.i.i, label %.thread.i.i, label %bb.j

.thread.i.i:                                      ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !252 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.i, %bb.i
  %storemerge.i.i = phi ptr [ %i.q, %.thread.i.i ], [ null, %bb.i ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 1 acq_rel, align 8, !noalias !247
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %bb.l, !prof !49

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !22, !noalias !247
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !247
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(232) %i.q) #28, !noalias !247, !inline_history !255
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !247
  %i.ac = icmp eq ptr %storemerge.i.i, null
  br i1 %i.ac, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz14SubchannelNodeEED2Ev.exit62, label %bb.n

bb.m:                                             ; preds = %.noexc, %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz14SubchannelNodeEED2Ev.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz6v2tov112_GLOBAL__N_121RegistryEntityFetcherE, i64 16), ptr %4, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN9grpc_core8channelz8BaseNode23SerializeEntityToStringB5cxx11EN4absl12lts_202505128DurationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(232) %storemerge.i.i, i64 0, i32 0)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN9grpc_core8channelz6v2tov117ConvertSubchannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_13EntityFetcherEb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.60") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ae = load i64, ptr %6, align 8, !tbaa !8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 239) #32
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 30, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit unwind label %bb.w

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit: ; preds = %bb.r
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.w

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.s
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.av

bb.t:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59

bb.u:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.v:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.r, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.w ], [ %i.aj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.az

bb.y:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19
  invoke void @_ZN9grpc_core9JsonParseESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %8, i64 %i.ao, ptr %i.am)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.ap = load i64, ptr %8, align 8, !tbaa !8
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.1, i32 noundef 244) #32
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 43, ptr nonnull @.str.13)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi44EEERS2_RAT__Kc.exit unwind label %bb.af

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi44EEERS2_RAT__Kc.exit: ; preds = %bb.ab
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi44EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46 unwind label %bb.af

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46: ; preds = %bb.ac
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ap

bb.ad:                                            ; preds = %bb.y
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ae:                                            ; preds = %bb.aa
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac, %bb.ab, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi44EEERS2_RAT__Kc.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn27 = phi { ptr, i32 } [ %i.au, %bb.af ], [ %i.at, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.at

bb.ah:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA11_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef nonnull align 1 dereferenceable(11) @.str.14, ptr noundef nonnull align 8 dereferenceable(56) %i.av)
          to label %.lr.ph.i.i unwind label %bb.al

.lr.ph.i.i:                                       ; preds = %bb.ah
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ba, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %11, ptr %1, align 8, !tbaa !36
  %i.bb = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i unwind label %.body.a ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i8 0, ptr %i.bc, align 8, !tbaa !20, !alias.scope !256
  %i.bd = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #28 ; 0 uses
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.be)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader unwind label %bb.ai, !inline_history !48

.body.a:                                          ; preds = %.lr.ph.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #28
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %12) #28
  br label %.loopexit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %.noexc.i
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #28, !inline_history !98
  %16 = load ptr, ptr %12, align 8, !tbaa !16     ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ai:                                            ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #31, !inline_history !48
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.bh = load i64, ptr %17, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %i.bi) #30, !inline_history !98
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN9grpc_core8JsonDumpB5cxx11ERKNS_12experimental4JsonEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 0)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  %i.bj = load ptr, ptr %13, align 8, !tbaa !16
  %i.bk = invoke ptr @gpr_strdup(ptr noundef %i.bj)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bl = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body.a, %bb.al
  %.pn29 = phi { ptr, i32 } [ %i.bq, %bb.al ], [ %14, %.body.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.an:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.an
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !18
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.am
  %.pn31 = phi { ptr, i32 } [ %i.br, %bb.am ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.bs, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #28
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %.loopexit
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn29, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.at

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46
  %.0 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit46 ]
  %i.by = load i64, ptr %8, align 8, !tbaa !8     ; 3 uses
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.aq

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.ap
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ca) #28
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  %i.cb = trunc i64 %i.by to i1
  br i1 %i.cb, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cc = inttoptr i64 %i.by to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cc)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.av

bb.at:                                            ; preds = %bb.ao, %bb.ag
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.ao ], [ %.pn27, %bb.ag ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ad
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.at ], [ %i.as, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.az

bb.av:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.1 = phi ptr [ %.0, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit ], [ null, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ] ; 2 uses
  %i.cf = load i64, ptr %6, align 8, !tbaa !8     ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i52, label %bb.aw

_ZN4absl12lts_202505126StatusD2Ev.exit.i52:       ; preds = %bb.av
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i52
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !18
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.aw:                                            ; preds = %bb.av
  %i.cn = trunc i64 %i.cf to i1
  br i1 %i.cn, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.co = inttoptr i64 %i.cf to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.co)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cr = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !18
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56

bb.az:                                            ; preds = %bb.au, %bb.x
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %bb.au ], [ %.pn, %bb.x ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #28
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.u
  %.pn31.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn, %bb.az ], [ %i.ai, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cw = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.ba
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59: ; preds = %bb.ba, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %.pn31.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.t ], [ %.pn31.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn31.pn.pn.pn.pn.pn, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.dc = atomicrmw sub ptr %i.db, i64 1 acq_rel, align 8
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.bb, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz14SubchannelNodeEED2Ev.exit, !prof !49

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59
  %i.de = load ptr, ptr %storemerge.i.i, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(232) %storemerge.i.i) #28, !inline_history !259
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz14SubchannelNodeEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.di = atomicrmw sub ptr %i.dh, i64 1 acq_rel, align 8
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.bc, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz14SubchannelNodeEED2Ev.exit62, !prof !49

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56
  %i.dk = load ptr, ptr %storemerge.i.i, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(232) %storemerge.i.i) #28, !inline_history !259
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz14SubchannelNodeEED2Ev.exit62

_ZN9grpc_core17WeakRefCountedPtrINS_8channelz14SubchannelNodeEED2Ev.exit62: ; preds = %.thread, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56, %bb.bc
  %.290 = phi ptr [ %.1, %bb.bc ], [ null, %.thread ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i56 ], [ null, %bb.l ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %3, align 8, !tbaa !22
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !54
  %i.do = or i64 %i.dn, 1
  store i64 %i.do, ptr %i.b, align 8, !tbaa !54
  %i.dp = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.bd unwind label %bb.bk, !inline_history !110 ; 0 uses

bb.bd:                                            ; preds = %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz14SubchannelNodeEED2Ev.exit62
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !69
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.bf unwind label %bb.bk, !inline_history !110

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store ptr %i.dq, ptr %i.e, align 8, !tbaa !68
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ds = and i64 %i.dr, 4
  %.not.i64 = icmp eq i64 %i.ds, 0
  br i1 %.not.i64, label %bb.bg, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.dt = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !70, !noundef !71
  %i.du = trunc nuw i8 %i.dt to i1
end_hunk_2
begin_hunk_3_@grpc_channelz_get_socket:bb.a
bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn29 = phi { ptr, i32 } [ %i.av, %bb.z ], [ %i.au, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bt

bb.ab:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN9grpc_core8channelz6v2tov119ConvertListenSocketERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_13EntityFetcherEb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.60") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext true)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.aw = load i64, ptr %9, align 8, !tbaa !8
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  invoke void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6AssignIS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS8_.exit52 unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12AssignStatusINS0_6StatusEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS8_.exit52 unwind label %bb.aj

_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS8_.exit52: ; preds = %bb.ad, %bb.ae
  %i.az = load i64, ptr %9, align 8, !tbaa !8     ; 3 uses
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i53, label %bb.af

_ZN4absl12lts_202505126StatusD2Ev.exit.i53:       ; preds = %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS8_.exit52
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i53
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !18
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit56

bb.af:                                            ; preds = %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS8_.exit52
  %i.bh = trunc i64 %i.az to i1
  br i1 %i.bh, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit56, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bi = inttoptr i64 %i.az to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bi)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit56 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit56: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.al

bb.ai:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae, %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.aj ], [ %i.bl, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bt

bb.al:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit56
  %i.bn = load i64, ptr %7, align 8, !tbaa !8
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.1, i32 noundef 273) #32
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 26, ptr nonnull @.str.15)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit unwind label %bb.aq

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit: ; preds = %bb.an
  %i.bp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.aq

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.ao
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bp

bb.ap:                                            ; preds = %bb.am
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao, %bb.an, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #33
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn31 = phi { ptr, i32 } [ %i.br, %bb.aq ], [ %i.bq, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bt

bb.as:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !19
  invoke void @_ZN9grpc_core9JsonParseESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %11, i64 %i.bv, ptr %i.bt)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.bw = load i64, ptr %11, align 8, !tbaa !8
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.1, i32 noundef 280) #32
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 39, ptr nonnull @.str.16)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit unwind label %bb.az

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit: ; preds = %bb.av
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit62 unwind label %bb.az

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit62: ; preds = %bb.aw
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bj

bb.ax:                                            ; preds = %bb.as
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ay:                                            ; preds = %bb.au
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw, %bb.av, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn33 = phi { ptr, i32 } [ %i.cb, %bb.az ], [ %i.ca, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bn

bb.bb:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 8
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA7_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull align 1 dereferenceable(7) @.str.17, ptr noundef nonnull align 8 dereferenceable(56) %i.cc)
          to label %.lr.ph.i.i unwind label %bb.bf

.lr.ph.i.i:                                       ; preds = %bb.bb
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i32 0, ptr %i.cd, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr null, ptr %i.ce, align 8, !tbaa !32
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !34
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %i.ch, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %14, ptr %1, align 8, !tbaa !36
  %i.ci = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr nonnull %i.cd, ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i unwind label %.body64.a ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i8 0, ptr %i.cj, align 8, !tbaa !20, !alias.scope !260
  %i.ck = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %13, ptr noundef nonnull align 8 dereferenceable(48) %14) #28 ; 0 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.cl)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader unwind label %bb.bc, !inline_history !48

.body64.a:                                        ; preds = %.lr.ph.i.i
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #28
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %15) #28
  br label %.loopexit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %.noexc.i
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %18) #28, !inline_history !98
  %19 = load ptr, ptr %15, align 8, !tbaa !16     ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

bb.bc:                                            ; preds = %.noexc.i
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #31, !inline_history !48
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.co = load i64, ptr %20, align 8, !tbaa !18
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %i.cp) #30, !inline_history !98
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN9grpc_core8JsonDumpB5cxx11ERKNS_12experimental4JsonEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %13, i32 noundef 0)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  %i.cq = load ptr, ptr %16, align 8, !tbaa !16
  %i.cr = invoke ptr @gpr_strdup(ptr noundef %i.cq)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.cs = load ptr, ptr %16, align 8, !tbaa !16   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.be
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !18
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bb
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body64.a, %bb.bf
  %.pn35 = phi { ptr, i32 } [ %i.cx, %bb.bf ], [ %17, %.body64.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.bi

bb.bg:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.bh:                                            ; preds = %bb.bd
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %16, align 8, !tbaa !16   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.bh
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !18
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.bg
  %.pn37 = phi { ptr, i32 } [ %i.cy, %bb.bg ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.cz, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #28
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %.loopexit
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn35, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bn

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit62
  %.0 = phi ptr [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit62 ]
  %i.df = load i64, ptr %11, align 8, !tbaa !8    ; 3 uses
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i71, label %bb.bk

_ZN4absl12lts_202505126StatusD2Ev.exit.i71:       ; preds = %bb.bj
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.dh) #28
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit

bb.bk:                                            ; preds = %bb.bj
  %i.di = trunc i64 %i.df to i1
  br i1 %i.di, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dj = inttoptr i64 %i.df to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dj)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i71, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bi, %bb.ba
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %bb.bi ], [ %.pn33, %bb.ba ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #28
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ax
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %bb.bn ], [ %i.bz, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.bt

bb.bp:                                            ; preds = %bb.o, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.1 = phi ptr [ %.0, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit ], [ null, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ null, %bb.o ] ; 3 uses
  %i.dm = load i64, ptr %7, align 8, !tbaa !8     ; 3 uses
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i72, label %bb.bq

_ZN4absl12lts_202505126StatusD2Ev.exit.i72:       ; preds = %bb.bp
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i72
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !18
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #30
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit75

bb.bq:                                            ; preds = %bb.bp
  %i.du = trunc i64 %i.dm to i1
  br i1 %i.du, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit75, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dv = inttoptr i64 %i.dm to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dv)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit75 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit75: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73, %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.dy = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit75
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !18
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i77

bb.bt:                                            ; preds = %bb.bo, %bb.ar, %bb.ak, %bb.aa
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn, %bb.bo ], [ %.pn31, %bb.ar ], [ %.pn, %bb.ak ], [ %.pn29, %bb.aa ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #28
  br label %.body

.body:                                            ; preds = %bb.x, %.body.i, %bb.bt
  %.pn37.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn.pn, %bb.bt ], [ %i.at, %bb.x ], [ %i.v, %.body.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ed = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !18
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.w
  %.pn37.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.w ], [ %.pn37.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn37.pn.pn.pn.pn.pn, %.body ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ei = load ptr, ptr %4, align 8, !tbaa !146   ; 4 uses
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = atomicrmw sub ptr %i.ej, i64 1 acq_rel, align 8
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.bv, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit, !prof !49

bb.bv:                                            ; preds = %bb.bu
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(232) %i.ei) #28, !inline_history !263
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i77: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.pr = load ptr, ptr %4, align 8, !tbaa !146    ; 4 uses
  %.not.i82 = icmp eq ptr %.pr, null
  br i1 %.not.i82, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit83, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i77
  %i.ep = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.eq = atomicrmw sub ptr %i.ep, i64 1 acq_rel, align 8
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.bx, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit83, !prof !49

bb.bx:                                            ; preds = %bb.bw
  %i.es = load ptr, ptr %.pr, align 8, !tbaa !22
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(232) %.pr) #28, !inline_history !263
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit83

_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit83: ; preds = %_ZN9grpc_core8channelz16ChannelzRegistry7GetNodeEl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i77, %bb.bw, %bb.bx
  %.294 = phi ptr [ %.1, %bb.bx ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i77 ], [ %.1, %bb.bw ], [ null, %_ZN9grpc_core8channelz16ChannelzRegistry7GetNodeEl.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %3, align 8, !tbaa !22
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ew = or i64 %i.ev, 1
  store i64 %i.ew, ptr %i.b, align 8, !tbaa !54
  %i.ex = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.by unwind label %bb.cf, !inline_history !110 ; 0 uses

bb.by:                                            ; preds = %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit83
  %i.ey = load ptr, ptr %i.g, align 8, !tbaa !69
  br i1 %.not.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.ca unwind label %bb.cf, !inline_history !110
end_hunk_3
