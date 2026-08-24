Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/pick_first?download=true
inline.NumInlined: 2798
inline.NumDeleted: 1468
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsE:bb.a
  br label %bb.dy

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %5, ptr %6, align 8, !tbaa !165
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr nonnull %6, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS3_19LoadBalancingPolicy10UpdateArgsEE3$_0vJRKNS3_17EndpointAddressesEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.s unwind label %bb.ad

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.x = load ptr, ptr %5, align 16, !tbaa !167
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN4absl12lts_2025051216UnavailableErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %7, i64 30, ptr nonnull @.str.39)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.ab = load i64, ptr %0, align 8, !tbaa !141   ; 4 uses
  %i.ac = load i64, ptr %7, align 8, !tbaa !141   ; 2 uses
  %.not.i109 = icmp eq i64 %i.ac, %i.ab
  br i1 %.not.i109, label %_ZN4absl12lts_202505126StatusaSEOS1_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.ac, ptr %0, align 8, !tbaa !141
  store i64 55, ptr %7, align 8, !tbaa !141
  %i.ad = trunc i64 %i.ab to i1
  br i1 %i.ad, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ae = inttoptr i64 %i.ab to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge unwind label %bb.x

._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge: ; preds = %bb.w
  %.pre412 = load i64, ptr %7, align 8, !tbaa !141
  br label %_ZN4absl12lts_202505126StatusaSEOS1_.exit

bb.x:                                             ; preds = %bb.w
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #40
  unreachable

_ZN4absl12lts_202505126StatusaSEOS1_.exit:        ; preds = %._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge, %bb.u
  %i.ah = phi i64 [ %.pre412, %._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge ], [ %i.ab, %bb.u ] ; 2 uses
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_202505126StatusaSEOS1_.exit
  %i.aj = inttoptr i64 %i.ah to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #40
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.v, %_ZN4absl12lts_202505126StatusaSEOS1_.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.am = load atomic i64, ptr @_ZN9grpc_core15ExperimentFlags17experiment_flags_E monotonic, align 16 ; 2 uses
  %i.an = and i64 %i.am, 1099511627776
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %bb.aa, label %_ZN9grpc_core36IsPickFirstIgnoreEmptyUpdatesEnabledEv.exit.thread

bb.aa:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %.not4.i.i.i = icmp sgt i64 %i.am, -1
  br i1 %.not4.i.i.i, label %bb.ab, label %_ZN4absl12lts_202505128StatusOrISt10shared_ptrIN9grpc_core25EndpointAddressesIteratorEEEaSIRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEERS6_OSB_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ao = invoke noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef 40)
          to label %_ZN9grpc_core36IsPickFirstIgnoreEmptyUpdatesEnabledEv.exit unwind label %bb.ac

_ZN9grpc_core36IsPickFirstIgnoreEmptyUpdatesEnabledEv.exit: ; preds = %bb.ab
  br i1 %i.ao, label %_ZN9grpc_core36IsPickFirstIgnoreEmptyUpdatesEnabledEv.exit.thread, label %_ZN4absl12lts_202505128StatusOrISt10shared_ptrIN9grpc_core25EndpointAddressesIteratorEEEaSIRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEERS6_OSB_.exit

_ZN9grpc_core36IsPickFirstIgnoreEmptyUpdatesEnabledEv.exit.thread: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %_ZN9grpc_core36IsPickFirstIgnoreEmptyUpdatesEnabledEv.exit
  invoke void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIN9grpc_core25EndpointAddressesIteratorEEE12AssignStatusIRNS0_6StatusEEEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202505128StatusOrISt10shared_ptrIN9grpc_core25EndpointAddressesIteratorEEEaSIRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEERS6_OSB_.exit unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN9grpc_core36IsPickFirstIgnoreEmptyUpdatesEnabledEv.exit.thread, %bb.ab
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ad:                                            ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.do

bb.ae:                                            ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.do

bb.af:                                            ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !150
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %.val90 = load i8, ptr %i.au, align 8, !tbaa !169, !range !110, !noundef !111
  %i.av = trunc nuw i8 %.val90 to i1
  br i1 %i.av, label %bb.ag, label %bb.bk

bb.ag:                                            ; preds = %bb.af
  %i.aw = invoke noundef zeroext i1 @_ZN9grpc_core25IsExperimentEnvVarEnabledEPKcb(ptr noundef nonnull @.str.10, i1 noundef zeroext false)
          to label %_ZN9grpc_core26PfWeightedShufflingEnabledEv.exit unwind label %bb.an

_ZN9grpc_core26PfWeightedShufflingEnabledEv.exit: ; preds = %bb.ag
  br i1 %i.aw, label %bb.ah, label %bb.bi

bb.ah:                                            ; preds = %_ZN9grpc_core26PfWeightedShufflingEnabledEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !174 ; 4 uses
  %i.ay = load ptr, ptr %5, align 16, !tbaa !176  ; 4 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5                 ; 3 uses
  %i.bd = icmp ugt i64 %i.bc, 230584300921369395
  br i1 %i.bd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #38
          to label %.noexc114 unwind label %bb.ao

.noexc114:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %.not500 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not500, label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.aj
  %i.bf = mul nuw nsw i64 %i.bc, 40
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #36
          to label %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %bb.ao ; 4 uses

_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE11_M_allocateEm.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bg, ptr %8, align 8, !tbaa !177
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !180
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bc ; 2 uses
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !181
  br label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE7reserveEm.exit

_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.aj
  %.promoted329 = phi ptr [ %i.bg, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ null, %bb.aj ] ; 4 uses
  %.promoted = phi ptr [ %i.bi, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ null, %bb.aj ] ; 2 uses
  %.not335 = icmp eq ptr %i.ay, %i.ax
  br i1 %.not335, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE7reserveEm.exit
  store ptr %.promoted, ptr %i.be, align 8
  store ptr %.promoted329, ptr %8, align 8
  br label %._crit_edge340.thread

.lr.ph:                                           ; preds = %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE7reserveEm.exit
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core12SharedBitGen8bit_gen_E, null
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core12SharedBitGen8bit_gen_E) ; 5 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 264 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 272
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 280
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ap

._crit_edge:                                      ; preds = %_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev.exit
  store ptr %i.es, ptr %i.be, align 8
  store ptr %i.er, ptr %8, align 8
  %.not.i.i = icmp eq ptr %i.er, %i.eq
  br i1 %.not.i.i, label %._crit_edge340.thread, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %i.bu = ptrtoint ptr %i.eq to i64
  %i.bv = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = sdiv i64 %i.bw, 40                      ; 2 uses
  %i.by = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS2_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_12UpdateLockedES6_E3$_1EEEvT_SH_T0_T1_"(ptr %i.er, ptr nonnull %i.eq, i64 noundef %i.ca)
  %i.cb = icmp sgt i64 %i.bw, 640
  br i1 %i.cb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cc = getelementptr inbounds nuw i8, ptr %i.er, i64 640 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS2_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12UpdateLockedES6_E3$_1EEEvT_SH_T0_"(ptr %i.er, ptr nonnull %i.cc)
  %.not6.i.i.i.i = icmp eq ptr %i.cc, %i.eq
  br i1 %.not6.i.i.i.i, label %.lr.ph339.preheader, label %.lr.ph.i.i.i.i116

.lr.ph.i.i.i.i116:                                ; preds = %bb.al, %.lr.ph.i.i.i.i116
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i116 ], [ %i.cc, %bb.al ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS2_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_12UpdateLockedES6_E3$_1EEEvT_T0_"(ptr %.sroa.0.07.i.i.i.i)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.cd, %i.eq
  br i1 %.not.i.i.i.i117, label %.lr.ph339.preheader, label %.lr.ph.i.i.i.i116, !llvm.loop !182

bb.am:                                            ; preds = %bb.ak
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS2_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12UpdateLockedES6_E3$_1EEEvT_SH_T0_"(ptr %i.er, ptr nonnull %i.eq)
  br label %.lr.ph339.preheader

._crit_edge340.thread:                            ; preds = %._crit_edge.thread, %._crit_edge
  %.lcssa330508 = phi ptr [ %.promoted329, %._crit_edge.thread ], [ %i.er, %._crit_edge ] ; 2 uses
  %.pre416 = ptrtoint ptr %.lcssa330508 to i64
  br label %_ZSt8_DestroyIPZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_EvT_S7_RSaIT0_E.exit.i

.lr.ph339.preheader:                              ; preds = %.lr.ph.i.i.i.i116, %bb.am, %bb.al
  %umax = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  br label %.lr.ph339

bb.an:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ao:                                            ; preds = %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE11_M_allocateEm.exit.i, %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ap:                                            ; preds = %.lr.ph, %_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev.exit
  %i.cg = phi ptr [ %.promoted329, %.lr.ph ], [ %i.eq, %_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev.exit ] ; 7 uses
  %.sroa.0241.0336 = phi ptr [ %i.ay, %.lr.ph ], [ %i.ey, %_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev.exit ] ; 3 uses
  %i.ch = phi ptr [ %.promoted, %.lr.ph ], [ %i.es, %_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev.exit ] ; 6 uses
  %i.ci = phi ptr [ %.promoted329, %.lr.ph ], [ %i.er, %_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev.exit ] ; 10 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E()
          to label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i.i.i.i.i unwind label %bb.bc

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.cj = load i64, ptr %i.bn, align 8, !tbaa !183
  %i.ck = icmp ugt i64 %i.cj, 31
  br i1 %i.ck, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i.i.i.i.i
  store i64 2, ptr %i.bn, align 8, !tbaa !183
  %i.cl = load i8, ptr %i.bp, align 8, !tbaa !186, !range !110, !noundef !111
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load ptr, ptr %i.bo, align 8, !tbaa !187 ; 2 uses
  br i1 %i.cm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.cn, ptr noundef nonnull %i.bm)
          to label %bb.au unwind label %bb.bc

bb.at:                                            ; preds = %bb.ar
  invoke void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.cn, ptr noundef nonnull %i.bm)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i.i.i.i.i, %bb.as, %bb.at
  %i.co = load i64, ptr %i.bn, align 8, !tbaa !183 ; 2 uses
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.bn, align 8, !tbaa !183
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.co
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !188 ; 2 uses
  %i.cs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cr, i1 false) ; 2 uses
  %i.ct = and i64 %i.cs, 63
  %i.cu = shl i64 %i.cr, %i.ct
  %i.cv = lshr i64 %i.cu, 11
  %i.cw = and i64 %i.cv, 4503599627370495
  %i.cx = shl nuw nsw i64 %i.cs, 52
  %reass.sub = sub nsw i64 %i.cw, %i.cx
  %i.cy = add nsw i64 %reass.sub, -4620693217682128896
  %i.cz = bitcast i64 %i.cy to double
  %i.da = call double @log1p(double noundef %i.cz) #37
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0241.0336, i64 24
  %i.dc = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %i.db, i64 42, ptr nonnull @.str.40)
          to label %bb.av unwind label %bb.bd     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.dd = fneg double %i.da                       ; 2 uses
  %.sroa.0239.0.extract.trunc = trunc i64 %i.dc to i32
  %i.de = and i64 %i.dc, 4294967296
  %.not273 = icmp eq i64 %i.de, 0
  %.0.i = select i1 %.not273, i32 1, i32 %.sroa.0239.0.extract.trunc ; 2 uses
  %i.df = call i32 @llvm.smax.i32(i32 %.0.i, i32 1)
  %i.dg = uitofp nneg i32 %i.df to double
  %i.dh = icmp slt i32 %.0.i, 2
  %i.di = fdiv double %i.dd, %i.dg
  %i.dj = select i1 %i.dh, double %i.dd, double %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @_ZN9grpc_core17EndpointAddressesC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0241.0336) #37
  store double %i.dj, ptr %i.bq, align 8, !tbaa !189
  %.not.i.i122 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i.i122, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN9grpc_core17EndpointAddressesC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(40) %9) #37
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.dl = load double, ptr %i.bq, align 8, !tbaa !189
  store double %i.dl, ptr %i.dk, align 8, !tbaa !189
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 2 uses
  store ptr %i.dm, ptr %i.br, align 8, !tbaa !180
  br label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE9push_backEOS5_.exit

bb.ax:                                            ; preds = %bb.av
  %i.dn = ptrtoint ptr %i.cg to i64
  %i.do = ptrtoint ptr %i.ci to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775800
  br i1 %i.dq, label %bb.ay, label %_ZNKSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.ch, ptr %i.be, align 8
  store ptr %i.ci, ptr %8, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #38
          to label %.noexc124 unwind label %.loopexit.split-lp276

.noexc124:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ax
  %i.dr = sdiv exact i64 %i.dp, 40                ; 3 uses
  %i.ds = icmp eq ptr %i.cg, %i.ci                ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.ds, i64 1, i64 %i.dr
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dr ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.dr
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 230584300921369395)
  %i.dw = select i1 %i.du, i64 230584300921369395, i64 %i.dv ; 3 uses
  %.not.i.i.i.i123 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i123)
  %i.dx = mul nuw nsw i64 %i.dw, 40
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #36
          to label %.noexc125 unwind label %.loopexit275 ; 5 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dp ; 2 uses
  call void @_ZN9grpc_core17EndpointAddressesC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, ptr noundef nonnull align 8 dereferenceable(40) %9) #37
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load double, ptr %i.bq, align 8, !tbaa !189
  store double %i.eb, ptr %i.ea, align 8, !tbaa !189
  br i1 %i.ds, label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc125, %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.en, %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.dy, %.noexc125 ] ; 3 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.em, %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.ci, %.noexc125 ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @_ZN9grpc_core17EndpointAddressesC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.092.i.i.i.i.i.i) #37
  %i.ec = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 32
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !189, !alias.scope !201, !noalias !198
  store double %i.ee, ptr %i.ec, align 8, !tbaa !189, !alias.scope !198, !noalias !201
  %i.ef = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ef) #37
  %i.eg = load ptr, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !203, !alias.scope !201, !noalias !198 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !204, !alias.scope !201, !noalias !198
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #39
  br label %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i: ; preds = %bb.az, %.lr.ph.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.em, %i.cg
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !205

_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i.i: ; preds = %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i, %.noexc125
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dy, %.noexc125 ], [ %i.en, %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i29.i.i.i, label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.dp) #39
  br label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ba, %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i.i
  store ptr %i.eo, ptr %i.br, align 8, !tbaa !180
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %i.dy, i64 %i.dw
  br label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.aw
  %i.eq = phi ptr [ %i.eo, %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.dm, %bb.aw ] ; 8 uses
  %i.er = phi ptr [ %i.dy, %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ci, %bb.aw ] ; 12 uses
  %i.es = phi ptr [ %i.ep, %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ch, %bb.aw ] ; 2 uses
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #37
  %i.et = load ptr, ptr %9, align 8, !tbaa !203   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i, label %_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE9push_backEOS5_.exit
  %i.eu = load ptr, ptr %i.bt, align 8, !tbaa !204
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #39
  br label %_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev.exit

_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev.exit: ; preds = %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE9push_backEOS5_.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0241.0336, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ey, %i.ax
  br i1 %.not, label %._crit_edge, label %bb.ap

bb.bc:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %i.ez = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ch, ptr %i.be, align 8
  store ptr %i.ci, ptr %8, align 8
  br label %bb.bh

bb.bd:                                            ; preds = %bb.au
  %i.fa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ch, ptr %i.be, align 8
  store ptr %i.ci, ptr %8, align 8
  br label %bb.bh

.loopexit275:                                     ; preds = %_ZNKSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit277 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ch, ptr %i.be, align 8
  store ptr %i.ci, ptr %8, align 8
  br label %bb.be

.loopexit.split-lp276:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp276, %.loopexit275
  %lpad.phi279 = phi { ptr, i32 } [ %lpad.loopexit277, %.loopexit275 ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp276 ]
  call fastcc void @_ZZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS_19LoadBalancingPolicy10UpdateArgsEEN16WeightedEndpointD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.bh

.lr.ph.i.i.i:                                     ; preds = %.lr.ph339, %_ZSt8_DestroyIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fi, %_ZSt8_DestroyIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointEvPT_.exit.i.i.i ], [ %i.er, %.lr.ph339 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fb) #37
  %i.fc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !203 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i127 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i127, label %_ZSt8_DestroyIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointEvPT_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !204
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fc to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fh) #39
  br label %_ZSt8_DestroyIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointEvPT_.exit.i.i.i

_ZSt8_DestroyIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointEvPT_.exit.i.i.i: ; preds = %bb.bf, %.lr.ph.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %i.fi, %i.eq
  br i1 %.not.i.i.i128, label %_ZSt8_DestroyIPZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointEvPT_.exit.i.i.i, %._crit_edge340.thread
  %.lcssa330507519530 = phi ptr [ %.lcssa330508, %._crit_edge340.thread ], [ %i.er, %_ZSt8_DestroyIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointEvPT_.exit.i.i.i ] ; 2 uses
  %.pre-phi417524529 = phi i64 [ %.pre416, %._crit_edge340.thread ], [ %i.bv, %_ZSt8_DestroyIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointEvPT_.exit.i.i.i ]
  %.not.i.i2.i = icmp eq ptr %.lcssa330507519530, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_EvT_S7_RSaIT0_E.exit.i
  %.val1.i = load ptr, ptr %i.be, align 8, !tbaa !181
  %i.fj = ptrtoint ptr %.val1.i to i64
  %i.fk = sub i64 %i.fj, %.pre-phi417524529
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa330507519530, i64 noundef %i.fk) #39
  br label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EED2Ev.exit

_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointS5_EvT_S7_RSaIT0_E.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.bk

.lr.ph339:                                        ; preds = %.lr.ph339.preheader, %.lr.ph339
  %.059338 = phi i64 [ %i.fp, %.lr.ph339 ], [ 0, %.lr.ph339.preheader ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [40 x i8], ptr %i.er, i64 %.059338
  %i.fm = load ptr, ptr %5, align 16, !tbaa !176
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %.059338
  %i.fo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core17EndpointAddressesaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %i.fl) #37 ; 0 uses
  %i.fp = add nuw i64 %.059338, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fp, %umax
  br i1 %exitcond.not, label %.lr.ph.i.i.i, label %.lr.ph339, !llvm.loop !207

bb.bh:                                            ; preds = %bb.bd, %bb.be, %bb.bc, %bb.ao
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.ao ], [ %i.fa, %bb.bd ], [ %i.ez, %bb.bc ], [ %lpad.phi279, %bb.be ]
  call fastcc void @_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.do

bb.bi:                                            ; preds = %_ZN9grpc_core26PfWeightedShufflingEnabledEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.fq = load ptr, ptr %5, align 16, !tbaa !167
  %i.fr = load ptr, ptr %i.y, align 8, !tbaa !167
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPN9grpc_core17EndpointAddressesESt6vectorIS3_SaIS3_EEEERNS2_12SharedBitGenEEvT_SB_OT0_(ptr %i.fq, ptr %i.fr, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4absl12lts_202505129c_shuffleISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EERNS3_12SharedBitGenEEEvRT_OT0_.exit unwind label %bb.bj

_ZN4absl12lts_202505129c_shuffleISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EERNS3_12SharedBitGenEEEvRT_OT0_.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.do

bb.bk:                                            ; preds = %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_19PickFirst12UpdateLockedENS0_19LoadBalancingPolicy10UpdateArgsEE16WeightedEndpointSaIS5_EED2Ev.exit, %_ZN4absl12lts_202505129c_shuffleISt6vectorIN9grpc_core17EndpointAddressesESaIS4_EERNS3_12SharedBitGenEEEvRT_OT0_.exit, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i32 0, ptr %i.ft, align 8, !tbaa !120
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.fu, align 8, !tbaa !125
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !126
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.ft, ptr %i.fw, align 8, !tbaa !127
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i64 0, ptr %i.fx, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.fy = load ptr, ptr %5, align 16, !tbaa !167  ; 4 uses
  %i.fz = load ptr, ptr %i.y, align 8, !tbaa !167 ; 2 uses
  %.not271352 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not271352, label %._crit_edge359, label %.lr.ph358

.lr.ph358:                                        ; preds = %bb.bk
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.bn

._crit_edge359.loopexit:                          ; preds = %._crit_edge348
  %.pre = load ptr, ptr %5, align 16, !tbaa !176
  %.pre406 = load ptr, ptr %i.y, align 8, !tbaa !174
  %i.gc = load <2 x ptr>, ptr %12, align 16, !tbaa !167
  %.pre411 = load ptr, ptr %i.gb, align 16, !tbaa !208
  %i.gd = ptrtoint ptr %.sroa.10.1.lcssa to i64
  br label %._crit_edge359

._crit_edge359:                                   ; preds = %._crit_edge359.loopexit, %bb.bk
  %i.ge = phi ptr [ null, %bb.bk ], [ %.pre411, %._crit_edge359.loopexit ]
  %i.gf = phi ptr [ %i.fy, %bb.bk ], [ %.pre406, %._crit_edge359.loopexit ] ; 2 uses
  %i.gg = phi ptr [ %i.fy, %bb.bk ], [ %.pre, %._crit_edge359.loopexit ] ; 5 uses
  %.sroa.0236.0.lcssa = phi ptr [ null, %bb.bk ], [ %.sroa.0236.1.lcssa, %._crit_edge359.loopexit ] ; 6 uses
  %.sroa.10.0.lcssa = phi i64 [ 0, %bb.bk ], [ %i.gd, %._crit_edge359.loopexit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.bk ], [ %.sroa.14.1.lcssa, %._crit_edge359.loopexit ] ; 2 uses
  %i.gh = phi <2 x ptr> [ splat (ptr null), %bb.bk ], [ %i.gc, %._crit_edge359.loopexit ]
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.gj = load ptr, ptr %i.gi, align 16, !tbaa !208
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store <2 x ptr> %i.gh, ptr %5, align 16, !tbaa !167
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ge, ptr %i.gi, align 16, !tbaa !208
  %.not4.i.i.i.i.i = icmp eq ptr %i.gg, %i.gf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge359, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.gt, %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i.i ], [ %i.gg, %._crit_edge359 ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gm) #37
  %i.gn = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !203 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i131 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i131, label %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !204
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gn to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gs) #39
  br label %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i.i: ; preds = %bb.bl, %.lr.ph.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq ptr %i.gt, %i.gf
  br i1 %.not.i.i.i.i.i132, label %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !209

_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN9grpc_core17EndpointAddressesEEvPT_.exit.i.i.i.i.i, %._crit_edge359
  %.not.i.i1.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EEaSEOS3_.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.gu = ptrtoint ptr %i.gj to i64
  %i.gv = ptrtoint ptr %i.gg to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gw) #39
  br label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core17EndpointAddressesES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.gx = load ptr, ptr %i.y, align 8, !tbaa !174
  %i.gy = load ptr, ptr %5, align 16, !tbaa !176
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = ashr exact i64 %i.hb, 5
  invoke void @_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.hc)
          to label %bb.cd unwind label %bb.ch

bb.bn:                                            ; preds = %.lr.ph358, %._crit_edge348
  %.sroa.0233.0356 = phi ptr [ %i.fy, %.lr.ph358 ], [ %i.hh, %._crit_edge348 ] ; 4 uses
  %.sroa.14.0355 = phi ptr [ null, %.lr.ph358 ], [ %.sroa.14.1.lcssa, %._crit_edge348 ] ; 2 uses
  %.sroa.10.0354 = phi ptr [ null, %.lr.ph358 ], [ %.sroa.10.1.lcssa, %._crit_edge348 ] ; 2 uses
  %.sroa.0236.0353 = phi ptr [ null, %.lr.ph358 ], [ %.sroa.0236.1.lcssa, %._crit_edge348 ] ; 2 uses
  %i.hd = load ptr, ptr %.sroa.0233.0356, align 8, !tbaa !210 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0233.0356, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !210 ; 2 uses
  %.not272341 = icmp eq ptr %i.hd, %i.hf
  br i1 %.not272341, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.bn
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0233.0356, i64 24 ; 2 uses
  br label %bb.bo

._crit_edge348:                                   ; preds = %_ZNSt6vectorIN9grpc_core12_GLOBAL__N_121AddressFamilyIteratorESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEEmEEERS2_DpOT_.exit, %bb.bn
  %.sroa.0236.1.lcssa = phi ptr [ %.sroa.0236.0353, %bb.bn ], [ %.sroa.0236.2, %_ZNSt6vectorIN9grpc_core12_GLOBAL__N_121AddressFamilyIteratorESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEEmEEERS2_DpOT_.exit ] ; 2 uses
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.0354, %bb.bn ], [ %.sroa.10.2, %_ZNSt6vectorIN9grpc_core12_GLOBAL__N_121AddressFamilyIteratorESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEEmEEERS2_DpOT_.exit ] ; 2 uses
  %.sroa.14.1.lcssa = phi ptr [ %.sroa.14.0355, %bb.bn ], [ %.sroa.14.2, %_ZNSt6vectorIN9grpc_core12_GLOBAL__N_121AddressFamilyIteratorESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEEmEEERS2_DpOT_.exit ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0233.0356, i64 32 ; 2 uses
  %.not271 = icmp eq ptr %i.hh, %i.fz
  br i1 %.not271, label %._crit_edge359.loopexit, label %bb.bn

bb.bo:                                            ; preds = %.lr.ph347, %_ZNSt6vectorIN9grpc_core12_GLOBAL__N_121AddressFamilyIteratorESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEEmEEERS2_DpOT_.exit
  %.sroa.0229.0345 = phi ptr [ %i.hd, %.lr.ph347 ], [ %i.ju, %_ZNSt6vectorIN9grpc_core12_GLOBAL__N_121AddressFamilyIteratorESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEEmEEERS2_DpOT_.exit ] ; 4 uses
  %.sroa.14.1344 = phi ptr [ %.sroa.14.0355, %.lr.ph347 ], [ %.sroa.14.2, %_ZNSt6vectorIN9grpc_core12_GLOBAL__N_121AddressFamilyIteratorESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEEmEEERS2_DpOT_.exit ] ; 11 uses
  %.sroa.10.1343 = phi ptr [ %.sroa.10.0354, %.lr.ph347 ], [ %.sroa.10.2, %_ZNSt6vectorIN9grpc_core12_GLOBAL__N_121AddressFamilyIteratorESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEEmEEERS2_DpOT_.exit ] ; 6 uses
  %.sroa.0236.1342 = phi ptr [ %.sroa.0236.0353, %.lr.ph347 ], [ %.sroa.0236.2, %_ZNSt6vectorIN9grpc_core12_GLOBAL__N_121AddressFamilyIteratorESaIS2_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEEmEEERS2_DpOT_.exit ] ; 12 uses
  %i.hi = load ptr, ptr %i.ga, align 8, !tbaa !174 ; 3 uses
  %i.hj = load ptr, ptr %i.gb, align 16, !tbaa !208
  %.not.i133 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not.i133, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN9grpc_core17EndpointAddressesC1ERK21grpc_resolved_addressRKNS_11ChannelArgsE(ptr noundef nonnull align 8 dereferenceable(32) %i.hi, ptr noundef nonnull align 4 dereferenceable(132) %.sroa.0229.0345, ptr noundef nonnull align 8 dereferenceable(8) %i.hg)
          to label %.noexc135 unwind label %bb.ca

.noexc135:                                        ; preds = %bb.bp
  %i.hk = load ptr, ptr %i.ga, align 8, !tbaa !174
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  store ptr %i.hl, ptr %i.ga, align 8, !tbaa !174
  br label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE12emplace_backIJRK21grpc_resolved_addressRKNS0_11ChannelArgsEEEERS1_DpOT_.exit

bb.bq:                                            ; preds = %bb.bo
  invoke void @_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE17_M_realloc_insertIJRK21grpc_resolved_addressRKNS0_11ChannelArgsEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.hi, ptr noundef nonnull align 4 dereferenceable(132) %.sroa.0229.0345, ptr noundef nonnull align 8 dereferenceable(8) %i.hg)
          to label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE12emplace_backIJRK21grpc_resolved_addressRKNS0_11ChannelArgsEEEERS1_DpOT_.exit unwind label %bb.ca

_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE12emplace_backIJRK21grpc_resolved_addressRKNS0_11ChannelArgsEEEERS1_DpOT_.exit: ; preds = %bb.bq, %.noexc135
  %i.hm = invoke noundef ptr @_Z28grpc_sockaddr_get_uri_schemePK21grpc_resolved_address(ptr noundef nonnull align 4 dereferenceable(132) %.sroa.0229.0345)
          to label %bb.br unwind label %bb.cb     ; 2 uses

bb.br:                                            ; preds = %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE12emplace_backIJRK21grpc_resolved_addressRKNS0_11ChannelArgsEEEERS1_DpOT_.exit
  %i.hn = icmp eq ptr %i.hm, null
  %i.ho = select i1 %i.hn, ptr @.str.44, ptr %i.hm ; 7 uses
  %i.hp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ho) #37 ; 9 uses
  %.03436.i = load ptr, ptr %i.fu, align 8, !tbaa !211 ; 2 uses
  %.not37.i = icmp eq ptr %.03436.i, null
  br i1 %.not37.i, label %._crit_edge.thread.i, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %bb.br, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i
  %.03438.i = phi ptr [ %.034.i, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i ], [ %.03436.i, %bb.br ] ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.03438.i, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hq, align 8, !tbaa !188 ; 3 uses
  %.sroa.speculated.i.i.i.i212 = call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i, i64 %i.hp) ; 3 uses
  %i.hr = icmp eq i64 %.sroa.speculated.i.i.i.i212, 0
  br i1 %i.hr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.i211
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.03438.i, i64 40
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !212
  %i.hs = call i32 @memcmp(ptr noundef nonnull %i.ho, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i212) #37 ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph.i211
  %i.hu = sub i64 %i.hp, %.sroa.0.0.copyload.i.i
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hu, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i
end_hunk_0
