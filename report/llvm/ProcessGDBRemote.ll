Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ProcessGDBRemote?download=true
inline.NumInlined: 12934
inline.NumDeleted: 6125
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote16StartAsyncThreadEv:bb.a
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i26: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i27 = phi i32 [ %i.br, %bb.ac ], [ %i.cb, %bb.ad ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i27, 1
  br i1 %i.cc, label %bb.ae, label %_ZN4llvm8ExpectedIN12lldb_private10HostThreadEED2Ev.exit, !prof !96

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #30
  br label %_ZN4llvm8ExpectedIN12lldb_private10HostThreadEED2Ev.exit

bb.af:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit23
  %i.cd = load ptr, ptr %4, align 8, !tbaa !82    ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i28, label %_ZN4llvm8ExpectedIN12lldb_private10HostThreadEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.af
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !86
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) #30, !inline_history !1374
  br label %_ZN4llvm8ExpectedIN12lldb_private10HostThreadEED2Ev.exit

_ZN4llvm8ExpectedIN12lldb_private10HostThreadEED2Ev.exit: ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i26, %bb.ae, %bb.af, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.q, label %bb.aj, label %bb.ai

bb.ag:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  br i1 %.not51, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i50, ptr nonnull @.str.6, i64 93, ptr nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote16StartAsyncThreadEv, i64 16, ptr noundef nonnull @.str.275, ptr noundef nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote16StartAsyncThreadEv) #30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %_ZN4llvm8ExpectedIN12lldb_private10HostThreadEED2Ev.exit
  %i.ch = call noundef zeroext i1 @_ZNK12lldb_private10HostThread10IsJoinableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #30
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm8ExpectedIN12lldb_private10HostThreadEED2Ev.exit, %bb.ai
  %.1 = phi i1 [ %i.ch, %bb.ai ], [ false, %_ZN4llvm8ExpectedIN12lldb_private10HostThreadEED2Ev.exit ]
  %i.ci = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #30 ; 0 uses
  ret i1 %.1
}

declare noundef i64 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient19GetCurrentProcessIDEb(ptr noundef nonnull align 8 dereferenceable(1289), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN12lldb_private7Process15SetPrivateStateEN4lldb9StateTypeE(ptr noundef nonnull align 8 dereferenceable(3224), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient12GetStopReplyER24StringExtractorGDBRemote(ptr noundef nonnull align 8 dereferenceable(1289), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote17SetLastStopPacketERK24StringExtractorGDBRemote(ptr noundef nonnull align 8 dereferenceable(5408) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !120
  store ptr %i.c, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.199, i64 13, i64 noundef 0) #30
  %.not = icmp eq i64 %i.g, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_18process_gdb_remote7GDBRLogEEERNS_3Log7ChannelEv() #30
  %i.i = load atomic ptr, ptr %i.h monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.i) #30
  %i.k = and i64 %i.j, 128
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread, label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit: ; preds = %bb.c
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr nonnull @.str.6, i64 93, ptr nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote17SetLastStopPacketERK24StringExtractorGDBRemote, i64 17, ptr noundef nonnull @.str.200) #30
  br label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread

_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread: ; preds = %bb.c, %bb.b, %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @_ZN12lldb_private10ThreadList5ClearEv(ptr noundef nonnull align 8 dereferenceable(144) %i.l) #30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @_ZN12lldb_private10ThreadList5ClearEv(ptr noundef nonnull align 8 dereferenceable(144) %i.m) #30
  call void @_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote24BuildDynamicRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(5408) %0, i1 noundef zeroext true)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3232
  call void @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient25ResetDiscoverableSettingsEb(ptr noundef nonnull align 8 dereferenceable(1289) %i.n, i1 noundef zeroext true) #30
  br label %bb.d

bb.d:                                             ; preds = %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4536 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !177, !range !510, !noundef !511
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4544
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #30
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !733
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4576
  store i64 %i.u, ptr %i.v, align 8, !tbaa !733
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4584
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  br label %_ZNSt8optionalI24StringExtractorGDBRemoteEaSIRKS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS0_ES7_IS0_NSt5decayISA_E4typeEEEEESt16is_constructibleIS0_JSA_EESt13is_assignableIRS0_SA_EEERS1_E4typeEOSA_.exit

bb.f:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV15StringExtractor, i64 16), ptr %i.o, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4544 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4560 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !116
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !119 ; 2 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !120 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !121
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !119
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !121
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !91
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ %i.ad, %bb.g ], [ %i.z, %bb.f ] ; 2 uses
  switch i64 %i.ab, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt19_Optional_base_implI24StringExtractorGDBRemoteSt14_Optional_baseIS0_Lb0ELb0EEE12_M_constructIJRKS0_EEEvDpOT_.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !91
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !91
  br label %_ZNSt19_Optional_base_implI24StringExtractorGDBRemoteSt14_Optional_baseIS0_Lb0ELb0EEE12_M_constructIJRKS0_EEEvDpOT_.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZNSt19_Optional_base_implI24StringExtractorGDBRemoteSt14_Optional_baseIS0_Lb0ELb0EEE12_M_constructIJRKS0_EEEvDpOT_.exit.i

_ZNSt19_Optional_base_implI24StringExtractorGDBRemoteSt14_Optional_baseIS0_Lb0ELb0EEE12_M_constructIJRKS0_EEEvDpOT_.exit.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4552
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !120
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !119
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4576
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !733
  store i64 %i.an, ptr %i.al, align 8, !tbaa !733
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV24StringExtractorGDBRemote, i64 16), ptr %i.o, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4584
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  store i8 1, ptr %i.p, align 8, !tbaa !177
  br label %_ZNSt8optionalI24StringExtractorGDBRemoteEaSIRKS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS0_ES7_IS0_NSt5decayISA_E4typeEEEEESt16is_constructibleIS0_JSA_EESt13is_assignableIRS0_SA_EEERS1_E4typeEOSA_.exit

_ZNSt8optionalI24StringExtractorGDBRemoteEaSIRKS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS0_ES7_IS0_NSt5decayISA_E4typeEEEEESt16is_constructibleIS0_JSA_EESt13is_assignableIRS0_SA_EEERS1_E4typeEOSA_.exit: ; preds = %bb.e, %_ZNSt19_Optional_base_implI24StringExtractorGDBRemoteSt14_Optional_baseIS0_Lb0ELb0EEE12_M_constructIJRKS0_EEEvDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 11) i32 @_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote17SetThreadStopInfoER15StringExtractor(ptr noundef nonnull align 8 dereferenceable(5408) %0, ptr noundef nonnull align 8 dereferenceable(48) initializes((40, 48)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::formatv_object.1930", align 8 ; 14 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 23 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 35 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.53", align 8    ; 7 uses
  %9 = alloca %"class.std::shared_ptr.231", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.53", align 8   ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::map.947", align 8     ; 10 uses
  %13 = alloca %"class.lldb_private::AddressableBits", align 8 ; 8 uses
  %14 = alloca %class.StringExtractorGDBRemote, align 8 ; 7 uses
  %15 = alloca %"class.std::optional.891", align 8 ; 6 uses
  %16 = alloca %class.StringExtractor, align 8    ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::shared_ptr.231", align 16 ; 6 uses
  %19 = alloca %class.StringExtractor, align 8    ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %class.StringExtractor, align 8    ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %class.StringExtractor, align 8    ; 5 uses
  %25 = alloca %"struct.std::pair.1028", align 8  ; 7 uses
  %26 = alloca %class.StringExtractor, align 8    ; 7 uses
  %27 = alloca %"class.std::shared_ptr.954", align 16 ; 7 uses
  %28 = alloca %"class.std::shared_ptr.1044", align 16 ; 5 uses
  %29 = alloca %"class.std::shared_ptr.975", align 8 ; 4 uses
  %30 = alloca %"class.lldb_private::StreamString", align 8 ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %33 = alloca %"class.std::allocator", align 1   ; 3 uses
  %34 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %35 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %36 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %37 = alloca %class.StringExtractorGDBRemote, align 8 ; 7 uses
  %38 = alloca %"class.std::optional.891", align 8 ; 7 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.lldb_private::StreamString", align 8 ; 6 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %42 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %43 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %44 = alloca %"struct.std::pair.1028", align 8  ; 6 uses
  %45 = alloca %class.StringExtractor, align 8    ; 5 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::shared_ptr.231", align 8 ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %49 = alloca %"class.std::allocator", align 1   ; 3 uses
  %50 = alloca %"class.std::shared_ptr.904", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.u = tail call noundef i64 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient19GetCurrentProcessIDEb(ptr noundef nonnull align 8 dereferenceable(1289) %i.t, i1 noundef zeroext true) #30 ; 3 uses
  store i64 %i.u, ptr %i.p, align 8, !tbaa !121
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !733
  %i.w = tail call noundef signext i8 @_ZN15StringExtractor7GetCharEc(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef signext 0) #30
  switch i8 %i.w, label %bb.dl [
    i8 84, label %bb.b
    i8 83, label %bb.b
    i8 87, label %bb.dm
    i8 88, label %bb.dm
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.y = load i32, ptr %i.x, align 8, !tbaa !734
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !722
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = icmp ne i64 %i.u, 0
  %or.cond = and i1 %i.ac, %i.ad
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.u, ptr %i.aa, align 8, !tbaa !722
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote24BuildDynamicRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(5408) %0, i1 noundef zeroext true)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #30
  store i64 0, ptr %i.q, align 8, !tbaa !121
  %i.ae = tail call noundef zeroext i8 @_ZN15StringExtractor8GetHexU8Ehb(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 0, i1 noundef zeroext true) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !116
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !120
  store i8 0, ptr %i.af, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ah, ptr %6, align 8, !tbaa !116
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !120
  store i8 0, ptr %i.ah, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.aj, ptr %7, align 8, !tbaa !116
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !120
  store i8 0, ptr %i.aj, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.al, ptr %11, align 8, !tbaa !116
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !120
  store i8 0, ptr %i.al, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !492
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !493
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !184
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !719
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  store i32 0, ptr %13, align 8, !tbaa !1391
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 0, ptr %i.as, align 4, !tbaa !1392
  %i.at = call noundef zeroext i1 @_ZN15StringExtractor17GetNameColonValueERN4llvm9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  br i1 %i.at, label %.lr.ph608, label %.thread

.lr.ph608:                                        ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 26 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4856
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4864
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4840 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %.sroa.5473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.bw = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %.sroa.5467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %25, i64 16
  %.sroa.5470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2208
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph608, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.054605 = phi i64 [ 0, %.lr.ph608 ], [ %.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 38 uses
  %.056603 = phi i1 [ false, %.lr.ph608 ], [ %.157, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 36 uses
  %.058601 = phi i32 [ 0, %.lr.ph608 ], [ %.159, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 38 uses
  %51 = phi ptr [ null, %.lr.ph608 ], [ %56, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 42 uses
  %52 = phi ptr [ null, %.lr.ph608 ], [ %55, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 41 uses
  %53 = phi ptr [ null, %.lr.ph608 ], [ %54, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 39 uses
  %.0445599 = phi i32 [ 0, %.lr.ph608 ], [ %.1446, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 39 uses
  %.0448597 = phi i64 [ -1, %.lr.ph608 ], [ %.1449, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 39 uses
  %.0451595 = phi i64 [ -1, %.lr.ph608 ], [ %.1452, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 39 uses
  %.0454593 = phi i64 [ 0, %.lr.ph608 ], [ %.1455, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 39 uses
  %i.cd = load i64, ptr %i.au, align 8, !tbaa !681 ; 15 uses
  %cond = icmp eq i64 %i.cd, 0
  br i1 %cond, label %.thread.i238, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i: ; preds = %bb.g
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.cd, i64 6) ; 4 uses
  %i.ce = load ptr, ptr %3, align 8, !tbaa !680   ; 14 uses
  %i.cf = call i32 @memcmp(ptr noundef %i.ce, ptr noundef nonnull @.str.155, i64 noundef %.sroa.speculated.i) #35
  %.fr.i = freeze i32 %i.cf
  %.not.not.i = icmp eq i32 %.fr.i, 0
  %i.cg = icmp eq i64 %i.cd, 6                    ; 4 uses
  %or.cond511 = and i1 %i.cg, %.not.not.i
  br i1 %or.cond511, label %_ZNK4llvm9StringRef7compareES0_.exit, label %.thread.i

_ZNK4llvm9StringRef7compareES0_.exit:             ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #30
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !685
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !121
  %i.ch = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.o) #30
  %i.ci = load i64, ptr %i.o, align 8             ; 2 uses
  %.not.i = icmp ugt i64 %i.ci, 4294967295
  %i.cj = trunc nuw i64 %i.ci to i32
  %i.ck = select i1 %i.ch, i1 true, i1 %.not.i
  %.2447 = select i1 %i.ck, i32 %.0445599, i32 %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.thread.i:                                        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i
  %i.cl = call i32 @memcmp(ptr noundef %i.ce, ptr noundef nonnull @.str.156, i64 noundef %.sroa.speculated.i) #35
  %.fr.i76 = freeze i32 %i.cl
  %.not.not.i77 = icmp eq i32 %.fr.i76, 0
  %or.cond514 = and i1 %i.cg, %.not.not.i77
  br i1 %or.cond514, label %_ZNK4llvm9StringRef7compareES0_.exit82, label %.thread.i81

_ZNK4llvm9StringRef7compareES0_.exit82:           ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  %.sroa.0.0.copyload.i83 = load ptr, ptr %4, align 8, !tbaa !685
  %.sroa.2.0.copyload.i85 = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !121
  %i.cm = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0.0.copyload.i83, i64 %.sroa.2.0.copyload.i85, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.n) #30
  %i.cn = load i64, ptr %i.n, align 8
  %spec.select515 = select i1 %i.cm, i64 undef, i64 %i.cn ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  %.not.i86 = icmp eq ptr %52, %53
  br i1 %.not.i86, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm9StringRef7compareES0_.exit82
  store i64 %spec.select515, ptr %52, align 8, !tbaa !121
  %i.co = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  store ptr %i.co, ptr %i.bk, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.i:                                             ; preds = %_ZNK4llvm9StringRef7compareES0_.exit82
  %i.cp = ptrtoint ptr %52 to i64
  %i.cq = ptrtoint ptr %51 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 6 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.j, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.391) #33
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #31 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  store i64 %spec.select515, ptr %i.da, align 8, !tbaa !121
  %i.db = icmp sgt i64 %i.cr, 0
  br i1 %i.db, label %bb.k, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr align 8 %51, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %51, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %51, i64 noundef %i.cr) #32
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cz, ptr %10, align 8, !tbaa !508
  store ptr %i.dc, ptr %i.bk, align 8, !tbaa !735
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx ; 2 uses
  store ptr %i.dd, ptr %i.bl, align 8, !tbaa !509
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.thread.i81:                                      ; preds = %.thread.i
  %i.de = call i32 @memcmp(ptr noundef %i.ce, ptr noundef nonnull @.str.169, i64 noundef %.sroa.speculated.i) #35
  %.fr.i89 = freeze i32 %i.de
  %.not.not.i90 = icmp eq i32 %.fr.i89, 0
  %or.cond517 = and i1 %i.cg, %.not.not.i90
  br i1 %or.cond517, label %_ZNK4llvm9StringRef7compareES0_.exit95, label %.thread.i94

_ZNK4llvm9StringRef7compareES0_.exit95:           ; preds = %.thread.i81
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %.sroa.036.0.copyload = load ptr, ptr %4, align 8, !tbaa !685
  %.sroa.237.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !121
  call void @_ZN15StringExtractorC2EN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr %.sroa.036.0.copyload, i64 %.sroa.237.0.copyload) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV24StringExtractorGDBRemote, i64 16), ptr %14, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.df = load i64, ptr %i.p, align 8, !tbaa !121
  call void @_ZN24StringExtractorGDBRemote9GetPidTidEm(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.891") align 8 %15, ptr noundef nonnull align 8 dereferenceable(64) %14, i64 noundef %i.df) #30
  %i.dg = load i8, ptr %i.bi, align 8, !tbaa !737, !range !510, !noundef !511
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4llvm9StringRef7compareES0_.exit95
  %i.di = load i64, ptr %15, align 8, !tbaa !1393
  store i64 %i.di, ptr %i.q, align 8, !tbaa !121
  %i.dj = load i64, ptr %i.bj, align 8, !tbaa !739
  br label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm9StringRef7compareES0_.exit95, %bb.m
  %.155 = phi i64 [ %i.dj, %bb.m ], [ 0, %_ZNK4llvm9StringRef7compareES0_.exit95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZN15StringExtractorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.thread.i94:                                      ; preds = %.thread.i81
  %.sroa.speculated.i96 = call i64 @llvm.umin.i64(i64 %i.cd, i64 7) ; 2 uses
  %i.dk = call i32 @memcmp(ptr noundef %i.ce, ptr noundef nonnull @.str.170, i64 noundef %.sroa.speculated.i96) #35
  %.fr.i98 = freeze i32 %i.dk
  %.not.not.i99 = icmp eq i32 %.fr.i98, 0
  %i.dl = icmp eq i64 %i.cd, 7                    ; 2 uses
  %or.cond519 = and i1 %i.dl, %.not.not.i99
  br i1 %or.cond519, label %_ZNK4llvm9StringRef7compareES0_.exit104, label %.thread.i103

_ZNK4llvm9StringRef7compareES0_.exit104:          ; preds = %.thread.i94
  %i.dm = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK12lldb_private10ThreadList8GetMutexEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bg) #30 ; 2 uses
  %i.dn = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.dm) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm9StringRef7compareES0_.exit104
  call void @_ZSt20__throw_system_errori(i32 noundef %i.dn) #33
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %_ZNK4llvm9StringRef7compareES0_.exit104
  %.sroa.034.0.copyload = load ptr, ptr %4, align 8, !tbaa !685
  %.sroa.235.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !121
  %i.do = call noundef i64 @_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote40UpdateThreadIDsFromStopReplyThreadsValueEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(5408) %0, ptr %.sroa.034.0.copyload, i64 %.sroa.235.0.copyload) ; 0 uses
  %i.dp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dm) #30 ; 0 uses
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.thread.i103:                                     ; preds = %.thread.i94
  %.sroa.speculated.i105 = call i64 @llvm.umin.i64(i64 %i.cd, i64 10) ; 2 uses
  %i.dq = call i32 @memcmp(ptr noundef %i.ce, ptr noundef nonnull @.str.171, i64 noundef %.sroa.speculated.i105) #35
  %.fr.i107 = freeze i32 %i.dq
  %.not.not.i108 = icmp eq i32 %.fr.i107, 0
  %i.dr = icmp eq i64 %i.cd, 10                   ; 2 uses
  %or.cond521 = and i1 %i.dr, %.not.not.i108
  br i1 %or.cond521, label %_ZNK4llvm9StringRef7compareES0_.exit113, label %.thread.i112

_ZNK4llvm9StringRef7compareES0_.exit113:          ; preds = %.thread.i103
  %i.ds = load ptr, ptr %i.bd, align 8, !tbaa !508 ; 2 uses
  %i.dt = load ptr, ptr %i.be, align 8, !tbaa !735
  %.not.i.i114 = icmp eq ptr %i.dt, %i.ds
  br i1 %.not.i.i114, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm9StringRef7compareES0_.exit113
  store ptr %i.ds, ptr %i.be, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %_ZNK4llvm9StringRef7compareES0_.exit113, %bb.p
  %i.du = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !681
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZNSt6vectorImSaImEE9push_backERKm.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 44, ptr %i.m, align 1, !tbaa !91, !noalias !1394
  %i.dw = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.m, i64 1, i64 noundef 0) #30, !noalias !1395 ; 3 uses
  %i.dx = icmp eq i64 %i.dw, -1
  br i1 %i.dx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %.sroa.0421.0.copyload = load ptr, ptr %4, align 8, !tbaa !685
  %.sroa.5423.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !121
  br label %_ZNK4llvm9StringRef5splitEc.exit

bb.r:                                             ; preds = %.lr.ph
  %i.dy = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !681, !noalias !1395 ; 3 uses
  %.sroa.speculated.i.i.i115 = call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.dy)
  %i.dz = load ptr, ptr %4, align 8, !tbaa !680, !noalias !1395 ; 2 uses
  %i.ea = add nuw i64 %i.dw, 1
  %.sroa.speculated4.i.i.i = call i64 @llvm.umin.i64(i64 %i.dy, i64 %i.ea) ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.speculated4.i.i.i
  %i.ec = sub i64 %i.dy, %.sroa.speculated4.i.i.i
  br label %_ZNK4llvm9StringRef5splitEc.exit

_ZNK4llvm9StringRef5splitEc.exit:                 ; preds = %bb.q, %bb.r
  %.sroa.0421.0 = phi ptr [ %.sroa.0421.0.copyload, %bb.q ], [ %i.dz, %bb.r ]
  %.sroa.5423.0 = phi i64 [ %.sroa.5423.0.copyload, %bb.q ], [ %.sroa.speculated.i.i.i115, %bb.r ]
  %.sroa.9425.0 = phi i64 [ 0, %bb.q ], [ %i.ec, %bb.r ]
  %.sroa.6.0 = phi ptr [ null, %bb.q ], [ %i.eb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %.sroa.6.0, ptr %4, align 8, !tbaa !685
  store i64 %.sroa.9425.0, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  %i.ed = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0421.0, i64 %.sroa.5423.0, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.l) #30
  %i.ee = load i64, ptr %i.l, align 8
  %.1459 = select i1 %i.ed, i64 -1, i64 %i.ee     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  %i.ef = load ptr, ptr %i.be, align 8, !tbaa !735 ; 4 uses
  %i.eg = load ptr, ptr %i.bf, align 8, !tbaa !509
  %.not.i120 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i120, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm9StringRef5splitEc.exit
  store i64 %.1459, ptr %i.ef, align 8, !tbaa !121
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.eh, ptr %i.be, align 8, !tbaa !735
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit127

bb.t:                                             ; preds = %_ZNK4llvm9StringRef5splitEc.exit
  %i.ei = load ptr, ptr %i.bd, align 8, !tbaa !508 ; 4 uses
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 5 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i121

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.391) #33
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i121: ; preds = %bb.t
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %.sroa.speculated.i.i.i122 = call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.eo = add nsw i64 %.sroa.speculated.i.i.i122, %i.en ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  %i.eq = call i64 @llvm.umin.i64(i64 %i.eo, i64 1152921504606846975)
  %i.er = select i1 %i.ep, i64 1152921504606846975, i64 %i.eq ; 3 uses
  %.not.i.i.i123 = icmp ne i64 %i.er, 0
  call void @llvm.assume(i1 %.not.i.i.i123)
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #31 ; 4 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %i.el ; 2 uses
  store i64 %.1459, ptr %i.eu, align 8, !tbaa !121
  %i.ev = icmp sgt i64 %i.el, 0
  br i1 %i.ev, label %bb.v, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i124

bb.v:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i121
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.et, ptr align 8 %i.ei, i64 %i.el, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i124

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i124: ; preds = %bb.v, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i121
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.not.i17.i.i125 = icmp eq ptr %i.ei, null
  br i1 %.not.i17.i.i125, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i126, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i124
  %i.ex = load ptr, ptr %i.bf, align 8, !tbaa !509
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ey, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.ez) #32
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i126

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i126: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i124
  store ptr %i.et, ptr %i.bd, align 8, !tbaa !508
  store ptr %i.ew, ptr %i.be, align 8, !tbaa !735
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fa, ptr %i.bf, align 8, !tbaa !509
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit127

_ZNSt6vectorImSaImEE9push_backERKm.exit127:       ; preds = %bb.s, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i126
  %i.fb = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !681
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %.lr.ph, !llvm.loop !1383

.thread.i112:                                     ; preds = %.thread.i103
  %.sroa.speculated.i128 = call i64 @llvm.umin.i64(i64 %i.cd, i64 9)
  %i.fd = call i32 @memcmp(ptr noundef %i.ce, ptr noundef nonnull @.str.172, i64 noundef %.sroa.speculated.i128) #35
  %.fr.i130 = freeze i32 %i.fd
  %.not.not.i131 = icmp eq i32 %.fr.i130, 0
  %i.fe = icmp eq i64 %i.cd, 9
  %or.cond523 = and i1 %i.fe, %.not.not.i131
  br i1 %or.cond523, label %_ZNK4llvm9StringRef7compareES0_.exit136, label %.thread.i135

_ZNK4llvm9StringRef7compareES0_.exit136:          ; preds = %.thread.i112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
end_hunk_0
begin_hunk_1_@_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote17SetThreadStopInfoER15StringExtractor:bb.a
  call void @_ZN12lldb_private15AddressableBits18SetAddressableBitsEj(ptr noundef nonnull align 4 dereferenceable(8) %13, i32 noundef %i.nu) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.cf:                                            ; preds = %bb.cc
  %i.nv = call noundef i32 @_ZNK4llvm9StringRef7compareES0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.188, i64 23)
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %.sroa.0.0.copyload.i270 = load ptr, ptr %4, align 8, !tbaa !685
  %.sroa.2.0.copyload.i272 = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !121
  %i.nx = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0.0.copyload.i270, i64 %.sroa.2.0.copyload.i272, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #30
  br i1 %i.nx, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread, label %bb.ch

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ch:                                            ; preds = %bb.cg
  %i.ny = load i64, ptr %i.d, align 8, !tbaa !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.nz = trunc i64 %i.ny to i32
  call void @_ZN12lldb_private15AddressableBits24SetLowmemAddressableBitsEj(ptr noundef nonnull align 4 dereferenceable(8) %13, i32 noundef %i.nz) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ci:                                            ; preds = %bb.cf
  %i.oa = call noundef i32 @_ZNK4llvm9StringRef7compareES0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.189, i64 24)
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %.sroa.0.0.copyload.i274 = load ptr, ptr %4, align 8, !tbaa !685
  %.sroa.2.0.copyload.i276 = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !121
  %i.oc = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0.0.copyload.i274, i64 %.sroa.2.0.copyload.i276, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #30
  br i1 %i.oc, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread, label %bb.ck

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread: ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ck:                                            ; preds = %bb.cj
  %i.od = load i64, ptr %i.c, align 8, !tbaa !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.oe = trunc i64 %i.od to i32
  call void @_ZN12lldb_private15AddressableBits25SetHighmemAddressableBitsEj(ptr noundef nonnull align 4 dereferenceable(8) %13, i32 noundef %i.oe) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.cl:                                            ; preds = %bb.ci
  %.sroa.07.0.copyload = load ptr, ptr %3, align 8, !tbaa !685 ; 6 uses
  %.sroa.28.0.copyload = load i64, ptr %i.au, align 8, !tbaa !121 ; 3 uses
  switch i64 %.sroa.28.0.copyload, label %_ZNSt6vectorImSaImEE9push_backERKm.exit [
    i64 14, label %_ZN4llvmeqENS_9StringRefES0_.exit
    i64 22, label %_ZN4llvmeqENS_9StringRefES0_.exit287
    i64 2, label %bb.cm
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.cl
  %i.of = load i64, ptr %.sroa.07.0.copyload, align 1
  %i.og = xor i64 %i.of, 7593681830921135201
  %i.oh = getelementptr i8, ptr %.sroa.07.0.copyload, i64 6
  %i.oi = load i64, ptr %i.oh, align 1
  %i.oj = xor i64 %i.oi, 8315168226991303010
  %i.ok = or i64 %i.og, %i.oj
  %i.ol = icmp ne i64 %i.ok, 0
  %i.om = zext i1 %i.ol to i32
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #30
  %i.oo = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !681
  %i.op = icmp eq i64 %i.oo, 0
  br i1 %i.op, label %._crit_edge, label %.lr.ph592

.lr.ph592:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %.lr.ph592
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #30
  call void @_ZNK4llvm9StringRef5splitEc(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1028") align 8 %44, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef signext 44)
  %.sroa.0472.0.copyload = load ptr, ptr %44, align 8, !tbaa !685
  %.sroa.5473.0.copyload = load i64, ptr %.sroa.5473.0..sroa_idx, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !717
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.oq = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0472.0.copyload, i64 %.sroa.5473.0.copyload, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #30
  %i.or = load i64, ptr %i.b, align 8
  %.sink = select i1 %i.oq, i64 -1, i64 %i.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  store i64 %.sink, ptr %i.r, align 8, !tbaa !121
  call void @_ZNSt6vectorImSaImEE9push_backERKm(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.os = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !681
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %._crit_edge, label %.lr.ph592, !llvm.loop !1384

._crit_edge:                                      ; preds = %.lr.ph592, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZN4llvmeqENS_9StringRefES0_.exit287:             ; preds = %bb.cl
  %bcmp.i286 = call i32 @bcmp(ptr %.sroa.07.0.copyload, ptr nonnull @.str.168, i64 %.sroa.28.0.copyload)
  %i.ou = icmp eq i32 %bcmp.i286, 0
  br i1 %i.ou, label %_ZN4llvmeqENS_9StringRefES0_.exit287.thread, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZN4llvmeqENS_9StringRefES0_.exit287.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit287
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  %.sroa.04.0.copyload = load ptr, ptr %4, align 8, !tbaa !685
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i228, align 8, !tbaa !121
  call void @_ZN15StringExtractorC1EN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr %.sroa.04.0.copyload, i64 %.sroa.2.0.copyload) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #30
  store ptr %i.bn, ptr %46, align 8, !tbaa !116
  store i64 0, ptr %i.bo, align 8, !tbaa !120
  store i8 0, ptr %i.bn, align 8, !tbaa !91
  %i.ov = call noundef i64 @_ZN15StringExtractor16GetHexByteStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull align 8 dereferenceable(32) %46) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #30
  %i.ow = load ptr, ptr %46, align 8, !tbaa !119
  %i.ox = load i64, ptr %i.bo, align 8, !tbaa !120
  call void @_ZN12lldb_private14StructuredData9ParseJSONEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.231") align 8 %47, ptr %i.ow, i64 %i.ox) #30
  %i.oy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN12lldb_private14StructuredData6ObjectEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %47) #30 ; 0 uses
  call void @_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %47) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #30
  %i.oz = load ptr, ptr %46, align 8, !tbaa !119  ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.bn
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit287.thread
  %i.pb = load i64, ptr %i.bn, align 8, !tbaa !91
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit287.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #30
  call void @_ZN15StringExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %45) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.cm:                                            ; preds = %bb.cl
  %i.pd = load i8, ptr %.sroa.07.0.copyload, align 1, !tbaa !91
  %i.pe = sext i8 %i.pd to i32
  %i.pf = call i32 @isxdigit(i32 noundef %i.pe) #35
  %.not68 = icmp eq i32 %i.pf, 0
  br i1 %.not68, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !91
  %i.pi = sext i8 %i.ph to i32
  %i.pj = call i32 @isxdigit(i32 noundef %i.pi) #35
  %.not69 = icmp eq i32 %i.pj, 0
  br i1 %.not69, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #30
  store i32 -1, ptr %i.s, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.pk = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr nonnull %.sroa.07.0.copyload, i64 %.sroa.28.0.copyload, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30
  br i1 %i.pk, label %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit296.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pl = load i64, ptr %i.a, align 8, !tbaa !700 ; 2 uses
  %.not.i294 = icmp ult i64 %i.pl, 4294967296
  br i1 %.not.i294, label %bb.cq, label %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit296.thread

_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit296.thread: ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pm = trunc nuw i64 %i.pl to i32
  store i32 %i.pm, ptr %i.s, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %49)
  %i.pn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.s)
  %i.po = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.pn, ptr noundef nonnull align 8 dereferenceable(32) %48) #30 ; 0 uses
  %i.pp = load ptr, ptr %48, align 8, !tbaa !119  ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.bm
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.cq
  %i.pr = load i64, ptr %i.bm, align 8, !tbaa !91
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #30
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit296.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit127, %_ZN4llvmeqENS_9StringRefES0_.exit287, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZNSt6vectorImSaImEE5clearEv.exit, %bb.cl, %bb.ck, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread, %bb.ch, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread, %bb.ce, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread, %bb.ay, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread, %bb.bf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.h, %_ZNK4llvm9StringRef7compareES0_.exit226, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNK4llvm9StringRef7compareES0_.exit183, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %bb.bl, %_ZN4llvm5ErrorD2Ev.exit259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %bb.cr, %bb.cn, %bb.cm, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %bb.aw, %_ZNK4llvm9StringRef7compareES0_.exit196, %_ZNK4llvm9StringRef7compareES0_.exit170, %_ZNK4llvm9StringRef7compareES0_.exit147, %bb.n, %_ZNK4llvm9StringRef7compareES0_.exit
  %.1455 = phi i64 [ %.0454593, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %.0454593, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %.0454593, %bb.n ], [ %.0454593, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %.0454593, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.0454593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0454593, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %.0454593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.0454593, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ %.0454593, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ %.0454593, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %.0454593, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %spec.select542, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %.0454593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.0454593, %bb.aw ], [ %.0454593, %bb.cl ], [ %.0454593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.0454593, %bb.bl ], [ %.0454593, %bb.bn ], [ %.0454593, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %.0454593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.0454593, %bb.ay ], [ %.0454593, %bb.ce ], [ %.0454593, %bb.ch ], [ %.0454593, %._crit_edge ], [ %.0454593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.0454593, %bb.cm ], [ %.0454593, %bb.cn ], [ %.0454593, %bb.cr ], [ %.0454593, %bb.h ], [ %.0454593, %bb.bf ], [ %.0454593, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %.0454593, %bb.ck ], [ %.0454593, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %.0454593, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %.0454593, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %.0454593, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %.0454593, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %.0454593, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ] ; 3 uses
  %.1452 = phi i64 [ %.0451595, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %.0451595, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %.0451595, %bb.n ], [ %.0451595, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %.0451595, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.0451595, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0451595, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %.0451595, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.0451595, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ %spec.select533, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ %.0451595, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %.0451595, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %.0451595, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %.0451595, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.0451595, %bb.aw ], [ %.0451595, %bb.cl ], [ %.0451595, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.0451595, %bb.bl ], [ %.0451595, %bb.bn ], [ %.0451595, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %.0451595, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.0451595, %bb.ay ], [ %.0451595, %bb.ce ], [ %.0451595, %bb.ch ], [ %.0451595, %._crit_edge ], [ %.0451595, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.0451595, %bb.cm ], [ %.0451595, %bb.cn ], [ %.0451595, %bb.cr ], [ %.0451595, %bb.h ], [ %.0451595, %bb.bf ], [ %.0451595, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %.0451595, %bb.ck ], [ %.0451595, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %.0451595, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %.0451595, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %.0451595, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %.0451595, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %.0451595, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ] ; 3 uses
  %.1449 = phi i64 [ %.0448597, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %.0448597, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %.0448597, %bb.n ], [ %.0448597, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %.0448597, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.0448597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0448597, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %.0448597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %spec.select530, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ %.0448597, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ %.0448597, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %.0448597, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %.0448597, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %.0448597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.0448597, %bb.aw ], [ %.0448597, %bb.cl ], [ %.0448597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.0448597, %bb.bl ], [ %.0448597, %bb.bn ], [ %.0448597, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %.0448597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.0448597, %bb.ay ], [ %.0448597, %bb.ce ], [ %.0448597, %bb.ch ], [ %.0448597, %._crit_edge ], [ %.0448597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.0448597, %bb.cm ], [ %.0448597, %bb.cn ], [ %.0448597, %bb.cr ], [ %.0448597, %bb.h ], [ %.0448597, %bb.bf ], [ %.0448597, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %.0448597, %bb.ck ], [ %.0448597, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %.0448597, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %.0448597, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %.0448597, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %.0448597, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %.0448597, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ] ; 3 uses
  %.1446 = phi i32 [ %.2447, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %.0445599, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %.0445599, %bb.n ], [ %.0445599, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %.0445599, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.0445599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0445599, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %.0445599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.0445599, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ %.0445599, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ %.0445599, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %.0445599, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %.0445599, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %.0445599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.0445599, %bb.aw ], [ %.0445599, %bb.cl ], [ %.0445599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.0445599, %bb.bl ], [ %.0445599, %bb.bn ], [ %.0445599, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %.0445599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.0445599, %bb.ay ], [ %.0445599, %bb.ce ], [ %.0445599, %bb.ch ], [ %.0445599, %._crit_edge ], [ %.0445599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.0445599, %bb.cm ], [ %.0445599, %bb.cn ], [ %.0445599, %bb.cr ], [ %.0445599, %bb.h ], [ %.0445599, %bb.bf ], [ %.0445599, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %.0445599, %bb.ck ], [ %.0445599, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %.0445599, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %.0445599, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %.0445599, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %.0445599, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %.0445599, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ] ; 3 uses
  %54 = phi ptr [ %53, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %53, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %53, %bb.n ], [ %53, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %i.dd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %53, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %53, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ %53, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ %53, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %53, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %53, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %53, %bb.aw ], [ %53, %bb.cl ], [ %53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %53, %bb.bl ], [ %53, %bb.bn ], [ %53, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %53, %bb.ay ], [ %53, %bb.ce ], [ %53, %bb.ch ], [ %53, %._crit_edge ], [ %53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %53, %bb.cm ], [ %53, %bb.cn ], [ %53, %bb.cr ], [ %53, %bb.h ], [ %53, %bb.bf ], [ %53, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %53, %bb.ck ], [ %53, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %53, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %53, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %53, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %53, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %53, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ] ; 2 uses
  %55 = phi ptr [ %52, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %52, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %52, %bb.n ], [ %52, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %i.dc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %52, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %52, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ %52, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ %52, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %52, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %52, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %52, %bb.aw ], [ %52, %bb.cl ], [ %52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %52, %bb.bl ], [ %52, %bb.bn ], [ %52, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %52, %bb.ay ], [ %52, %bb.ce ], [ %52, %bb.ch ], [ %52, %._crit_edge ], [ %52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %52, %bb.cm ], [ %52, %bb.cn ], [ %52, %bb.cr ], [ %i.co, %bb.h ], [ %52, %bb.bf ], [ %52, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %52, %bb.ck ], [ %52, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %52, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %52, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %52, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %52, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %52, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ]
  %56 = phi ptr [ %51, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %51, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %51, %bb.n ], [ %51, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %i.cz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %51, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %51, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ %51, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ %51, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %51, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %51, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %51, %bb.aw ], [ %51, %bb.cl ], [ %51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %51, %bb.bl ], [ %51, %bb.bn ], [ %51, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %51, %bb.ay ], [ %51, %bb.ce ], [ %51, %bb.ch ], [ %51, %._crit_edge ], [ %51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %51, %bb.cm ], [ %51, %bb.cn ], [ %51, %bb.cr ], [ %51, %bb.h ], [ %51, %bb.bf ], [ %51, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %51, %bb.ck ], [ %51, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %51, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %51, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %51, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %51, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %51, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ] ; 6 uses
  %.159 = phi i32 [ %.058601, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %.058601, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %.058601, %bb.n ], [ %.058601, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %.058601, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.058601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.058601, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %.058601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.058601, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ %.058601, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ %.058601, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %spec.select.i217, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %.058601, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %.058601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.058601, %bb.aw ], [ %.058601, %bb.cl ], [ %.058601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.058601, %bb.bl ], [ %.058601, %bb.bn ], [ %.058601, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %.058601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.058601, %bb.ay ], [ %.058601, %bb.ce ], [ %.058601, %bb.ch ], [ %.058601, %._crit_edge ], [ %.058601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.058601, %bb.cm ], [ %.058601, %bb.cn ], [ %.058601, %bb.cr ], [ %.058601, %bb.h ], [ %.058601, %bb.bf ], [ %.058601, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %.058601, %bb.ck ], [ %.058601, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %.058601, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %.058601, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %.058601, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %.058601, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %.058601, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ] ; 3 uses
  %.157 = phi i1 [ %.056603, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %.056603, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %.056603, %bb.n ], [ %.056603, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %.056603, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.056603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.056603, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %.056603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.056603, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ true, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ true, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %i.je, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %spec.select, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %.056603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.056603, %bb.aw ], [ %.056603, %bb.cl ], [ %.056603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.056603, %bb.bl ], [ %.056603, %bb.bn ], [ %.056603, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %.056603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.056603, %bb.ay ], [ %.056603, %bb.ce ], [ %.056603, %bb.ch ], [ %.056603, %._crit_edge ], [ %.056603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.056603, %bb.cm ], [ %.056603, %bb.cn ], [ %.056603, %bb.cr ], [ %.056603, %bb.h ], [ %.056603, %bb.bf ], [ %.056603, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %.056603, %bb.ck ], [ %.056603, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %.056603, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %.056603, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %.056603, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %.056603, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %.056603, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ] ; 3 uses
  %.2 = phi i64 [ %.054605, %_ZNK4llvm9StringRef7compareES0_.exit ], [ %.054605, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %.155, %bb.n ], [ %.054605, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ %.054605, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.054605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.054605, %_ZNK4llvm9StringRef7compareES0_.exit147 ], [ %.054605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.054605, %_ZNK4llvm9StringRef7compareES0_.exit170 ], [ %.054605, %_ZNK4llvm9StringRef7compareES0_.exit183 ], [ %.054605, %_ZNK4llvm9StringRef7compareES0_.exit196 ], [ %.054605, %_ZN4llvm12StringSwitchIN4lldb9QueueKindES2_E4CaseENS_13StringLiteralES2_.exit216 ], [ %.054605, %_ZNK4llvm9StringRef7compareES0_.exit226 ], [ %.054605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.054605, %bb.aw ], [ %.054605, %bb.cl ], [ %.054605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.054605, %bb.bl ], [ %.054605, %bb.bn ], [ %.054605, %_ZN4llvm5ErrorD2Ev.exit259 ], [ %.054605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.054605, %bb.ay ], [ %.054605, %bb.ce ], [ %.054605, %bb.ch ], [ %.054605, %._crit_edge ], [ %.054605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.054605, %bb.cm ], [ %.054605, %bb.cn ], [ %.054605, %bb.cr ], [ %.054605, %bb.h ], [ %.054605, %bb.bf ], [ %.054605, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit246.thread ], [ %.054605, %bb.ck ], [ %.054605, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit269.thread ], [ %.054605, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit273.thread ], [ %.054605, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit277.thread ], [ %.054605, %_ZN4llvmeqENS_9StringRefES0_.exit287 ], [ %.054605, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %.054605, %_ZNSt6vectorImSaImEE9push_backERKm.exit127 ] ; 3 uses
  %i.pt = call noundef zeroext i1 @_ZN15StringExtractor17GetNameColonValueERN4llvm9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  br i1 %i.pt, label %bb.g, label %._crit_edge609, !llvm.loop !1385

._crit_edge609:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre = load i64, ptr %i.q, align 8, !tbaa !121 ; 2 uses
  %57 = ptrtoint ptr %54 to i64                   ; 5 uses
  %.not = icmp eq i64 %.pre, 0
  %i.pu = load i64, ptr %i.p, align 8
  %.not66 = icmp eq i64 %.pre, %i.pu
  %or.cond73 = select i1 %.not, i1 true, i1 %.not66
  br i1 %or.cond73, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge609
  %i.pv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_18process_gdb_remote7GDBRLogEEERNS_3Log7ChannelEv() #30
  %i.pw = load atomic ptr, ptr %i.pv monotonic, align 8 ; 3 uses
  %.not.i.i300 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i300, label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.px = call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.pw) #30
  %i.py = and i64 %i.px, 128
  %.not6.i.i = icmp eq i64 %i.py, 0
  br i1 %.not6.i.i, label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread, label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit: ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.pz = ptrtoint ptr %i.q to i64
  %i.qa = ptrtoint ptr %i.p to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr @.str.190, ptr %2, align 8, !tbaa !685, !alias.scope !1399
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 58, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !121, !alias.scope !1399
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.qb, ptr %i.qc, align 8, !tbaa !713, !alias.scope !1399
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !121, !alias.scope !1399
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.qd, align 8, !tbaa !689, !alias.scope !1399
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 %i.qa, ptr %i.qe, align 8, !tbaa !743, !alias.scope !1399
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i64 %i.pz, ptr %i.qf, align 8, !tbaa !743, !alias.scope !1399
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qe to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %i.qb, align 8, !alias.scope !1399
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.qg, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1399
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i, align 8, !alias.scope !1399
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.qh, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !91, !alias.scope !1399
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %i.pw, ptr nonnull @.str.6, i64 93, ptr nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote17SetThreadStopInfoEmRSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS8_EEEhRKS8_SI_SI_jRKSt6vectorImSaImEEmbNS_8LazyBoolEmRS8_N4lldb9QueueKindEmRSL_RSt10shared_ptrINS_14StructuredData6ObjectEE, i64 17, ptr noundef nonnull align 8 dereferenceable(33) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread

bb.cu:                                            ; preds = %._crit_edge609
  %i.qi = icmp eq i64 %.2, 0
  br i1 %i.qi, label %.thread, label %bb.cw

.thread:                                          ; preds = %bb.f, %bb.cu
  %.0454.lcssa689714 = phi i64 [ %.1455, %bb.cu ], [ 0, %bb.f ] ; 2 uses
  %.0451.lcssa690712 = phi i64 [ %.1452, %bb.cu ], [ -1, %bb.f ] ; 2 uses
  %.0448.lcssa691710 = phi i64 [ %.1449, %bb.cu ], [ -1, %bb.f ] ; 2 uses
  %.0445.lcssa692708 = phi i32 [ %.1446, %bb.cu ], [ 0, %bb.f ] ; 2 uses
  %.lcssa581710732 = phi i64 [ %57, %bb.cu ], [ 0, %bb.f ] ; 2 uses
  %.lcssa576712730 = phi ptr [ %56, %bb.cu ], [ null, %bb.f ] ; 2 uses
  %.058.lcssa693706 = phi i32 [ %.159, %bb.cu ], [ 0, %bb.f ] ; 2 uses
  %.056.lcssa694704 = phi i1 [ %.157, %bb.cu ], [ false, %bb.f ] ; 2 uses
  %i.qj = call noundef zeroext i1 @_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote18UpdateThreadIDListEv(ptr noundef nonnull align 8 dereferenceable(5408) %0) ; 0 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 4808
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !743 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 4816
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !743
  %i.qo = icmp eq ptr %i.ql, %i.qn
  br i1 %i.qo, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.thread
  %i.qp = load i64, ptr %i.ql, align 8, !tbaa !121
  br label %bb.cw

bb.cw:                                            ; preds = %.thread, %bb.cv, %bb.cu
  %.0454.lcssa689713 = phi i64 [ %.0454.lcssa689714, %.thread ], [ %.0454.lcssa689714, %bb.cv ], [ %.1455, %bb.cu ]
  %.0451.lcssa690711 = phi i64 [ %.0451.lcssa690712, %.thread ], [ %.0451.lcssa690712, %bb.cv ], [ %.1452, %bb.cu ]
  %.0448.lcssa691709 = phi i64 [ %.0448.lcssa691710, %.thread ], [ %.0448.lcssa691710, %bb.cv ], [ %.1449, %bb.cu ]
  %.0445.lcssa692707 = phi i32 [ %.0445.lcssa692708, %.thread ], [ %.0445.lcssa692708, %bb.cv ], [ %.1446, %bb.cu ]
  %.lcssa581710731 = phi i64 [ %.lcssa581710732, %.thread ], [ %.lcssa581710732, %bb.cv ], [ %57, %bb.cu ]
  %.lcssa576712729 = phi ptr [ %.lcssa576712730, %.thread ], [ %.lcssa576712730, %bb.cv ], [ %56, %bb.cu ]
  %.058.lcssa693705 = phi i32 [ %.058.lcssa693706, %.thread ], [ %.058.lcssa693706, %bb.cv ], [ %.159, %bb.cu ]
  %.056.lcssa694703 = phi i1 [ %.056.lcssa694704, %.thread ], [ %.056.lcssa694704, %bb.cv ], [ %.157, %bb.cu ]
  %.3 = phi i64 [ 0, %.thread ], [ %i.qp, %bb.cv ], [ %.2, %bb.cu ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %13, align 8, !tbaa !92
  call void @_ZN12lldb_private7Process22SetAddressableBitMasksENS_15AddressableBitsE(ptr noundef nonnull align 8 dereferenceable(3224) %0, i64 %.sroa.0.0.copyload) #30
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 5160
  store i64 %.3, ptr %i.qq, align 8, !tbaa !744
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  call void @_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote17SetThreadStopInfoEmRSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS8_EEEhRKS8_SI_SI_jRKSt6vectorImSaImEEmbNS_8LazyBoolEmRS8_N4lldb9QueueKindEmRSL_RSt10shared_ptrINS_14StructuredData6ObjectEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.904") align 8 %50, ptr noundef nonnull align 8 dereferenceable(5408) %0, i64 noundef %.3, ptr noundef nonnull align 8 dereferenceable(48) %12, i8 noundef zeroext %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %.0445.lcssa692707, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %.0448.lcssa691709, i1 noundef zeroext %.056.lcssa694703, i32 noundef -1, i64 noundef %.0451.lcssa690711, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %.058.lcssa693705, i64 noundef %.0454.lcssa689713, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
  %i.qr = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !89 ; 8 uses
  %.not.i.i301 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i301, label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 4 uses
  %i.qu = load atomic i64, ptr %i.qt acquire, align 8 ; 2 uses
  %i.qv = icmp eq i64 %i.qu, 4294967297
  %i.qw = trunc i64 %i.qu to i32                  ; 2 uses
  br i1 %i.qv, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.qt, align 8, !tbaa !94
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 12
  store i32 0, ptr %i.qx, align 4, !tbaa !95
  %i.qy = load ptr, ptr %i.qs, align 8, !tbaa !86
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8
  call void %i.ra(ptr noundef nonnull align 8 dereferenceable(16) %i.qs) #30, !inline_history !20
  %i.rb = load ptr, ptr %i.qs, align 8, !tbaa !86
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  %i.rd = load ptr, ptr %i.rc, align 8
  call void %i.rd(ptr noundef nonnull align 8 dereferenceable(16) %i.qs) #30, !inline_history !20
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cz:                                            ; preds = %bb.cx
  %i.re = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i302 = icmp eq i8 %i.re, 0
  br i1 %.not.i.i.i302, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rf = add nsw i32 %i.qw, -1
  store i32 %i.rf, ptr %i.qt, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303

bb.db:                                            ; preds = %bb.cz
  %i.rg = atomicrmw volatile add ptr %i.qt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i304 = phi i32 [ %i.qw, %bb.da ], [ %i.rg, %bb.db ]
  %i.rh = icmp eq i32 %.0.i.i.i.i304, 1
  br i1 %i.rh, label %bb.dc, label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !96

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qs) #30
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cw, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i303, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  br label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread

_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread: ; preds = %bb.ct, %bb.cs, %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.lcssa576711 = phi ptr [ %.lcssa576712729, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %56, %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit ], [ %56, %bb.cs ], [ %56, %bb.ct ] ; 3 uses
  %.lcssa581709 = phi i64 [ %.lcssa581710731, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %57, %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit ], [ %57, %bb.cs ], [ %57, %bb.ct ]
  %.0 = phi i32 [ 5, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit ], [ 0, %bb.cs ], [ 0, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.ri = load ptr, ptr %i.ao, align 8, !tbaa !493
  call void @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.ri)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.rj = load ptr, ptr %11, align 8, !tbaa !119  ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.al
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread
  %i.rl = load i64, ptr %i.al, align 8, !tbaa !91
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %.not.i.i.i308 = icmp eq ptr %.lcssa576711, null
  br i1 %.not.i.i.i308, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %i.rn = ptrtoint ptr %.lcssa576711 to i64
  %i.ro = sub i64 %.lcssa581709, %i.rn
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa576711, i64 noundef %i.ro) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.rp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !89 ; 8 uses
  %.not.i.i309 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i309, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit313, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 4 uses
  %i.rs = load atomic i64, ptr %i.rr acquire, align 8 ; 2 uses
  %i.rt = icmp eq i64 %i.rs, 4294967297
  %i.ru = trunc i64 %i.rs to i32                  ; 2 uses
  br i1 %i.rt, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.rr, align 8, !tbaa !94
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 12
  store i32 0, ptr %i.rv, align 4, !tbaa !95
  %i.rw = load ptr, ptr %i.rq, align 8, !tbaa !86
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #30, !inline_history !7
  %i.rz = load ptr, ptr %i.rq, align 8, !tbaa !86
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #30, !inline_history !7
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit313

bb.dg:                                            ; preds = %bb.de
  %i.sc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i310 = icmp eq i8 %i.sc, 0
  br i1 %.not.i.i.i310, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sd = add nsw i32 %i.ru, -1
  store i32 %i.sd, ptr %i.rr, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i311

bb.di:                                            ; preds = %bb.dg
  %i.se = atomicrmw volatile add ptr %i.rr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i311

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i311: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i312 = phi i32 [ %i.ru, %bb.dh ], [ %i.se, %bb.di ]
  %i.sf = icmp eq i32 %.0.i.i.i.i312, 1
  br i1 %i.sf, label %bb.dj, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit313, !prof !96

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i311
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #30
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit313

_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit313: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i311, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.sg = load ptr, ptr %8, align 8, !tbaa !508   ; 3 uses
  %.not.i.i.i314 = icmp eq ptr %i.sg, null
  br i1 %.not.i.i.i314, label %_ZNSt6vectorImSaImEED2Ev.exit315, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit313
  %i.sh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !509
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = ptrtoint ptr %i.sg to i64
  %i.sl = sub i64 %i.sj, %i.sk
  call void @_ZdlPvm(ptr noundef nonnull %i.sg, i64 noundef %i.sl) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit315

_ZNSt6vectorImSaImEED2Ev.exit315:                 ; preds = %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit313, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.sm = load ptr, ptr %7, align 8, !tbaa !119   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.aj
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit315
  %i.so = load i64, ptr %i.aj, align 8, !tbaa !91
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.sq = load ptr, ptr %6, align 8, !tbaa !119   ; 2 uses
  %i.sr = icmp eq ptr %i.sq, %i.ah
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %i.ss = load i64, ptr %i.ah, align 8, !tbaa !91
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.st) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.su = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.af
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.sw = load i64, ptr %i.af, align 8, !tbaa !91
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br label %bb.dm

bb.dl:                                            ; preds = %bb.a
  br label %bb.dm

bb.dm:                                            ; preds = %bb.a, %bb.a, %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
  %.1 = phi i32 [ 0, %bb.dl ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ 10, %bb.a ], [ 10, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  ret i32 %.1
}

declare void @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_ZN12lldb_private14StateAsCStringEN4lldb9StateTypeE(i32 noundef) local_unnamed_addr #2

declare void @_ZN12lldb_private21ThreadedCommunication5ClearEv(ptr noundef nonnull align 8 dereferenceable(384)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(5408) initializes((1976, 1977)) %1, ptr nofree readnone captures(none) %2, ptr noundef nonnull align 8 dereferenceable(509) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %6 = alloca %class.anon.1432, align 1           ; 3 uses
  %7 = alloca %struct.winsize, align 8            ; 6 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %10 = alloca %class.anon.1432, align 1          ; 3 uses
  %11 = alloca %"class.lldb_private::FileSpec", align 8 ; 19 uses
  %12 = alloca %"class.lldb_private::FileSpec", align 8 ; 18 uses
  %13 = alloca %"class.lldb_private::FileSpec", align 8 ; 18 uses
  %14 = alloca %"class.lldb_private::FileSpec", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %19 = alloca %"class.lldb_private::PseudoTerminal", align 4 ; 8 uses
  %20 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %21 = alloca %"class.lldb_private::FileSpec", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.lldb_private::process_gdb_remote::GDBRemoteCommunication::ScopedTimeout", align 8 ; 4 uses
  %30 = alloca %"class.lldb_private::Args", align 8 ; 8 uses
  %31 = alloca %"class.lldb_private::FileSpec", align 8 ; 6 uses
  %32 = alloca %"class.lldb_private::FileSpec", align 8 ; 4 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %36 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %37 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %38 = alloca %"class.llvm::support::detail::ErrorAdapter", align 8 ; 7 uses
  %39 = alloca %class.StringExtractorGDBRemote, align 8 ; 9 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_18process_gdb_remote7GDBRLogEEERNS_3Log7ChannelEv() #30
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.c) #30
  %i.e = and i64 %i.d, 128
  %.not6.i.i = icmp eq i64 %i.e, 0
  br i1 %.not6.i.i, label %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread, label %bb.c

_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread: ; preds = %bb.a, %bb.b
  tail call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #30
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #30
  tail call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr nonnull @.str.6, i64 93, ptr nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE, i64 8, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE) #30
  br label %bb.d

bb.d:                                             ; preds = %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread, %bb.c
  %.not291 = phi i1 [ true, %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread ], [ false, %bb.c ] ; 6 uses
  %.0.i.i289 = phi ptr [ null, %_ZN12lldb_private6GetLogINS_18process_gdb_remote7GDBRLogEEEPNS_3LogET_.exit.thread ], [ %i.c, %bb.c ] ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1416 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.h = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK12lldb_private17ProcessLaunchInfo19GetWorkingDirectoryEv(ptr noundef nonnull align 8 dereferenceable(509) %3) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !747
end_hunk_1
