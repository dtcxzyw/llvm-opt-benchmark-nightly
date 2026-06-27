inline.NumInlined: 4673
inline.NumDeleted: 1879
begin_hunk_0_@_ZN5folly11AsyncSocket16invokeConnectErrERKNS_20AsyncSocketExceptionE:bb.a
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #41, !call_target !15079
  %i.as = getelementptr inbounds nuw i8, ptr %.02441, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.am
  br i1 %.not, label %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i, label %.lr.ph

_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i: ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1) #41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %6, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i64, ptr %i.au, align 8
  store i64 %i.av, ptr %i.at, align 8
  store ptr null, ptr %5, align 16, !tbaa !14155
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEE10uninitCallES4_S6_RNS1_4DataE, ptr %i.aw, align 16, !tbaa !14215
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !14217
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %5, align 16, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.at, align 8
  store i64 %i.az, ptr %i.ay, align 16
  store ptr @"_ZN5folly6detail8function5call_IZNS_11AsyncSocket16invokeConnectErrERKNS_20AsyncSocketExceptionEE3$_0Lb1ELb0EvJPNS_28AsyncSocketObserverInterfaceEPS3_EEET2_DpT3_RNS1_4DataE", ptr %i.aw, align 16, !tbaa !14215
  store ptr @"_ZN5folly6detail8function13DispatchSmall4execIZNS_11AsyncSocket16invokeConnectErrERKNS_20AsyncSocketExceptionEE3$_0EEmNS1_2OpEPNS1_4DataESB_", ptr %i.ax, align 8, !tbaa !14217
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14214
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.bc = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #42
          to label %_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i unwind label %bb.k ; 7 uses

_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i: ; preds = %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store ptr null, ptr %i.bc, align 16, !tbaa !14155
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store ptr @"_ZN5folly6detail8function5call_IZNS_11AsyncSocket16invokeConnectErrERKNS_20AsyncSocketExceptionEE3$_0Lb1ELb0EvJPNS_28AsyncSocketObserverInterfaceEPS3_EEET2_DpT3_RNS1_4DataE", ptr %i.bg, align 16, !tbaa !14215
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store ptr @"_ZN5folly6detail8function13DispatchSmall4execIZNS_11AsyncSocket16invokeConnectErrERKNS_20AsyncSocketExceptionEE3$_0EEmNS1_2OpEPNS1_4DataESB_", ptr %i.bh, align 8, !tbaa !14217
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEE10uninitCallES4_S6_RNS1_4DataE, ptr %i.aw, align 16, !tbaa !14215
  store ptr null, ptr %i.ax, align 8, !tbaa !14217
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 16 dereferenceable(64) %i.bc, ptr noundef nonnull align 16 dereferenceable(64) %5) #41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %i.bc, align 16, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i64, ptr %i.ay, align 16
  store i64 %i.bj, ptr %i.bi, align 16
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 16 dereferenceable(64) %5) #41
  store ptr %i.bc, ptr %2, align 16, !tbaa !14155
  store ptr @_ZN5folly6detail8function5call_INS_8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEELb0ELb0EvJPNS_21ObserverContainerBaseIS4_S6_NS_34ObserverContainerBasePolicyDefaultINS4_6EventsELm32EEEE12ObserverBaseES7_EEET2_DpT3_RNS1_4DataE, ptr %i.be, align 16, !tbaa !14218
  store ptr @_ZN5folly6detail8function11DispatchBig4execINS_8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEEEEmNS1_2OpEPNS1_4DataESD_, ptr %i.bd, align 8, !tbaa !14220
  store i8 0, ptr %3, align 4, !tbaa !14155
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %i.bk, align 4, !tbaa !14221
  call void @_ZN5folly21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEEE25invokeInterfaceMethodImplEPS2_ONS_8FunctionIFvPNS6_12ObserverBaseES7_EEENS_8OptionalIS4_EE(ptr noundef nonnull align 8 dereferenceable(81) %i.bf, ptr noundef %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull dead_on_return %3) #41
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !14220 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i2.i, label %_ZN5folly17ObserverContainerINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEENS_35ObserverContainerStorePolicyDefaultILj2EEELm4EE33invokeInterfaceMethodAllObserversEONS_8FunctionIFvPS1_PS2_EEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i
  %i.bm = call noundef i64 %i.bl(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #41, !inline_history !14223 ; 0 uses
  br label %_ZN5folly17ObserverContainerINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEENS_35ObserverContainerStorePolicyDefaultILj2EEELm4EE33invokeInterfaceMethodAllObserversEONS_8FunctionIFvPS1_PS2_EEE.exit

bb.k:                                             ; preds = %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #43
  unreachable

_ZN5folly17ObserverContainerINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEENS_35ObserverContainerStorePolicyDefaultILj2EEELm4EE33invokeInterfaceMethodAllObserversEONS_8FunctionIFvPS1_PS2_EEE.exit: ; preds = %_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !14217 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly17ObserverContainerINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEENS_35ObserverContainerStorePolicyDefaultILj2EEELm4EE33invokeInterfaceMethodAllObserversEONS_8FunctionIFvPS1_PS2_EEE.exit
  %i.bq = call noundef i64 %i.bp(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef null) #41, !inline_history !15080 ; 0 uses
  br label %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEED2Ev.exit

_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEED2Ev.exit: ; preds = %_ZN5folly17ObserverContainerINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEENS_35ObserverContainerStorePolicyDefaultILj2EEELm4EE33invokeInterfaceMethodAllObserversEONS_8FunctionIFvPS1_PS2_EEE.exit, %bb.l
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.m

bb.m:                                             ; preds = %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEED2Ev.exit, %.critedge30
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !14264 ; 3 uses
  %.not29 = icmp eq ptr %i.bs, null
  br i1 %.not29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.br, align 8, !tbaa !14264
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %1) #41, !call_target !15081
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket20invokeConnectSuccessEv(ptr noundef nonnull align 8 dereferenceable(1169) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Function.387", align 16 ; 7 uses
  %2 = alloca %"class.folly::Optional.385", align 4 ; 5 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = load ptr, ptr @_ZZN5folly11AsyncSocket20invokeConnectSuccessEvE8vlocal__, align 8, !tbaa !13970 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly11AsyncSocket20invokeConnectSuccessEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.3, i32 noundef 5)
  br i1 %i.c, label %bb.d, label %.critedge29

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !7
  %i.e = icmp sgt i32 %i.d, 4
  br i1 %i.e, label %bb.d, label %.critedge29

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.3, i32 noundef 4382)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.264, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %0)
          to label %_ZNSolsEPKv.exit unwind label %bb.g ; 4 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.43, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZNSolsEPKv.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.45, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 0 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14114
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.l)
          to label %.noexc31 unwind label %bb.g

.noexc31:                                         ; preds = %.noexc
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.41, i64 noundef 1)
          to label %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit unwind label %bb.g ; 0 uses

_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit: ; preds = %.noexc31
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.279, i64 noundef 26)
          to label %.critedge unwind label %bb.g  ; 0 uses

.critedge:                                        ; preds = %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %.critedge29

.critedge29:                                      ; preds = %bb.b, %bb.c, %.critedge
  %i.p = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #41 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i64 %i.p, ptr %i.q, align 8, !tbaa !13958
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !15084, !range !13961, !noundef !149
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit, label %bb.f

bb.f:                                             ; preds = %.critedge29
  store i8 1, ptr %i.s, align 8, !tbaa !15084
  br label %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit

_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit: ; preds = %.critedge29, %bb.f
  store i64 %i.p, ptr %i.r, align 8, !tbaa !13958
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14207 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.not1.i.i = icmp slt i64 %i.w, 0
  %i.z = select i1 %.not1.i.i, ptr %i.y, ptr %i.x ; 2 uses
  %i.aa = shl i64 %i.w, 3                         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %.not36 = icmp samesign eq i64 %i.aa, 0
  br i1 %.not36, label %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i, label %.lr.ph

bb.g:                                             ; preds = %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %.noexc31, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %i.ac

.lr.ph:                                           ; preds = %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit, %.lr.ph
  %.02338 = phi i1 [ %5, %.lr.ph ], [ false, %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit ]
  %.02437 = phi ptr [ %i.ak, %.lr.ph ], [ %i.z, %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit ] ; 3 uses
  %i.ad = load ptr, ptr %.02437, align 8, !tbaa !14208 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %0) #41, !call_target !15085
  %i.ah = load ptr, ptr %.02437, align 8, !tbaa !14208
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !14356, !range !13961, !noundef !149
  %4 = trunc nuw i8 %i.aj to i1
  %5 = or i1 %.02338, %4                          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02437, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.ab
  br i1 %.not, label %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i, label %.lr.ph

_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i: ; preds = %.lr.ph, %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit
  %.023.lcssa = phi i1 [ false, %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit ], [ %5, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14214
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.an = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #42
          to label %_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i unwind label %bb.i ; 4 uses

_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i: ; preds = %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr @"_ZN5folly6detail8function5call_IZNS_11AsyncSocket20invokeConnectSuccessEvE3$_0Lb1ELb0EvJPNS_28AsyncSocketObserverInterfaceEPS3_EEET2_DpT3_RNS1_4DataE", ptr %i.ar, align 16, !tbaa !14215
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.as, align 8, !tbaa !14217
  store ptr null, ptr %i.an, align 16
  store ptr %i.an, ptr %1, align 16, !tbaa !14155
  store ptr @_ZN5folly6detail8function5call_INS_8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEELb0ELb0EvJPNS_21ObserverContainerBaseIS4_S6_NS_34ObserverContainerBasePolicyDefaultINS4_6EventsELm32EEEE12ObserverBaseES7_EEET2_DpT3_RNS1_4DataE, ptr %i.ap, align 16, !tbaa !14218
  store ptr @_ZN5folly6detail8function11DispatchBig4execINS_8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEEEEmNS1_2OpEPNS1_4DataESD_, ptr %i.ao, align 8, !tbaa !14220
  store i8 0, ptr %2, align 4, !tbaa !14155
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 0, ptr %i.at, align 4, !tbaa !14221
  call void @_ZN5folly21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEEE25invokeInterfaceMethodImplEPS2_ONS_8FunctionIFvPNS6_12ObserverBaseES7_EEENS_8OptionalIS4_EE(ptr noundef nonnull align 8 dereferenceable(81) %i.aq, ptr noundef %i.am, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull dead_on_return %2) #41
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !14220 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i2.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i
  %i.av = call noundef i64 %i.au(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef null) #41, !inline_history !14223 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #43
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.023.lcssa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %0, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 864
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(1169) %0), !call_target !13931
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14264 ; 3 uses
  %.not28 = icmp eq ptr %i.bc, null
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.bb, align 8, !tbaa !14264
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #41, !call_target !15086
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket20invokeConnectAttemptEv(ptr noundef nonnull align 8 dereferenceable(1169) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Function.387", align 16 ; 7 uses
  %2 = alloca %"class.folly::Optional.385", align 4 ; 5 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = load ptr, ptr @_ZZN5folly11AsyncSocket20invokeConnectAttemptEvE8vlocal__, align 8, !tbaa !13970 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly11AsyncSocket20invokeConnectAttemptEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.3, i32 noundef 5)
  br i1 %i.c, label %bb.d, label %.critedge22

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !7
  %i.e = icmp sgt i32 %i.d, 4
  br i1 %i.e, label %bb.d, label %.critedge22

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.3, i32 noundef 4412)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.264, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %0)
          to label %_ZNSolsEPKv.exit unwind label %bb.f ; 4 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.43, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZNSolsEPKv.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.45, i64 noundef 21)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14114
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.l)
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %.noexc
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.41, i64 noundef 1)
          to label %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit unwind label %bb.f ; 0 uses

_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit: ; preds = %.noexc24
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.280, i64 noundef 18)
          to label %.critedge unwind label %bb.f  ; 0 uses

.critedge:                                        ; preds = %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %.critedge22

.critedge22:                                      ; preds = %bb.b, %bb.c, %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14207 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not1.i.i = icmp slt i64 %i.q, 0
  %i.t = select i1 %.not1.i.i, ptr %i.s, ptr %i.r ; 2 uses
  %i.u = shl i64 %i.q, 3                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %.not29 = icmp samesign eq i64 %i.u, 0
  br i1 %.not29, label %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %.noexc24, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %i.w

.lr.ph:                                           ; preds = %.critedge22, %.lr.ph
  %.01930 = phi ptr [ %i.ab, %.lr.ph ], [ %i.t, %.critedge22 ] ; 2 uses
  %i.x = load ptr, ptr %.01930, align 8, !tbaa !14208 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %0) #41, !call_target !15089
  %i.ab = getelementptr inbounds nuw i8, ptr %.01930, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.v
  br i1 %.not, label %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i, label %.lr.ph

_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i: ; preds = %.lr.ph, %.critedge22
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14214
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.ae = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #42
          to label %_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i unwind label %bb.h ; 4 uses

_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i: ; preds = %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr @"_ZN5folly6detail8function5call_IZNS_11AsyncSocket20invokeConnectAttemptEvE3$_0Lb1ELb0EvJPNS_28AsyncSocketObserverInterfaceEPS3_EEET2_DpT3_RNS1_4DataE", ptr %i.ai, align 16, !tbaa !14215
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.aj, align 8, !tbaa !14217
  store ptr null, ptr %i.ae, align 16
  store ptr %i.ae, ptr %1, align 16, !tbaa !14155
  store ptr @_ZN5folly6detail8function5call_INS_8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEELb0ELb0EvJPNS_21ObserverContainerBaseIS4_S6_NS_34ObserverContainerBasePolicyDefaultINS4_6EventsELm32EEEE12ObserverBaseES7_EEET2_DpT3_RNS1_4DataE, ptr %i.ag, align 16, !tbaa !14218
  store ptr @_ZN5folly6detail8function11DispatchBig4execINS_8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEEEEmNS1_2OpEPNS1_4DataESD_, ptr %i.af, align 8, !tbaa !14220
  store i8 0, ptr %2, align 4, !tbaa !14155
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 0, ptr %i.ak, align 4, !tbaa !14221
  call void @_ZN5folly21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS1_6EventsELm32EEEE25invokeInterfaceMethodImplEPS2_ONS_8FunctionIFvPNS6_12ObserverBaseES7_EEENS_8OptionalIS4_EE(ptr noundef nonnull align 8 dereferenceable(81) %i.ah, ptr noundef %i.ad, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull dead_on_return %2) #41
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !14220 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i2.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i
  %i.am = call noundef i64 %i.al(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef null) #41, !inline_history !14223 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #43
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZN5folly8FunctionIFvPNS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE12ObserverBaseEPS3_EEC2IFvPS2_SA_ENS0_ISF_EEvvEEONS0_IT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
end_hunk_0
