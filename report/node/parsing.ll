Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/parsing?download=true
inline.NumInlined: 287
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal6ParserC1EPNS0_12LocalIsolateEPNS0_9ParseInfoE
declare void @_ZN2v88internal6ParserC1EPNS0_12LocalIsolateEPNS0_9ParseInfoE(ptr noundef nonnull align 8 dereferenceable(1852), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal6Parser12ParseProgramEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEPNS0_9ParseInfoENS0_17MaybeDirectHandleINS0_9ScopeInfoEEE(ptr noundef nonnull align 8 dereferenceable(1852), ptr noundef, ptr, ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6ParserD2Ev(ptr noundef nonnull align 8 dereferenceable(1852) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #8
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i

_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i:               ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #8
  br label %_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZN2v88internal9PreParserD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #8
  br label %_ZN2v88internal9PreParserD2Ev.exit

_ZN2v88internal9PreParserD2Ev.exit:               ; preds = %_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 328) #8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9PreParserD2Ev.exit, %bb.a
  store ptr null, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #8
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 968
  tail call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %i.af) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @_ZN2v88internal7ScannerD2Ev(ptr noundef nonnull align 8 dead_on_return(560) dereferenceable(560) %i.ag) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #8
  br label %_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i2, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #8
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i2

_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i2:              ; preds = %bb.i, %_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EED2Ev.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i3, label %_ZN2v88internal10ParserBaseINS0_6ParserEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #8
  br label %_ZN2v88internal10ParserBaseINS0_6ParserEED2Ev.exit

_ZN2v88internal10ParserBaseINS0_6ParserEED2Ev.exit: ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit.i2, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal16FuncNameInferrer4NameELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bc)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7parsing12ParseProgramEPNS0_9ParseInfoENS0_12DirectHandleINS0_6ScriptEEEPNS0_7IsolateENS1_20ReportStatisticsModeE(ptr noundef %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal7parsing12ParseProgramEPNS0_9ParseInfoENS0_12DirectHandleINS0_6ScriptEEENS0_17MaybeDirectHandleINS0_9ScopeInfoEEEPNS0_7IsolateENS1_20ReportStatisticsModeE(ptr noundef %0, ptr %1, ptr null, ptr noundef %2, i32 noundef %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7parsing13ParseFunctionEPNS0_9ParseInfoENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateENS1_20ReportStatisticsModeE(ptr noundef %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.486", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.486", align 8 ; 4 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %7 = alloca %"class.v8::internal::Parser", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 496 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  store i16 2, ptr %i.a, align 8
  %i.c = load i64, ptr %1, align 8
  %i.d = add i64 %i.c, 39
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #7
  br label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.m = ptrtoint ptr %.0.i.i to i64
  %i.n = add i64 %i.m, 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8
  store i64 %i.f, ptr %.0.i.i, align 8
  %i.p = add i64 %i.f, 7
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #7
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.c
  %.0.i = phi ptr [ %i.v, %bb.c ], [ %i.s, %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 4 uses
  %i.w = ptrtoint ptr %.0.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.g, align 8
  store i64 %i.r, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.z = load i64, ptr %1, align 8
  store i64 %i.z, ptr %4, align 8
  %i.aa = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ab = load i64, ptr %1, align 8
  store i64 %i.ab, ptr %5, align 8
  %i.ac = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo11EndPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.ad = load i64, ptr %.0.i, align 8
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp ugt i32 %i.ac, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.aj = load i64, ptr %.0.i.i, align 8
  %i.ak = inttoptr i64 %i.aj to ptr
  %8 = or disjoint i64 %i.ae, 1
  %i.al = inttoptr i64 %8 to ptr
  call void @_ZN2v88internal7Isolate20PushStackTraceAndDieEPvS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(64320) %2, ptr noundef %i.ak, ptr noundef nonnull %i.al, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.am = call noundef ptr @_ZN2v88internal13ScannerStream3ForEPNS0_7IsolateENS0_6HandleINS0_6StringEEEii(ptr noundef nonnull %2, ptr nonnull %.0.i, i32 noundef %i.aa, i32 noundef %i.ac) #7
  %i.an = ptrtoint ptr %i.am to i64
  store i64 %i.an, ptr %6, align 8
  call void @_ZN2v88internal9ParseInfo20set_character_streamESt10unique_ptrINS0_20Utf16CharacterStreamESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull %6) #7
  %i.ao = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal20Utf16CharacterStreamESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal20Utf16CharacterStreamEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal20Utf16CharacterStreamEEclEPS2_.exit.i: ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.ao) #7, !inline_history !0
  br label %_ZNSt10unique_ptrIN2v88internal20Utf16CharacterStreamESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal20Utf16CharacterStreamESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN2v88internal20Utf16CharacterStreamEEclEPS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 63936
  %i.at = load ptr, ptr %i.as, align 8
  call void @_ZN2v88internal6ParserC1EPNS0_12LocalIsolateEPNS0_9ParseInfoE(ptr noundef nonnull align 8 dereferenceable(1852) %7, ptr noundef %i.at, ptr noundef nonnull %0) #7
  call void @_ZN2v88internal6Parser13ParseFunctionEPNS0_7IsolateEPNS0_9ParseInfoENS0_12DirectHandleINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(1852) %7, ptr noundef nonnull %2, ptr noundef nonnull %0, ptr nonnull %1) #7
  %cond.i = icmp eq i32 %3, 0
  br i1 %cond.i, label %bb.f, label %_ZNSt10unique_ptrIN2v88internal20Utf16CharacterStreamESt14default_deleteIS2_EED2Ev.exit30

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal20Utf16CharacterStreamESt14default_deleteIS2_EED2Ev.exit
  call void @_ZN2v88internal6Parser16UpdateStatisticsEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(1852) %7, ptr noundef nonnull %2, ptr nonnull %.0.i.i) #7
  br label %_ZNSt10unique_ptrIN2v88internal20Utf16CharacterStreamESt14default_deleteIS2_EED2Ev.exit30

_ZNSt10unique_ptrIN2v88internal20Utf16CharacterStreamESt14default_deleteIS2_EED2Ev.exit30: ; preds = %bb.f, %_ZNSt10unique_ptrIN2v88internal20Utf16CharacterStreamESt14default_deleteIS2_EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp ne ptr %i.av, null
  call void @_ZN2v88internal6ParserD2Ev(ptr noundef nonnull align 8 dereferenceable(1852) %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  store i16 %i.b, ptr %i.a, align 8
  ret i1 %i.aw
}

declare noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal18SharedFunctionInfo11EndPositionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal7Isolate20PushStackTraceAndDieEPvS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal13ScannerStream3ForEPNS0_7IsolateENS0_6HandleINS0_6StringEEEii(ptr noundef, ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal6Parser13ParseFunctionEPNS0_7IsolateEPNS0_9ParseInfoENS0_12DirectHandleINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(1852), ptr noundef, ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7parsing8ParseAnyEPNS0_9ParseInfoENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateENS1_20ReportStatisticsModeE(ptr noundef %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.497", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.497", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.486", align 8 ; 4 uses
  %i.a = load i32, ptr %0, align 4
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.c = load i64, ptr %1, align 8
  store i64 %i.c, ptr %6, align 8
  %i.d = call noundef zeroext i1 @_ZNK2v88internal18SharedFunctionInfo17HasOuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = add i64 %i.e, 23
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g acquire, align 8 ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i: ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 284
  br i1 %i.p, label %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, %bb.c
  %i.q = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 10624
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 296
  %i.u = load i64, ptr %i.t, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i

_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i
  %.sroa.06.0.i.i.i = phi i64 [ %i.u, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i ], [ %i.h, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i64 %.sroa.06.0.i.i.i, ptr %4, align 8
  %i.v = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i
  %i.w = add i64 %i.e, 31
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit

bb.e:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store i64 %.sroa.06.0.i.i.i, ptr %5, align 8
  %i.z = call i64 @_ZNK2v88internal9ScopeInfo14OuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit

_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit: ; preds = %bb.d, %bb.e
  %.sroa.02.0.i = phi i64 [ %i.y, %bb.d ], [ %i.z, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.f, label %_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.f:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit
  %i.af = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #7
  br label %_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit, %bb.f
  %.0.i.i18 = phi ptr [ %i.af, %bb.f ], [ %i.ab, %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit ] ; 3 uses
  %i.ag = ptrtoint ptr %.0.i.i18 to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.aa, align 8
  store i64 %.sroa.02.0.i, ptr %.0.i.i18, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.b
  %.sroa.028.0 = phi ptr [ %.0.i.i18, %_ZN2v88internal6HandleINS0_9ScopeInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.b ]
  %i.aj = load i64, ptr %1, align 8
  %i.ak = add i64 %i.aj, 39
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al acquire, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.as = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #7
  br label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.as, %bb.h ], [ %i.ao, %bb.g ] ; 3 uses
  %i.at = ptrtoint ptr %.0.i.i to i64
  %i.au = add i64 %i.at, 8
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.av, ptr %i.an, align 8
  store i64 %i.am, ptr %.0.i.i, align 8
  %i.aw = call noundef zeroext i1 @_ZN2v88internal7parsing12ParseProgramEPNS0_9ParseInfoENS0_12DirectHandleINS0_6ScriptEEENS0_17MaybeDirectHandleINS0_9ScopeInfoEEEPNS0_7IsolateENS1_20ReportStatisticsModeE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr %.sroa.028.0, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ax = tail call noundef zeroext i1 @_ZN2v88internal7parsing13ParseFunctionEPNS0_9ParseInfoENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateENS1_20ReportStatisticsModeE(ptr noundef nonnull %0, ptr %1, ptr noundef %2, i32 noundef %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0 = phi i1 [ %i.aw, %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.ax, %bb.i ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal18SharedFunctionInfo17HasOuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.497", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.497", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.497", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.497", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8 ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i: ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 284
  br i1 %i.k, label %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i, %bb.a
end_hunk_0
