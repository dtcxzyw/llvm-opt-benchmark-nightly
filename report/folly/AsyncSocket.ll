Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/AsyncSocket?download=true
inline.NumInlined: 5680
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly11AsyncSocket20invokeConnectSuccessEv:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket20invokeConnectAttemptEv(ptr noundef nonnull align 8 dereferenceable(1193) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.folly::Function.510", align 16 ; 7 uses
  %i.a = load ptr, ptr @_ZZN5folly11AsyncSocket20invokeConnectAttemptEvE8vlocal__, align 8, !tbaa !15906 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly11AsyncSocket20invokeConnectAttemptEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.3, i32 noundef 5)
  br i1 %i.c, label %bb.c, label %.critedge22

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !15894
  %i.e = icmp sgt i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %.critedge22

bb.c:                                             ; preds = %.split, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.3, i32 noundef 4641)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.275, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %0)
          to label %_ZNSolsEPKv.exit unwind label %bb.e ; 4 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.43, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZNSolsEPKv.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.45, i64 noundef 21)
          to label %.noexc unwind label %bb.e     ; 0 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16082
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.l)
          to label %.noexc24 unwind label %bb.e

.noexc24:                                         ; preds = %.noexc
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.41, i64 noundef 1)
          to label %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit unwind label %bb.e ; 0 uses

_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit: ; preds = %.noexc24
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.291, i64 noundef 18)
          to label %.critedge unwind label %bb.e  ; 0 uses

.critedge:                                        ; preds = %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  br label %.critedge22

.critedge22:                                      ; preds = %.split, %bb.b, %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16184 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not1.i.i = icmp slt i64 %i.q, 0
  %i.t = select i1 %.not1.i.i, ptr %i.s, ptr %i.r ; 2 uses
  %i.u = shl i64 %i.q, 3                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %.not29 = icmp samesign eq i64 %i.u, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %.noexc24, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  resume { ptr, i32 } %i.w

.lr.ph:                                           ; preds = %.critedge22, %.lr.ph
  %.030 = phi ptr [ %i.ab, %.lr.ph ], [ %i.t, %.critedge22 ] ; 2 uses
  %i.x = load ptr, ptr %.030, align 8, !tbaa !16186 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %0) #42, !call_target !16415
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.critedge22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1104
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  store ptr null, ptr %2, align 16, !tbaa !16131
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr @"_ZN5folly6detail8function5call_IZNS_11AsyncSocket20invokeConnectAttemptEvE3$_0Lb1ELb0EvJPNS_28AsyncSocketObserverInterfaceEPS3_EEET2_DpT3_RNS1_4DataE", ptr %i.ad, align 16, !tbaa !16193
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.ae, align 8, !tbaa !16194
  call void @_ZN5folly17ObserverContainerINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEENS_35ObserverContainerStorePolicyDefaultILj2EEELm4EE33invokeInterfaceMethodAllObserversEONS_8FunctionIFvPS1_PS2_EEE(ptr noundef nonnull align 8 dereferenceable(81) %i.ac, ptr noundef nonnull align 16 dereferenceable(64) %2) #42
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16194 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ag = call noundef i64 %i.af(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #42, !inline_history !752 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket12releaseIOBufESt10unique_ptrINS_5IOBufESt14default_deleteIS2_EEPNS_11AsyncWriter20ReleaseIOBufCallbackE(ptr noundef nonnull align 8 dereferenceable(1193) %0, ptr nofree noundef align 8 captures(none) %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !16162  ; 2 uses
  %.not3 = icmp eq ptr %i.a, null
  br i1 %.not3, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !814
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(1193) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a), !call_target !1405
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %1, align 8, !tbaa !16162
  store i64 %i.e, ptr %3, align 8, !tbaa !16162
  store ptr null, ptr %1, align 8, !tbaa !16162
  %i.f = load ptr, ptr %2, align 8, !tbaa !814
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 %3) #42, !call_target !16419
  %i.i = load ptr, ptr %3, align 8, !tbaa !16162  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #42
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.i) #42
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly11AsyncSocket11detachIOBufERKNS_5IOBufE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1193) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5folly5IOBuf20computeChainCapacityEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16221
  %i.d = sub i64 %i.c, %i.a
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16221
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket16enableByteEventsEv(ptr noundef nonnull align 8 dereferenceable(1193) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.folly::SocketAddress::IPAddr", align 4 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.folly::SocketAddress", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"struct.folly::TcpInfo::LookupOptions", align 1 ; 8 uses
  %10 = alloca %"class.folly::Expected", align 8  ; 13 uses
  %11 = alloca %"class.folly::Expected", align 8  ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.folly::TcpInfo", align 8  ; 12 uses
  %15 = alloca %"struct.folly::TcpInfo", align 8  ; 15 uses
  %16 = alloca %"class.folly::Optional.212", align 8 ; 7 uses
  %17 = alloca %"class.folly::Optional.212", align 8 ; 7 uses
  %18 = alloca %"class.folly::Optional.212", align 8 ; 7 uses
  %19 = alloca %"class.folly::Optional.212", align 8 ; 7 uses
  %20 = alloca %"class.folly::Optional.212", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.folly::Optional.212", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16291 ; 2 uses
  %.not344 = icmp eq ptr %i.f, null
  br i1 %.not344, label %bb.b, label %_ZNSt10unique_ptrIN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #43, !noalias !17441 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i8 0, i64 104, i1 false), !noalias !17441
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !16291 ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !16291
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !16420, !range !15896, !noundef !1501
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZNKSt14default_deleteIN5folly11AsyncSocket15ByteEventHelperEEclEPS2_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !16420
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %i.l) #42
  br label %_ZNKSt14default_deleteIN5folly11AsyncSocket15ByteEventHelperEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5folly11AsyncSocket15ByteEventHelperEEclEPS2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 104) #41
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !16291
  br label %_ZNSt10unique_ptrIN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5folly11AsyncSocket15ByteEventHelperEEclEPS2_.exit.i.i.i.i, %bb.a
  %.ph = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNKSt14default_deleteIN5folly11AsyncSocket15ByteEventHelperEEclEPS2_.exit.i.i.i.i ] ; 2 uses
  %i.m = load i8, ptr %.ph, align 8, !tbaa !16307
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.fa, label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_EED2Ev.exit
  %24 = phi ptr [ %.ph, %_ZNSt10unique_ptrIN5folly11AsyncSocket15ByteEventHelperESt14default_deleteIS2_EED2Ev.exit ], [ %i.g, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.p = load i8, ptr %i.o, align 8, !tbaa !16294, !range !15896, !noundef !1501
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.fa, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1041
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16096, !range !15896, !noundef !1501
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 24) #42 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  invoke void @_ZN5folly11AsyncSocket8withAddrB5cxx11ENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1193) %0, ptr nonnull @.str.118, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.118, i64 51))
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5folly20AsyncSocketExceptionC2ENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN5folly20AsyncSocketExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #46
          to label %bb.ff unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5folly20AsyncSocketExceptionE ; 2 uses
  %.066287 = extractvalue { ptr, i32 } %i.v, 0
  %.072288 = extractvalue { ptr, i32 } %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.070 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5folly20AsyncSocketExceptionE ; 4 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !16199  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !16131
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #41
  %.066291 = extractvalue { ptr, i32 } %i.w, 0    ; 2 uses
  %.072292 = extractvalue { ptr, i32 } %i.w, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br i1 %.070, label %bb.k, label %bb.ex

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  %.066 = extractvalue { ptr, i32 } %i.w, 0       ; 2 uses
  %.072 = extractvalue { ptr, i32 } %i.w, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br i1 %.070, label %bb.k, label %bb.ex

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.072290 = phi i32 [ %.072288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.072, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.072292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.066289 = phi ptr [ %.066287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.066, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.066291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #42
  br label %bb.ex

bb.l:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16082
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %0, align 8, !tbaa !814
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(1193) %0)
          to label %bb.n unwind label %bb.q, !call_target !1118

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.t, label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.n
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 24) #42 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  invoke void @_ZN5folly11AsyncSocket8withAddrB5cxx11ENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1193) %0, ptr nonnull @.str.119, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.119, i64 71))
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread

bb.o:                                             ; preds = %.critedge
  invoke void @_ZN5folly20AsyncSocketExceptionC2ENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN5folly20AsyncSocketExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #46
          to label %bb.ff unwind label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5folly20AsyncSocketExceptionE ; 2 uses
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = extractvalue { ptr, i32 } %i.ak, 1
  br label %bb.ex

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread: ; preds = %.critedge
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5folly20AsyncSocketExceptionE ; 2 uses
  %.167295 = extractvalue { ptr, i32 } %i.an, 0
  %.173296 = extractvalue { ptr, i32 } %i.an, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %.068 = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5folly20AsyncSocketExceptionE ; 4 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !16199 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.r
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !16131
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #41
  %.167299 = extractvalue { ptr, i32 } %i.ao, 0   ; 2 uses
  %.173300 = extractvalue { ptr, i32 } %i.ao, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br i1 %.068, label %bb.s, label %bb.ex

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.r
  %.167 = extractvalue { ptr, i32 } %i.ao, 0      ; 2 uses
  %.173 = extractvalue { ptr, i32 } %i.ao, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br i1 %.068, label %bb.s, label %bb.ex

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %.173298 = phi i32 [ %.173296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread ], [ %.173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.173300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ]
  %.167297 = phi ptr [ %.167295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread ], [ %.167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.167299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ]
  call void @__cxa_free_exception(ptr %i.aj) #42
  br label %bb.ex

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %1)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 0, ptr %i.av, align 4, !tbaa !16422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !16424
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store i8 0, ptr %i.aw, align 8, !tbaa !16228
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  %.sroa.0.0.copyload = load i32, ptr %i.ac, align 4, !tbaa !15894
  invoke void @_ZN5folly13SocketAddress19setFromLocalAddressENS_13NetworkSocketE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 %.sroa.0.0.copyload)
          to label %bb.ad unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5folly20AsyncSocketExceptionE ; 2 uses
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = extractvalue { ptr, i32 } %i.ax, 1
  br label %_ZN5folly13SocketAddressD2Ev.exit258

bb.w:                                             ; preds = %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12system_error
          catch ptr @_ZTIN5folly20AsyncSocketExceptionE ; 2 uses
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { ptr, i32 } %i.ba, 1      ; 2 uses
  %i.bd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12system_error) #42
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.x, label %bb.eu

bb.x:                                             ; preds = %bb.w
  %i.bf = call ptr @__cxa_begin_catch(ptr %i.bb) #42 ; 0 uses
  %i.bg = call ptr @__cxa_allocate_exception(i64 24) #42 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  invoke void @_ZN5folly11AsyncSocket8withAddrB5cxx11ENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1193) %0, ptr nonnull @.str.119, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.119, i64 71))
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5folly20AsyncSocketExceptionC2ENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN5folly20AsyncSocketExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #46
          to label %bb.ff unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread: ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5folly20AsyncSocketExceptionE ; 2 uses
end_hunk_0
