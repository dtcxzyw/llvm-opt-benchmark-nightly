inline.NumInlined: 6159
inline.NumDeleted: 3176
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12v8_inspector19V8DebuggerAgentImpl20setBreakpointsActiveEb:bb.a
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
  %i.b = alloca i32, align 4                      ; 5 uses
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
  %i.ae = load i8, ptr %i.ad, align 8, !range !17, !noundef !27 ; 2 uses
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ah = load i8, ptr %i.ag, align 8, !range !17, !noundef !27 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  %narrow = add nuw nsw i8 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ak = load i8, ptr %i.aj, align 8, !range !17, !noundef !27
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
  br i1 %i.ai, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %. = select i1 %i.af, ptr %3, ptr %5            ; 2 uses
  %.237 = select i1 %i.af, i32 1, i32 3           ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(40) %.)
  %storemerge.in = getelementptr inbounds nuw i8, ptr %., i64 32
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store ptr null, ptr %27, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 %.237, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %26, ptr %i.bh, align 8
  br label %_ZN12v8_inspector12_GLOBAL__N_17MatcherC2EPNS_15V8InspectorImplENS0_14BreakpointTypeERKNS_8String16E.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bj = load i64, ptr %i.bi, align 8
  store i64 %i.bj, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 2, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %26, ptr %i.bn, align 8
  %i.bo = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17, !noalias !156 ; 3 uses
  call void @_ZN12v8_inspector7V8RegexC1EPNS_15V8InspectorImplERKNS_8String16Ebb(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %26, i1 noundef zeroext true, i1 noundef zeroext false) #19, !noalias !156
  store ptr %i.bo, ptr %27, align 8
  br label %_ZN12v8_inspector12_GLOBAL__N_17MatcherC2EPNS_15V8InspectorImplENS0_14BreakpointTypeERKNS_8String16E.exit

_ZN12v8_inspector12_GLOBAL__N_17MatcherC2EPNS_15V8InspectorImplENS0_14BreakpointTypeERKNS_8String16E.exit: ; preds = %bb.g, %.thread
  %.025138 = phi i32 [ %.237, %.thread ], [ 2, %bb.g ] ; 2 uses
  %.val129 = phi ptr [ null, %.thread ], [ %i.bo, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.bp = getelementptr inbounds nuw i8, ptr %29, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %i.bq, ptr %29, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.br, align 8
  store i64 0, ptr %.sink.i.sroa.gep, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bt = load i8, ptr %i.bs, align 8, !range !17, !noalias !159, !noundef !27
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.bv, ptr %28, align 8, !alias.scope !159
  br i1 %i.bu, label %bb.h, label %_ZN12v8_inspector8String16C2EOS0_.exit.i

bb.h:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_17MatcherC2EPNS_15V8InspectorImplENS0_14BreakpointTypeERKNS_8String16E.exit
  %i.bw = load ptr, ptr %7, align 8, !noalias !159 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noalias !159 ; 7 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.by, 1          ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 7
  br i1 %i.bz, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp ugt i64 %i.by, 4611686018427387903
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #20
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cb = icmp eq i64 %i.by, 4611686018427387903
  br i1 %i.cb, label %bb.l, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i, !prof !22

bb.l:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.k
  %i.cc = add nuw nsw i64 %.idx.i.i.i, 2
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #17 ; 2 uses
  store ptr %i.cd, ptr %28, align 8, !alias.scope !159
  store i64 %i.by, ptr %i.bv, align 8, !alias.scope !159
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i, %bb.h
  %i.ce = phi ptr [ %i.cd, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i ], [ %i.bv, %bb.h ] ; 3 uses
  switch i64 %i.by, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZN12v8_inspector8String16C2ERKS0_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cf = load i16, ptr %i.bw, align 2
  store i16 %i.cf, ptr %i.ce, align 2
  br label %_ZN12v8_inspector8String16C2ERKS0_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ce, ptr align 2 %i.bw, i64 %.idx.i.i.i, i1 false)
  br label %_ZN12v8_inspector8String16C2ERKS0_.exit.i

_ZN12v8_inspector8String16C2ERKS0_.exit.i:        ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.by, ptr %i.cg, align 8, !alias.scope !159
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i.i
  store i16 0, ptr %i.ch, align 2
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16C2EOS0_.exit.i:         ; preds = %_ZN12v8_inspector12_GLOBAL__N_17MatcherC2EPNS_15V8InspectorImplENS0_14BreakpointTypeERKNS_8String16E.exit
  store i16 0, ptr %i.bv, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 0, ptr %i.ci, align 8, !alias.scope !159
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %_ZN12v8_inspector8String16C2ERKS0_.exit.i, %_ZN12v8_inspector8String16C2EOS0_.exit.i
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %_ZN12v8_inspector8String16C2EOS0_.exit.i ], [ %.sink.i.sroa.gep128, %_ZN12v8_inspector8String16C2ERKS0_.exit.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ck = load i64, ptr %.sink.i.sroa.phi, align 8, !noalias !159
  store i64 %i.ck, ptr %i.cj, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call fastcc void @_ZN12v8_inspector12_GLOBAL__N_120generateBreakpointIdENS0_14BreakpointTypeERKNS_8String16Eii(ptr dead_on_unwind noalias writable align 8 %30, i32 noundef %.025138, ptr noundef nonnull align 8 dereferenceable(40) %26, i32 noundef %2, i32 noundef %.0)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8            ; 6 uses
  switch i32 %.025138, label %default.unreachable233 [
    i32 2, label %bb.o
    i32 1, label %bb.q
    i32 3, label %bb.t
  ]

bb.o:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull @_ZN12v8_inspector18DebuggerAgentStateL18breakpointsByRegexE) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.cn = call noundef ptr @_ZNK12v8_inspector8protocol15DictionaryValue9getObjectERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %31) #19 ; 2 uses
  %.not.i46 = icmp eq ptr %i.cn, null
  br i1 %.not.i46, label %bb.p, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit

bb.p:                                             ; preds = %bb.o
  %i.co = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !162 ; 4 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.co) #19, !noalias !162
  %i.cp = ptrtoint ptr %i.co to i64
  store i64 %i.cp, ptr %22, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setObjectERKNS_8String16ESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull %22) #19
  %i.cq = load ptr, ptr %22, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i: ; preds = %bb.p
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(96) %i.cq) #19, !inline_history !165
  br label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit

_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit: ; preds = %bb.o, %bb.p, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i
  %.0.i = phi ptr [ %i.cn, %bb.o ], [ %i.co, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i ], [ %i.co, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.cu = load ptr, ptr %31, align 8              ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZN12v8_inspector8String16D2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i47: ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit
  %i.cx = load i64, ptr %i.cv, align 8
  %i.cy = shl i64 %i.cx, 1
  %i.cz = add i64 %i.cy, 2
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cz) #18
  br label %_ZN12v8_inspector8String16D2Ev.exit49

_ZN12v8_inspector8String16D2Ev.exit49:            ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.w

bb.q:                                             ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull @_ZN12v8_inspector18DebuggerAgentStateL16breakpointsByUrlE) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.da = call noundef ptr @_ZNK12v8_inspector8protocol15DictionaryValue9getObjectERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %32) #19 ; 2 uses
  %.not.i50 = icmp eq ptr %i.da, null
  br i1 %.not.i50, label %bb.r, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54

bb.r:                                             ; preds = %bb.q
  %i.db = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !166 ; 4 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.db) #19, !noalias !166
  %i.dc = ptrtoint ptr %i.db to i64
  store i64 %i.dc, ptr %21, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setObjectERKNS_8String16ESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull %21) #19
  %i.dd = load ptr, ptr %21, align 8              ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i52, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i53

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i53: ; preds = %bb.r
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(96) %i.dd) #19, !inline_history !165
  br label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54

_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54: ; preds = %bb.q, %bb.r, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i53
  %.0.i51 = phi ptr [ %i.da, %bb.q ], [ %i.db, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i53 ], [ %i.db, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.dh = call noundef ptr @_ZNK12v8_inspector8protocol15DictionaryValue9getObjectERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(96) %.0.i51, ptr noundef nonnull align 8 dereferenceable(40) %26) #19 ; 2 uses
  %.not.i55 = icmp eq ptr %i.dh, null
  br i1 %.not.i55, label %bb.s, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59

bb.s:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54
  %i.di = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !169 ; 4 uses
  call void @_ZN12v8_inspector8protocol15DictionaryValueC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.di) #19, !noalias !169
  %i.dj = ptrtoint ptr %i.di to i64
  store i64 %i.dj, ptr %20, align 8
  call void @_ZN12v8_inspector8protocol15DictionaryValue9setObjectERKNS_8String16ESt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %.0.i51, ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull %20) #19
  %i.dk = load ptr, ptr %20, align 8              ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i57, label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59, label %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i58

_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i58: ; preds = %bb.s
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(96) %i.dk) #19, !inline_history !165
  br label %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59

_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59: ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54, %bb.s, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i58
  %.0.i56 = phi ptr [ %i.dh, %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit54 ], [ %i.di, %_ZNKSt14default_deleteIN12v8_inspector8protocol15DictionaryValueEEclEPS2_.exit.i.i58 ], [ %i.di, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.do = load ptr, ptr %32, align 8              ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZN12v8_inspector8String16D2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i60: ; preds = %_ZN12v8_inspector12_GLOBAL__N_117getOrCreateObjectEPNS_8protocol15DictionaryValueERKNS_8String16E.exit59
  %i.dr = load i64, ptr %i.dp, align 8
  %i.ds = shl i64 %i.dr, 1
  %i.dt = add i64 %i.ds, 2
end_hunk_0
