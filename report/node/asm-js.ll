inline.NumInlined: 1543
inline.NumDeleted: 666
begin_hunk_0_@_ZN2v88internal4wasm12ErrorThrowerD1Ev
declare void @_ZN2v88internal4wasm12ErrorThrowerD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #3

declare void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal5AsmJs17NewCompilationJobEPNS0_9ParseInfoEPNS0_15FunctionLiteralEPNS0_19AccountingAllocatorE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.732") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN2v88internal19AsmJsCompilationJobESt14default_deleteIS2_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #17, !noalias !24 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noalias !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.e, align 8, !noalias !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.f, align 8, !noalias !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.g, align 8, !noalias !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.h, align 8, !noalias !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal19AsmJsCompilationJobE, i64 16), ptr %i.a, align 8, !noalias !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %3, ptr %i.j, align 8, !noalias !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  tail call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef %3, ptr noundef nonnull @__func__._ZN2v88internal19AsmJsCompilationJobC2EPNS0_9ParseInfoEPNS0_15FunctionLiteralEPNS0_19AccountingAllocatorE) #16, !noalias !24
  tail call void @_ZN2v88internal26UnoptimizedCompilationInfoC1EPNS0_4ZoneEPNS0_9ParseInfoEPNS0_15FunctionLiteralE(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull %i.k, ptr noundef nonnull %1, ptr noundef %2) #16, !noalias !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.l, i8 0, i64 36, i1 false), !noalias !24
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal5AsmJs18InstantiateAsmWasmEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_11AsmWasmDataEEENS4_INS0_10JSReceiverEEESA_NS4_INS0_13JSArrayBufferEEE(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::MessageLocation", align 8 ; 5 uses
  %7 = alloca %"class.v8::base::EmbeddedVector.867", align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::MessageLocation", align 8 ; 5 uses
  %9 = alloca %"class.v8::internal::MessageLocation", align 8 ; 5 uses
  %10 = alloca %"class.v8::internal::MessageLocation", align 8 ; 5 uses
  %11 = alloca %"class.v8::internal::MessageLocation", align 8 ; 5 uses
  %12 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %13 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %14 = alloca %"class.v8::internal::MessageLocation", align 8 ; 5 uses
  %15 = alloca %"class.v8::internal::MessageLocation", align 8 ; 5 uses
  %16 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.759", align 8 ; 4 uses
  %18 = alloca %"class.std::shared_ptr.764", align 8 ; 5 uses
  %19 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.762", align 8 ; 6 uses
  %20 = alloca %"class.v8::internal::wasm::ErrorThrower", align 8 ; 11 uses
  %21 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %22 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #16
  %i.b = load i64, ptr %2, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN2v88internal6HandleINS0_10HeapNumberEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal6HandleINS0_10HeapNumberEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10HeapNumberEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.l = ptrtoint ptr %.0.i.i to i64
  %i.m = add i64 %i.l, 8
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8
  store i64 %i.e, ptr %.0.i.i, align 8
  %i.o = load i64, ptr %1, align 8
  %i.p = add i64 %i.o, 39
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q acquire, align 8
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_10HeapNumberEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal6HandleINS0_10HeapNumberEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.c
  %.0.i = phi ptr [ %i.v, %bb.c ], [ %i.s, %_ZN2v88internal6HandleINS0_10HeapNumberEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 14 uses
  %i.w = ptrtoint ptr %.0.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.f, align 8
  store i64 %i.r, ptr %.0.i, align 8
  %i.z = tail call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #16 ; 2 uses
  %i.aa = tail call ptr @_ZN2v88internal4wasm10WasmEngine23FinalizeTranslatedAsmJsEPNS0_7IsolateENS0_12DirectHandleINS0_11AsmWasmDataEEENS5_INS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(8488) %i.z, ptr noundef nonnull %0, ptr nonnull %2, ptr nonnull %.0.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.ab = load i64, ptr %1, align 8
  store i64 %i.ab, ptr %16, align 8
  %i.ac = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #16 ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.ad = load i64, ptr %1, align 8
  %i.ae = add i64 %i.ad, 23
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af acquire, align 8 ; 3 uses
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.ai = add nsw i64 %i.ag, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  %i.ao = icmp eq i16 %i.an, 284
  br i1 %i.ao, label %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.ap = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 10624
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 296
  %i.at = load i64, ptr %i.as, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit

_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i
  %.sroa.06.0.i.i.i = phi i64 [ %i.at, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i ], [ %i.ag, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i ]
  store i64 %.sroa.06.0.i.i.i, ptr %17, align 8
  %i.au = call noundef zeroext i8 @_ZNK2v88internal9ScopeInfo13function_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #16 ; 2 uses
  %i.av = add i8 %i.au, -12
  %or.cond.i = icmp ult i8 %i.av, 10
  %i.aw = add i8 %i.au, -1
  %i.ax = icmp ult i8 %i.aw, 2
  %i.ay = or i1 %or.cond.i, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br i1 %i.ay, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 799), align 1, !range !7, !noundef !8
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEEii(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr nonnull %.0.i, i32 noundef %i.ac, i32 noundef %i.ac) #16
  %i.bd = call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr nonnull @.str.3, i64 44) #16
  %i.be = call ptr @_ZN2v88internal14MessageHandler17MakeMessageObjectEPNS0_7IsolateENS0_15MessageTemplateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_6ObjectEEENS8_INS0_14StackTraceInfoEEE(ptr noundef nonnull %i.bc, i32 noundef 461, ptr noundef nonnull %15, ptr %i.bd, ptr null) #16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add i64 %i.bf, 87
  %i.bh = inttoptr i64 %i.bg to ptr
  store atomic volatile i64 68719476736, ptr %i.bh monotonic, align 8
  call void @_ZN2v88internal14MessageHandler13ReportMessageEPNS0_7IsolateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_15JSMessageObjectEEE(ptr noundef nonnull %i.bc, ptr noundef nonnull %15, ptr nonnull %i.be) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc.exit

bb.f:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit
  %i.bi = load i64, ptr %.0.i.i, align 8
  %i.bj = add i64 %i.bi, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %i.bl, align 1 ; 38 uses
  %i.bm = icmp eq i64 %.0.copyload.i.i.i.i, 0
  br i1 %i.bm, label %_ZN2v88internal12_GLOBAL__N_121AreStdlibMembersValidEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS_4base7EnumSetINS0_4wasm11AsmJsParser14StandardMemberEmEEPb.exit.thread189, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = icmp eq ptr %3, null
  br i1 %i.bn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 799), align 1, !range !7, !noundef !8
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEEii(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull %.0.i, i32 noundef %i.ac, i32 noundef %i.ac) #16
  %i.bs = call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %i.br, ptr nonnull @.str.4, i64 25) #16
  %i.bt = call ptr @_ZN2v88internal14MessageHandler17MakeMessageObjectEPNS0_7IsolateENS0_15MessageTemplateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_6ObjectEEENS8_INS0_14StackTraceInfoEEE(ptr noundef nonnull %i.br, i32 noundef 461, ptr noundef nonnull %14, ptr %i.bs, ptr null) #16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = add i64 %i.bu, 87
  %i.bw = inttoptr i64 %i.bv to ptr
  store atomic volatile i64 68719476736, ptr %i.bw monotonic, align 8
  call void @_ZN2v88internal14MessageHandler13ReportMessageEPNS0_7IsolateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_15JSMessageObjectEEE(ptr noundef nonnull %i.br, ptr noundef nonnull %14, ptr nonnull %i.bt) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc.exit

bb.j:                                             ; preds = %bb.g
  %i.bx = and i64 %.0.copyload.i.i.i.i, 1
  %.not1866.i = icmp eq i64 %i.bx, 0
  br i1 %.not1866.i, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 6368 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %.pre.pre.i.i = load i64, ptr %i.by, align 8
  %i.bz = add i64 %.pre.pre.i.i, -1
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = icmp eq i16 %i.ce, 128
  br i1 %i.cf, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i:  ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = trunc i32 %i.ch to i1
  br i1 %i.ci, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, %bb.k
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i
  %i.cj = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i ]
  store i32 %i.cj, ptr %13, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  store i32 0, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store ptr %0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store ptr %i.by, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr null, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %3, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 56
  store ptr null, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.cu = ptrtoint ptr %3 to i64
  store i64 %i.cu, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 -1, i64 16, i1 false)
  %i.cw = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cx = add i64 %i.cw, 11
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load atomic volatile i16, ptr %i.cy monotonic, align 2
  %i.da = and i16 %i.cz, -96
  %.not.i21.i.i.i.i = icmp eq i16 %i.da, 32
  br i1 %.not.i21.i.i.i.i, label %bb.l, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i

bb.l:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %i.db = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.de = load i8, ptr %i.dd, align 8, !range !7
  %i.df = trunc nuw i8 %i.de to i1
  %not..i.i.i23.i.i.i.i = xor i1 %i.dc, true
  %i.dg = select i1 %not..i.i.i23.i.i.i.i, i1 true, i1 %i.df
  br i1 %i.dg, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.di = load i8, ptr %i.dh, align 8, !range !7, !noundef !8
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i: ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.dl = load ptr, ptr %i.dk, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, %bb.l
  %.pn.i.i26.i.i.i.i = phi ptr [ %i.dl, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i ], [ %0, %bb.l ]
  %.in.i.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i, i64 58464
  %i.dm = load ptr, ptr %.in.i.i27.i.i.i.i, align 8
  %i.dn = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.by) #16
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i = phi ptr [ %i.dn, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i ], [ %i.by, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i, ptr %i.cp, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %13) #16
  %i.do = load i32, ptr %i.ck, align 4
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i
  %i.dp = load ptr, ptr %i.co, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i

bb.p:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i.i
  %i.dr = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %13, i32 noundef 0) #16
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i: ; preds = %bb.p, %bb.o
  %.sroa.07.0.i.i = phi ptr [ %i.dr, %bb.p ], [ %i.dq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.ds = load i64, ptr %.sroa.07.0.i.i, align 8  ; 3 uses
  %i.dt = and i64 %i.ds, 1
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.q, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit619.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit619.i: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i
  %i.dv = add nsw i64 %i.ds, -1
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = load atomic volatile i64, ptr %i.dw monotonic, align 8
  %i.dy = add i64 %i.dx, 11
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load atomic volatile i16, ptr %i.dz monotonic, align 2
  %i.eb = icmp eq i16 %i.ea, 130
  br i1 %i.eb, label %bb.r, label %.thread1864.i

bb.q:                                             ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.i
  %i.ec = lshr i64 %i.ds, 32
  %i.ed = trunc nuw i64 %i.ec to i32
  %i.ee = sitofp i32 %i.ed to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.r:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit619.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ef, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.r, %bb.q
  %i.eg = phi double [ %i.ee, %bb.q ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.r ]
  %i.eh = call double @llvm.fabs.f64(double %i.eg)
  %i.ei = fcmp oeq double %i.eh, +inf
  br i1 %i.ei, label %bb.s, label %.thread1864.i

bb.s:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %bb.j
  %i.ej = and i64 %.0.copyload.i.i.i.i, 2
  %.not1867.i = icmp eq i64 %i.ej, 0
  br i1 %.not1867.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 6776 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %.pre.pre.i694.i = load i64, ptr %i.ek, align 8
  %i.el = add i64 %.pre.pre.i694.i, -1
  %i.em = inttoptr i64 %i.el to ptr               ; 3 uses
  %i.en = load atomic volatile i64, ptr %i.em monotonic, align 8
  %i.eo = add i64 %i.en, 11
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load atomic volatile i16, ptr %i.ep monotonic, align 2
  %i.er = icmp eq i16 %i.eq, 128
  br i1 %i.er, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i707.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i695.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i707.i: ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = trunc i32 %i.et to i1
  br i1 %i.eu, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i696.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i695.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i695.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i707.i, %bb.t
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i696.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i696.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i695.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i707.i
  %i.ev = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i695.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i707.i ]
  store i32 %i.ev, ptr %12, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  store i32 0, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 0, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %0, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.ek, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr null, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %3, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr null, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.fg = ptrtoint ptr %3 to i64
  store i64 %i.fg, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i8 -1, i64 16, i1 false)
  %i.fi = load atomic volatile i64, ptr %i.em monotonic, align 8
  %i.fj = add i64 %i.fi, 11
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = load atomic volatile i16, ptr %i.fk monotonic, align 2
  %i.fm = and i16 %i.fl, -96
  %.not.i21.i.i.i697.i = icmp eq i16 %i.fm, 32
  br i1 %.not.i21.i.i.i697.i, label %bb.u, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i698.i

bb.u:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i696.i
  %i.fn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.fq = load i8, ptr %i.fp, align 8, !range !7
  %i.fr = trunc nuw i8 %i.fq to i1
  %not..i.i.i23.i.i.i702.i = xor i1 %i.fo, true
  %i.fs = select i1 %not..i.i.i23.i.i.i702.i, i1 true, i1 %i.fr
  br i1 %i.fs, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i704.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.fu = load i8, ptr %i.ft, align 8, !range !7, !noundef !8
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i703.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i703.i: ; preds = %bb.v
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.fx = load ptr, ptr %i.fw, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i704.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i704.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i703.i, %bb.u
  %.pn.i.i26.i.i.i705.i = phi ptr [ %i.fx, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i703.i ], [ %0, %bb.u ]
  %.in.i.i27.i.i.i706.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i705.i, i64 58464
  %i.fy = load ptr, ptr %.in.i.i27.i.i.i706.i, align 8
  %i.fz = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.ek) #16
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i698.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i698.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i704.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i696.i
  %.sroa.05.0.i22.i.i.i699.i = phi ptr [ %i.fz, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i704.i ], [ %i.ek, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i696.i ]
  store ptr %.sroa.05.0.i22.i.i.i699.i, ptr %i.fb, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %12) #16
  %i.ga = load i32, ptr %i.ew, align 4
  %.not.i700.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i700.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i698.i
  %i.gb = load ptr, ptr %i.fa, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit708.i

bb.y:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i698.i
  %i.gd = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %12, i32 noundef 0) #16
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit708.i

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit708.i: ; preds = %bb.y, %bb.x
  %.sroa.07.0.i701.i = phi ptr [ %i.gd, %bb.y ], [ %i.gc, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.ge = load i64, ptr %.sroa.07.0.i701.i, align 8 ; 2 uses
  %i.gf = trunc i64 %i.ge to i1
  br i1 %i.gf, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.thread1864.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit708.i
  %i.gg = add nsw i64 %i.ge, -1
  %i.gh = inttoptr i64 %i.gg to ptr               ; 2 uses
  %i.gi = load atomic volatile i64, ptr %i.gh monotonic, align 8
  %i.gj = add i64 %i.gi, 11
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = load atomic volatile i16, ptr %i.gk monotonic, align 2
  %i.gm = icmp eq i16 %i.gl, 130
  br i1 %i.gm, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.thread1864.i

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.gn, align 8
  %i.go = fcmp uno double %.0.copyload.i.i.i.i.i, 0.000000e+00
  br i1 %i.go, label %bb.z, label %.thread1864.i

bb.z:                                             ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.s
  %i.gp = and i64 %.0.copyload.i.i.i.i, 4
  %.not1868.i = icmp eq i64 %i.gp, 0
  br i1 %.not1868.i, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gq = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.17, i64 3, i1 noundef zeroext false) #16
  %i.gr = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116StdlibMathMemberEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %3, ptr %i.gq)
  %i.gs = load i64, ptr %i.gr, align 8            ; 3 uses
  %i.gt = trunc i64 %i.gs to i1
  br i1 %i.gt, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit645.i, label %.thread1864.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit645.i: ; preds = %bb.aa
  %i.gu = add nsw i64 %i.gs, -1
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = load atomic volatile i64, ptr %i.gv monotonic, align 8
  %i.gx = add i64 %i.gw, 11
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load atomic volatile i16, ptr %i.gy monotonic, align 2
  %i.ha = add i16 %i.gz, -2065
  %i.hb = icmp ult i16 %i.ha, 17
  br i1 %i.hb, label %bb.ab, label %.thread1864.i

bb.ab:                                            ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit645.i
  %i.hc = add i64 %i.gs, 31
  %i.hd = inttoptr i64 %i.hc to ptr
  %i.he = load atomic volatile i64, ptr %i.hd monotonic, align 8
  %i.hf = add i64 %i.he, 15
  %i.hg = inttoptr i64 %i.hf to ptr               ; 2 uses
  %i.hh = load atomic volatile i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hi = and i64 %i.hh, 1
  %i.hj = icmp eq i64 %i.hi, 0
  %i.hk = icmp ult i64 %i.hh, 9195524980736
  %i.hl = and i1 %i.hk, %i.hj
  br i1 %i.hl, label %bb.ac, label %.thread1864.i

bb.ac:                                            ; preds = %bb.ab
  %i.hm = load atomic volatile i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hn = icmp ult i64 %i.hm, 9195524980736
  br i1 %i.hn, label %_ZNK2v88internal18SharedFunctionInfo10builtin_idEv.exit.i, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.53) #18
  unreachable

_ZNK2v88internal18SharedFunctionInfo10builtin_idEv.exit.i: ; preds = %bb.ac
  %.mask.i = and i64 %i.hm, 17587891077120
  %.not.i = icmp eq i64 %.mask.i, 4458176053248
  br i1 %.not.i, label %.critedge.i, label %.thread1864.i

.critedge.i:                                      ; preds = %_ZNK2v88internal18SharedFunctionInfo10builtin_idEv.exit.i, %bb.z
  %i.ho = and i64 %.0.copyload.i.i.i.i, 8
  %.not1869.i = icmp eq i64 %i.ho, 0
  br i1 %.not1869.i, label %.critedge2.i, label %bb.ae

bb.ae:                                            ; preds = %.critedge.i
  %i.hp = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.18, i64 3, i1 noundef zeroext false) #16
  %i.hq = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116StdlibMathMemberEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %3, ptr %i.hp)
  %i.hr = load i64, ptr %i.hq, align 8            ; 3 uses
  %i.hs = trunc i64 %i.hr to i1
  br i1 %i.hs, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit644.i, label %.thread1864.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit644.i: ; preds = %bb.ae
  %i.ht = add nsw i64 %i.hr, -1
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load atomic volatile i64, ptr %i.hu monotonic, align 8
  %i.hw = add i64 %i.hv, 11
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = load atomic volatile i16, ptr %i.hx monotonic, align 2
  %i.hz = add i16 %i.hy, -2065
  %i.ia = icmp ult i16 %i.hz, 17
  br i1 %i.ia, label %bb.af, label %.thread1864.i

bb.af:                                            ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit644.i
  %i.ib = add i64 %i.hr, 31
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = load atomic volatile i64, ptr %i.ic monotonic, align 8
  %i.ie = add i64 %i.id, 15
  %i.if = inttoptr i64 %i.ie to ptr               ; 2 uses
  %i.ig = load atomic volatile i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = and i64 %i.ig, 1
  %i.ii = icmp eq i64 %i.ih, 0
  %i.ij = icmp ult i64 %i.ig, 9195524980736
  %i.ik = and i1 %i.ij, %i.ii
  br i1 %i.ik, label %bb.ag, label %.thread1864.i

bb.ag:                                            ; preds = %bb.af
  %i.il = load atomic volatile i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.im = icmp ult i64 %i.il, 9195524980736
  br i1 %i.im, label %_ZNK2v88internal18SharedFunctionInfo10builtin_idEv.exit717.i, label %bb.ah, !prof !6

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.53) #18
  unreachable

_ZNK2v88internal18SharedFunctionInfo10builtin_idEv.exit717.i: ; preds = %bb.ag
  %.mask1870.i = and i64 %i.il, 17587891077120
  %.not525.i = icmp eq i64 %.mask1870.i, 4453881085952
  br i1 %.not525.i, label %.critedge2.i, label %.thread1864.i

.critedge2.i:                                     ; preds = %_ZNK2v88internal18SharedFunctionInfo10builtin_idEv.exit717.i, %.critedge.i
  %i.in = and i64 %.0.copyload.i.i.i.i, 16
  %.not1871.i = icmp eq i64 %i.in, 0
  br i1 %.not1871.i, label %.critedge4.i, label %bb.ai

bb.ai:                                            ; preds = %.critedge2.i
  %i.io = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.19, i64 3, i1 noundef zeroext false) #16
  %i.ip = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116StdlibMathMemberEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %3, ptr %i.io)
  %i.iq = load i64, ptr %i.ip, align 8            ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal5AsmJs18InstantiateAsmWasmEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_11AsmWasmDataEEENS4_INS0_10JSReceiverEEESA_NS4_INS0_13JSArrayBufferEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.fr

.critedge:                                        ; preds = %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit, %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit.thread
  %.sroa.5.0193.ph = phi ptr [ null, %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit.thread ], [ %i.amn, %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.fr

bb.fr:                                            ; preds = %.critedge, %bb.fq
  %i.amz = phi i1 [ false, %.critedge ], [ %i.amy, %bb.fq ]
  %.sroa.5.0193195 = phi ptr [ %.sroa.5.0193.ph, %.critedge ], [ %i.amn, %bb.fq ] ; 8 uses
  %.not.i.i78 = icmp eq ptr %.sroa.5.0193195, null
  br i1 %.not.i.i78, label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.5.0193195, i64 8 ; 4 uses
  %i.anb = load atomic i64, ptr %i.ana acquire, align 8 ; 2 uses
  %i.anc = icmp eq i64 %i.anb, 4294967297
  %i.and = trunc i64 %i.anb to i32                ; 2 uses
  br i1 %i.anc, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  store i32 0, ptr %i.ana, align 8
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.5.0193195, i64 12
  store i32 0, ptr %i.ane, align 4
  %i.anf = load ptr, ptr %.sroa.5.0193195, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 16
  %i.anh = load ptr, ptr %i.ang, align 8
  call void %i.anh(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0193195) #16, !inline_history !33
  %i.ani = load ptr, ptr %.sroa.5.0193195, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 24
  %i.ank = load ptr, ptr %i.anj, align 8
  call void %i.ank(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0193195) #16, !inline_history !33
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fu:                                            ; preds = %bb.fs
  %i.anl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.anl, 0
  br i1 %.not.i.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.anm = add nsw i32 %i.and, -1
  store i32 %i.anm, ptr %i.ana, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fw:                                            ; preds = %bb.fu
  %i.ann = atomicrmw volatile add ptr %i.ana, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fw, %bb.fv
  %.0.i.i.i.i = phi i32 [ %i.and, %bb.fv ], [ %i.ann, %bb.fw ]
  %i.ano = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ano, label %bb.fx, label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.fx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0193195) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.fr, %bb.ft, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fx
  br i1 %i.amz, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call fastcc void @_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc(ptr nonnull %.0.i, i32 noundef %i.ac, ptr noundef nonnull @.str.9)
  br label %_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc.exit

bb.fz:                                            ; preds = %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.anp = load i64, ptr %5, align 8
  %i.anq = add i64 %i.anp, 39
  %i.anr = inttoptr i64 %i.anq to ptr
  %i.ans = load i64, ptr %i.anr, align 8
  %i.ant = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_122IsValidAsmjsMemorySizeEm(i64 noundef %i.ans)
  br i1 %i.ant, label %.thread197, label %bb.ga

.thread197:                                       ; preds = %bb.fz
  %i.anu = load i64, ptr %5, align 8
  %i.anv = add i64 %i.anu, 71
  %i.anw = inttoptr i64 %i.anv to ptr             ; 2 uses
  %i.anx = load atomic volatile i32, ptr %i.anw monotonic, align 4
  %i.any = and i32 %i.anx, -3
  store atomic volatile i32 %i.any, ptr %i.anw monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121AreStdlibMembersValidEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS_4base7EnumSetINS0_4wasm11AsmJsParser14StandardMemberEmEEPb.exit.thread189

bb.ga:                                            ; preds = %bb.fz
  call fastcc void @_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc(ptr nonnull %.0.i, i32 noundef %i.ac, ptr noundef nonnull @.str.10)
  br label %_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc.exit

_ZN2v88internal12_GLOBAL__N_121AreStdlibMembersValidEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS_4base7EnumSetINS0_4wasm11AsmJsParser14StandardMemberEmEEPb.exit.thread189: ; preds = %bb.f, %_ZN2v88internal12_GLOBAL__N_121AreStdlibMembersValidEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS_4base7EnumSetINS0_4wasm11AsmJsParser14StandardMemberEmEEPb.exit, %.thread197
  %.sroa.0137.0 = phi ptr [ %5, %.thread197 ], [ null, %_ZN2v88internal12_GLOBAL__N_121AreStdlibMembersValidEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS_4base7EnumSetINS0_4wasm11AsmJsParser14StandardMemberEmEEPb.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store ptr %0, ptr %20, align 8
  %i.anz = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.11, ptr %i.anz, align 8
  %i.aoa = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store i32 0, ptr %i.aoa, align 8
  %i.aob = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  store ptr %i.aoc, ptr %i.aob, align 8
  %i.aod = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i64 0, ptr %i.aod, align 8
  store i8 0, ptr %i.aoc, align 8
  %i.aoe = call ptr @_ZN2v88internal4wasm10WasmEngine15SyncInstantiateEPNS0_7IsolateEPNS1_12ErrorThrowerENS0_12DirectHandleINS0_16WasmModuleObjectEEENS0_17MaybeDirectHandleINS0_10JSReceiverEEENSA_INS0_13JSArrayBufferEEE(ptr noundef nonnull align 8 dereferenceable(8488) %i.z, ptr noundef nonnull %0, ptr noundef nonnull %20, ptr %i.aa, ptr %4, ptr %.sroa.0137.0) #16 ; 4 uses
  %i.aof = icmp eq ptr %i.aoe, null
  br i1 %i.aof, label %bb.gb, label %_ZNK2v88internal11MaybeHandleINS0_18WasmInstanceObjectEE5CheckEv.exit

bb.gb:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121AreStdlibMembersValidEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS_4base7EnumSetINS0_4wasm11AsmJsParser14StandardMemberEmEEPb.exit.thread189
  %i.aog = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.aoi = load i64, ptr %i.aoh, align 8
  %i.aoj = load i64, ptr %i.aog, align 8          ; 2 uses
  %i.aok = icmp eq i64 %i.aoj, %i.aoi
  br i1 %i.aok, label %bb.gr, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aol = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.aom = load i64, ptr %i.aol, align 8          ; 2 uses
  %.not201 = icmp eq i64 %i.aoj, %i.aom
  br i1 %.not201, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  store i64 %i.aom, ptr %i.aog, align 8
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.aoo = load ptr, ptr %i.aon, align 8          ; 2 uses
  %.not.i80 = icmp eq ptr %i.aoo, null
  br i1 %.not.i80, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.aoo) #16
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit

_ZN2v88internal7Isolate15clear_exceptionEv.exit:  ; preds = %bb.ge, %bb.gd, %bb.gc
  %i.aop = load i32, ptr %i.aoa, align 8
  %.not202 = icmp eq i32 %i.aop, 0
  br i1 %.not202, label %bb.gf, label %_ZN2v84base12ScopedVectorIcED2Ev.exit

_ZN2v84base12ScopedVectorIcED2Ev.exit:            ; preds = %_ZN2v88internal7Isolate15clear_exceptionEv.exit
  %i.aoq = call noalias noundef nonnull dereferenceable(100) ptr @_Znam(i64 noundef 100) #17 ; 3 uses
  %i.aor = load ptr, ptr %i.aob, align 8
  %i.aos = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr nonnull %i.aoq, i64 100, ptr noundef nonnull @.str.12, ptr noundef %i.aor) #16 ; 0 uses
  call fastcc void @_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc(ptr nonnull %.0.i, i32 noundef %i.ac, ptr noundef nonnull %i.aoq)
  call void @_ZdaPv(ptr noundef nonnull %i.aoq) #19
  br label %bb.gg

bb.gf:                                            ; preds = %_ZN2v88internal7Isolate15clear_exceptionEv.exit
  call fastcc void @_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc(ptr nonnull %.0.i, i32 noundef %i.ac, ptr noundef nonnull @.str.13)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %_ZN2v84base12ScopedVectorIcED2Ev.exit
  call void @_ZN2v88internal4wasm12ErrorThrower5ResetEv(ptr noundef nonnull align 8 dereferenceable(56) %20) #16
  br label %bb.gr

_ZNK2v88internal11MaybeHandleINS0_18WasmInstanceObjectEE5CheckEv.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121AreStdlibMembersValidEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS_4base7EnumSetINS0_4wasm11AsmJsParser14StandardMemberEmEEPb.exit.thread189
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.aot = call i64 @_ZN2v84base9TimeTicks3NowEv() #16
  %i.aou = sub nsw i64 %i.aot, %i.a
  store i64 %i.aou, ptr %21, align 8
  %i.aov = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #16
  %i.aow = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 799), align 1, !range !7, !noundef !8
  %i.aox = trunc nuw i8 %i.aow to i1
  %.not.i82 = xor i1 %i.aox, true
  %i.aoy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 800), align 32, !range !7
  %i.aoz = trunc nuw i8 %i.aoy to i1
  %or.cond.i83 = select i1 %.not.i82, i1 %i.aoz, i1 false
  br i1 %or.cond.i83, label %bb.gh, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

bb.gh:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_18WasmInstanceObjectEE5CheckEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.apa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.apa, ptr %7, align 8
  %i.apb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 50, ptr %i.apb, align 8
  %i.apc = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr nonnull %i.apa, i64 50, ptr noundef nonnull @.str.54, double noundef %i.aov) #16 ; 2 uses
  %.not9.i = icmp eq i32 %i.apc, -1
  br i1 %.not9.i, label %bb.gi, label %bb.gj, !prof !5

bb.gi:                                            ; preds = %bb.gh
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #18
  unreachable

bb.gj:                                            ; preds = %bb.gh
  %i.apd = sext i32 %i.apc to i64                 ; 2 uses
  store i64 %i.apd, ptr %i.apb, align 8
  %i.ape = load ptr, ptr %7, align 8
  %i.apf = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.apg = load ptr, ptr %i.apf, align 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEEii(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull %.0.i, i32 noundef %i.ac, i32 noundef %i.ac) #16
  %i.aph = call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %i.apg, ptr %i.ape, i64 %i.apd) #16
  %i.api = call ptr @_ZN2v88internal14MessageHandler17MakeMessageObjectEPNS0_7IsolateENS0_15MessageTemplateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_6ObjectEEENS8_INS0_14StackTraceInfoEEE(ptr noundef nonnull %i.apg, i32 noundef 460, ptr noundef nonnull %6, ptr %i.aph, ptr null) #16 ; 2 uses
  %i.apj = load i64, ptr %i.api, align 8
  %i.apk = add i64 %i.apj, 87
  %i.apl = inttoptr i64 %i.apk to ptr
  store atomic volatile i64 17179869184, ptr %i.apl monotonic, align 8
  call void @_ZN2v88internal14MessageHandler13ReportMessageEPNS0_7IsolateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_15JSMessageObjectEEE(ptr noundef nonnull %i.apg, ptr noundef nonnull %6, ptr nonnull %i.api) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %bb.gj, %_ZNK2v88internal11MaybeHandleINS0_18WasmInstanceObjectEE5CheckEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.apm = getelementptr inbounds nuw i8, ptr %0, i64 8104 ; 4 uses
  %i.apn = load i64, ptr %i.apm, align 8
  %i.apo = add i64 %i.apn, -1
  %i.app = inttoptr i64 %i.apo to ptr             ; 2 uses
  %i.apq = load atomic volatile i64, ptr %i.app monotonic, align 8
  %i.apr = add i64 %i.apq, 11
  %i.aps = inttoptr i64 %i.apr to ptr
  %i.apt = load atomic volatile i16, ptr %i.aps monotonic, align 2 ; 0 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.apv = getelementptr inbounds nuw i8, ptr %22, i64 12
  store i32 0, ptr %i.apv, align 4
  %i.apw = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.apw, align 8
  %i.apx = getelementptr inbounds nuw i8, ptr %22, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %22, i8 0, i64 9, i1 false)
  store ptr %0, ptr %i.apx, align 8
  %i.apy = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  store ptr %i.apm, ptr %i.apy, align 8
  %i.apz = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr null, ptr %i.apz, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %22, i64 48
  store ptr %i.aoe, ptr %i.aqa, align 8
  %i.aqb = getelementptr inbounds nuw i8, ptr %22, i64 56
  store ptr null, ptr %i.aqb, align 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.aqd = ptrtoint ptr %i.aoe to i64
  store i64 %i.aqd, ptr %i.aqc, align 8
  %i.aqe = getelementptr inbounds nuw i8, ptr %22, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqe, i8 -1, i64 16, i1 false)
  %i.aqf = load atomic volatile i64, ptr %i.app monotonic, align 8
  %i.aqg = add i64 %i.aqf, 11
  %i.aqh = inttoptr i64 %i.aqg to ptr
  %i.aqi = load atomic volatile i16, ptr %i.aqh monotonic, align 2
  %i.aqj = and i16 %i.aqi, -96
  %.not.i21.i.i = icmp eq i16 %i.aqj, 32
  br i1 %.not.i21.i.i, label %bb.gk, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.gk:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.aqk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.aql = trunc nuw i8 %i.aqk to i1
  %i.aqm = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.aqn = load i8, ptr %i.aqm, align 8, !range !7
  %i.aqo = trunc nuw i8 %i.aqn to i1
  %not..i.i.i23.i.i = xor i1 %i.aql, true
  %i.aqp = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.aqo
  br i1 %i.aqp, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aqq = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aqr = load i8, ptr %i.aqq, align 8, !range !7, !noundef !8
  %i.aqs = trunc nuw i8 %i.aqr to i1
  br i1 %i.aqs, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.gl
  %i.aqt = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.aqu = load ptr, ptr %i.aqt, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.gk
  %.pn.i.i26.i.i = phi ptr [ %i.aqu, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.gk ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.aqv = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.aqw = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.aqv, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.apm) #16
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.aqw, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.apm, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.apy, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %22) #16
  %i.aqx = load i32, ptr %i.apu, align 4
  %.not200 = icmp eq i32 %i.aqx, 0
  br i1 %.not200, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.aqy = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %22, i32 noundef 0) #16
  br label %bb.gq

bb.go:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.aqz = load i64, ptr %i.aoe, align 8
  %i.ara = add i64 %i.aqz, 39
  %i.arb = inttoptr i64 %i.ara to ptr
  %i.arc = load i64, ptr %i.arb, align 8
  %i.ard = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.are = load ptr, ptr %i.h, align 8
  %i.arf = icmp eq ptr %i.ard, %i.are
  br i1 %i.arf, label %bb.gp, label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.gp:                                            ; preds = %bb.go
  %i.arg = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.go, %bb.gp
  %.0.i.i71 = phi ptr [ %i.arg, %bb.gp ], [ %i.ard, %bb.go ] ; 3 uses
  %i.arh = ptrtoint ptr %.0.i.i71 to i64
  %i.ari = add i64 %i.arh, 8
  %i.arj = inttoptr i64 %i.ari to ptr
  store ptr %i.arj, ptr %i.f, align 8
  store i64 %i.arc, ptr %.0.i.i71, align 8
  br label %bb.gq

bb.gq:                                            ; preds = %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.gn
  %.sroa.0141.1 = phi ptr [ %i.aqy, %bb.gn ], [ %.0.i.i71, %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gb, %bb.gq, %bb.gg
  %.sroa.0141.2 = phi ptr [ %.sroa.0141.1, %bb.gq ], [ null, %bb.gg ], [ null, %bb.gb ]
  call void @_ZN2v88internal4wasm12ErrorThrowerD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc.exit

_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc.exit: ; preds = %bb.fy, %bb.gr, %bb.h, %bb.i, %.thread1864.i, %bb.fc, %bb.fd, %bb.fe, %bb.fg, %bb.fh, %bb.fj, %bb.fk, %bb.ga, %bb.e, %bb.d
  %.sroa.0141.4 = phi ptr [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.fc ], [ null, %bb.fe ], [ null, %bb.fh ], [ null, %bb.fy ], [ %.sroa.0141.2, %bb.gr ], [ null, %bb.ga ], [ null, %bb.i ], [ null, %bb.h ], [ null, %.thread1864.i ], [ null, %bb.fd ], [ null, %bb.fg ], [ null, %bb.fj ], [ null, %bb.fk ]
  ret ptr %.sroa.0141.4
}

declare ptr @_ZN2v88internal4wasm10WasmEngine23FinalizeTranslatedAsmJsEPNS0_7IsolateENS0_12DirectHandleINS0_11AsmWasmDataEEENS5_INS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(8488), ptr noundef, ptr, ptr) local_unnamed_addr #2

declare noundef zeroext i8 @_ZNK2v88internal9ScopeInfo13function_kindEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_126ReportInstantiationFailureENS0_6HandleINS0_6ScriptEEEiPKc(ptr %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::MessageLocation", align 8 ; 5 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 799), align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEEii(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %0, i32 noundef %1, i32 noundef %1) #16
  %i.f = call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr nonnull %2, i64 %i.c) #16
  %i.g = call ptr @_ZN2v88internal14MessageHandler17MakeMessageObjectEPNS0_7IsolateENS0_15MessageTemplateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_6ObjectEEENS8_INS0_14StackTraceInfoEEE(ptr noundef nonnull %i.e, i32 noundef 461, ptr noundef nonnull %3, ptr %i.f, ptr null) #16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, 87
  %i.j = inttoptr i64 %i.i to ptr
  store atomic volatile i64 68719476736, ptr %i.j monotonic, align 8
  call void @_ZN2v88internal14MessageHandler13ReportMessageEPNS0_7IsolateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_15JSMessageObjectEEE(ptr noundef nonnull %i.e, ptr noundef nonnull %3, ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.764") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 63
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8
  %i.f = add i64 %i.e, 63
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g acquire, align 8
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !34 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !noalias !34
  store <2 x ptr> %i.l, ptr %0, align 8, !alias.scope !34
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !noalias !34
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.m, align 4, !noalias !34
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !noalias !34
  br label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !34 ; 0 uses
  br label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit

_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN2v88internal12AsmJsScannerD2Ev:bb.a
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.r = load i64, ptr %i.l, align 8
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i7, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i5
  %.06.i.i.i.i3 = phi ptr [ %i.w, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i5 ], [ %i.v, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit ] ; 4 uses
  %i.w = load ptr, ptr %.06.i.i.i.i3, align 8     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 24 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i.i2
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #19
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i5

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i5: ; preds = %.lr.ph.i.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i4
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3, i64 noundef 56) #19
  %.not.i.i.i.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i6, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i7, label %.lr.ph.i.i.i.i2, !llvm.loop !38

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i7: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i5, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit9, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i7
  %i.ak = load i64, ptr %i.ae, align 8
  %i.al = shl i64 %i.ak, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #19
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit9

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit9: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i7, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not5.i.i.i.i10 = icmp eq ptr %i.ao, null
  br i1 %.not5.i.i.i.i10, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i16, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit9, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i14
  %.06.i.i.i.i12 = phi ptr [ %i.ap, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i14 ], [ %i.ao, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit9 ] ; 4 uses
  %i.ap = load ptr, ptr %.06.i.i.i.i12, align 8   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i12, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i12, i64 24 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i.i.i.i11
  %i.au = load i64, ptr %i.as, align 8
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #19
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i14

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i13
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i12, i64 noundef 56) #19
  %.not.i.i.i.i15 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i15, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i16, label %.lr.ph.i.i.i.i11, !llvm.loop !38

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i16: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i14, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit9
  %i.aw = load ptr, ptr %i.am, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = shl i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.az, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit18, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i16
  %i.bd = load i64, ptr %i.ax, align 8
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #19
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit18

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit18: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i16, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit18
  %i.bj = load i64, ptr %i.bh, align 8
  %i.bk = add i64 %i.bj, 1
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bl = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #7

declare void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEEii(ptr noundef nonnull align 8 dereferenceable(32), ptr, i32 noundef, i32 noundef) unnamed_addr #2

declare ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal14MessageHandler17MakeMessageObjectEPNS0_7IsolateENS0_15MessageTemplateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_6ObjectEEENS8_INS0_14StackTraceInfoEEE(ptr noundef, i32 noundef, ptr noundef, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal14MessageHandler13ReportMessageEPNS0_7IsolateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_15JSMessageObjectEEE(ptr noundef, ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

declare noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.pre.pre = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.k = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !7
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !7, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #16
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #16
  %i.ap = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.as = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %3, i32 noundef 0) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.07.0 = phi ptr [ %i.as, %bb.f ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_116StdlibMathMemberEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_4NameEEE(ptr noundef nonnull %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.52, i64 4, i1 noundef zeroext false) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !7
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !7, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a) #16
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #16
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %4, i32 noundef 0) #16
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi ptr [ %i.at, %bb.f ], [ %i.as, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.au = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp ugt i16 %i.bb, 299
  br i1 %i.bc, label %bb.g, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.m

bb.g:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.pre.pre.i18 = load i64, ptr %2, align 8
  %i.be = add i64 %.pre.pre.i18, -1
  %i.bf = inttoptr i64 %i.be to ptr               ; 3 uses
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i16, ptr %i.bi monotonic, align 2
  %i.bk = icmp eq i16 %i.bj, 128
  br i1 %i.bk, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i31, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i19

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i31:  ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = trunc i32 %i.bm to i1
  br i1 %i.bn, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i20, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i19

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i19: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i31, %bb.g
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i20

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i20: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i19, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i31
  %i.bo = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i19 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i31 ]
  store i32 %i.bo, ptr %3, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %2, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.sroa.07.0.i, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bz = ptrtoint ptr %.sroa.07.0.i to i64
  store i64 %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 -1, i64 16, i1 false)
  %i.cb = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = and i16 %i.ce, -96
  %.not.i21.i.i.i21 = icmp eq i16 %i.cf, 32
  br i1 %.not.i21.i.i.i21, label %bb.h, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i22

bb.h:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i20
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.cj = load i8, ptr %i.ci, align 8, !range !7
  %i.ck = trunc nuw i8 %i.cj to i1
  %not..i.i.i23.i.i.i26 = xor i1 %i.ch, true
  %i.cl = select i1 %not..i.i.i23.i.i.i26, i1 true, i1 %i.ck
  br i1 %i.cl, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i28, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.cn = load i8, ptr %i.cm, align 8, !range !7, !noundef !8
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i27, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i27: ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.cq = load ptr, ptr %i.cp, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i28

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i28: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i27, %bb.h
  %.pn.i.i26.i.i.i29 = phi ptr [ %i.cq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i27 ], [ %0, %bb.h ]
  %.in.i.i27.i.i.i30 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i29, i64 58464
  %i.cr = load ptr, ptr %.in.i.i27.i.i.i30, align 8
  %i.cs = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #16
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i22

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i22: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i28, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i20
  %.sroa.05.0.i22.i.i.i23 = phi ptr [ %i.cs, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i28 ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i20 ]
  store ptr %.sroa.05.0.i22.i.i.i23, ptr %i.bu, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #16
  %i.ct = load i32, ptr %i.bp, align 4
  %.not.i24 = icmp eq i32 %i.ct, 0
  br i1 %.not.i24, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i22
  %i.cu = load ptr, ptr %i.bt, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit32

bb.l:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i22
  %i.cw = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %3, i32 noundef 0) #16
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit32

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit32: ; preds = %bb.k, %bb.l
  %.sroa.07.0.i25 = phi ptr [ %i.cw, %bb.l ], [ %i.cv, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit32, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.034.0 = phi ptr [ %.sroa.07.0.i25, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit32 ], [ %i.bd, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  ret ptr %.sroa.034.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7Isolate14int8_array_funEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 135
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i, align 8
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7Isolate15uint8_array_funEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 127
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i, align 8
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7Isolate15int16_array_funEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 151
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i, align 8
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7Isolate16uint16_array_funEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 143
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
end_hunk_2
