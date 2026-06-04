inline.NumInlined: 4429
inline.NumDeleted: 2303
begin_hunk_0_@_ZZN5folly15observer_detail15ObserverManager14UpdatesManager18NextQueueProcessorC1EvENKUlvE_clEv:bb.a
  br i1 %.not.i, label %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectISD_EEPT_RKS1_ISG_EEUlPSD_E_EESG_SJ_T0_.exit, label %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectISD_EEPT_RKS1_ISG_EEUlPSD_E_EEbRSG_SJ_T0_.exit, !prof !626

_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectISD_EEPT_RKS1_ISG_EEUlPSD_E_EESG_SJ_T0_.exit: ; preds = %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectISD_EEPT_RKS1_ISG_EEUlPSD_E_EEbRSG_SJ_T0_.exit, %_ZN5folly19make_hazard_pointerISt6atomicEENS_13hazptr_holderIT_EERNS_13hazptr_domainIS3_EE.exit.i
  %.lcssa204 = phi ptr [ %i.dm, %_ZN5folly19make_hazard_pointerISt6atomicEENS_13hazptr_holderIT_EERNS_13hazptr_domainIS3_EE.exit.i ], [ %i.do, %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectISD_EEPT_RKS1_ISG_EEUlPSD_E_EEbRSG_SJ_T0_.exit ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8, !noalias !1896 ; 3 uses
  %i.dr = add i64 %i.dq, 1
  store atomic i64 %i.dr, ptr %i.dp release, align 8, !noalias !1896
  %i.ds = mul i64 %i.dq, 27
  %i.dt = and i64 %i.ds, 255
  %i.du = getelementptr inbounds nuw i8, ptr %.lcssa204, i64 64
  %i.dv = getelementptr inbounds nuw [80 x i8], ptr %i.du, i64 %i.dt ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27, !noalias !1899
  store i64 2000, ptr %16, align 8, !noalias !1899
  store i8 1, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1899
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27, !noalias !1899
  store i64 9223372036854775807, ptr %15, align 8, !noalias !1899
  %i.dw = load atomic i32, ptr %i.dv acquire, align 4, !noalias !1899
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry8takeItemEv.exit, label %bb.p, !prof !575

bb.p:                                             ; preds = %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectISD_EEPT_RKS1_ISG_EEUlPSD_E_EESG_SJ_T0_.exit
  %i.dy = call noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 16 dereferenceable(80) %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(9) %16) #27, !noalias !1899 ; 0 uses
  br label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry8takeItemEv.exit

_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry8takeItemEv.exit: ; preds = %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectISD_EEPT_RKS1_ISG_EEUlPSD_E_EESG_SJ_T0_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27, !noalias !1899
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1899
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  store ptr null, ptr %18, align 16, !tbaa !541
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 64 ; 2 uses
  %i.eb = load <2 x ptr>, ptr %i.ea, align 16, !tbaa !570
  store <2 x ptr> %i.eb, ptr %i.ao, align 16, !tbaa !570
  store <2 x ptr> <ptr @_ZN5folly6detail8function14FunctionTraitsIFSt10shared_ptrINS_15observer_detail4CoreEEvEE10uninitCallERNS1_4DataE, ptr null>, ptr %i.ea, align 16, !tbaa !570
  %i.ec = load ptr, ptr %i.ap, align 8, !tbaa !1881 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i36, label %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit, label %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEC2EOS6_.exit

_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEC2EOS6_.exit: ; preds = %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry8takeItemEv.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.ee = call noundef i64 %i.ec(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %i.dz, ptr noundef nonnull align 16 dereferenceable(64) %18) #27, !inline_history !1902 ; 0 uses
  %.pr = load ptr, ptr %i.ed, align 8, !tbaa !1881 ; 2 uses
  %.not.i.i37 = icmp eq ptr %.pr, null
  br i1 %.not.i.i37, label %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEC2EOS6_.exit
  %i.ef = call noundef i64 %.pr(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.dz, ptr noundef null) #27, !inline_history !1903 ; 0 uses
  br label %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit

_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit: ; preds = %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry8takeItemEv.exit, %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEC2EOS6_.exit, %bb.q
  %i.eg = and i64 %i.dq, 255
  %i.eh = icmp eq i64 %i.eg, 255
  br i1 %i.eh, label %bb.r, label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE13dequeueCommonEPNS9_7SegmentE.exit

bb.r:                                             ; preds = %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %.lcssa204, i64 40
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1904
  %i.ek = add i64 %i.ej, 256
  call void @_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE19advanceHeadToTicketEm(ptr noundef nonnull align 64 dereferenceable(80) %i.bq, i64 noundef %i.ek) #27
  br label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE13dequeueCommonEPNS9_7SegmentE.exit

_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE13dequeueCommonEPNS9_7SegmentE.exit: ; preds = %bb.r, %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit
  store atomic ptr null, ptr %.sroa.0146.1 release, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0146.1, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !718 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 448
  %i.eo = load i8, ptr %i.en, align 64, !tbaa !514, !range !540, !noundef !198
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.s, label %_ZN5folly9hazptr_tcISt6atomicE7try_putEPNS_10hazptr_recIS1_EE.exit.i, !prof !575

bb.s:                                             ; preds = %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE13dequeueCommonEPNS9_7SegmentE.exit
  %i.eq = load ptr, ptr %i.an, align 8, !tbaa !695, !noalias !1890 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.eq, null
  br i1 %.not.i11.i, label %bb.t, label %_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit13.i, !prof !622

bb.t:                                             ; preds = %bb.s
  %i.er = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E7getSlowERNS_6detail25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit13.i unwind label %bb.v

_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit13.i: ; preds = %bb.t, %bb.s
  %i.es = phi ptr [ %i.eq, %bb.s ], [ %i.er, %bb.t ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 72 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !697 ; 3 uses
  %i.ev = icmp ult i8 %i.eu, 9
  br i1 %i.ev, label %_ZN5folly9hazptr_tcISt6atomicE7try_putEPNS_10hazptr_recIS1_EE.exit.i.thread, label %_ZN5folly9hazptr_tcISt6atomicE7try_putEPNS_10hazptr_recIS1_EE.exit.i, !prof !575

_ZN5folly9hazptr_tcISt6atomicE7try_putEPNS_10hazptr_recIS1_EE.exit.i.thread: ; preds = %_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit13.i
  %i.ew = add nuw nsw i8 %i.eu, 1
  store i8 %i.ew, ptr %i.et, align 8, !tbaa !697
  %i.ex = zext nneg i8 %i.eu to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ex
  store ptr %.sroa.0146.1, ptr %i.ey, align 8, !tbaa !699
  br label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE11dequeueImplEv.exit

_ZN5folly9hazptr_tcISt6atomicE7try_putEPNS_10hazptr_recIS1_EE.exit.i: ; preds = %_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit13.i, %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE13dequeueCommonEPNS9_7SegmentE.exit
  %i.ez = ptrtoint ptr %.sroa.0146.1 to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0146.1, i64 16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %_ZN5folly9hazptr_tcISt6atomicE7try_putEPNS_10hazptr_recIS1_EE.exit.i
  %i.fc = load atomic i64, ptr %i.fa acquire, align 8 ; 3 uses
  %i.fd = and i64 %i.fc, 1
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i38, label %bb.u

_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i38: ; preds = %.critedge.i.i
  %i.ff = inttoptr i64 %i.fc to ptr
  store ptr %i.ff, ptr %i.fb, align 16, !tbaa !702
  %i.fg = cmpxchg weak ptr %i.fa, i64 %i.fc, i64 %i.ez acq_rel acquire, align 8
  %i.fh = extractvalue { i64, i1 } %i.fg, 1
  br i1 %i.fh, label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE11dequeueImplEv.exit, label %.critedge.i.i.backedge

bb.u:                                             ; preds = %.critedge.i.i
  %i.fi = call noundef i32 @sched_yield() #27     ; 0 uses
  br label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %bb.u, %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i38
  br label %.critedge.i.i

bb.v:                                             ; preds = %bb.t
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #39
  unreachable

.loopexit197:                                     ; preds = %bb.m, %bb.o
  %lpad.loopexit199 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.loopexit.split-lp198:                            ; preds = %bb.j
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp198, %.loopexit197
  %lpad.phi201 = phi { ptr, i32 } [ %lpad.loopexit199, %.loopexit197 ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp198 ]
  %i.fl = extractvalue { ptr, i32 } %lpad.phi201, 0
  call void @__clang_call_terminate(ptr %i.fl) #39, !noalias !1890
  unreachable

_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE11dequeueImplEv.exit: ; preds = %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i38, %_ZN5folly9hazptr_tcISt6atomicE7try_putEPNS_10hazptr_recIS1_EE.exit.i.thread
  %i.fm = load ptr, ptr %i.aj, align 8, !tbaa !1881 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i39, label %_ZNK5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEE4execENS_6detail8function2OpEPNS8_4DataESB_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE11dequeueImplEv.exit
  %i.fn = call noundef i64 %i.fm(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %21, ptr noundef null) #27, !inline_history !1908 ; 0 uses
  br label %_ZNK5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEE4execENS_6detail8function2OpEPNS8_4DataESB_.exit.i

_ZNK5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEE4execENS_6detail8function2OpEPNS8_4DataESB_.exit.i: ; preds = %bb.x, %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE11dequeueImplEv.exit
  %i.fo = load ptr, ptr %i.ap, align 8, !tbaa !1881 ; 2 uses
  %.not.i9.i41 = icmp eq ptr %i.fo, null
  br i1 %.not.i9.i41, label %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit44, label %bb.y

bb.y:                                             ; preds = %_ZNK5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEE4execENS_6detail8function2OpEPNS8_4DataESB_.exit.i
  %i.fp = call noundef i64 %i.fo(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %18, ptr noundef nonnull align 16 dereferenceable(64) %21) #27, !inline_history !1908 ; 0 uses
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !1881
  br label %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit44

_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit44: ; preds = %bb.y, %_ZNK5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEE4execENS_6detail8function2OpEPNS8_4DataESB_.exit.i
  %i.fq = phi ptr [ null, %_ZNK5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEE4execENS_6detail8function2OpEPNS8_4DataESB_.exit.i ], [ %.pre.i, %bb.y ]
  store ptr %i.fq, ptr %i.aj, align 8, !tbaa !1881
  %i.fr = load ptr, ptr %i.ao, align 16, !tbaa !1879
  store ptr %i.fr, ptr %i.ai, align 16, !tbaa !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly8OptionalINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEEED2Ev.exit, %_ZN5folly8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.fs = load ptr, ptr %i.ai, align 16, !tbaa !1879, !noalias !1909
  invoke void %i.fs(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %23, ptr noundef nonnull align 16 dereferenceable(48) %21)
          to label %_ZN5folly6detail8function14FunctionTraitsIFSt10shared_ptrINS_15observer_detail4CoreEEvEEclEv.exit unwind label %bb.ag, !inline_history !1912

_ZN5folly6detail8function14FunctionTraitsIFSt10shared_ptrINS_15observer_detail4CoreEEvEEclEv.exit: ; preds = %bb.z
  %i.ft = load ptr, ptr %23, align 8, !tbaa !1913 ; 3 uses
  %.not = icmp eq ptr %i.ft, null
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5folly6detail8function14FunctionTraitsIFSt10shared_ptrINS_15observer_detail4CoreEEvEEclEv.exit
  %i.fu = load ptr, ptr %i.aq, align 8, !tbaa !1918 ; 7 uses
  %i.fv = load ptr, ptr %i.ar, align 8, !tbaa !1921
  %.not.i46 = icmp eq ptr %i.fu, %i.fv
  br i1 %.not.i46, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !1913
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  store ptr null, ptr %i.fw, align 8, !tbaa !1922
  %i.fx = load ptr, ptr %i.as, align 8, !tbaa !1922
  store ptr null, ptr %i.as, align 8, !tbaa !1922
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !1922
  store ptr null, ptr %23, align 8, !tbaa !1913
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store ptr %i.fy, ptr %i.aq, align 8, !tbaa !1918
  br label %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fz = load ptr, ptr %22, align 8, !tbaa !1923 ; 12 uses
  %i.ga = ptrtoint ptr %i.fu to i64               ; 3 uses
  %i.gb = ptrtoint ptr %i.fz to i64               ; 3 uses
  %i.gc = sub i64 %i.ga, %i.gb                    ; 4 uses
  %i.gd = icmp eq i64 %i.gc, 9223372036854775792
  br i1 %i.gd, label %bb.ad, label %_ZNKSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #40
          to label %.noexc101 unwind label %.loopexit.split-lp193

.noexc101:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ac
  %i.ge = ashr exact i64 %i.gc, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gf, i64 576460752303423487)
  %i.gi = select i1 %i.gg, i64 576460752303423487, i64 %i.gh ; 3 uses
  %.not.i.i98 = icmp ne i64 %i.gi, 0
  call void @llvm.assume(i1 %.not.i.i98)
  %i.gj = shl nuw nsw i64 %i.gi, 4
  %i.gk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #37
          to label %.noexc102 unwind label %.loopexit192 ; 13 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gc ; 2 uses
  store ptr %i.ft, ptr %i.gl, align 8, !tbaa !1913
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.as, align 8, !tbaa !1922
  store ptr null, ptr %i.as, align 8, !tbaa !1922
  store ptr %i.gn, ptr %i.gm, align 8, !tbaa !1922
  store ptr null, ptr %23, align 8, !tbaa !1913
  %.not10.i.i.i.i = icmp eq ptr %i.fz, %i.fu
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i99.preheader

.lr.ph.i.i.i.i99.preheader:                       ; preds = %.noexc102
  %i.go = add i64 %i.ga, -16
  %i.gp = sub i64 %i.go, %i.gb                    ; 2 uses
  %i.gq = lshr i64 %i.gp, 4
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gp, 112
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i99.preheader371, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i99.preheader
  %scevgep = getelementptr i8, ptr %i.gk, i64 8
  %i.gs = add i64 %i.ga, -16
  %i.gt = sub i64 %i.gs, %i.gb
  %i.gu = and i64 %i.gt, -16                      ; 4 uses
  %scevgep350 = getelementptr i8, ptr %scevgep, i64 %i.gu
  %scevgep351 = getelementptr i8, ptr %i.fz, i64 8 ; 2 uses
  %scevgep352 = getelementptr i8, ptr %scevgep351, i64 %i.gu
  %scevgep353 = getelementptr i8, ptr %i.fz, i64 16
  %scevgep354 = getelementptr i8, ptr %scevgep353, i64 %i.gu
  %scevgep355 = getelementptr i8, ptr %i.gk, i64 8
  %scevgep356 = getelementptr i8, ptr %i.gk, i64 16
  %scevgep357 = getelementptr i8, ptr %scevgep356, i64 %i.gu
  %bound0 = icmp ult ptr %i.gk, %scevgep352
  %bound1 = icmp ult ptr %i.fz, %scevgep350
  %found.conflict = and i1 %bound0, %bound1
  %bound0358 = icmp ult ptr %scevgep351, %scevgep357
  %bound1359 = icmp ult ptr %scevgep355, %scevgep354
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx = or i1 %found.conflict, %found.conflict360
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i99.preheader371, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gr, 2305843009213693944     ; 3 uses
  %i.gv = shl i64 %n.vec, 4                       ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gk, i64 %i.gv  ; 2 uses
  %i.gx = getelementptr i8, ptr %i.fz, i64 %i.gv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gy = shl i64 %index, 4                       ; 3 uses
  %27 = or disjoint i64 %i.gy, 64                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gk, i64 %i.gy
  %next.gep361 = getelementptr i8, ptr %i.gk, i64 %27
  %next.gep362 = getelementptr i8, ptr %i.fz, i64 %i.gy ; 2 uses
  %next.gep363 = getelementptr i8, ptr %i.fz, i64 %27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  %wide.vec = load <8 x ptr>, ptr %next.gep362, align 8, !tbaa !570, !alias.scope !1927, !noalias !1924
  %wide.vec365 = load <8 x ptr>, ptr %next.gep363, align 8, !tbaa !570, !alias.scope !1927, !noalias !1924
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !570, !alias.scope !1924, !noalias !1927
  store <8 x ptr> %wide.vec365, ptr %next.gep361, align 8, !tbaa !570, !alias.scope !1924, !noalias !1927
  store <8 x ptr> splat (ptr null), ptr %next.gep362, align 8, !tbaa !570, !alias.scope !1927, !noalias !1924
  store <8 x ptr> splat (ptr null), ptr %next.gep363, align 8, !tbaa !570, !alias.scope !1927, !noalias !1924
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %middle.block, label %vector.body, !llvm.loop !1929

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i99.preheader371

.lr.ph.i.i.i.i99.preheader371:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i99.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.gk, %vector.memcheck ], [ %i.gk, %.lr.ph.i.i.i.i99.preheader ], [ %i.gw, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fz, %vector.memcheck ], [ %i.fz, %.lr.ph.i.i.i.i99.preheader ], [ %i.gx, %middle.block ]
  br label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %.lr.ph.i.i.i.i99.preheader371, %.lr.ph.i.i.i.i99
  %.012.i.i.i.i = phi ptr [ %i.hd, %.lr.ph.i.i.i.i99 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i99.preheader371 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i99 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i99.preheader371 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  %i.ha = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.hb = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !570, !alias.scope !1927, !noalias !1924
  store ptr null, ptr %i.ha, align 8, !tbaa !1922, !alias.scope !1927, !noalias !1924
  store <2 x ptr> %i.hb, ptr %.012.i.i.i.i, align 8, !tbaa !570, !alias.scope !1924, !noalias !1927
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !1913, !alias.scope !1927, !noalias !1924
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.hc, %i.fu
  br i1 %.not.i.i.i.i100, label %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i99, !llvm.loop !1930

_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i99, %middle.block, %.noexc102
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gk, %.noexc102 ], [ %i.gw, %middle.block ], [ %i.hd, %.lr.ph.i.i.i.i99 ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.fz, null
  br i1 %.not.i23.i, label %.noexc48, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gc) #38
  br label %.noexc48

.noexc48:                                         ; preds = %bb.ae, %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.gk, ptr %22, align 8, !tbaa !1923
  store ptr %i.he, ptr %i.aq, align 8, !tbaa !1918
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.gi
  store ptr %i.hf, ptr %i.ar, align 8, !tbaa !1921
  br label %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.af:                                            ; preds = %_ZN5folly15observer_detail15ObserverManager11getInstanceEv.exit
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %20, align 8, !tbaa !679  ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.af
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !541
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %common.resume

bb.ag:                                            ; preds = %bb.z
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit192:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit194 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp193:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp193, %.loopexit192
  %lpad.phi196 = phi { ptr, i32 } [ %lpad.loopexit194, %.loopexit192 ], [ %lpad.loopexit.split-lp195, %.loopexit.split-lp193 ]
  call void @_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #27
  br label %bb.bq

_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %.noexc48, %bb.ab, %_ZN5folly6detail8function14FunctionTraitsIFSt10shared_ptrINS_15observer_detail4CoreEEvEEclEv.exit
  %i.hn = load ptr, ptr %i.as, align 8, !tbaa !1922 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load atomic i64, ptr %i.ho acquire, align 8 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.ho, align 8, !tbaa !1931
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 0, ptr %i.hs, align 4, !tbaa !1933
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !54
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #27, !call_target !1934, !inline_history !1996
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !54
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #27, !call_target !1962, !inline_history !1996
  br label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !541
  %.not.i.i.i53 = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i53, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ia = add nsw i32 %i.hr, -1
  store i32 %i.ia, ptr %i.ho, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ib = atomicrmw volatile add ptr %i.ho, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i = phi i32 [ %i.hr, %bb.al ], [ %i.ib, %bb.am ]
  %i.ic = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ic, label %bb.an, label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !622

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #27
  br label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly15observer_detail4CoreEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.id = load atomic i8, ptr %i.ak seq_cst, align 8, !range !540, !noundef !198
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.if = load ptr, ptr %i.aq, align 8, !tbaa !1918
  %i.ig = load ptr, ptr %22, align 8, !tbaa !1923
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = icmp ult i64 %i.ij, 16384
  br i1 %i.ik, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.ao
  %i.il = load ptr, ptr %i.j, align 8, !tbaa !1882, !nonnull !198, !align !688 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !1997
  store i64 -9223372036854775808, ptr %14, align 8, !noalias !1997
  %i.im = load atomic ptr, ptr %i.il acquire, align 64, !noalias !2000 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8, !noalias !2003 ; 4 uses
  %i.ip = mul i64 %i.io, 27
  %i.iq = and i64 %i.ip, 255
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.is = getelementptr inbounds nuw [80 x i8], ptr %i.ir, i64 %i.iq ; 7 uses
  %i.it = load atomic i32, ptr %i.is acquire, align 4, !noalias !2003
  %i.iu = icmp eq i32 %i.it, 1
  br i1 %i.iu, label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit.thread, label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry12tryWaitUntilINSt6chrono3_V212steady_clockENSC_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSC_10time_pointIT_T0_EE.exit, !prof !575

_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry12tryWaitUntilINSt6chrono3_V212steady_clockENSC_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSC_10time_pointIT_T0_EE.exit: ; preds = %bb.ap
  %i.iv = call noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 16 dereferenceable(80) %i.is, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(9) @_ZZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry12tryWaitUntilINSt6chrono3_V212steady_clockENSC_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSC_10time_pointIT_T0_EEE3opt) #27, !noalias !2003
  br i1 %i.iv, label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit.thread, label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit, !prof !701

_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit: ; preds = %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry12tryWaitUntilINSt6chrono3_V212steady_clockENSC_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSC_10time_pointIT_T0_EE.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 72
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8, !noalias !2003
  %i.iy = icmp ult i64 %i.io, %i.ix
  br i1 %i.iy, label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit.thread, label %bb.aq, !prof !701

bb.aq:                                            ; preds = %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit
  store i8 0, ptr %i.at, align 16, !tbaa !2006
  br label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE17tryDequeueUntilSCINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEENS_8OptionalIS7_EEPNS9_7SegmentERKNSB_10time_pointIT_T0_EE.exit

_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit.thread: ; preds = %bb.ap, %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry12tryWaitUntilINSt6chrono3_V212steady_clockENSC_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSC_10time_pointIT_T0_EE.exit, %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit
  %i.iz = add i64 %i.io, 1
  store atomic i64 %i.iz, ptr %i.in release, align 8, !noalias !2003
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !2003
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !2008
  store i64 2000, ptr %12, align 8, !noalias !2008
  store i8 1, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !2008
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !2008
  store i64 9223372036854775807, ptr %11, align 8, !noalias !2008
  %i.ja = load atomic i32, ptr %i.is acquire, align 4, !noalias !2008
  %i.jb = icmp eq i32 %i.ja, 1
  br i1 %i.jb, label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry8takeItemEv.exit.i, label %bb.ar, !prof !575

bb.ar:                                            ; preds = %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit.thread
  %i.jc = call noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 16 dereferenceable(80) %i.is, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(9) %12) #27, !noalias !2008 ; 0 uses
  br label %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry8takeItemEv.exit.i

_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE5Entry8takeItemEv.exit.i: ; preds = %bb.ar, %_ZN5folly14UnboundedQueueINS_8FunctionIFSt10shared_ptrINS_15observer_detail4CoreEEvEEELb0ELb1ELb1ELm8ELm6ESt6atomicE18tryDequeueWaitElemINSt6chrono3_V212steady_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRNS9_5EntryEmRKNSB_10time_pointIT_T0_EE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !2008
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !2008
  %i.jd = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  store ptr null, ptr %13, align 16, !tbaa !541, !noalias !2003
  %i.je = getelementptr inbounds nuw i8, ptr %i.is, i64 64 ; 2 uses
  %i.jf = load <2 x ptr>, ptr %i.je, align 16, !tbaa !570, !noalias !2003
end_hunk_0
