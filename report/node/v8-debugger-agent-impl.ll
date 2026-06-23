inline.NumInlined: 6159
inline.NumDeleted: 3176
begin_hunk_0_@_ZN12v8_inspector19V8DebuggerAgentImpl18setBlackboxPatternERKNS_8String16E:bb.a
  br i1 %i.aq, label %_ZN12v8_inspector8String16D2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = shl i64 %i.ar, 1
  %i.at = add i64 %i.as, 2
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.at) #18
  br label %_ZN12v8_inspector8String16D2Ev.exit.i.i.i

_ZN12v8_inspector8String16D2Ev.exit.i.i.i:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.au = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZNKSt14default_deleteIN12v8_inspector7V8RegexEEclEPS1_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit.i.i.i
  call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.au) #19
  br label %_ZNKSt14default_deleteIN12v8_inspector7V8RegexEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12v8_inspector7V8RegexEEclEPS1_.exit.i: ; preds = %bb.g, %_ZN12v8_inspector8String16D2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #18
  br label %_ZNSt10unique_ptrIN12v8_inspector7V8RegexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector7V8RegexESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteIN12v8_inspector7V8RegexEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl20setBreakpointsActiveEb(ptr dead_on_unwind noalias writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(592) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @_ZN12v8_inspector18DebuggerAgentStateL28breakpointsActiveWhenEnabledE) #19
  call void @_ZN12v8_inspector8protocol15DictionaryValue10setBooleanERKNS_8String16Eb(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3, i1 noundef zeroext %2) #19
  %i.d = load ptr, ptr %3, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8
  %i.h = shl i64 %i.g, 1
  %i.i = add i64 %i.h, 2
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.i) #18
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 409 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !range !17, !noundef !27
  %i.o = icmp eq i8 %i.n, %i.a
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.a, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  call void @_ZN12v8_inspector10V8Debugger20setBreakpointsActiveEb(ptr noundef nonnull align 8 dereferenceable(817) %i.q, i1 noundef zeroext %2) #19
  br i1 %2, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.f, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.x = load ptr, ptr %i.w, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt8_DestroyISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvPT_.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(96) %i.z) #19, !inline_history !112
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = shl i64 %i.ag, 1
  %i.ai = add i64 %i.ah, 2
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ai) #18
  br label %_ZSt8_DestroyISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.u
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvT_SB_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvT_SB_.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvPT_.exit.i.i.i.i
  %.not.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i, label %_ZN12v8_inspector19V8DebuggerAgentImpl17clearBreakDetailsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvT_SB_.exit.i.i
  %i.ak = ptrtoint ptr %i.x to i64
  %i.al = ptrtoint ptr %i.s to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.am) #18
  br label %_ZN12v8_inspector19V8DebuggerAgentImpl17clearBreakDetailsEv.exit

_ZN12v8_inspector19V8DebuggerAgentImpl17clearBreakDetailsEv.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN12v8_inspector8String16ESt10unique_ptrINS1_8protocol15DictionaryValueESt14default_deleteIS5_EEEEvT_SB_.exit.i.i, %bb.e
  %i.an = load ptr, ptr %i.p, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8
  call void @_ZN12v8_inspector10V8Debugger18setPauseOnNextCallEbi(ptr noundef nonnull align 8 dereferenceable(817) %i.an, i1 noundef zeroext false, i32 noundef %i.ar) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %_ZN12v8_inspector19V8DebuggerAgentImpl17clearBreakDetailsEv.exit, %bb.b, %_ZN12v8_inspector8String16D2Ev.exit
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #19
  ret void
}

declare void @_ZN12v8_inspector10V8Debugger18setPauseOnNextCallEbi(ptr noundef nonnull align 8 dereferenceable(817), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl16setSkipAllPausesEb(ptr dead_on_unwind noalias writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(592) initializes((408, 409)) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @_ZN12v8_inspector18DebuggerAgentStateL13skipAllPausesE) #19
  call void @_ZN12v8_inspector8protocol15DictionaryValue10setBooleanERKNS_8String16Eb(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3, i1 noundef zeroext %2) #19
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8
  %i.g = shl i64 %i.f, 1
  %i.h = add i64 %i.g, 2
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.h) #18
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  %i.i = zext i1 %2 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 %i.i, ptr %i.j, align 8
  call void @_ZN8v8_crdtp16DispatchResponse7SuccessEv(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector19V8DebuggerAgentImpl18setBreakpointByUrlEiSt8optionalINS_8String16EES3_S3_S1_IiES3_PS2_PSt10unique_ptrISt6vectorIS6_INS_8protocol8Debugger8LocationESt14default_deleteISA_EESaISD_EESB_ISF_EE(ptr dead_on_unwind noalias writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull align 8 dereferenceable(592) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9) unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.std::unique_ptr.83", align 8 ; 5 uses
  %11 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %12 = alloca %"class.v8_inspector::String16", align 8 ; 14 uses
  %13 = alloca %"class.v8_inspector::String16", align 8 ; 11 uses
  %14 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %15 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %16 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %17 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %18 = alloca %"class.std::unique_ptr.83", align 8 ; 5 uses
  %19 = alloca %"class.std::unique_ptr.83", align 8 ; 5 uses
  %20 = alloca %"class.std::unique_ptr.83", align 8 ; 5 uses
  %21 = alloca %"class.std::unique_ptr.83", align 8 ; 5 uses
  %22 = alloca %"class.std::unique_ptr.83", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 5 uses
  %26 = alloca %"class.v8_inspector::String16", align 8 ; 17 uses
  %27 = alloca %"class.v8_inspector::(anonymous namespace)::Matcher", align 8 ; 10 uses
  %28 = alloca %"class.v8_inspector::String16", align 8 ; 12 uses
  %29 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %30 = alloca %"class.v8_inspector::String16", align 8 ; 12 uses
  %31 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %32 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %33 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %35 = alloca %"class.std::unique_ptr.501", align 8 ; 6 uses
  %36 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  %37 = alloca %"class.std::unique_ptr.83", align 8 ; 3 uses
  %.sroa.0135.0.extract.trunc = trunc i64 %6 to i32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 1
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %.sink.i.sroa.gep128 = getelementptr inbounds nuw i8, ptr %7, i64 32
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(30) ptr @_Znwm(i64 noundef 30) #17 ; 3 uses
  store ptr %i.g, ptr %23, align 8
  store i64 29, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.g, ptr noundef nonnull align 16 dereferenceable(29) @_ZN12v8_inspectorL19kDebuggerNotEnabledE, i64 29, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 29, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 29
  store i8 0, ptr %i.i, align 1
  call void @_ZN8v8_crdtp16DispatchResponse11ServerErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull %23) #19
  %i.j = load ptr, ptr %23, align 8               ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.l = load i64, ptr %i.f, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17, !noalias !151 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !151
  %i.o = load ptr, ptr %9, align 8                ; 6 uses
  store ptr %i.n, ptr %9, align 8
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12v8_inspector8protocol8Debugger8LocationEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol8Debugger8LocationEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(60) %i.s) #19, !inline_history !154
  br label %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12v8_inspector8protocol8Debugger8LocationEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !155

_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.o, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i.i.i.i.i.i, %bb.c
  %i.x = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationES_IS5_EESaIS7_EEEclEPS9_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #18
  br label %_ZNKSt14default_deleteISt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationES_IS5_EESaIS7_EEEclEPS9_.exit.i.i.i.i

_ZNKSt14default_deleteISt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationES_IS5_EESaIS7_EEEclEPS9_.exit.i.i.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPSt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 24) #18
  br label %_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteISt6vectorISt10unique_ptrIN12v8_inspector8protocol8Debugger8LocationES_IS5_EESaIS7_EEEclEPS9_.exit.i.i.i.i, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = load i8, ptr %i.ad, align 8, !range !17, !noundef !27 ; 3 uses
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ah = load i8, ptr %i.ag, align 8, !range !17, !noundef !27 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  %narrow = add nuw nsw i8 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ak = load i8, ptr %i.aj, align 8, !range !17, !noundef !27 ; 2 uses
  %narrow141 = add nuw nsw i8 %narrow, %i.ak
  %.not = icmp eq i8 %narrow141, 1
  br i1 %.not, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31: ; preds = %_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17 ; 3 uses
  store ptr %i.am, ptr %24, align 8
  store i64 55, ptr %i.al, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.am, ptr noundef nonnull align 1 dereferenceable(55) @.str.2, i64 55, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 55, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 55
  store i8 0, ptr %i.ao, align 1
  call void @_ZN8v8_crdtp16DispatchResponse11ServerErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull %24) #19
  %i.ap = load ptr, ptr %24, align 8              ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.al
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31
  %i.ar = load i64, ptr %i.al, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIS_IN12v8_inspector8protocol8Debugger8LocationESt14default_deleteIS4_EESaIS7_EES5_IS9_EED2Ev.exit
  %i.at = and i64 %6, 4294967296
  %.not142 = icmp eq i64 %i.at, 0
  br i1 %.not142, label %bb.f, label %_ZNRSt8optionalIiE5valueEv.exit

_ZNRSt8optionalIiE5valueEv.exit:                  ; preds = %bb.e
  %i.au = icmp slt i32 %.sroa.0135.0.extract.trunc, 0
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37: ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.aw = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 3 uses
  store ptr %i.aw, ptr %25, align 8
  store i64 23, ptr %i.av, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.aw, ptr noundef nonnull align 1 dereferenceable(23) @.str.3, i64 23, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 23, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  store i8 0, ptr %i.ay, align 1
  call void @_ZN8v8_crdtp16DispatchResponse11ServerErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull %25) #19
  %i.az = load ptr, ptr %25, align 8              ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.av
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37
  %i.bb = load i64, ptr %i.av, align 8
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %_ZNRSt8optionalIiE5valueEv.exit, %bb.e
  %.0 = phi i32 [ %.sroa.0135.0.extract.trunc, %_ZNRSt8optionalIiE5valueEv.exit ], [ 0, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.bd, ptr %26, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.be, align 8
  store i16 0, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 3 uses
  store i64 0, ptr %i.bf, align 8
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = or i8 %i.ae, %i.ak
  %brmerge.not = icmp eq i8 %i.bg, 0
  br i1 %brmerge.not, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.g
  %.mux239 = select i1 %i.af, i32 1, i32 3
  %.mux = select i1 %i.af, ptr %3, ptr %5         ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(40) %.mux)
  %i.bh = getelementptr inbounds nuw i8, ptr %.mux, i64 32
  %i.bi = load i64, ptr %i.bh, align 8
  store i64 %i.bi, ptr %i.bf, align 8
  br label %.thread

.thread:                                          ; preds = %bb.g, %.thread.sink.split
  %.025.ph = phi i32 [ 1, %bb.g ], [ %.mux239, %.thread.sink.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store ptr null, ptr %27, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 %.025.ph, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %26, ptr %i.bk, align 8
  br label %_ZN12v8_inspector12_GLOBAL__N_17MatcherC2EPNS_15V8InspectorImplENS0_14BreakpointTypeERKNS_8String16E.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = load i64, ptr %i.bl, align 8
  store i64 %i.bm, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 2, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %26, ptr %i.bq, align 8
end_hunk_0
begin_hunk_1_@_ZN12v8_inspector19V8DebuggerAgentImpl18setBreakpointByUrlEiSt8optionalINS_8String16EES3_S3_S1_IiES3_PS2_PSt10unique_ptrISt6vectorIS6_INS_8protocol8Debugger8LocationESt14default_deleteISA_EESaISD_EESB_ISF_EE:bb.a
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(96) %i.dg) #19, !inline_history !165
  br label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54

_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54: ; preds = %bb.r, %bb.s, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i53
  %.0.i51 = phi ptr [ %i.dd, %bb.r ], [ %i.de, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i53 ], [ %i.de, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.dk = call noundef ptr @_ZNK12v8_inspector8protocol15DictionaryValue9getObjectERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(96) %.0.i51, ptr noundef nonnull align 8 dereferenceable(40) %26) #19 ; 2 uses
  %.not.i55 = icmp eq ptr %i.dk, null
  br i1 %.not.i55, label %bb.t, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59

bb.t:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54
  %i.dl = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !169 ; 4 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.dl) #19, !noalias !169
  %i.dm = ptrtoint ptr %i.dl to i64
  store i64 %i.dm, ptr %20, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setObjectERKNS_8String16ESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %.0.i51, ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull %20) #19
  %i.dn = load ptr, ptr %20, align 8              ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i57, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i58

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i58: ; preds = %bb.t
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(96) %i.dn) #19, !inline_history !165
  br label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59

_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59: ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54, %bb.t, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i58
  %.0.i56 = phi ptr [ %i.dk, %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54 ], [ %i.dl, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i58 ], [ %i.dl, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.dr = load ptr, ptr %32, align 8              ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZN12v8_inspector8String16D2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i60: ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59
  %i.du = load i64, ptr %i.ds, align 8
  %i.dv = shl i64 %i.du, 1
  %i.dw = add i64 %i.dv, 2
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dw) #18
  br label %_ZN12v8_inspector8String16D2Ev.exit62

_ZN12v8_inspector8String16D2Ev.exit62:            ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.x

bb.u:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull @_ZN12v8_inspector18DebuggerAgentStateL23breakpointsByScriptHashE) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.dx = call noundef ptr @_ZNK12v8_inspector8protocol15DictionaryValue9getObjectERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(96) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %33) #19 ; 2 uses
  %.not.i63 = icmp eq ptr %i.dx, null
  br i1 %.not.i63, label %bb.v, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit67

bb.v:                                             ; preds = %bb.u
  %i.dy = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !172 ; 4 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.dy) #19, !noalias !172
  %i.dz = ptrtoint ptr %i.dy to i64
  store i64 %i.dz, ptr %19, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setObjectERKNS_8String16ESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull %19) #19
  %i.ea = load ptr, ptr %19, align 8              ; 3 uses
  %.not.i.i65 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i65, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit67, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i66

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i66: ; preds = %bb.v
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(96) %i.ea) #19, !inline_history !165
  br label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit67

_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit67: ; preds = %bb.u, %bb.v, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i66
  %.0.i64 = phi ptr [ %i.dx, %bb.u ], [ %i.dy, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i66 ], [ %i.dy, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.ee = call noundef ptr @_ZNK12v8_inspector8protocol15DictionaryValue9getObjectERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(96) %.0.i64, ptr noundef nonnull align 8 dereferenceable(40) %26) #19 ; 2 uses
  %.not.i68 = icmp eq ptr %i.ee, null
  br i1 %.not.i68, label %bb.w, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit72

bb.w:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit67
  %i.ef = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !175 ; 4 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.ef) #19, !noalias !175
  %i.eg = ptrtoint ptr %i.ef to i64
  store i64 %i.eg, ptr %18, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setObjectERKNS_8String16ESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %.0.i64, ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull %18) #19
  %i.eh = load ptr, ptr %18, align 8              ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i70, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit72, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i71

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i71: ; preds = %bb.w
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(96) %i.eh) #19, !inline_history !165
  br label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit72

_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit72: ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit67, %bb.w, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i71
  %.0.i69 = phi ptr [ %i.ee, %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit67 ], [ %i.ef, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i71 ], [ %i.ef, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.el = load ptr, ptr %33, align 8              ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZN12v8_inspector8String16D2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i73

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i73: ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit72
  %i.eo = load i64, ptr %i.em, align 8
  %i.ep = shl i64 %i.eo, 1
  %i.eq = add i64 %i.ep, 2
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eq) #18
  br label %_ZN12v8_inspector8String16D2Ev.exit75

_ZN12v8_inspector8String16D2Ev.exit75:            ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit72, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  br label %bb.x

default.unreachable233:                           ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  unreachable

bb.x:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit75, %_ZN12v8_inspector8String16D2Ev.exit62, %_ZN12v8_inspector8String16D2Ev.exit49
  %.026 = phi ptr [ %.0.i, %_ZN12v8_inspector8String16D2Ev.exit49 ], [ %.0.i56, %_ZN12v8_inspector8String16D2Ev.exit62 ], [ %.0.i69, %_ZN12v8_inspector8String16D2Ev.exit75 ] ; 3 uses
  %i.er = call noundef ptr @_ZNK12v8_inspector8protocol15DictionaryValue3getERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(96) %.026, ptr noundef nonnull align 8 dereferenceable(40) %30) #19
  %.not28 = icmp eq ptr %i.er, null
  br i1 %.not28, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i77: ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  %i.et = call noalias noundef nonnull dereferenceable(49) ptr @_Znwm(i64 noundef 49) #17 ; 3 uses
  store ptr %i.et, ptr %34, align 8
  store i64 48, ptr %i.es, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.et, ptr noundef nonnull align 1 dereferenceable(48) @.str.5, i64 48, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 48, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store i8 0, ptr %i.ev, align 1
  call void @_ZN8v8_crdtp16DispatchResponse11ServerErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %0, ptr noundef nonnull %34) #19
  %i.ew = load ptr, ptr %34, align 8              ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.es
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i77
  %i.ey = load i64, ptr %i.es, align 8
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.y:                                             ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0119.0150 = load ptr, ptr %i.fa, align 8 ; 2 uses
  %i.fb = icmp eq ptr %.sroa.0119.0150, null
  br i1 %i.fb, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.y
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %.026, ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 8 dereferenceable(40) %28) #19
  br label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit104

.lr.ph:                                           ; preds = %bb.y
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.z

._crit_edge:                                      ; preds = %bb.au
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %.026, ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 8 dereferenceable(40) %28) #19
  %.not146 = icmp eq ptr %.sroa.0122.2, null
  br i1 %.not146, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit104, label %bb.av

bb.z:                                             ; preds = %.lr.ph, %bb.au
  %.sroa.0119.0152 = phi ptr [ %.sroa.0119.0150, %.lr.ph ], [ %.sroa.0119.0, %bb.au ] ; 3 uses
  %.sroa.0122.0151 = phi ptr [ null, %.lr.ph ], [ %.sroa.0122.2, %bb.au ] ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0119.0152, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0119.0152, i64 48 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call fastcc noundef zeroext i1 @_ZN12v8_inspector12_GLOBAL__N_17Matcher7matchesERKNS_16V8DebuggerScriptE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(304) %i.fp)
  br i1 %i.fq, label %bb.aa, label %bb.au

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 %2, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %.0, ptr %i.b, align 4
  %.not143 = icmp eq ptr %.sroa.0122.0151, null   ; 2 uses
  br i1 %.not143, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = load ptr, ptr %i.fo, align 8
  call fastcc void @_ZN12v8_inspector12_GLOBAL__N_124adjustBreakpointLocationERKNS_16V8DebuggerScriptEPKNS_8protocol15DictionaryValueEPiS8_(ptr noundef nonnull align 8 dereferenceable(304) %i.fr, ptr noundef nonnull %.sroa.0122.0151, ptr noundef %i.a, ptr noundef %i.b)
  %.pre = load i32, ptr %i.a, align 4
  %.pre154 = load i32, ptr %i.b, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fs = phi i32 [ %.pre154, %bb.ab ], [ %.0, %bb.aa ]
  %i.ft = phi i32 [ %.pre, %bb.ab ], [ %2, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @_ZN12v8_inspector19V8DebuggerAgentImpl17setBreakpointImplERKNS_8String16ES3_S3_ii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.501") align 8 %35, ptr noundef nonnull align 8 dereferenceable(592) %1, ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 8 dereferenceable(40) %i.fn, ptr noundef nonnull align 8 dereferenceable(40) %28, i32 noundef %i.ft, i32 noundef %i.fs)
  %i.fu = load ptr, ptr %35, align 8              ; 6 uses
  %i.fv = icmp eq ptr %i.fu, null
  %or.cond.not = or i1 %i.fv, %i.ai
  br i1 %or.cond.not, label %_ZNSt10unique_ptrIN12v8_inspector8protocol15DictionaryValueESt14default_deleteIS2_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fw = load ptr, ptr %i.fo, align 8            ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %38 = load i32, ptr %i.fx, align 8
  %i.fy = load i32, ptr %i.b, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 52
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.gb = load i8, ptr %i.ga, align 8, !range !17, !noundef !27
  %i.gc = trunc nuw i8 %i.gb to i1
  %.val.i.i = load i32, ptr %i.fz, align 4
  %.0.i.i = select i1 %i.gc, i32 %.val.i.i, i32 %i.fy
  %i.gd = call i64 @_ZNK12v8_inspector16V8DebuggerScript6offsetEii(ptr noundef nonnull align 8 dereferenceable(304) %i.fw, i32 noundef %38, i32 noundef %.0.i.i) #19, !noalias !178 ; 3 uses
  %.sroa.645.0.extract.shift.i = lshr i64 %i.gd, 32 ; 2 uses
  %.sroa.645.0.extract.trunc.i = trunc nuw i64 %.sroa.645.0.extract.shift.i to i32
  %i.ge = trunc i64 %i.gd to i1
  br i1 %i.ge, label %_ZNK2v85MaybeIiE2ToEPi.exit.i, label %_ZN12v8_inspector12_GLOBAL__N_114breakpointHintERKNS_16V8DebuggerScriptEiiii.exit

_ZNK2v85MaybeIiE2ToEPi.exit.i:                    ; preds = %bb.ad
  %i.gf = call i64 @_ZNK12v8_inspector16V8DebuggerScript6offsetEii(ptr noundef nonnull align 8 dereferenceable(304) %i.fw, i32 noundef %2, i32 noundef range(i32 0, -2147483648) %.0) #19, !noalias !178 ; 3 uses
  %.sroa.640.0.extract.shift.i = lshr i64 %i.gf, 32 ; 2 uses
  %.sroa.640.0.extract.trunc.i = trunc nuw i64 %.sroa.640.0.extract.shift.i to i32
  %i.gg = trunc i64 %i.gf to i1
  br i1 %i.gg, label %bb.ae, label %_ZN12v8_inspector12_GLOBAL__N_114breakpointHintERKNS_16V8DebuggerScriptEiiii.exit

bb.ae:                                            ; preds = %_ZNK2v85MaybeIiE2ToEPi.exit.i
  %i.gh = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !181 ; 5 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.gh) #19, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !178
  %i.gi = ashr i64 %i.gd, 32
  call void @_ZNK12v8_inspector16V8DebuggerScript6sourceEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %11, ptr noundef nonnull align 8 dereferenceable(304) %i.fw, i64 noundef %i.gi, i64 noundef 128) #19, !noalias !178
  %i.gj = call { i64, i64 } @_ZNK12v8_inspector8String1625getTrimmedOffsetAndLengthEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #19, !noalias !178 ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0      ; 2 uses
  %i.gl = extractvalue { i64, i64 } %i.gj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !178
  call void @_ZNK12v8_inspector8String169substringEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 noundef %i.gk, i64 noundef %i.gl), !noalias !178
  %i.gm = load i64, ptr %i.fc, align 8, !noalias !178 ; 2 uses
  %.not55.i = icmp eq i64 %i.gm, 0
  br i1 %.not55.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae
  %i.gn = load ptr, ptr %12, align 8, !noalias !178
  br label %bb.af

bb.af:                                            ; preds = %bb.am, %.lr.ph.i
  %.054.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hl, %bb.am ] ; 3 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %.054.i
  %i.gp = load i16, ptr %i.go, align 2, !noalias !178
  switch i16 %i.gp, label %bb.am [
    i16 13, label %bb.ag
    i16 10, label %bb.ag
    i16 59, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !178
  call void @_ZNK12v8_inspector8String169substringEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %13, ptr noundef nonnull align 8 dereferenceable(40) %12, i64 noundef 0, i64 noundef %.054.i), !noalias !178
  %i.gq = load ptr, ptr %12, align 8, !noalias !178 ; 6 uses
  %i.gr = icmp eq ptr %i.gq, %i.fd
  %i.gs = load ptr, ptr %13, align 8, !noalias !178 ; 5 uses
  %i.gt = icmp eq ptr %i.gs, %i.fe                ; 2 uses
  br i1 %i.gr, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i85, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i82

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.ag
  br i1 %i.gt, label %bb.ah, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i82: ; preds = %bb.ag
  br i1 %i.gt, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i82, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i85
  %i.gu = load i64, ptr %i.ff, align 8, !noalias !178 ; 3 uses
  %i.gv = icmp ult i64 %i.gu, 8
  call void @llvm.assume(i1 %i.gv)
  switch i64 %i.gu, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gw = load i16, ptr %i.gs, align 2, !noalias !178
  store i16 %i.gw, ptr %i.gq, align 2, !noalias !178
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gx = shl nuw nsw i64 %i.gu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gq, ptr align 2 %i.gs, i64 %i.gx, i1 false), !noalias !178
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.gy = load i64, ptr %i.ff, align 8, !noalias !178 ; 2 uses
  store i64 %i.gy, ptr %i.fc, align 8, !noalias !178
  %i.gz = load ptr, ptr %12, align 8, !noalias !178
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %i.gy
  store i16 0, ptr %i.ha, align 2, !noalias !178
  %.pre.i.i.i = load ptr, ptr %13, align 8, !noalias !178
  br label %_ZN12v8_inspector8String16aSEOS0_.exit.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i85
  store ptr %i.gs, ptr %12, align 8, !noalias !178
  %i.hb = load <2 x i64>, ptr %i.ff, align 8, !noalias !178
  store <2 x i64> %i.hb, ptr %i.fc, align 8, !noalias !178
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i82
  %i.hc = load i64, ptr %i.fd, align 8, !noalias !178
  store ptr %i.gs, ptr %12, align 8, !noalias !178
  %i.hd = load <2 x i64>, ptr %i.ff, align 8, !noalias !178
  store <2 x i64> %i.hd, ptr %i.fc, align 8, !noalias !178
  %.not.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.gq, ptr %13, align 8, !noalias !178
  store i64 %i.hc, ptr %i.fe, align 8, !noalias !178
  br label %_ZN12v8_inspector8String16aSEOS0_.exit.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.fe, ptr %13, align 8, !noalias !178
  br label %_ZN12v8_inspector8String16aSEOS0_.exit.i

_ZN12v8_inspector8String16aSEOS0_.exit.i:         ; preds = %bb.al, %bb.ak, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i.i
  %i.he = phi ptr [ %i.gq, %bb.ak ], [ %i.fe, %bb.al ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i.i ]
  store i64 0, ptr %i.ff, align 8, !noalias !178
  store i16 0, ptr %i.he, align 2, !noalias !178
  %i.hf = load i64, ptr %i.fg, align 8, !noalias !178
  store i64 %i.hf, ptr %i.fh, align 8, !noalias !178
  %i.hg = load ptr, ptr %13, align 8, !noalias !178 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.fe
  br i1 %i.hh, label %_ZN12v8_inspector8String16D2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit.i
  %i.hi = load i64, ptr %i.fe, align 8, !noalias !178
  %i.hj = shl i64 %i.hi, 1
  %i.hk = add i64 %i.hj, 2
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #18, !noalias !178
  br label %_ZN12v8_inspector8String16D2Ev.exit.i

_ZN12v8_inspector8String16D2Ev.exit.i:            ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !178
  br label %.loopexit.i

bb.am:                                            ; preds = %bb.af
  %i.hl = add nuw i64 %.054.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hl, %i.gm
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.af, !llvm.loop !184

.loopexit.i:                                      ; preds = %bb.am, %_ZN12v8_inspector8String16D2Ev.exit.i, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !178
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull @_ZN12v8_inspector18DebuggerAgentStateL18breakpointHintTextE) #19, !noalias !178
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setStringERKNS_8String16ES4_(ptr noundef nonnull align 8 dereferenceable(96) %i.gh, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %12) #19, !noalias !178
  %i.hm = load ptr, ptr %14, align 8, !noalias !178 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.fi
  br i1 %i.hn, label %_ZN12v8_inspector8String16D2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %.loopexit.i
  %i.ho = load i64, ptr %i.fi, align 8, !noalias !178
  %i.hp = shl i64 %i.ho, 1
  %i.hq = add i64 %i.hp, 2
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #18, !noalias !178
  br label %_ZN12v8_inspector8String16D2Ev.exit23.i

_ZN12v8_inspector8String16D2Ev.exit23.i:          ; preds = %.loopexit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !178
  %.not.i84 = icmp sgt i32 %.sroa.640.0.extract.trunc.i, %.sroa.645.0.extract.trunc.i
  br i1 %.not.i84, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZN12v8_inspector8String16D2Ev.exit23.i
  %i.hr = sub nsw i64 %.sroa.645.0.extract.shift.i, %.sroa.640.0.extract.shift.i
  %i.hs = and i64 %i.hr, 4294967295
  %i.ht = add i64 %i.gk, %i.hs                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19, !noalias !178
  %i.hu = ashr i64 %i.gf, 32
  call void @_ZNK12v8_inspector16V8DebuggerScript6sourceEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %15, ptr noundef nonnull align 8 dereferenceable(304) %i.fw, i64 noundef %i.hu, i64 noundef %i.ht) #19, !noalias !178
  %i.hv = call noundef i32 @_ZN12v8_inspector12computeCrc32ERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(40) %15) #19, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19, !noalias !178
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull @_ZN12v8_inspector18DebuggerAgentStateL24breakpointHintPrefixHashE) #19, !noalias !178
  call void @_ZN12v8_inspector8protocol15DictionaryValue10setIntegerERKNS_8String16Ei(ptr noundef nonnull align 8 dereferenceable(96) %i.gh, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %i.hv) #19, !noalias !178
  %i.hw = load ptr, ptr %16, align 8, !noalias !178 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.fj
  br i1 %i.hx, label %_ZN12v8_inspector8String16D2Ev.exit26.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i24.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i24.i: ; preds = %bb.an
  %i.hy = load i64, ptr %i.fj, align 8, !noalias !178
  %i.hz = shl i64 %i.hy, 1
  %i.ia = add i64 %i.hz, 2
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #18, !noalias !178
  br label %_ZN12v8_inspector8String16D2Ev.exit26.i

_ZN12v8_inspector8String16D2Ev.exit26.i:          ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19, !noalias !178
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull @_ZN12v8_inspector18DebuggerAgentStateL26breakpointHintPrefixLengthE) #19, !noalias !178
  %i.ib = icmp ult i64 %i.ht, 2147483648
  br i1 %i.ib, label %_ZN2v84base8internal12checked_castIiNS1_14CheckOnFailureEmQaaaa9IsNumericIT1_Esr3stdE15is_arithmetic_vIT_Eltclsr3std14numeric_limitsIS5_EE6lowestEclsr3std14numeric_limitsIS5_EE3maxEEES5_S4_.exit.i, label %bb.ao, !prof !86

bb.ao:                                            ; preds = %_ZN12v8_inspector8String16D2Ev.exit26.i
  call void @llvm.trap()
  unreachable

_ZN2v84base8internal12checked_castIiNS1_14CheckOnFailureEmQaaaa9IsNumericIT1_Esr3stdE15is_arithmetic_vIT_Eltclsr3std14numeric_limitsIS5_EE6lowestEclsr3std14numeric_limitsIS5_EE3maxEEES5_S4_.exit.i: ; preds = %_ZN12v8_inspector8String16D2Ev.exit26.i
  %i.ic = trunc nuw nsw i64 %i.ht to i32
  call void @_ZN12v8_inspector8protocol15DictionaryValue10setIntegerERKNS_8String16Ei(ptr noundef nonnull align 8 dereferenceable(96) %i.gh, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef %i.ic) #19, !noalias !178
  %i.id = load ptr, ptr %17, align 8, !noalias !178 ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.fk
  br i1 %i.ie, label %_ZN12v8_inspector8String16D2Ev.exit29.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i27.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i27.i: ; preds = %_ZN2v84base8internal12checked_castIiNS1_14CheckOnFailureEmQaaaa9IsNumericIT1_Esr3stdE15is_arithmetic_vIT_Eltclsr3std14numeric_limitsIS5_EE6lowestEclsr3std14numeric_limitsIS5_EE3maxEEES5_S4_.exit.i
  %i.if = load i64, ptr %i.fk, align 8, !noalias !178
  %i.ig = shl i64 %i.if, 1
  %i.ih = add i64 %i.ig, 2
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #18, !noalias !178
  br label %_ZN12v8_inspector8String16D2Ev.exit29.i

end_hunk_1
begin_hunk_2_@_ZN12v8_inspector8protocol9ListValueC1Ev
declare void @_ZN12v8_inspector8protocol9ListValueC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !86

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1
  store i8 %i.s, ptr %i.g, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !86

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !86

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1
  store i8 %i.ad, ptr %1, align 1
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !86

bb.n:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1
  store i8 %i.ak, ptr %i.g, align 1
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !86

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1
  store i8 %i.ap, ptr %i.an, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !86

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1
  store i8 %i.au, ptr %1, align 1
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8               ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #17
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !86

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1
  store i8 %i.bk, ptr %i.bf, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !86

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1
  store i8 %i.bo, ptr %i.bl, align 1
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !86

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1
  store i8 %i.bt, ptr %i.bp, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i51 = icmp eq ptr %i.av, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bf, ptr %0, align 8
  store ptr %i.bu, ptr %i.f, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.c, %bb.b ] ; 6 uses
  %i.d = load ptr, ptr %.06.i, align 8            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #18
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i
  %i.m = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8
  %i.q = shl i64 %i.p, 1
  %i.r = add i64 %i.q, 2
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #18
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 80) #18
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !139

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.b
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE19_M_deallocate_nodesEPSB_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.x) #18
  br label %_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12v8_inspector8String16ESt6vectorIS2_IiiESaIS7_EEELb1EEEEE19_M_deallocate_nodesEPSB_.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.aa = load ptr, ptr %1, align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  store ptr %i.aa, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  store ptr %i.t, ptr %0, align 8
  %i.ad = load ptr, ptr %i.ab, align 8
  store ptr %i.ad, ptr %i.t, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %i.t, %bb.f ], [ %i.aa, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  store ptr %i.aj, ptr %i.b, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.al, ptr %i.am, align 8
  %.not.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i12, label %_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = urem i64 %i.ao, %i.ag
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ap
  store ptr %i.b, ptr %i.aq, align 8
  br label %_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit

_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit: ; preds = %bb.g, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ar, align 8
  store i64 1, ptr %i.af, align 8
  store ptr null, ptr %i.ab, align 8
  store ptr %i.ab, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt10_HashtableIN12v8_inspector8String16ESt4pairIKS1_St6vectorIS2_IiiESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN12v8_inspector19V8DebuggerAgentImpl12CachedScriptESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.045 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %.045, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZSt8_DestroyIN12v8_inspector19V8DebuggerAgentImpl12CachedScriptEEvPT_.exit.i.i.3
  %.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.ck, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.f, %.lcssa
  %i.g = load ptr, ptr %1, align 8                ; 4 uses
  br i1 %.not, label %bb.i, label %bb.f

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN12v8_inspector19V8DebuggerAgentImpl12CachedScriptEEvPT_.exit.i.i.3
  %.046 = phi ptr [ %.0, %_ZSt8_DestroyIN12v8_inspector19V8DebuggerAgentImpl12CachedScriptEEvPT_.exit.i.i.3 ], [ %.045, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.046, align 8             ; 24 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.b, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN12v8_inspector8String16D2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8
  %i.u = shl i64 %i.t, 1
  %i.v = add i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #18
end_hunk_2
