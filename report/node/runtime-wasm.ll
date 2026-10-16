Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/runtime-wasm?download=true
inline.NumInlined: 3941
inline.NumDeleted: 1451
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal29Runtime_TierUpWasmToJSWrapperEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  store i32 0, ptr %i.es, align 4
  %i.et = load ptr, ptr %i.en, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #18, !inline_history !30
  %i.ew = load ptr, ptr %i.en, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #18, !inline_history !30
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29

bb.r:                                             ; preds = %bb.p
  %i.ez = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i26 = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.t:                                             ; preds = %bb.r
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i28 = phi i32 [ %i.er, %bb.s ], [ %i.fb, %bb.t ]
  %i.fc = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.fc, label %bb.u, label %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29, !prof !8

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #18
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29

_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29, %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.085.0 = phi i64 [ %i.bz, %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.el, %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29 ]
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  store ptr %i.b, ptr %i.a, align 8
  %i.fd = load i32, ptr %i.e, align 8
  %i.fe = add nsw i32 %i.fd, -1
  store i32 %i.fe, ptr %i.e, align 8
  %i.ff = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ff, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.w, !prof !9

bb.w:                                             ; preds = %bb.v
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.w, %bb.v
  ret i64 %.sroa.085.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_WasmTriggerTierUpEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::(anonymous namespace)::FrameFinder", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 328
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateEPNS0_14ThreadLocalTopENS1_14FirstStackOnlyE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #18
  call void @_ZN2v88internal18StackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #18
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.val = load ptr, ptr %i.c, align 8
  %i.d = call noundef i32 @_ZNK2v88internal9WasmFrame14function_indexEv(ptr noundef nonnull align 8 dereferenceable(80) %.val) #18 ; 4 uses
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 738), align 2, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.a, label %bb.d, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.g = add i64 %i.a, 263
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 7
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef zeroext i1 @_ZNK2v88internal4wasm12NativeModule15HasCodeWithTierEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(552) %i.p, i32 noundef %i.d, i8 noundef signext 2) #18
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi(ptr noundef nonnull %2, i64 %i.a, i32 noundef %i.d) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load i64, ptr %i.h, align 8
  %i.s = add i64 %i.r, 7
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sub i32 %i.d, %i.ac
  %i.ae = add i64 %i.a, 103
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 740), align 4
  store atomic i32 %i.aj, ptr %i.ai monotonic, align 4
  br label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  call void @_ZN2v88internal4wasm13TriggerTierUpEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi(ptr noundef nonnull %2, i64 %i.a, i32 noundef %i.d) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ak = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #18
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i32 noundef 2) #18 ; 2 uses
  %i.aq = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10624
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 360
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp eq i64 %i.ap, %i.au
  br i1 %i.av, label %_ZN2v88internalL35__RT_impl_Runtime_WasmTriggerTierUpENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ax = load i64, ptr %i.aw, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmTriggerTierUpENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL35__RT_impl_Runtime_WasmTriggerTierUpENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.f, %bb.g
  %.sroa.017.0 = phi i64 [ %i.ap, %bb.f ], [ %i.ax, %bb.g ]
  ret i64 %.sroa.017.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_WasmI32AtomicWaitEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.461"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.i = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.j = add i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %.not42 = icmp eq i32 %0, 1
  br i1 %.not42, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit, !prof !8

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit
  %i.m = add i64 %i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.r = lshr i64 %i.o, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = sitofp i32 %i.s to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.u = add nsw i64 %i.o, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.w, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.c, %bb.d
  %i.x = phi double [ %i.t, %bb.c ], [ %.0.copyload.i.i.i.i.i.i, %bb.d ]
  %i.y = fptoui double %i.x to i64
  %i.z = icmp ugt i32 %0, 2
  br i1 %i.z, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, label %bb.e, !prof !9

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.aa = add i64 %i.i, -24
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = and i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.af = lshr i64 %i.ac, 32
  %i.ag = trunc nuw i64 %i.af to i32
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.ah = add nsw i64 %i.ac, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.aj, align 2 ; 5 uses
  %i.ak = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.al = fcmp one double %i.ak, +inf
  %i.am = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i = and i1 %i.am, %i.al
  %i.an = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i = and i1 %i.an, %or.cond.i.i
  br i1 %or.cond3.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.aq = and i64 %i.ap, 9218868437227405312
  %i.ar = icmp eq i64 %i.aq, 0                    ; 2 uses
  %i.as = lshr i64 %i.ap, 52
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 2047
  %i.av = add nsw i32 %i.au, -1075
  %.0.i.i.i = select i1 %i.ar, i32 -1074, i32 %i.av ; 5 uses
  %i.aw = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.aw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp samesign ult i32 %.0.i.i.i, -52
  br i1 %i.ax, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = and i64 %i.ap, 4503599627370495         ; 2 uses
  %i.az = or disjoint i64 %i.ay, 4503599627370496
  %.0.i17.i.i = select i1 %i.ar, i64 %i.ay, i64 %i.az
  %i.ba = sub nsw i32 0, %.0.i.i.i
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %.0.i17.i.i, %i.bb
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bd = icmp samesign ugt i32 %.0.i.i.i, 31
  br i1 %i.bd, label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = zext nneg i32 %.0.i.i.i to i64
  %i.bf = shl i64 %i.ap, %i.be
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.0.i.i5 = phi i64 [ %i.bc, %bb.k ], [ %i.bf, %bb.m ]
  %i.bg = trunc i64 %.0.i.i5 to i32               ; 2 uses
  %i.bh = sub i32 0, %i.bg
  %i.bi = icmp slt i64 %i.ap, 0
  %i.bj = select i1 %i.bi, i32 %i.bh, i32 %i.bg
  br label %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n
  %.0.i6 = phi i32 [ %i.ag, %bb.f ], [ %i.ao, %bb.h ], [ 0, %bb.j ], [ %i.bj, %bb.n ], [ 0, %bb.l ]
  %.not43 = icmp eq i32 %0, 3
  br i1 %.not43, label %bb.o, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, !prof !8

bb.o:                                             ; preds = %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZN2v88internal13NumberToInt32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bk = add i64 %i.i, -32
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = add i64 %i.h, 175
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = ashr i64 %i.l, 32
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8
  %i.bw = add i64 %i.bv, 23
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp eq ptr %i.b, %i.d
  br i1 %i.bz, label %bb.p, label %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.p:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.ca = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, %bb.p
  %.0.i.i = phi ptr [ %i.ca, %bb.p ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3 ] ; 3 uses
  %i.cb = ptrtoint ptr %.0.i.i to i64
  %i.cc = add i64 %i.cb, 8
  %i.cd = inttoptr i64 %i.cc to ptr
  store ptr %i.cd, ptr %i.a, align 8
  store i64 %i.by, ptr %.0.i.i, align 8
  %i.ce = add i64 %i.by, 71
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i32, ptr %i.cf monotonic, align 4
  %i.ch = and i32 %i.cg, 16
  %.not44 = icmp eq i32 %i.ch, 0
  br i1 %.not44, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 63952
  %i.cj = load i8, ptr %i.ci, align 8, !range !12, !noundef !13
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.s, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cl = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.40, i64 12, i8 noundef zeroext 0) #18 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.r, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !8

bb.r:                                             ; preds = %.critedge.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #19
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %.critedge.i
  store ptr %i.cl, ptr %3, align 8
  %i.cn = call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 23, ptr nonnull %3, i64 1) #18 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.cn, ptr nonnull %i.co, ptr nonnull %i.cp, i32 noundef 0) #18
  %i.cq = load i64, ptr %i.cn, align 8
  %i.cr = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.cq, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmI32AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.s:                                             ; preds = %bb.q
  %i.cs = add i64 %i.bm, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = tail call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.ct, ptr noundef null) #18
  %i.cv = tail call i64 @_ZN2v88internal14FutexEmulation10WaitWasm32EPNS0_7IsolateENS0_12DirectHandleINS0_13JSArrayBufferEEEmil(ptr noundef nonnull %2, ptr nonnull %.0.i.i, i64 noundef %i.y, i32 noundef %.0.i6, i64 noundef %i.cu) #18
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmI32AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL35__RT_impl_Runtime_WasmI32AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.s, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %.sroa.017.0.i = phi i64 [ %i.cr, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ], [ %i.cv, %bb.s ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cw = load i32, ptr %i.e, align 8
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.e, align 8
  %i.cy = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.cy, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.t, !prof !9

bb.t:                                             ; preds = %_ZN2v88internalL35__RT_impl_Runtime_WasmI32AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.t, %_ZN2v88internalL35__RT_impl_Runtime_WasmI32AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.017.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_WasmI64AtomicWaitEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.461"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.i = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.j = add i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %.not41 = icmp eq i32 %0, 1
  br i1 %.not41, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit, !prof !8

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE12smi_value_atEi.exit
  %i.m = add i64 %i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.r = lshr i64 %i.o, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = sitofp i32 %i.s to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.u = add nsw i64 %i.o, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.w, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.c, %bb.d
  %i.x = phi double [ %i.t, %bb.c ], [ %.0.copyload.i.i.i.i.i.i, %bb.d ]
  %i.y = fptoui double %i.x to i64
  %i.z = icmp ugt i32 %0, 2
  br i1 %i.z, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, label %bb.e, !prof !9

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.aa = add i64 %i.i, -24
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %.not42 = icmp eq i32 %0, 3
  br i1 %.not42, label %bb.f, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, !prof !8

bb.f:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.ad = add i64 %i.i, -32
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.h, 175
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = ashr i64 %i.l, 32
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 23
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp eq ptr %i.b, %i.d
  br i1 %i.as, label %bb.g, label %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.at = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, %bb.g
  %.0.i.i = phi ptr [ %i.at, %bb.g ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3 ] ; 3 uses
  %i.au = ptrtoint ptr %.0.i.i to i64
  %i.av = add i64 %i.au, 8
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.a, align 8
  store i64 %i.ar, ptr %.0.i.i, align 8
  %i.ax = add i64 %i.ar, 71
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i32, ptr %i.ay monotonic, align 4
  %i.ba = and i32 %i.az, 16
  %.not43 = icmp eq i32 %i.ba, 0
  br i1 %.not43, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 63952
  %i.bc = load i8, ptr %i.bb, align 8, !range !12, !noundef !13
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.j, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN2v88internal6HandleINS0_13JSArrayBufferEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.be = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.40, i64 12, i8 noundef zeroext 0) #18 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.i, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !8

bb.i:                                             ; preds = %.critedge.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #19
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %.critedge.i
  store ptr %i.be, ptr %3, align 8
  %i.bg = call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 23, ptr nonnull %3, i64 1) #18 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.bg, ptr nonnull %i.bh, ptr nonnull %i.bi, i32 noundef 0) #18
  %i.bj = load i64, ptr %i.bg, align 8
  %i.bk = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bj, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmI64AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.j:                                             ; preds = %bb.h
  %i.bl = add i64 %i.ac, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = tail call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.bm, ptr noundef null) #18
  %i.bo = add i64 %i.af, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = tail call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.bp, ptr noundef null) #18
  %i.br = tail call i64 @_ZN2v88internal14FutexEmulation10WaitWasm64EPNS0_7IsolateENS0_12DirectHandleINS0_13JSArrayBufferEEEmll(ptr noundef nonnull %2, ptr nonnull %.0.i.i, i64 noundef %i.y, i64 noundef %i.bn, i64 noundef %i.bq) #18
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmI64AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL35__RT_impl_Runtime_WasmI64AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.j, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %.sroa.017.0.i = phi i64 [ %i.bk, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ], [ %i.br, %bb.j ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bs = load i32, ptr %i.e, align 8
  %i.bt = add nsw i32 %i.bs, -1
  store i32 %i.bt, ptr %i.e, align 8
  %i.bu = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.bu, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %_ZN2v88internalL35__RT_impl_Runtime_WasmI64AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.k, %_ZN2v88internalL35__RT_impl_Runtime_WasmI64AtomicWaitENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.017.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal19Runtime_WasmRefFuncEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.a, label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.a
  %.0.i.i = phi ptr [ %i.j, %bb.a ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.n = ptrtoint ptr %1 to i64
  %i.o = add i64 %i.n, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = tail call ptr @_ZN2v88internal23WasmTrustedInstanceData18GetOrCreateFuncRefEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS0_4wasm17PrecreateExternalE(ptr noundef nonnull %2, ptr nonnull %.0.i.i, i32 noundef %i.s, i1 noundef zeroext false) #18
  %i.u = load i64, ptr %i.t, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.v = load i32, ptr %i.e, align 8
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.e, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.x, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %bb.c
  ret i64 %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal42Runtime_WasmInternalFunctionCreateExternalEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.a, label %bb.b, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %.0.i = phi ptr [ %i.j, %bb.a ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal37Runtime_WasmConfigureAllPrototypesOptEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  store i32 %i.ac, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 108
  store i32 %i.ac, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.dz = add i32 %i.ae, %i.ac
  store i32 %i.dz, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 116
  store i32 %i.ai, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ec = add i32 %i.ak, %i.ai
  store i32 %i.ec, ptr %i.eb, align 8
  %i.ed = call fastcc i64 @_ZN2v88internal12_GLOBAL__N_115PrototypesSetup15SetupPrototypesENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr nonnull %.0.i.i9)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal4wasm7DecoderE, i64 16), ptr %3, align 8
  %i.ee = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dr
  br i1 %i.ef, label %_ZN2v88internal4wasm7DecoderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.eg = load i64, ptr %i.dr, align 8
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #20, !inline_history !18
  br label %_ZN2v88internal4wasm7DecoderD2Ev.exit

_ZN2v88internal4wasm7DecoderD2Ev.exit:            ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL47__RT_impl_Runtime_WasmConfigureAllPrototypesOptENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL47__RT_impl_Runtime_WasmConfigureAllPrototypesOptENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.f, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZN2v88internal4wasm7DecoderD2Ev.exit, %bb.k, %bb.i, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit8
  %.sroa.047.1 = phi i64 [ %i.av, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.bl, %bb.f ], [ %i.ed, %_ZN2v88internal4wasm7DecoderD2Ev.exit ], [ %i.cw, %bb.k ], [ %i.ce, %bb.i ], [ %i.bo, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit8 ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ei = load i32, ptr %i.e, align 8
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr %i.e, align 8
  %i.ek = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ek, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.m, !prof !9

bb.m:                                             ; preds = %_ZN2v88internalL47__RT_impl_Runtime_WasmConfigureAllPrototypesOptENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.m, %_ZN2v88internalL47__RT_impl_Runtime_WasmConfigureAllPrototypesOptENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.047.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal39Runtime_WasmCastToSpecialPrimitiveArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  %i.l = load i64, ptr %1, align 8                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.sink.split, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.p = trunc i64 %i.l to i1
  br i1 %i.p, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.sink.split

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.q = add nsw i64 %i.l, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp eq i16 %i.v, 300
  br i1 %i.w, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, label %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.sink.split

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %.mask = and i64 %i.k, -4294967296
  %i.x = icmp ne i64 %.mask, 34359738368
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = add i64 %i.z, -55464
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 9760
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = zext i1 %i.x to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = and i64 %i.aj, -3
  %i.al = load atomic volatile i64, ptr %i.r monotonic, align 8
  %.not41 = icmp eq i64 %i.al, %i.ak
  br i1 %.not41, label %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit, label %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.sink.split

_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.sink.split: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %.sink46 = phi i32 [ 446, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ], [ 447, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit ], [ 447, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2 ], [ 447, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3 ]
  %i.am = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.sink46, ptr null, i64 0) #18 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.am, ptr nonnull %i.an, ptr nonnull %i.ao, i32 noundef 0) #18
  %i.ap = load i64, ptr %i.am, align 8
  %i.aq = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ap, ptr noundef null) #18
  br label %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.sink.split, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %.sroa.021.1 = phi i64 [ %i.l, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3 ], [ %i.aq, %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.sink.split ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ar = load i32, ptr %i.e, align 8
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.e, align 8
  %i.at = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %_ZN2v88internalL49__RT_impl_Runtime_WasmCastToSpecialPrimitiveArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.021.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_WasmStringNewWtf8EiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit3, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit3: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.i = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.j = add i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %.not67 = icmp eq i32 %0, 1
  br i1 %.not67, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit, !prof !8

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit3
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit3
  %i.m = add i64 %i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = icmp ugt i32 %0, 2
  br i1 %i.q, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.r = add i64 %i.i, -24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.w = lshr i64 %i.t, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = sitofp i32 %i.x to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.z = add nsw i64 %i.t, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ab, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.d, %bb.e
  %i.ac = phi double [ %i.y, %bb.d ], [ %.0.copyload.i.i.i.i.i.i, %bb.e ]
  %i.ad = fptoui double %i.ac to i64              ; 2 uses
  %.not68 = icmp eq i32 %0, 3
  br i1 %.not68, label %bb.f, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !8

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.ae = add i64 %i.i, -32
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i64 %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.aj = lshr i64 %i.ag, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.h:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.al = add nsw i64 %i.ag, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.an, align 2 ; 5 uses
  %i.ao = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.ap = fcmp one double %i.ao, +inf
  %i.aq = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.aq, %i.ap
  %i.ar = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.ar, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.j:                                             ; preds = %bb.h
  %i.at = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.au = and i64 %i.at, 9218868437227405312
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  %i.aw = lshr i64 %i.at, 52
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 2047
  %i.az = add nsw i32 %i.ay, -1075
  %.0.i.i.i.i = select i1 %i.av, i32 -1074, i32 %i.az ; 5 uses
  %i.ba = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.bb, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = and i64 %i.at, 4503599627370495         ; 2 uses
  %i.bd = or disjoint i64 %i.bc, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.av, i64 %i.bc, i64 %i.bd
  %i.be = sub nsw i32 0, %.0.i.i.i.i
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %.0.i17.i.i.i, %i.bf
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.bh = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.bh, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = zext nneg i32 %.0.i.i.i.i to i64
  %i.bj = shl i64 %i.at, %i.bi
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0.i.i.i = phi i64 [ %i.bg, %bb.l ], [ %i.bj, %bb.n ]
  %i.bk = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.bl = sub i32 0, %i.bk
  %i.bm = icmp slt i64 %i.at, 0
  %i.bn = select i1 %i.bm, i32 %i.bl, i32 %i.bk
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.o
  %.0.i4 = phi i32 [ %i.ak, %bb.g ], [ %i.as, %bb.i ], [ 0, %bb.k ], [ %i.bn, %bb.o ], [ 0, %bb.m ]
  %i.bo = add i64 %i.h, 119
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = add i64 %i.bq, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = shl i64 %i.l, 1
  %i.bv = ashr i64 %i.bu, 29                      ; 2 uses
  %i.bw = and i64 %i.bv, -16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.by, align 1 ; 2 uses
  %i.bz = zext i32 %.0.i4 to i64                  ; 3 uses
  %.not.i5 = icmp uge i64 %.0.copyload.i.i.i, %i.bz
  %i.ca = sub nuw i64 %.0.copyload.i.i.i, %i.bz
  %i.cb = icmp uge i64 %i.ca, %i.ad
  %i.cc = select i1 %.not.i5, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cd = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 433, ptr null, i64 0) #18 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.cd, ptr nonnull %i.ce, ptr nonnull %i.cf, i32 noundef 0) #18
  %i.cg = load i64, ptr %i.cd, align 8
  %i.ch = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.cg, ptr noundef null) #18
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.q:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ci = trunc i64 %i.p to i8                    ; 2 uses
  %i.cj = and i64 %i.bv, -16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cj
  %.0.copyload.i.i.i7 = load i64, ptr %i.ck, align 1
  %i.cl = inttoptr i64 %.0.copyload.i.i.i7 to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ad
  %i.cn = tail call ptr @_ZN2v88internal7Factory17NewStringFromUtf8ENS_4base6VectorIKhEEN7unibrow11Utf8VariantENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %i.cm, i64 %i.bz, i8 noundef zeroext %i.ci, i8 noundef zeroext 0) #18 ; 2 uses
  %i.co = icmp eq i8 %i.ci, 1
  %i.cp = icmp eq ptr %i.cn, null                 ; 2 uses
  br i1 %i.co, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %i.cp, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i = load i64, ptr %i.cq, align 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.cs = load i64, ptr %i.cr, align 8
  %.not70 = icmp eq i64 %.sroa.0.0.copyload.i, %i.cs
  br i1 %.not70, label %bb.t, label %_ZN2v88internal7Isolate9exceptionEv.exit

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 2104
  %i.cu = load i64, ptr %i.ct, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.u:                                             ; preds = %bb.q
  br i1 %i.cp, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %.thread

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %2, i64 656
  %.pre = load i64, ptr %.phi.trans.insert73, align 8
  %i.cv = icmp eq i64 %.sroa.0.0.copyload.i.i.pre, %.pre
  br i1 %i.cv, label %bb.v, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !19

bb.v:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #19
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %bb.s, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0.0.copyload.i.i81 = phi i64 [ %.sroa.0.0.copyload.i.i.pre, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.0.0.copyload.i, %bb.s ]
  %i.cw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cx = load ptr, ptr %i.c, align 8
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.cz = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN2v88internal7Isolate9exceptionEv.exit
  %.0.i.i = phi ptr [ %i.cz, %bb.w ], [ %i.cw, %_ZN2v88internal7Isolate9exceptionEv.exit ] ; 4 uses
  %i.da = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.db = add i64 %i.da, 8
  %i.dc = inttoptr i64 %i.db to ptr
  store ptr %i.dc, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i.i81, ptr %.0.i.i, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8136 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = add i64 %i.de, -1
  %i.dg = inttoptr i64 %i.df to ptr               ; 3 uses
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.di = add i64 %i.dh, 11
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i16, ptr %i.dj monotonic, align 2
  %i.dl = icmp eq i16 %i.dk, 128
  br i1 %i.dl, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = trunc i32 %i.dn to i1
  br i1 %i.do, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.x
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.dp = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.dp, ptr %3, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.da, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i8 -1, i64 16, i1 false)
  %i.eb = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.ec = add i64 %i.eb, 11
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load atomic volatile i16, ptr %i.ed monotonic, align 2
  %i.ef = and i16 %i.ee, -96
  %.not.i21.i.i = icmp eq i16 %i.ef, 32
  br i1 %.not.i21.i.i, label %bb.y, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.y:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.eg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.ej = load i8, ptr %i.ei, align 8, !range !12
  %i.ek = trunc nuw i8 %i.ej to i1
  %not..i.i.i23.i.i = xor i1 %i.eh, true
  %i.el = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ek
  br i1 %i.el, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.en = load i8, ptr %i.em, align 8, !range !12, !noundef !13
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.eq = load ptr, ptr %i.ep, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.y
  %.pn.i.i26.i.i = phi ptr [ %i.eq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.y ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.er = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.es = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.dd) #18
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.es, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.dd, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dv, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #18
  %i.et = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3) #18 ; 2 uses
  %i.eu = trunc i16 %i.et to i1
  br i1 %i.eu, label %_ZNO2v85MaybeIbE8FromJustEv.exit, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #18
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit

_ZNO2v85MaybeIbE8FromJustEv.exit:                 ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.ab
  %i.ev = and i16 %i.et, 256
  %.not71 = icmp eq i16 %i.ev, 0
  br i1 %.not71, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.0.i.i, ptr nonnull %i.dd, ptr nonnull %i.ew, i32 noundef 0) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ey = load i64, ptr %i.ex, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

.thread:                                          ; preds = %bb.r, %bb.u
  %i.ez = load i64, ptr %i.cn, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.p, %bb.ad, %.thread, %bb.t
  %.sroa.039.2 = phi i64 [ %i.ch, %bb.p ], [ %i.cu, %bb.t ], [ %i.ez, %.thread ], [ %i.ey, %bb.ad ]
  store ptr %i.b, ptr %i.a, align 8
  %i.fa = load i32, ptr %i.e, align 8
  %i.fb = add nsw i32 %i.fa, -1
  store i32 %i.fb, ptr %i.e, align 8
  %i.fc = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.fc, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.ae, %_ZN2v88internalL35__RT_impl_Runtime_WasmStringNewWtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.039.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal30Runtime_WasmStringNewWtf8ArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = lshr i64 %i.h, 32
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = add i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.b, %i.d
  br i1 %i.n, label %bb.c, label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 3 uses
  %i.p = ptrtoint ptr %.0.i.i to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.a, align 8
  store i64 %i.m, ptr %.0.i.i, align 8
  %.not62 = icmp eq i32 %0, 1
  br i1 %.not62, label %bb.d, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.s = add i64 %i.j, -16
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.x = lshr i64 %i.u, 32
  %i.y = trunc nuw i64 %i.x to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.z = add nsw i64 %i.u, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ab, align 2 ; 5 uses
  %i.ac = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.ad = fcmp one double %i.ac, +inf
  %i.ae = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.ae, %i.ad
  %i.af = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.af, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.ai = and i64 %i.ah, 9218868437227405312
  %i.aj = icmp eq i64 %i.ai, 0                    ; 2 uses
  %i.ak = lshr i64 %i.ah, 52
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 2047
  %i.an = add nsw i32 %i.am, -1075
  %.0.i.i.i.i = select i1 %i.aj, i32 -1074, i32 %i.an ; 5 uses
  %i.ao = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.ap, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = and i64 %i.ah, 4503599627370495         ; 2 uses
  %i.ar = or disjoint i64 %i.aq, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.aj, i64 %i.aq, i64 %i.ar
  %i.as = sub nsw i32 0, %.0.i.i.i.i
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %.0.i17.i.i.i, %i.at
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.av = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.av, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = zext nneg i32 %.0.i.i.i.i to i64
  %i.ax = shl i64 %i.ah, %i.aw
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.0.i.i.i = phi i64 [ %i.au, %bb.j ], [ %i.ax, %bb.l ]
  %i.ay = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.az = sub i32 0, %i.ay
  %i.ba = icmp slt i64 %i.ah, 0
  %i.bb = select i1 %i.ba, i32 %i.az, i32 %i.ay
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.0.i5 = phi i32 [ %i.y, %bb.e ], [ %i.ag, %bb.g ], [ 0, %bb.i ], [ %i.bb, %bb.m ], [ 0, %bb.k ]
  %i.bc = icmp ugt i32 %0, 2
  br i1 %i.bc, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, label %bb.n, !prof !9

bb.n:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bd = add i64 %i.j, -24
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = and i64 %i.bf, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bi = lshr i64 %i.bf, 32
  %i.bj = trunc nuw i64 %i.bi to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

bb.p:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bk = add nsw i64 %i.bf, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.0.copyload.i.i.i.i.i6 = load double, ptr %i.bm, align 2 ; 5 uses
  %i.bn = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i6)
  %i.bo = fcmp one double %i.bn, +inf
  %i.bp = fcmp ole double %.0.copyload.i.i.i.i.i6, f0x41DFFFFFFFC00000
  %or.cond.i.i.i7 = and i1 %i.bp, %i.bo
  %i.bq = fcmp oge double %.0.copyload.i.i.i.i.i6, f0xC1E0000000000000
  %or.cond3.i.i.i8 = and i1 %i.bq, %or.cond.i.i.i7
  br i1 %or.cond3.i.i.i8, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = fptosi double %.0.copyload.i.i.i.i.i6 to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

bb.r:                                             ; preds = %bb.p
  %i.bs = bitcast double %.0.copyload.i.i.i.i.i6 to i64 ; 5 uses
  %i.bt = and i64 %i.bs, 9218868437227405312
  %i.bu = icmp eq i64 %i.bt, 0                    ; 2 uses
  %i.bv = lshr i64 %i.bs, 52
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 2047
  %i.by = add nsw i32 %i.bx, -1075
  %.0.i.i.i.i9 = select i1 %i.bu, i32 -1074, i32 %i.by ; 5 uses
  %i.bz = icmp slt i32 %.0.i.i.i.i9, 0
  br i1 %i.bz, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp samesign ult i32 %.0.i.i.i.i9, -52
  br i1 %i.ca, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = and i64 %i.bs, 4503599627370495         ; 2 uses
  %i.cc = or disjoint i64 %i.cb, 4503599627370496
  %.0.i17.i.i.i12 = select i1 %i.bu, i64 %i.cb, i64 %i.cc
  %i.cd = sub nsw i32 0, %.0.i.i.i.i9
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %.0.i17.i.i.i12, %i.ce
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.cg = icmp samesign ugt i32 %.0.i.i.i.i9, 31
  br i1 %i.cg, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = zext nneg i32 %.0.i.i.i.i9 to i64
  %i.ci = shl i64 %i.bs, %i.ch
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0.i.i.i10 = phi i64 [ %i.cf, %bb.t ], [ %i.ci, %bb.v ]
  %i.cj = trunc i64 %.0.i.i.i10 to i32            ; 2 uses
  %i.ck = sub i32 0, %i.cj
  %i.cl = icmp slt i64 %i.bs, 0
  %i.cm = select i1 %i.cl, i32 %i.ck, i32 %i.cj
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13: ; preds = %bb.o, %bb.q, %bb.s, %bb.u, %bb.w
  %.0.i11 = phi i32 [ %i.bj, %bb.o ], [ %i.br, %bb.q ], [ 0, %bb.s ], [ %i.cm, %bb.w ], [ 0, %bb.u ]
  %i.cn = trunc i64 %i.i to i8                    ; 2 uses
  %i.co = tail call ptr @_ZN2v88internal7Factory17NewStringFromUtf8ENS0_12DirectHandleINS0_9WasmArrayEEEjjN7unibrow11Utf8VariantENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i, i32 noundef %.0.i5, i32 noundef %.0.i11, i8 noundef zeroext %i.cn, i8 noundef zeroext 0) #18 ; 2 uses
  %i.cp = icmp eq i8 %i.cn, 1
  %i.cq = icmp eq ptr %i.co, null                 ; 2 uses
  br i1 %i.cp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13
  br i1 %i.cq, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i = load i64, ptr %i.cr, align 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.ct = load i64, ptr %i.cs, align 8
  %.not64 = icmp eq i64 %.sroa.0.0.copyload.i, %i.ct
  br i1 %.not64, label %bb.z, label %_ZN2v88internal7Isolate9exceptionEv.exit

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 2104
  %i.cv = load i64, ptr %i.cu, align 8
  br label %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.aa:                                            ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13
  br i1 %i.cq, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %.thread

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.aa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert67 = getelementptr inbounds nuw i8, ptr %2, i64 656
  %.pre = load i64, ptr %.phi.trans.insert67, align 8
  %i.cw = icmp eq i64 %.sroa.0.0.copyload.i.i.pre, %.pre
  br i1 %i.cw, label %bb.ab, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !19

bb.ab:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #19
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %bb.y, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0.0.copyload.i.i74 = phi i64 [ %.sroa.0.0.copyload.i.i.pre, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.0.0.copyload.i, %bb.y ]
  %i.cx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cy = load ptr, ptr %i.c, align 8
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.ac, label %bb.ad, !prof !8

bb.ac:                                            ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.da = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN2v88internal7Isolate9exceptionEv.exit
  %.0.i.i4 = phi ptr [ %i.da, %bb.ac ], [ %i.cx, %_ZN2v88internal7Isolate9exceptionEv.exit ] ; 4 uses
  %i.db = ptrtoint ptr %.0.i.i4 to i64            ; 2 uses
  %i.dc = add i64 %i.db, 8
  %i.dd = inttoptr i64 %i.dc to ptr
  store ptr %i.dd, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i.i74, ptr %.0.i.i4, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8136 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = add i64 %i.df, -1
  %i.dh = inttoptr i64 %i.dg to ptr               ; 3 uses
  %i.di = load atomic volatile i64, ptr %i.dh monotonic, align 8
  %i.dj = add i64 %i.di, 11
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load atomic volatile i16, ptr %i.dk monotonic, align 2
  %i.dm = icmp eq i16 %i.dl, 128
  br i1 %i.dm, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = trunc i32 %i.do to i1
  br i1 %i.dp, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.ad
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.dq = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.dq, ptr %3, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i4, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.db, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 -1, i64 16, i1 false)
  %i.ec = load atomic volatile i64, ptr %i.dh monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i16, ptr %i.ee monotonic, align 2
  %i.eg = and i16 %i.ef, -96
  %.not.i21.i.i = icmp eq i16 %i.eg, 32
  br i1 %.not.i21.i.i, label %bb.ae, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.ae:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.eh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.ek = load i8, ptr %i.ej, align 8, !range !12
  %i.el = trunc nuw i8 %i.ek to i1
  %not..i.i.i23.i.i = xor i1 %i.ei, true
  %i.em = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.el
  br i1 %i.em, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.eo = load i8, ptr %i.en, align 8, !range !12, !noundef !13
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.er = load ptr, ptr %i.eq, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.ae
  %.pn.i.i26.i.i = phi ptr [ %i.er, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.ae ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.es = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.et = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.de) #18
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.et, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.de, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dw, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #18
  %i.eu = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3) #18 ; 2 uses
  %i.ev = trunc i16 %i.eu to i1
  br i1 %i.ev, label %_ZNO2v85MaybeIbE8FromJustEv.exit, label %bb.ah, !prof !9

bb.ah:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #18
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit

_ZNO2v85MaybeIbE8FromJustEv.exit:                 ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.ah
  %i.ew = and i16 %i.eu, 256
  %.not65 = icmp eq i16 %i.ew, 0
  br i1 %.not65, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.0.i.i4, ptr nonnull %i.de, ptr nonnull %i.ex, i32 noundef 0) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ez = load i64, ptr %i.ey, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

.thread:                                          ; preds = %bb.x, %bb.aa
  %i.fa = load i64, ptr %i.co, align 8
  br label %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.z, %.thread, %bb.aj
  %.sroa.038.1 = phi i64 [ %i.cv, %bb.z ], [ %i.fa, %.thread ], [ %i.ez, %bb.aj ]
  store ptr %i.b, ptr %i.a, align 8
  %i.fb = load i32, ptr %i.e, align 8
  %i.fc = add nsw i32 %i.fb, -1
  store i32 %i.fc, ptr %i.e, align 8
  %i.fd = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.fd, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.ak, %_ZN2v88internalL40__RT_impl_Runtime_WasmStringNewWtf8ArrayENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.038.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_WasmStringNewWtf16EiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.i = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.j = add i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %.not57 = icmp eq i32 %0, 1
  br i1 %.not57, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit, !prof !8

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.m = add i64 %i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.r = lshr i64 %i.o, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = sitofp i32 %i.s to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.u = add nsw i64 %i.o, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.w, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.c, %bb.d
  %i.x = phi double [ %i.t, %bb.c ], [ %.0.copyload.i.i.i.i.i.i, %bb.d ]
  %i.y = fptoui double %i.x to i64                ; 3 uses
  %i.z = icmp ugt i32 %0, 2
  br i1 %i.z, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, label %bb.e, !prof !9

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.aa = add i64 %i.i, -24
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = and i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.af = lshr i64 %i.ac, 32
  %i.ag = trunc nuw i64 %i.af to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.ah = add nsw i64 %i.ac, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.aj, align 2 ; 5 uses
  %i.ak = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.al = fcmp one double %i.ak, +inf
  %i.am = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.am, %i.al
  %i.an = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.an, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.aq = and i64 %i.ap, 9218868437227405312
  %i.ar = icmp eq i64 %i.aq, 0                    ; 2 uses
  %i.as = lshr i64 %i.ap, 52
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 2047
  %i.av = add nsw i32 %i.au, -1075
  %.0.i.i.i.i = select i1 %i.ar, i32 -1074, i32 %i.av ; 5 uses
  %i.aw = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.aw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.ax, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = and i64 %i.ap, 4503599627370495         ; 2 uses
  %i.az = or disjoint i64 %i.ay, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.ar, i64 %i.ay, i64 %i.az
  %i.ba = sub nsw i32 0, %.0.i.i.i.i
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %.0.i17.i.i.i, %i.bb
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bd = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.bd, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = zext nneg i32 %.0.i.i.i.i to i64
  %i.bf = shl i64 %i.ap, %i.be
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.0.i.i.i = phi i64 [ %i.bc, %bb.k ], [ %i.bf, %bb.m ]
  %i.bg = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.bh = sub i32 0, %i.bg
  %i.bi = icmp slt i64 %i.ap, 0
  %i.bj = select i1 %i.bi, i32 %i.bh, i32 %i.bg
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f, %bb.h, %bb.n
  %.0.i4 = phi i32 [ %i.ag, %bb.f ], [ %i.ao, %bb.h ], [ %i.bj, %bb.n ] ; 2 uses
  %i.bk = icmp slt i32 %.0.i4, 0
  br i1 %i.bk, label %bb.o, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.l, %bb.j, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %.0.i465 = phi i32 [ %.0.i4, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit ], [ 0, %bb.j ], [ 0, %bb.l ] ; 2 uses
  %.pn.in.in.in.in = add i64 %i.h, 119
  %.pn.in.in.in = inttoptr i64 %.pn.in.in.in.in to ptr
  %.pn.in.in = load i64, ptr %.pn.in.in.in, align 8
  %.pn.in = add i64 %.pn.in.in, -1
  %.pn = inttoptr i64 %.pn.in to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.bm = shl i64 %i.l, 1
  %i.bn = ashr i64 %i.bm, 29                      ; 2 uses
  %i.bo = and i64 %i.bn, -16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.bq, align 1 ; 2 uses
  %i.br = shl nuw i32 %.0.i465, 1
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %.not.i5 = icmp uge i64 %.0.copyload.i.i.i, %i.bs
  %i.bt = sub nuw i64 %.0.copyload.i.i.i, %i.bs
  %i.bu = icmp uge i64 %i.bt, %i.y
  %i.bv = select i1 %.not.i5, i1 %i.bu, i1 false
  br i1 %i.bv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bw = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 433, ptr null, i64 0) #18 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.bw, ptr nonnull %i.bx, ptr nonnull %i.by, i32 noundef 0) #18
  %i.bz = load i64, ptr %i.bw, align 8
  %i.ca = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bz, ptr noundef null) #18
  br label %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.p:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.cb = and i64 %i.y, 1
  %.not.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 434, ptr null, i64 0) #18 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.cc, ptr nonnull %i.cd, ptr nonnull %i.ce, i32 noundef 0) #18
  %i.cf = load i64, ptr %i.cc, align 8
  %i.cg = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.cf, ptr noundef null) #18
  br label %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.r:                                             ; preds = %bb.p
  %i.ch = and i64 %i.bn, -16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ch
  %.0.copyload.i.i.i7 = load i64, ptr %i.ci, align 1
  %i.cj = inttoptr i64 %.0.copyload.i.i.i7 to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.y
  %i.cl = zext nneg i32 %.0.i465 to i64
  %i.cm = tail call ptr @_ZN2v88internal7Factory32NewStringFromTwoByteLittleEndianENS_4base6VectorIKtEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %i.ck, i64 %i.cl, i8 noundef zeroext 0) #18 ; 2 uses
  %.not58 = icmp eq ptr %i.cm, null
  br i1 %.not58, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %bb.ab

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cn, align 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.cp = load i64, ptr %i.co, align 8
  %.not.i8 = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.cp
  br i1 %.not.i8, label %bb.s, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !8

bb.s:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #19
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  %i.cq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cr = load ptr, ptr %i.c, align 8
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %bb.t, label %bb.u, !prof !8

bb.t:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.ct = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN2v88internal7Isolate9exceptionEv.exit
  %.0.i.i = phi ptr [ %i.ct, %bb.t ], [ %i.cq, %_ZN2v88internal7Isolate9exceptionEv.exit ] ; 4 uses
  %i.cu = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.cv = add i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %.0.i.i, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8136 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = add i64 %i.cy, -1
  %i.da = inttoptr i64 %i.cz to ptr               ; 3 uses
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = add i64 %i.db, 11
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i16, ptr %i.dd monotonic, align 2
  %i.df = icmp eq i16 %i.de, 128
  br i1 %i.df, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.u
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.dj = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.dj, ptr %3, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.cu, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 -1, i64 16, i1 false)
  %i.dv = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dw = add i64 %i.dv, 11
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load atomic volatile i16, ptr %i.dx monotonic, align 2
  %i.dz = and i16 %i.dy, -96
  %.not.i21.i.i = icmp eq i16 %i.dz, 32
  br i1 %.not.i21.i.i, label %bb.v, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.v:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ea = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.ed = load i8, ptr %i.ec, align 8, !range !12
  %i.ee = trunc nuw i8 %i.ed to i1
  %not..i.i.i23.i.i = xor i1 %i.eb, true
  %i.ef = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ee
  br i1 %i.ef, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.eh = load i8, ptr %i.eg, align 8, !range !12, !noundef !13
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.ek = load ptr, ptr %i.ej, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.v
  %.pn.i.i26.i.i = phi ptr [ %i.ek, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.v ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.el = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.em = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.cx) #18
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.em, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.cx, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dp, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #18
  %i.en = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3) #18 ; 2 uses
  %i.eo = trunc i16 %i.en to i1
  br i1 %i.eo, label %_ZNO2v85MaybeIbE8FromJustEv.exit, label %bb.y, !prof !9

bb.y:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #18
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit

_ZNO2v85MaybeIbE8FromJustEv.exit:                 ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.y
  %i.ep = and i16 %i.en, 256
  %.not59 = icmp eq i16 %i.ep, 0
  br i1 %.not59, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.0.i.i, ptr nonnull %i.cx, ptr nonnull %i.eq, i32 noundef 0) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.es = load i64, ptr %i.er, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.ab:                                            ; preds = %bb.r
  %i.et = load i64, ptr %i.cm, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.q, %bb.o, %bb.ab, %bb.aa
  %.sroa.035.1 = phi i64 [ %i.ca, %bb.o ], [ %i.cg, %bb.q ], [ %i.et, %bb.ab ], [ %i.es, %bb.aa ]
  store ptr %i.b, ptr %i.a, align 8
  %i.eu = load i32, ptr %i.e, align 8
  %i.ev = add nsw i32 %i.eu, -1
  store i32 %i.ev, ptr %i.e, align 8
  %i.ew = load ptr, ptr %i.c, align 8
  %.not.i3 = icmp eq ptr %i.ew, %i.d
  br i1 %.not.i3, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.ac, !prof !9

bb.ac:                                            ; preds = %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.ac, %_ZN2v88internalL36__RT_impl_Runtime_WasmStringNewWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.035.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Runtime_WasmStringNewWtf16ArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.a, label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.a
  %.0.i.i = phi ptr [ %i.j, %bb.a ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !8

bb.b:                                             ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = add i64 %i.n, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.t = lshr i64 %i.q, 32
  %i.u = trunc nuw i64 %i.t to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.v = add nsw i64 %i.q, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.x, align 2 ; 5 uses
  %i.y = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.z = fcmp one double %i.y, +inf
  %i.aa = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.aa, %i.z
  %i.ab = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.ab, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.ae = and i64 %i.ad, 9218868437227405312
  %i.af = icmp eq i64 %i.ae, 0                    ; 2 uses
  %i.ag = lshr i64 %i.ad, 52
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 2047
  %i.aj = add nsw i32 %i.ai, -1075
  %.0.i.i.i.i = select i1 %i.af, i32 -1074, i32 %i.aj ; 5 uses
  %i.ak = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ak, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.al, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = and i64 %i.ad, 4503599627370495         ; 2 uses
  %i.an = or disjoint i64 %i.am, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.af, i64 %i.am, i64 %i.an
  %i.ao = sub nsw i32 0, %.0.i.i.i.i
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %.0.i17.i.i.i, %i.ap
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ar = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.ar, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = zext nneg i32 %.0.i.i.i.i to i64
  %i.at = shl i64 %i.ad, %i.as
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.0.i.i.i = phi i64 [ %i.aq, %bb.h ], [ %i.at, %bb.j ]
  %i.au = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.av = sub i32 0, %i.au
  %i.aw = icmp slt i64 %i.ad, 0
  %i.ax = select i1 %i.aw, i32 %i.av, i32 %i.au
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k
  %.0.i5 = phi i32 [ %i.u, %bb.c ], [ %i.ac, %bb.e ], [ 0, %bb.g ], [ %i.ax, %bb.k ], [ 0, %bb.i ]
  %.not53 = icmp eq i32 %0, 1
  br i1 %.not53, label %bb.l, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, !prof !8

bb.l:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ay = add i64 %i.n, -16
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bd = lshr i64 %i.ba, 32
  %i.be = trunc nuw i64 %i.bd to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

bb.n:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bf = add nsw i64 %i.ba, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.0.copyload.i.i.i.i.i6 = load double, ptr %i.bh, align 2 ; 5 uses
  %i.bi = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i6)
  %i.bj = fcmp one double %i.bi, +inf
  %i.bk = fcmp ole double %.0.copyload.i.i.i.i.i6, f0x41DFFFFFFFC00000
  %or.cond.i.i.i7 = and i1 %i.bk, %i.bj
  %i.bl = fcmp oge double %.0.copyload.i.i.i.i.i6, f0xC1E0000000000000
  %or.cond3.i.i.i8 = and i1 %i.bl, %or.cond.i.i.i7
  br i1 %or.cond3.i.i.i8, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = fptosi double %.0.copyload.i.i.i.i.i6 to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

bb.p:                                             ; preds = %bb.n
  %i.bn = bitcast double %.0.copyload.i.i.i.i.i6 to i64 ; 5 uses
  %i.bo = and i64 %i.bn, 9218868437227405312
  %i.bp = icmp eq i64 %i.bo, 0                    ; 2 uses
  %i.bq = lshr i64 %i.bn, 52
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = and i32 %i.br, 2047
  %i.bt = add nsw i32 %i.bs, -1075
  %.0.i.i.i.i9 = select i1 %i.bp, i32 -1074, i32 %i.bt ; 5 uses
  %i.bu = icmp slt i32 %.0.i.i.i.i9, 0
  br i1 %i.bu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bv = icmp samesign ult i32 %.0.i.i.i.i9, -52
  br i1 %i.bv, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = and i64 %i.bn, 4503599627370495         ; 2 uses
  %i.bx = or disjoint i64 %i.bw, 4503599627370496
  %.0.i17.i.i.i12 = select i1 %i.bp, i64 %i.bw, i64 %i.bx
  %i.by = sub nsw i32 0, %.0.i.i.i.i9
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = lshr i64 %.0.i17.i.i.i12, %i.bz
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.cb = icmp samesign ugt i32 %.0.i.i.i.i9, 31
  br i1 %i.cb, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = zext nneg i32 %.0.i.i.i.i9 to i64
  %i.cd = shl i64 %i.bn, %i.cc
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.0.i.i.i10 = phi i64 [ %i.ca, %bb.r ], [ %i.cd, %bb.t ]
  %i.ce = trunc i64 %.0.i.i.i10 to i32            ; 2 uses
  %i.cf = sub i32 0, %i.ce
  %i.cg = icmp slt i64 %i.bn, 0
  %i.ch = select i1 %i.cg, i32 %i.cf, i32 %i.ce
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13: ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %bb.u
  %.0.i11 = phi i32 [ %i.be, %bb.m ], [ %i.bm, %bb.o ], [ 0, %bb.q ], [ %i.ch, %bb.u ], [ 0, %bb.s ]
  %i.ci = tail call ptr @_ZN2v88internal7Factory18NewStringFromUtf16ENS0_12DirectHandleINS0_9WasmArrayEEEjjNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i, i32 noundef %.0.i5, i32 noundef %.0.i11, i8 noundef zeroext 0) #18 ; 2 uses
  %.not54 = icmp eq ptr %i.ci, null
  br i1 %.not54, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %bb.ae

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit13
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cj, align 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.cl = load i64, ptr %i.ck, align 8
  %.not.i14 = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.cl
  br i1 %.not.i14, label %bb.v, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !8

bb.v:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #19
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit
  %i.cm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cn = load ptr, ptr %i.c, align 8
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.cp = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN2v88internal7Isolate9exceptionEv.exit
  %.0.i.i4 = phi ptr [ %i.cp, %bb.w ], [ %i.cm, %_ZN2v88internal7Isolate9exceptionEv.exit ] ; 4 uses
  %i.cq = ptrtoint ptr %.0.i.i4 to i64            ; 2 uses
  %i.cr = add i64 %i.cq, 8
  %i.cs = inttoptr i64 %i.cr to ptr
  store ptr %i.cs, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %.0.i.i4, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8136 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = add i64 %i.cu, -1
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cx = load atomic volatile i64, ptr %i.cw monotonic, align 8
  %i.cy = add i64 %i.cx, 11
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load atomic volatile i16, ptr %i.cz monotonic, align 2
  %i.db = icmp eq i16 %i.da, 128
  br i1 %i.db, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = trunc i32 %i.dd to i1
  br i1 %i.de, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.x
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.df = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.df, ptr %3, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i4, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.cq, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 -1, i64 16, i1 false)
  %i.dr = load atomic volatile i64, ptr %i.cw monotonic, align 8
  %i.ds = add i64 %i.dr, 11
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load atomic volatile i16, ptr %i.dt monotonic, align 2
  %i.dv = and i16 %i.du, -96
  %.not.i21.i.i = icmp eq i16 %i.dv, 32
  br i1 %.not.i21.i.i, label %bb.y, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.y:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.dw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !12, !noundef !13
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.dz = load i8, ptr %i.dy, align 8, !range !12
  %i.ea = trunc nuw i8 %i.dz to i1
  %not..i.i.i23.i.i = xor i1 %i.dx, true
  %i.eb = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ea
  br i1 %i.eb, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.ed = load i8, ptr %i.ec, align 8, !range !12, !noundef !13
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.eg = load ptr, ptr %i.ef, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.y
  %.pn.i.i26.i.i = phi ptr [ %i.eg, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.y ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.eh = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ei = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ct) #18
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ei, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.ct, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.dl, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #18
  %i.ej = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %3) #18 ; 2 uses
  %i.ek = trunc i16 %i.ej to i1
  br i1 %i.ek, label %_ZNO2v85MaybeIbE8FromJustEv.exit, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #18
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit

_ZNO2v85MaybeIbE8FromJustEv.exit:                 ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.ab
  %i.el = and i16 %i.ej, 256
  %.not55 = icmp eq i16 %i.el, 0
  br i1 %.not55, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.0.i.i4, ptr nonnull %i.ct, ptr nonnull %i.em, i32 noundef 0) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNO2v85MaybeIbE8FromJustEv.exit
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.eo = load i64, ptr %i.en, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
end_hunk_1
begin_hunk_2_@_ZN2v88internal29Runtime_WasmStringMeasureUtf8EiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit

bb.aa:                                            ; preds = %bb.z
  %i.fd = and i32 %.012.i, 2096128
  %i.fe = icmp eq i32 %i.fd, 55296
  %i.ff = and i32 %i.fa, 64512
  %i.fg = icmp eq i32 %i.ff, 56320
  %i.fh = and i1 %i.fe, %i.fg
  %..i.i = select i1 %i.fh, i32 1, i32 3
  br label %_ZN7unibrow4Utf86LengthEji.exit.i15

_ZN7unibrow4Utf86LengthEji.exit.i15:              ; preds = %bb.aa, %bb.z, %.lr.ph.i
  %.0.i.i16 = phi i32 [ 2, %bb.z ], [ 1, %.lr.ph.i ], [ %..i.i, %bb.aa ]
  %i.fi = add i32 %.0.i.i16, %.0910.i14           ; 2 uses
  %i.fj = add nuw nsw i64 %.0811.i13, 1           ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.fj, %i.df
  br i1 %exitcond.not.i17, label %_ZN2v88internalL39__RT_impl_Runtime_WasmStringMeasureUtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit, label %.lr.ph.i, !llvm.loop !112

_ZN2v88internalL39__RT_impl_Runtime_WasmStringMeasureUtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %_ZN7unibrow4Utf86LengthEji.exit.i15, %_ZN7unibrow4Utf86LengthEji.exit.i, %middle.block, %middle.block219, %bb.x, %bb.y, %bb.w
  %.1.i = phi i32 [ %i.dt, %_ZN7unibrow4Utf86LengthEji.exit.i ], [ 0, %bb.w ], [ -1, %bb.x ], [ 0, %bb.y ], [ %i.dp, %middle.block219 ], [ %i.ex, %middle.block ], [ %i.fi, %_ZN7unibrow4Utf86LengthEji.exit.i15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.fk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fl = load ptr, ptr %i.c, align 8
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %bb.ab, label %bb.ac, !prof !8

bb.ab:                                            ; preds = %_ZN2v88internalL39__RT_impl_Runtime_WasmStringMeasureUtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  %i.fn = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN2v88internalL39__RT_impl_Runtime_WasmStringMeasureUtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  %.0.i.i.i.i = phi ptr [ %i.fn, %bb.ab ], [ %i.fk, %_ZN2v88internalL39__RT_impl_Runtime_WasmStringMeasureUtf8ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit ]
  %i.fo = sext i32 %.1.i to i64
  %i.fp = shl nsw i64 %i.fo, 32                   ; 2 uses
  store i64 %i.fp, ptr %.0.i.i.i.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.fq = load i32, ptr %i.e, align 8
  %i.fr = add nsw i32 %i.fq, -1
  store i32 %i.fr, ptr %i.e, align 8
  %i.fs = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.fs, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.ad, !prof !9

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.ad, %bb.ac
  ret i64 %i.fp
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 -9223372036854775808, 9223372032559808513) i64 @_ZN2v88internal29Runtime_WasmStringMeasureWtf8EiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.a, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.a
  %.0.i.i = phi ptr [ %i.j, %bb.a ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  %i.n = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_111MeasureWtf8EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull %2, ptr nonnull %.0.i.i)
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.r = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.i.i.i.i = phi ptr [ %i.r, %bb.b ], [ %i.o, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.s = sext i32 %i.n to i64
  %i.t = shl nsw i64 %i.s, 32                     ; 2 uses
  store i64 %i.t, ptr %.0.i.i.i.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.u = load i32, ptr %i.e, align 8
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.e, align 8
  %i.w = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.w, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %bb.c
  ret i64 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal28Runtime_WasmStringEncodeWtf8EiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 5 uses
  %5 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = load i64, ptr %1, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit3, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit3: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.k = add i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %.not35 = icmp eq i32 %0, 1
  br i1 %.not35, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit, !prof !8

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit3
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit3
  %i.n = add i64 %i.j, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 32
  %i.r = icmp ugt i32 %0, 2
  br i1 %i.r, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.s = add i64 %i.j, -24
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq ptr %i.c, %i.e
  br i1 %i.v, label %bb.d, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, %bb.d
  %.0.i.i = phi ptr [ %i.w, %bb.d ], [ %i.c, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2 ] ; 4 uses
  %i.x = ptrtoint ptr %.0.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.b, align 8
  store i64 %i.u, ptr %.0.i.i, align 8
  %.not36 = icmp eq i32 %0, 3
  br i1 %.not36, label %bb.e, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit, !prof !8

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.aa = add i64 %i.j, -32
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = and i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.af = lshr i64 %i.ac, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = sitofp i32 %i.ag to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.ai = add nsw i64 %i.ac, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ak, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.f, %bb.g
  %i.al = phi double [ %i.ah, %bb.f ], [ %.0.copyload.i.i.i.i.i.i, %bb.g ]
  %i.am = fptoui double %i.al to i64              ; 5 uses
  %i.an = add i64 %i.i, 119
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = shl i64 %i.m, 1
  %i.au = ashr i64 %i.at, 29                      ; 2 uses
  %i.av = and i64 %i.au, -16
  %i.aw = and i64 %i.au, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  %.0.copyload.i.i.i = load i64, ptr %i.ax, align 1
  %i.ay = inttoptr i64 %.0.copyload.i.i.i to ptr  ; 2 uses
  %i.az = trunc i64 %i.q to i8                    ; 2 uses
  %i.ba = add i64 %i.u, -1
  %i.bb = inttoptr i64 %i.ba to ptr               ; 3 uses
  %i.bc = load atomic volatile i64, ptr %i.bb acquire, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2 ; 3 uses
  %i.bg = and i16 %i.bf, -127
  %.not.i4 = icmp eq i16 %i.bg, 1
  br i1 %.not.i4, label %bb.h, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, !prof !8

bb.h:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.bh = and i16 %i.bf, 7
  %i.bi = icmp eq i16 %i.bh, 1
  br i1 %i.bi, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = add i64 %i.br, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i64, ptr %i.bt acquire, align 8
  %i.bv = add i64 %i.bu, 11
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i16, ptr %i.bw monotonic, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %2, ptr nonnull %.0.i.i, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

bb.k:                                             ; preds = %.thread.i, %bb.h
  %.sroa.037.0.i = phi i16 [ %i.bx, %.thread.i ], [ %i.bf, %bb.h ]
  %.sroa.012.1.i.i = phi i64 [ %i.br, %.thread.i ], [ %i.u, %bb.h ] ; 2 uses
  %i.bz = and i16 %.sroa.037.0.i, -121
  %i.ca = icmp eq i16 %i.bz, 5
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cb = add i64 %.sroa.012.1.i.i, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.012.2.i.i = phi i64 [ %i.ce, %bb.l ], [ %.sroa.012.1.i.i, %bb.k ]
  %i.cf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cg = load ptr, ptr %i.d, align 8
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.n, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.ci = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.ci, %bb.n ], [ %i.cf, %bb.m ] ; 3 uses
  %i.cj = ptrtoint ptr %.0.i.i.i to i64
  %i.ck = add i64 %i.cj, 8
  %i.cl = inttoptr i64 %i.ck to ptr
  store ptr %i.cl, ptr %i.b, align 8
  store i64 %.sroa.012.2.i.i, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.j, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %.sroa.042.1.i = phi ptr [ %i.by, %bb.j ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %.0.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.cm = load i64, ptr %.sroa.042.1.i, align 8
  %i.cn = add i64 %i.cm, -1
  %i.co = inttoptr i64 %i.cn to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !139, !noalias !138
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !noalias !140
  %i.cr = load atomic volatile i64, ptr %i.co acquire, align 8, !noalias !141
  %i.cs = add i64 %i.cr, 11
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load atomic volatile i16, ptr %i.ct monotonic, align 2, !noalias !141
  %i.cv = and i16 %i.cu, 15
  switch i16 %i.cv, label %bb.y [
    i16 8, label %bb.o
    i16 0, label %bb.p
    i16 9, label %bb.z
    i16 1, label %bb.z
    i16 10, label %bb.q
    i16 2, label %bb.u
    i16 11, label %bb.z
    i16 3, label %bb.z
    i16 13, label %bb.z
    i16 5, label %bb.z
  ]

bb.o:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.p:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.q:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !142
  %i.da = inttoptr i64 %i.cz to ptr               ; 6 uses
  %i.db = load atomic volatile i64, ptr %i.co monotonic, align 8, !noalias !142
  %i.dc = add i64 %i.db, 11
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i16, ptr %i.dd monotonic, align 2, !noalias !142
  %i.df = and i16 %i.de, 16
  %.not.i.i = icmp eq i16 %i.df, 0
  br i1 %.not.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = load ptr, ptr %i.da, align 8, !noalias !142
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !142
  %i.dj = tail call noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.da) #18, !noalias !142, !inline_history !132
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #18, !noalias !142
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !142
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.dm = load ptr, ptr %i.da, align 8, !noalias !142
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !142
  %i.dp = tail call noundef ptr %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #18, !noalias !142, !inline_history !132
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.u:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !143
  %i.ds = inttoptr i64 %i.dr to ptr               ; 6 uses
  %i.dt = load atomic volatile i64, ptr %i.co monotonic, align 8, !noalias !143
  %i.du = add i64 %i.dt, 11
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i16, ptr %i.dv monotonic, align 2, !noalias !143
  %i.dx = and i16 %i.dw, 16
  %.not.i22.i = icmp eq i16 %i.dx, 0
  br i1 %.not.i22.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = load ptr, ptr %i.ds, align 8, !noalias !143
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !143
  %i.eb = tail call noundef zeroext i1 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #18, !noalias !143, !inline_history !135
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #18, !noalias !143
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !143
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ee = load ptr, ptr %i.ds, align 8, !noalias !143
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !143
  %i.eh = tail call noundef ptr %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #18, !noalias !143, !inline_history !135
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.y:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.25) #19, !noalias !144
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i: ; preds = %bb.x, %bb.w, %bb.t, %bb.s, %bb.p, %bb.o
end_hunk_2
begin_hunk_3_@_ZN2v88internal28Runtime_WasmStringEncodeWtf8EiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.0.i.i26.i = phi i64 [ %.sroa.speculated.i.i.i, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ] ; 4 uses
  %i.fy = icmp samesign ult i64 %.0.i.i26.i, %i.ex
  br i1 %i.fy, label %.lr.ph.i.i.i, label %_ZN7unibrow4Utf86EncodeIhEENS0_14EncodingResultEN2v84base6VectorIKT_EEPcmbb.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aj, %bb.am
  %.158.i.i.i = phi i64 [ %i.gk, %bb.am ], [ %.0.i.i26.i, %bb.aj ] ; 4 uses
  %.14057.i.i.i = phi i64 [ %i.gl, %bb.am ], [ %.0.i.i26.i, %bb.aj ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.14057.i.i.i
  %i.ga = load i8, ptr %i.fz, align 1             ; 4 uses
  %i.gb = icmp sgt i8 %i.ga, -1                   ; 2 uses
  %i.gc = select i1 %i.gb, i64 1, i64 2
  %i.gd = sub i64 %i.fw, %.158.i.i.i
  %i.ge = icmp ult i64 %i.gd, %i.gc
  br i1 %i.ge, label %_ZN7unibrow4Utf86EncodeIhEENS0_14EncodingResultEN2v84base6VectorIKT_EEPcmbb.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.158.i.i.i ; 2 uses
  br i1 %i.gb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gg = lshr i8 %i.ga, 6
  %i.gh = or disjoint i8 %i.gg, -64
  %i.gi = and i8 %i.ga, -65
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  store i8 %i.gi, ptr %i.gj, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink.i.i.i.i = phi i8 [ %i.gh, %bb.al ], [ %i.ga, %bb.ak ]
  %.0.i.i.i.i = phi i64 [ 2, %bb.al ], [ 1, %bb.ak ]
  store i8 %.sink.i.i.i.i, ptr %i.gf, align 1
  %i.gk = add i64 %.0.i.i.i.i, %.158.i.i.i        ; 2 uses
  %i.gl = add i64 %.14057.i.i.i, 1                ; 2 uses
  %exitcond.not.i25.i.i = icmp eq i64 %i.gl, %i.ex
  br i1 %exitcond.not.i25.i.i, label %_ZN7unibrow4Utf86EncodeIhEENS0_14EncodingResultEN2v84base6VectorIKT_EEPcmbb.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN7unibrow4Utf86EncodeIhEENS0_14EncodingResultEN2v84base6VectorIKT_EEPcmbb.exit.i.i: ; preds = %bb.am, %.lr.ph.i.i.i, %bb.aj
  %.1.lcssa.i.i.i = phi i64 [ %.0.i.i26.i, %bb.aj ], [ %i.gk, %bb.am ], [ %.158.i.i.i, %.lr.ph.i.i.i ]
  %i.gm = trunc i64 %.1.lcssa.i.i.i to i32
  br label %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i

bb.an:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  %i.gn = call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_110EncodeWtf8ItEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_(ptr %i.ay, i64 %.0.copyload.i.i.i.i.i, i64 noundef %i.am, ptr %i.eu, i64 %i.ex, i8 noundef zeroext %i.az, ptr noundef nonnull %i.a, i32 noundef 433)
  br label %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i

_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i: ; preds = %bb.an, %_ZN7unibrow4Utf86EncodeIhEENS0_14EncodingResultEN2v84base6VectorIKT_EEPcmbb.exit.i.i
  %i.go = phi i32 [ %i.gn, %bb.an ], [ %i.gm, %_ZN7unibrow4Utf86EncodeIhEENS0_14EncodingResultEN2v84base6VectorIKT_EEPcmbb.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit._crit_edge.i, label %bb.ap

_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit._crit_edge.i: ; preds = %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i
  %.pre.i = load i32, ptr %i.a, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit._crit_edge.i, %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.thread.i
  %i.gq = phi i32 [ %.pre.i, %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit._crit_edge.i ], [ 433, %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.thread.i ]
  %i.gr = call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.gq, ptr null, i64 0) #18 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.gr, ptr nonnull %i.gs, ptr nonnull %i.gt, i32 noundef 0) #18
  %i.gu = load i64, ptr %i.gr, align 8
  %i.gv = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.gu, ptr noundef null) #18
  br label %bb.ar

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i
  %i.gw = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.gx = load ptr, ptr %i.d, align 8
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.aq, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i, !prof !8

bb.aq:                                            ; preds = %bb.ap
  %i.gz = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i = phi ptr [ %i.gz, %bb.aq ], [ %i.gw, %bb.ap ]
  %i.ha = zext nneg i32 %i.go to i64
  %i.hb = shl nuw nsw i64 %i.ha, 32               ; 2 uses
  store i64 %i.hb, ptr %.0.i.i.i.i.i, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i, %bb.ao
  %.sroa.021.0.i = phi i64 [ %i.gv, %bb.ao ], [ %i.hb, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store ptr %i.c, ptr %i.b, align 8
  %i.hc = load i32, ptr %i.f, align 8
  %i.hd = add nsw i32 %i.hc, -1
  store i32 %i.hd, ptr %i.f, align 8
  %i.he = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.he, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.as, !prof !9

bb.as:                                            ; preds = %bb.ar
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.as, %bb.ar
  ret i64 %.sroa.021.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal33Runtime_WasmStringEncodeWtf8ArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 5 uses
  %5 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 32
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.l = add i64 %i.k, -8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.c, %i.e
  br i1 %i.o, label %bb.c, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.c
  %.0.i.i4 = phi ptr [ %i.p, %bb.c ], [ %i.c, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 5 uses
  %i.q = ptrtoint ptr %.0.i.i4 to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.b, align 8
  store i64 %i.n, ptr %.0.i.i4, align 8
  %.not28 = icmp eq i32 %0, 1
  br i1 %.not28, label %bb.d, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = add i64 %i.k, -16
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, %bb.e
  %.0.i.i = phi ptr [ %i.z, %bb.e ], [ %i.w, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2 ] ; 3 uses
  %i.aa = ptrtoint ptr %.0.i.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.b, align 8
  store i64 %i.v, ptr %.0.i.i, align 8
  %i.ad = icmp ugt i32 %0, 2
  br i1 %i.ad, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, label %bb.f, !prof !9

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZN2v88internal6HandleINS0_9WasmArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ae = add i64 %i.k, -24
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i64 %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.aj = lshr i64 %i.ag, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.h:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.al = add nsw i64 %i.ag, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.an, align 2 ; 5 uses
  %i.ao = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.ap = fcmp one double %i.ao, +inf
  %i.aq = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.aq, %i.ap
  %i.ar = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.ar, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.j:                                             ; preds = %bb.h
  %i.at = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.au = and i64 %i.at, 9218868437227405312
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  %i.aw = lshr i64 %i.at, 52
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 2047
  %i.az = add nsw i32 %i.ay, -1075
  %.0.i.i.i.i = select i1 %i.av, i32 -1074, i32 %i.az ; 5 uses
  %i.ba = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.bb, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = and i64 %i.at, 4503599627370495         ; 2 uses
  %i.bd = or disjoint i64 %i.bc, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.av, i64 %i.bc, i64 %i.bd
  %i.be = sub nsw i32 0, %.0.i.i.i.i
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %.0.i17.i.i.i, %i.bf
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.bh = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.bh, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = zext nneg i32 %.0.i.i.i.i to i64
  %i.bj = shl i64 %i.at, %i.bi
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0.i.i.i = phi i64 [ %i.bg, %bb.l ], [ %i.bj, %bb.n ]
  %i.bk = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.bl = sub i32 0, %i.bk
  %i.bm = icmp slt i64 %i.at, 0
  %i.bn = select i1 %i.bm, i32 %i.bl, i32 %i.bk
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.o
  %.0.i5 = phi i32 [ %i.ak, %bb.g ], [ %i.as, %bb.i ], [ 0, %bb.k ], [ %i.bn, %bb.o ], [ 0, %bb.m ]
  %i.bo = trunc i64 %i.j to i8                    ; 2 uses
  %i.bp = zext i32 %.0.i5 to i64                  ; 5 uses
  %i.bq = load i64, ptr %.0.i.i4, align 8         ; 2 uses
  %i.br = add i64 %i.bq, -1
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  %i.bt = load atomic volatile i64, ptr %i.bs acquire, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2 ; 3 uses
  %i.bx = and i16 %i.bw, -127
  %.not.i6 = icmp eq i16 %i.bx, 1
  br i1 %.not.i6, label %bb.p, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, !prof !8

bb.p:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.by = and i16 %i.bw, 7
  %i.bz = icmp eq i16 %i.by, 1
  br i1 %i.bz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = add i64 %i.cb, -1
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread.i, label %bb.r

.thread.i:                                        ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = add i64 %i.ci, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck acquire, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cp = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %2, ptr nonnull %.0.i.i4, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

bb.s:                                             ; preds = %.thread.i, %bb.p
  %.sroa.038.0.i = phi i16 [ %i.co, %.thread.i ], [ %i.bw, %bb.p ]
  %.sroa.012.1.i.i = phi i64 [ %i.ci, %.thread.i ], [ %i.bq, %bb.p ] ; 2 uses
  %i.cq = and i16 %.sroa.038.0.i, -121
  %i.cr = icmp eq i16 %i.cq, 5
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cs = add i64 %.sroa.012.1.i.i, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.012.2.i.i = phi i64 [ %i.cv, %bb.t ], [ %.sroa.012.1.i.i, %bb.s ]
  %i.cw = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cx = load ptr, ptr %i.d, align 8
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.v, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.cz = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i8 = phi ptr [ %i.cz, %bb.v ], [ %i.cw, %bb.u ] ; 3 uses
  %i.da = ptrtoint ptr %.0.i.i.i8 to i64
  %i.db = add i64 %i.da, 8
  %i.dc = inttoptr i64 %i.db to ptr
  store ptr %i.dc, ptr %i.b, align 8
  store i64 %.sroa.012.2.i.i, ptr %.0.i.i.i8, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.r, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.043.1.i = phi ptr [ %i.cp, %bb.r ], [ %.0.i.i.i8, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %.0.i.i4, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.dd = load i64, ptr %.sroa.043.1.i, align 8
  %i.de = add i64 %i.dd, -1
  %i.df = inttoptr i64 %i.de to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !164, !noalias !163
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !noalias !165
  %i.di = load atomic volatile i64, ptr %i.df acquire, align 8, !noalias !166
  %i.dj = add i64 %i.di, 11
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load atomic volatile i16, ptr %i.dk monotonic, align 2, !noalias !166
  %i.dm = and i16 %i.dl, 15
  switch i16 %i.dm, label %bb.ag [
    i16 8, label %bb.w
    i16 0, label %bb.x
    i16 9, label %bb.ah
    i16 1, label %bb.ah
    i16 10, label %bb.y
    i16 2, label %bb.ac
    i16 11, label %bb.ah
    i16 3, label %bb.ah
    i16 13, label %bb.ah
    i16 5, label %bb.ah
  ]

bb.w:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.x:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.y:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !167
  %i.dr = inttoptr i64 %i.dq to ptr               ; 6 uses
  %i.ds = load atomic volatile i64, ptr %i.df monotonic, align 8, !noalias !167
  %i.dt = add i64 %i.ds, 11
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load atomic volatile i16, ptr %i.du monotonic, align 2, !noalias !167
  %i.dw = and i16 %i.dv, 16
  %.not.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = load ptr, ptr %i.dr, align 8, !noalias !167
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !167
  %i.ea = tail call noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dr) #18, !noalias !167, !inline_history !157
  br i1 %i.ea, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #18, !noalias !167
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !167
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.ed = load ptr, ptr %i.dr, align 8, !noalias !167
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !167
end_hunk_3
begin_hunk_4_@_ZN2v88internal29Runtime_WasmStringToUtf8ArrayEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.gc = icmp eq <4 x i32> %i.ga, splat (i32 55296)
  %i.gd = icmp eq <4 x i32> %i.gb, splat (i32 55296)
  %i.ge = and <4 x i32> %i.fu, splat (i32 64512)
  %i.gf = and <4 x i32> %i.fv, splat (i32 64512)
  %i.gg = icmp eq <4 x i32> %i.ge, splat (i32 56320)
  %i.gh = icmp eq <4 x i32> %i.gf, splat (i32 56320)
  %i.gi = and <4 x i1> %i.gc, %i.gg
  %i.gj = and <4 x i1> %i.gd, %i.gh
  %i.gk = select <4 x i1> %i.gi, <4 x i32> splat (i32 1), <4 x i32> splat (i32 3)
  %i.gl = select <4 x i1> %i.gj, <4 x i32> splat (i32 1), <4 x i32> splat (i32 3)
  %i.gm = add <4 x i16> %wide.load, splat (i16 -128)
  %i.gn = icmp ult <4 x i16> %i.gm, splat (i16 1920)
  %i.go = add <4 x i16> %wide.load45, splat (i16 -128)
  %i.gp = icmp ult <4 x i16> %i.go, splat (i16 1920)
  %predphi = select <4 x i1> %i.gn, <4 x i32> splat (i32 2), <4 x i32> %i.gk
  %predphi46 = select <4 x i1> %i.fy, <4 x i32> %predphi, <4 x i32> splat (i32 1)
  %predphi47 = select <4 x i1> %i.gp, <4 x i32> splat (i32 2), <4 x i32> %i.gl
  %predphi48 = select <4 x i1> %i.fz, <4 x i32> %predphi47, <4 x i32> splat (i32 1)
  %i.gq = add <4 x i32> %predphi46, %vec.phi      ; 2 uses
  %i.gr = add <4 x i32> %predphi48, %vec.phi44    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.gr, %i.gq
  %i.gt = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %i.fv, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.ek
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i, label %.lr.ph.i.i31.i.preheader69

.lr.ph.i.i31.i.preheader69:                       ; preds = %.lr.ph.i.i31.i.preheader, %middle.block
  %.012.i.i.i.ph = phi i32 [ -1, %.lr.ph.i.i31.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.0811.i.i32.i.ph = phi i64 [ 0, %.lr.ph.i.i31.i.preheader ], [ %n.vec, %middle.block ]
  %.0910.i.i33.i.ph = phi i32 [ 0, %.lr.ph.i.i31.i.preheader ], [ %i.gt, %middle.block ]
  br label %.lr.ph.i.i31.i

.lr.ph.i.i31.i:                                   ; preds = %.lr.ph.i.i31.i.preheader69, %_ZN7unibrow4Utf86LengthEji.exit.i.i34.i
  %.012.i.i.i = phi i32 [ %i.gw, %_ZN7unibrow4Utf86LengthEji.exit.i.i34.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i31.i.preheader69 ]
  %.0811.i.i32.i = phi i64 [ %i.hf, %_ZN7unibrow4Utf86LengthEji.exit.i.i34.i ], [ %.0811.i.i32.i.ph, %.lr.ph.i.i31.i.preheader69 ] ; 2 uses
  %.0910.i.i33.i = phi i32 [ %i.he, %_ZN7unibrow4Utf86LengthEji.exit.i.i34.i ], [ %.0910.i.i33.i.ph, %.lr.ph.i.i31.i.preheader69 ]
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %.0811.i.i32.i
  %i.gv = load i16, ptr %i.gu, align 2            ; 3 uses
  %i.gw = zext i16 %i.gv to i32                   ; 2 uses
  %i.gx = icmp ult i16 %i.gv, 128
  br i1 %i.gx, label %_ZN7unibrow4Utf86LengthEji.exit.i.i34.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i31.i
  %i.gy = icmp ult i16 %i.gv, 2048
  br i1 %i.gy, label %_ZN7unibrow4Utf86LengthEji.exit.i.i34.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = and i32 %.012.i.i.i, 2096128
  %i.ha = icmp eq i32 %i.gz, 55296
  %i.hb = and i32 %i.gw, 64512
  %i.hc = icmp eq i32 %i.hb, 56320
  %i.hd = and i1 %i.ha, %i.hc
  %..i.i.i.i = select i1 %i.hd, i32 1, i32 3
  br label %_ZN7unibrow4Utf86LengthEji.exit.i.i34.i

_ZN7unibrow4Utf86LengthEji.exit.i.i34.i:          ; preds = %bb.ag, %bb.af, %.lr.ph.i.i31.i
  %.0.i.i.i35.i = phi i32 [ 2, %bb.af ], [ 1, %.lr.ph.i.i31.i ], [ %..i.i.i.i, %bb.ag ]
  %i.he = add i32 %.0.i.i.i35.i, %.0910.i.i33.i   ; 2 uses
  %i.hf = add nuw i64 %.0811.i.i32.i, 1           ; 2 uses
  %exitcond.not.i.i36.i = icmp eq i64 %i.hf, %i.ek
  br i1 %exitcond.not.i.i36.i, label %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i, label %.lr.ph.i.i31.i, !llvm.loop !189

_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i: ; preds = %_ZN7unibrow4Utf86LengthEji.exit.i.i34.i, %middle.block
  %.lcssa43 = phi i32 [ %i.gt, %middle.block ], [ %i.he, %_ZN7unibrow4Utf86LengthEji.exit.i.i34.i ]
  %i.hg = sext i32 %.lcssa43 to i64
  %.not.i23.i38.not.i = icmp ult i64 %i.ed, %i.hg
  br i1 %.not.i23.i38.not.i, label %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.thread.i, label %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.thread.i

_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i, %bb.ae
  %i.hh = call { i64, i64 } @_ZN7unibrow4Utf86EncodeItEENS0_14EncodingResultEN2v84base6VectorIKT_EEPcmbb(ptr %i.eh, i64 %i.ek, ptr noundef %i.ec, i64 noundef %i.ed, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.hi = extractvalue { i64, i64 } %i.hh, 0
  br label %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i

_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8IhEEiNS_4base6VectorIKT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ah

_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i: ; preds = %bb.ad, %.lr.ph.i.i.i, %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.thread.i, %bb.aa
  %.in.i = phi i64 [ %i.hi, %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.thread.i ], [ %.0.i.i26.i, %bb.aa ], [ %i.fp, %bb.ad ], [ %.158.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.hj = and i64 %.in.i, 2147483648
  %.not202.i = icmp eq i64 %i.hj, 0
  br i1 %.not202.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i, %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.thread.i
  %i.hk = call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 0, ptr null, i64 0) #18 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.hk, ptr nonnull %i.hl, ptr nonnull %i.hm, i32 noundef 0) #18
  %i.hn = load i64, ptr %i.hk, align 8
  %i.ho = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.hn, ptr noundef null) #18 ; 0 uses
  br label %bb.ak

bb.ai:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i
  %i.hp = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hq = load ptr, ptr %i.c, align 8
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %bb.aj, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i, !prof !8

bb.aj:                                            ; preds = %bb.ai
  %i.hs = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i = phi ptr [ %i.hs, %bb.aj ], [ %i.hp, %bb.ai ] ; 2 uses
  %i.ht = shl i64 %.in.i, 32
  %i.hu = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.hv = add i64 %i.hu, 8
  %i.hw = inttoptr i64 %i.hv to ptr
  store ptr %i.hw, ptr %i.a, align 8
  store i64 %i.ht, ptr %.0.i.i.i.i.i, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i, %bb.ah
  %i.hx = load i64, ptr %i.ag, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.hy = load i32, ptr %i.e, align 8
  %i.hz = add nsw i32 %i.hy, -1
  store i32 %i.hz, ptr %i.e, align 8
  %i.ia = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ia, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.al, !prof !9

bb.al:                                            ; preds = %bb.ak
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i64 %i.hx
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Runtime_WasmStringEncodeWtf16EiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit5, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit5: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.i = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.j = add i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %.not40 = icmp eq i32 %0, 1
  br i1 %.not40, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !8

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit5
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit5
  %i.m = add i64 %i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp ugt i32 %0, 2
  br i1 %i.p, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.q = add i64 %i.i, -24
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = and i64 %i.s, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.v = lshr i64 %i.s, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = sitofp i32 %i.w to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.y = add nsw i64 %i.s, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.aa, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi double [ %i.x, %bb.d ], [ %.0.copyload.i.i.i.i.i.i, %bb.e ]
  %i.ac = fptoui double %i.ab to i64              ; 3 uses
  %.not41 = icmp eq i32 %0, 3
  br i1 %.not41, label %bb.f, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit4, !prof !8

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit4: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.ad = add i64 %i.i, -32
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = icmp ugt i32 %0, 4
  br i1 %i.ai, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit4
  %i.aj = add i64 %i.i, -40
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = lshr i64 %i.al, 32                      ; 2 uses
  %i.an = trunc nuw i64 %i.am to i32
  %i.ao = add i64 %i.h, 119
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = shl i64 %i.l, 1
  %i.av = ashr i64 %i.au, 29                      ; 2 uses
  %i.aw = and i64 %i.av, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.ay, align 1 ; 2 uses
  %i.az = shl nuw nsw i64 %i.am, 1                ; 2 uses
  %.not.i6 = icmp ule i64 %i.az, %.0.copyload.i.i.i
  %i.ba = sub nuw i64 %.0.copyload.i.i.i, %i.az
  %i.bb = icmp uge i64 %i.ba, %i.ac
  %i.bc = select i1 %.not.i6, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.bd = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 433, ptr null, i64 0) #18 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.bd, ptr nonnull %i.be, ptr nonnull %i.bf, i32 noundef 0) #18
  %i.bg = load i64, ptr %i.bd, align 8
  %i.bh = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bg, ptr noundef null) #18
  br label %_ZN2v88internalL39__RT_impl_Runtime_WasmStringEncodeWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.i:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.bi = and i64 %i.ac, 1
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 434, ptr null, i64 0) #18 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.bj, ptr nonnull %i.bk, ptr nonnull %i.bl, i32 noundef 0) #18
  %i.bm = load i64, ptr %i.bj, align 8
  %i.bn = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bm, ptr noundef null) #18
  br label %_ZN2v88internalL39__RT_impl_Runtime_WasmStringEncodeWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.k:                                             ; preds = %bb.i
  %i.bo = and i64 %i.av, -16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bo
  %.0.copyload.i.i.i8 = load i64, ptr %i.bp, align 1
  %i.bq = inttoptr i64 %.0.copyload.i.i.i8 to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ac
  tail call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.o, ptr noundef %i.br, i32 noundef %i.ah, i32 noundef %i.an) #18
  br label %_ZN2v88internalL39__RT_impl_Runtime_WasmStringEncodeWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL39__RT_impl_Runtime_WasmStringEncodeWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.j, %bb.h
  %.sroa.027.0 = phi i64 [ 0, %bb.k ], [ %i.bn, %bb.j ], [ %i.bh, %bb.h ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bs = load i32, ptr %i.e, align 8
  %i.bt = add nsw i32 %i.bs, -1
  store i32 %i.bt, ptr %i.e, align 8
  %i.bu = load ptr, ptr %i.c, align 8
  %.not.i3 = icmp eq ptr %i.bu, %i.d
  br i1 %.not.i3, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.l, !prof !9

bb.l:                                             ; preds = %_ZN2v88internalL39__RT_impl_Runtime_WasmStringEncodeWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.l, %_ZN2v88internalL39__RT_impl_Runtime_WasmStringEncodeWtf16ENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.027.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal24Runtime_WasmStringAsWtf8EiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 5 uses
  %5 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.a, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.a
  %.0.i.i = phi ptr [ %i.j, %bb.a ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 6 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  %i.n = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_111MeasureWtf8EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull %2, ptr nonnull %.0.i.i) ; 4 uses
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.n, i8 noundef zeroext 0, i8 noundef zeroext 0) #18 ; 2 uses
  %i.p = load i64, ptr %.0.i.i, align 8           ; 2 uses
  %i.q = add i64 %i.p, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = load atomic volatile i64, ptr %i.r acquire, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2 ; 3 uses
  %i.w = and i16 %i.v, -127
  %.not.i2 = icmp eq i16 %i.w, 1
  br i1 %.not.i2, label %bb.b, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, !prof !8

bb.b:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.x = and i16 %i.v, 7
  %i.y = icmp eq i16 %i.x, 1
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = add i64 %i.ah, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj acquire, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %2, ptr nonnull %.0.i.i, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

bb.e:                                             ; preds = %.thread.i, %bb.b
  %.sroa.050.0.i = phi i16 [ %i.an, %.thread.i ], [ %i.v, %bb.b ]
  %.sroa.012.1.i.i = phi i64 [ %i.ah, %.thread.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.ap = and i16 %.sroa.050.0.i, -121
  %i.aq = icmp eq i16 %i.ap, 5
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = add i64 %.sroa.012.1.i.i, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.012.2.i.i = phi i64 [ %i.au, %bb.f ], [ %.sroa.012.1.i.i, %bb.e ]
  %i.av = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.c, align 8
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.ay = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.ay, %bb.h ], [ %i.av, %bb.g ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal24Runtime_WasmStringAsWtf8EiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %predphi = select <4 x i1> %i.fp, <4 x i32> splat (i32 2), <4 x i32> %i.fm
  %predphi32 = select <4 x i1> %i.fa, <4 x i32> %predphi, <4 x i32> splat (i32 1)
  %predphi33 = select <4 x i1> %i.fr, <4 x i32> splat (i32 2), <4 x i32> %i.fn
  %predphi34 = select <4 x i1> %i.fb, <4 x i32> %predphi33, <4 x i32> splat (i32 1)
  %i.fs = add <4 x i32> %predphi32, %vec.phi      ; 2 uses
  %i.ft = add <4 x i32> %predphi34, %vec.phi30    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ft, %i.fs
  %i.fv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %i.ex, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.dn
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i, label %.lr.ph.i.i32.i.preheader55

.lr.ph.i.i32.i.preheader55:                       ; preds = %.lr.ph.i.i32.i.preheader, %middle.block
  %.012.i.i.i.ph = phi i32 [ -1, %.lr.ph.i.i32.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.0811.i.i33.i.ph = phi i64 [ 0, %.lr.ph.i.i32.i.preheader ], [ %n.vec, %middle.block ]
  %.0910.i.i34.i.ph = phi i32 [ 0, %.lr.ph.i.i32.i.preheader ], [ %i.fv, %middle.block ]
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i.preheader55, %_ZN7unibrow4Utf86LengthEji.exit.i.i35.i
  %.012.i.i.i = phi i32 [ %i.fy, %_ZN7unibrow4Utf86LengthEji.exit.i.i35.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i32.i.preheader55 ]
  %.0811.i.i33.i = phi i64 [ %i.gh, %_ZN7unibrow4Utf86LengthEji.exit.i.i35.i ], [ %.0811.i.i33.i.ph, %.lr.ph.i.i32.i.preheader55 ] ; 2 uses
  %.0910.i.i34.i = phi i32 [ %i.gg, %_ZN7unibrow4Utf86LengthEji.exit.i.i35.i ], [ %.0910.i.i34.i.ph, %.lr.ph.i.i32.i.preheader55 ]
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %.0811.i.i33.i
  %i.fx = load i16, ptr %i.fw, align 2            ; 3 uses
  %i.fy = zext i16 %i.fx to i32                   ; 2 uses
  %i.fz = icmp ult i16 %i.fx, 128
  br i1 %i.fz, label %_ZN7unibrow4Utf86LengthEji.exit.i.i35.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i32.i
  %i.ga = icmp ult i16 %i.fx, 2048
  br i1 %i.ga, label %_ZN7unibrow4Utf86LengthEji.exit.i.i35.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gb = and i32 %.012.i.i.i, 2096128
  %i.gc = icmp eq i32 %i.gb, 55296
  %i.gd = and i32 %i.fy, 64512
  %i.ge = icmp eq i32 %i.gd, 56320
  %i.gf = and i1 %i.gc, %i.ge
  %..i.i.i.i = select i1 %i.gf, i32 1, i32 3
  br label %_ZN7unibrow4Utf86LengthEji.exit.i.i35.i

_ZN7unibrow4Utf86LengthEji.exit.i.i35.i:          ; preds = %bb.af, %bb.ae, %.lr.ph.i.i32.i
  %.0.i.i.i36.i = phi i32 [ 2, %bb.ae ], [ 1, %.lr.ph.i.i32.i ], [ %..i.i.i.i, %bb.af ]
  %i.gg = add i32 %.0.i.i.i36.i, %.0910.i.i34.i   ; 2 uses
  %i.gh = add nuw i64 %.0811.i.i33.i, 1           ; 2 uses
  %exitcond.not.i.i37.i = icmp eq i64 %i.gh, %i.dn
  br i1 %exitcond.not.i.i37.i, label %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i, label %.lr.ph.i.i32.i, !llvm.loop !216

_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i: ; preds = %_ZN7unibrow4Utf86LengthEji.exit.i.i35.i, %middle.block
  %.lcssa29 = phi i32 [ %i.fv, %middle.block ], [ %i.gg, %_ZN7unibrow4Utf86LengthEji.exit.i.i35.i ]
  %.not.i23.i39.not.i = icmp ult i32 %i.n, %.lcssa29
  br i1 %.not.i23.i39.not.i, label %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.thread.i, label %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.thread.i

_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i, %bb.ad
  %i.gi = call { i64, i64 } @_ZN7unibrow4Utf86EncodeItEENS0_14EncodingResultEN2v84base6VectorIKT_EEPcmbb(ptr %i.dk, i64 %i.dn, ptr noundef nonnull %i.df, i64 noundef %i.dg, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.gj = extractvalue { i64, i64 } %i.gi, 0
  br label %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i

_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8IhEEiNS_4base6VectorIKT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ag

_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i: ; preds = %bb.ac, %.lr.ph.i.i.i, %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.thread.i, %bb.z
  %.in.i = phi i64 [ %i.gj, %_ZN2v88internal12_GLOBAL__N_111MeasureWtf8ItEEiNS_4base6VectorIKT_EE.exit.i.thread.i ], [ %.0.i.i27.i, %bb.z ], [ %i.er, %bb.ac ], [ %.158.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.gk = and i64 %.in.i, 2147483648
  %.not203.i = icmp eq i64 %i.gk, 0
  br i1 %.not203.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i, %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.thread.i
  %i.gl = call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 448, ptr null, i64 0) #18 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.gl, ptr nonnull %i.gm, ptr nonnull %i.gn, i32 noundef 0) #18
  %i.go = load i64, ptr %i.gl, align 8
  %i.gp = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.go, ptr noundef null) #18 ; 0 uses
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110EncodeWtf8IhEEiNS_4base6VectorIcEEmNS4_IKT_EEN7unibrow11Utf8VariantEPNS0_15MessageTemplateESB_.exit.i
  %i.gq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.gr = load ptr, ptr %i.c, align 8
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %bb.ai, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i, !prof !8

bb.ai:                                            ; preds = %bb.ah
  %i.gt = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i = phi ptr [ %i.gt, %bb.ai ], [ %i.gq, %bb.ah ] ; 2 uses
  %i.gu = shl i64 %.in.i, 32
  %i.gv = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.gw = add i64 %i.gv, 8
  %i.gx = inttoptr i64 %i.gw to ptr
  store ptr %i.gx, ptr %i.a, align 8
  store i64 %i.gu, ptr %.0.i.i.i.i.i, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i, %bb.ag
  %i.gy = load i64, ptr %i.o, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.gz = load i32, ptr %i.e, align 8
  %i.ha = add nsw i32 %i.gz, -1
  store i32 %i.ha, ptr %i.e, align 8
  %i.hb = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.hb, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.ak, %bb.aj
  ret i64 %i.gy
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Runtime_WasmStringViewWtf8EncodeEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.std::vector.1190", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit6, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit6: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.i = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.j = add i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32
  %.not70 = icmp eq i32 %0, 1
  br i1 %.not70, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !8

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit6
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit6
  %i.n = add i64 %i.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.b, %i.d
  br i1 %i.q, label %bb.c, label %_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.r = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2 ] ; 2 uses
  %i.s = ptrtoint ptr %.0.i.i to i64
  %i.t = add i64 %i.s, 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.a, align 8
  store i64 %i.p, ptr %.0.i.i, align 8
  %i.v = icmp ugt i32 %0, 2
  br i1 %i.v, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit: ; preds = %_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.w = add i64 %i.i, -24
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = and i64 %i.y, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.ab = lshr i64 %i.y, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = sitofp i32 %i.ac to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.f:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE15number_value_atEi.exit
  %i.ae = add nsw i64 %i.y, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ag, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.e, %bb.f
  %i.ah = phi double [ %i.ad, %bb.e ], [ %.0.copyload.i.i.i.i.i.i, %bb.f ]
  %i.ai = fptoui double %i.ah to i64              ; 2 uses
  %.not71 = icmp eq i32 %0, 3
  br i1 %.not71, label %bb.g, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, !prof !8

bb.g:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.aj = add i64 %i.i, -32
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.ao = lshr i64 %i.al, 32
  %i.ap = trunc nuw i64 %i.ao to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.i:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.aq = add nsw i64 %i.al, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.as, align 2 ; 5 uses
  %i.at = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.au = fcmp one double %i.at, +inf
  %i.av = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.av, %i.au
  %i.aw = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.aw, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.k:                                             ; preds = %bb.i
  %i.ay = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.az = and i64 %i.ay, 9218868437227405312
  %i.ba = icmp eq i64 %i.az, 0                    ; 2 uses
  %i.bb = lshr i64 %i.ay, 52
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 2047
  %i.be = add nsw i32 %i.bd, -1075
  %.0.i.i.i.i = select i1 %i.ba, i32 -1074, i32 %i.be ; 5 uses
  %i.bf = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.bf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.bg, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = and i64 %i.ay, 4503599627370495         ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.ba, i64 %i.bh, i64 %i.bi
  %i.bj = sub nsw i32 0, %.0.i.i.i.i
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 %.0.i17.i.i.i, %i.bk
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.bm = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.bm, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = zext nneg i32 %.0.i.i.i.i to i64
  %i.bo = shl i64 %i.ay, %i.bn
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.0.i.i.i = phi i64 [ %i.bl, %bb.m ], [ %i.bo, %bb.o ]
  %i.bp = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.bq = sub i32 0, %i.bp
  %i.br = icmp slt i64 %i.ay, 0
  %i.bs = select i1 %i.br, i32 %i.bq, i32 %i.bp
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.h, %bb.j, %bb.l, %bb.n, %bb.p
  %.0.i8 = phi i32 [ %i.ap, %bb.h ], [ %i.ax, %bb.j ], [ 0, %bb.l ], [ %i.bs, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %i.bt = icmp ugt i32 %0, 4
  br i1 %i.bt, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit4, label %bb.q, !prof !9

bb.q:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit4: ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bu = add i64 %i.i, -40
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8            ; 3 uses
  %i.bx = and i64 %i.bw, 1
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit4
  %i.bz = lshr i64 %i.bw, 32
  %i.ca = trunc nuw i64 %i.bz to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit16

bb.s:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit4
  %i.cb = add nsw i64 %i.bw, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.0.copyload.i.i.i.i.i9 = load double, ptr %i.cd, align 2 ; 5 uses
  %i.ce = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i9)
  %i.cf = fcmp one double %i.ce, +inf
  %i.cg = fcmp ole double %.0.copyload.i.i.i.i.i9, f0x41DFFFFFFFC00000
  %or.cond.i.i.i10 = and i1 %i.cg, %i.cf
  %i.ch = fcmp oge double %.0.copyload.i.i.i.i.i9, f0xC1E0000000000000
  %or.cond3.i.i.i11 = and i1 %i.ch, %or.cond.i.i.i10
  br i1 %or.cond3.i.i.i11, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = fptosi double %.0.copyload.i.i.i.i.i9 to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit16

bb.u:                                             ; preds = %bb.s
  %i.cj = bitcast double %.0.copyload.i.i.i.i.i9 to i64 ; 5 uses
  %i.ck = and i64 %i.cj, 9218868437227405312
  %i.cl = icmp eq i64 %i.ck, 0                    ; 2 uses
  %i.cm = lshr i64 %i.cj, 52
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = and i32 %i.cn, 2047
  %i.cp = add nsw i32 %i.co, -1075
  %.0.i.i.i.i12 = select i1 %i.cl, i32 -1074, i32 %i.cp ; 5 uses
  %i.cq = icmp slt i32 %.0.i.i.i.i12, 0
  br i1 %i.cq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cr = icmp samesign ult i32 %.0.i.i.i.i12, -52
  br i1 %i.cr, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit16, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = and i64 %i.cj, 4503599627370495         ; 2 uses
  %i.ct = or disjoint i64 %i.cs, 4503599627370496
  %.0.i17.i.i.i15 = select i1 %i.cl, i64 %i.cs, i64 %i.ct
  %i.cu = sub nsw i32 0, %.0.i.i.i.i12
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = lshr i64 %.0.i17.i.i.i15, %i.cv
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.cx = icmp samesign ugt i32 %.0.i.i.i.i12, 31
  br i1 %i.cx, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit16, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = zext nneg i32 %.0.i.i.i.i12 to i64
  %i.cz = shl i64 %i.cj, %i.cy
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.0.i.i.i13 = phi i64 [ %i.cw, %bb.w ], [ %i.cz, %bb.y ]
  %i.da = trunc i64 %.0.i.i.i13 to i32            ; 2 uses
  %i.db = sub i32 0, %i.da
  %i.dc = icmp slt i64 %i.cj, 0
  %i.dd = select i1 %i.dc, i32 %i.db, i32 %i.da
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit16

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit16: ; preds = %bb.r, %bb.t, %bb.v, %bb.x, %bb.z
  %.0.i14 = phi i32 [ %i.ca, %bb.r ], [ %i.ci, %bb.t ], [ 0, %bb.v ], [ %i.dd, %bb.z ], [ 0, %bb.x ]
  %.not72 = icmp eq i32 %0, 5
  br i1 %.not72, label %bb.aa, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit, !prof !8

bb.aa:                                            ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit16
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit: ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit16
  %i.de = add i64 %i.i, -48
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = trunc i64 %i.m to i8                    ; 2 uses
  %i.di = sub i32 %.0.i14, %.0.i8                 ; 2 uses
  %i.dj = zext i32 %i.di to i64                   ; 4 uses
  %i.dk = add i64 %i.h, 119
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = add i64 %i.dm, -1
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = shl i64 %i.dg, 1
  %i.dr = ashr i64 %i.dq, 29                      ; 2 uses
  %i.ds = and i64 %i.dr, -16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.du, align 1 ; 2 uses
  %.not.i17 = icmp uge i64 %.0.copyload.i.i.i, %i.dj
  %i.dv = sub nuw i64 %.0.copyload.i.i.i, %i.dj
  %i.dw = icmp uge i64 %i.dv, %i.ai
  %i.dx = select i1 %.not.i17, i1 %i.dw, i1 false
  br i1 %i.dx, label %bb.ab, label %_ZN2v88internalL42__RT_impl_Runtime_WasmStringViewWtf8EncodeENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.thread

_ZN2v88internalL42__RT_impl_Runtime_WasmStringViewWtf8EncodeENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.thread: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.dy = tail call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 433, ptr null, i64 0) #18 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 672
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.dy, ptr nonnull %i.dz, ptr nonnull %i.ea, i32 noundef 0) #18
  %i.eb = load i64, ptr %i.dy, align 8
  %i.ec = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.eb, ptr noundef null) #18
  br label %bb.ay

bb.ab:                                            ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE21positive_smi_value_atEi.exit
  %i.ed = and i64 %i.dr, -16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ed
  %.0.copyload.i.i.i19 = load i64, ptr %i.ee, align 1
  %i.ef = inttoptr i64 %.0.copyload.i.i.i19 to ptr
  %i.eg = add i64 %i.p, -1
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = zext i32 %.0.i8 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej ; 18 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ai ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i = icmp eq i8 %i.dh, 2
  br i1 %.not.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7unibrow4Wtf817ScanForSurrogatesEN2v84base6VectorIKhEEPSt6vectorImSaImEE(ptr nonnull %i.ek, i64 %i.dj, ptr noundef nonnull %3) #18
  %i.em = icmp eq i8 %i.dh, 0
  br i1 %i.em, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.en = load ptr, ptr %3, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = icmp eq ptr %i.en, %i.ep
  br i1 %i.eq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 454, ptr null, i64 0) #18 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.er, ptr nonnull %i.es, ptr nonnull %i.et, i32 noundef 0) #18
  %i.eu = load i64, ptr %i.er, align 8
  %i.ev = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.eu, ptr noundef null) #18
  %.pre = load ptr, ptr %3, align 8
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  switch i32 %i.di, label %bb.aw [
    i32 1, label %bb.ag
    i32 2, label %bb.ah
    i32 3, label %bb.ai
    i32 4, label %bb.aj
    i32 5, label %bb.ak
    i32 6, label %bb.al
    i32 7, label %bb.am
    i32 8, label %bb.an
    i32 9, label %bb.ao
    i32 10, label %bb.ap
    i32 11, label %bb.aq
    i32 12, label %bb.ar
    i32 13, label %bb.as
    i32 14, label %bb.at
    i32 15, label %bb.au
    i32 16, label %bb.av
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ew = load i8, ptr %i.ek, align 1
  store i8 %i.ew, ptr %i.el, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.ah:                                            ; preds = %bb.af
  %i.ex = load i16, ptr %i.ek, align 1
  store i16 %i.ex, ptr %i.el, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.ai:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.el, ptr noundef nonnull align 1 dereferenceable(3) %i.ek, i64 3, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.aj:                                            ; preds = %bb.af
  %i.ey = load i32, ptr %i.ek, align 1
  store i32 %i.ey, ptr %i.el, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.ak:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.el, ptr noundef nonnull align 1 dereferenceable(5) %i.ek, i64 5, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.al:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.el, ptr noundef nonnull align 1 dereferenceable(6) %i.ek, i64 6, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.am:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.el, ptr noundef nonnull align 1 dereferenceable(7) %i.ek, i64 7, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.an:                                            ; preds = %bb.af
  %i.ez = load i64, ptr %i.ek, align 1
  store i64 %i.ez, ptr %i.el, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.ao:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.el, ptr noundef nonnull align 1 dereferenceable(9) %i.ek, i64 9, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.ap:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.el, ptr noundef nonnull align 1 dereferenceable(10) %i.ek, i64 10, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.aq:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.el, ptr noundef nonnull align 1 dereferenceable(11) %i.ek, i64 11, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.ar:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.el, ptr noundef nonnull align 1 dereferenceable(12) %i.ek, i64 12, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.as:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.el, ptr noundef nonnull align 1 dereferenceable(13) %i.ek, i64 13, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.at:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.el, ptr noundef nonnull align 1 dereferenceable(14) %i.ek, i64 14, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.au:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.el, ptr noundef nonnull align 1 dereferenceable(15) %i.ek, i64 15, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.av:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.el, ptr noundef nonnull align 1 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.aw:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr nonnull align 1 %i.ek, i64 %i.dj, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

_ZN2v88internal7MemCopyEPvPKvm.exit:              ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw
  %i.fa = load ptr, ptr %3, align 8               ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = icmp eq ptr %i.fa, %i.fc
  br i1 %i.fd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit, %.lr.ph
  %.sroa.024.073 = phi ptr [ %i.fi, %.lr.ph ], [ %i.fa, %_ZN2v88internal7MemCopyEPvPKvm.exit ] ; 2 uses
  %i.fe = load i64, ptr %.sroa.024.073, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fe ; 3 uses
  store i8 -17, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store i8 -65, ptr %i.fg, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i8 -67, ptr %i.fh, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.024.073, i64 8 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.fc
  br i1 %i.fj, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %_ZN2v88internal7MemCopyEPvPKvm.exit, %bb.ae
  %i.fk = phi ptr [ %.pre, %bb.ae ], [ %i.fa, %_ZN2v88internal7MemCopyEPvPKvm.exit ], [ %i.fa, %.lr.ph ] ; 3 uses
  %.sroa.051.0 = phi i64 [ %i.ev, %bb.ae ], [ 0, %_ZN2v88internal7MemCopyEPvPKvm.exit ], [ 0, %.lr.ph ]
  %.not.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i, label %_ZN2v88internalL42__RT_impl_Runtime_WasmStringViewWtf8EncodeENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #20
  br label %_ZN2v88internalL42__RT_impl_Runtime_WasmStringViewWtf8EncodeENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL42__RT_impl_Runtime_WasmStringViewWtf8EncodeENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %bb.ax, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN2v88internalL42__RT_impl_Runtime_WasmStringViewWtf8EncodeENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit, %_ZN2v88internalL42__RT_impl_Runtime_WasmStringViewWtf8EncodeENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.thread
  %.sroa.051.168 = phi i64 [ %i.ec, %_ZN2v88internalL42__RT_impl_Runtime_WasmStringViewWtf8EncodeENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit.thread ], [ %.sroa.051.0, %_ZN2v88internalL42__RT_impl_Runtime_WasmStringViewWtf8EncodeENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit ]
  store ptr %i.b, ptr %i.a, align 8
  %i.fq = load i32, ptr %i.e, align 8
  %i.fr = add nsw i32 %i.fq, -1
  store i32 %i.fr, ptr %i.e, align 8
  %i.fs = load ptr, ptr %i.c, align 8
  %.not.i5 = icmp eq ptr %i.fs, %i.d
  br i1 %.not.i5, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.az, !prof !9

bb.az:                                            ; preds = %bb.ay
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.az, %bb.ay
  ret i64 %.sroa.051.168
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Runtime_WasmStringViewWtf8SliceEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.a, label %_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.a
  %.0.i.i = phi ptr [ %i.j, %bb.a ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, !prof !8

bb.b:                                             ; preds = %_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZN2v88internal6HandleINS0_9ByteArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = add i64 %i.n, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.t = lshr i64 %i.q, 32
  %i.u = trunc nuw i64 %i.t to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.v = add nsw i64 %i.q, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.x, align 2 ; 5 uses
  %i.y = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.z = fcmp one double %i.y, +inf
  %i.aa = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.aa, %i.z
  %i.ab = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.ab, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.ae = and i64 %i.ad, 9218868437227405312
  %i.af = icmp eq i64 %i.ae, 0                    ; 2 uses
  %i.ag = lshr i64 %i.ad, 52
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 2047
  %i.aj = add nsw i32 %i.ai, -1075
  %.0.i.i.i.i = select i1 %i.af, i32 -1074, i32 %i.aj ; 5 uses
  %i.ak = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ak, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.al, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = and i64 %i.ad, 4503599627370495         ; 2 uses
  %i.an = or disjoint i64 %i.am, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.af, i64 %i.am, i64 %i.an
  %i.ao = sub nsw i32 0, %.0.i.i.i.i
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %.0.i17.i.i.i, %i.ap
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ar = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.ar, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = zext nneg i32 %.0.i.i.i.i to i64
  %i.at = shl i64 %i.ad, %i.as
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.0.i.i.i = phi i64 [ %i.aq, %bb.h ], [ %i.at, %bb.j ]
  %i.au = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.av = sub i32 0, %i.au
  %i.aw = icmp slt i64 %i.ad, 0
  %i.ax = select i1 %i.aw, i32 %i.av, i32 %i.au
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k
  %.0.i4 = phi i32 [ %i.u, %bb.c ], [ %i.ac, %bb.e ], [ 0, %bb.g ], [ %i.ax, %bb.k ], [ 0, %bb.i ]
  %.not35 = icmp eq i32 %0, 1
  br i1 %.not35, label %bb.l, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, !prof !8

bb.l:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ay = add i64 %i.n, -16
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bd = lshr i64 %i.ba, 32
  %i.be = trunc nuw i64 %i.bd to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit12

bb.n:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.bf = add nsw i64 %i.ba, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.0.copyload.i.i.i.i.i5 = load double, ptr %i.bh, align 2 ; 5 uses
  %i.bi = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i5)
  %i.bj = fcmp one double %i.bi, +inf
  %i.bk = fcmp ole double %.0.copyload.i.i.i.i.i5, f0x41DFFFFFFFC00000
  %or.cond.i.i.i6 = and i1 %i.bk, %i.bj
  %i.bl = fcmp oge double %.0.copyload.i.i.i.i.i5, f0xC1E0000000000000
  %or.cond3.i.i.i7 = and i1 %i.bl, %or.cond.i.i.i6
  br i1 %or.cond3.i.i.i7, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = fptosi double %.0.copyload.i.i.i.i.i5 to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit12

bb.p:                                             ; preds = %bb.n
  %i.bn = bitcast double %.0.copyload.i.i.i.i.i5 to i64 ; 5 uses
  %i.bo = and i64 %i.bn, 9218868437227405312
  %i.bp = icmp eq i64 %i.bo, 0                    ; 2 uses
  %i.bq = lshr i64 %i.bn, 52
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = and i32 %i.br, 2047
  %i.bt = add nsw i32 %i.bs, -1075
  %.0.i.i.i.i8 = select i1 %i.bp, i32 -1074, i32 %i.bt ; 5 uses
  %i.bu = icmp slt i32 %.0.i.i.i.i8, 0
  br i1 %i.bu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bv = icmp samesign ult i32 %.0.i.i.i.i8, -52
  br i1 %i.bv, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit12, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = and i64 %i.bn, 4503599627370495         ; 2 uses
  %i.bx = or disjoint i64 %i.bw, 4503599627370496
  %.0.i17.i.i.i11 = select i1 %i.bp, i64 %i.bw, i64 %i.bx
  %i.by = sub nsw i32 0, %.0.i.i.i.i8
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = lshr i64 %.0.i17.i.i.i11, %i.bz
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.cb = icmp samesign ugt i32 %.0.i.i.i.i8, 31
  br i1 %i.cb, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit12, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = zext nneg i32 %.0.i.i.i.i8 to i64
  %i.cd = shl i64 %i.bn, %i.cc
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.0.i.i.i9 = phi i64 [ %i.ca, %bb.r ], [ %i.cd, %bb.t ]
  %i.ce = trunc i64 %.0.i.i.i9 to i32             ; 2 uses
  %i.cf = sub i32 0, %i.ce
  %i.cg = icmp slt i64 %i.bn, 0
  %i.ch = select i1 %i.cg, i32 %i.cf, i32 %i.ce
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit12

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit12: ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %bb.u
  %.0.i10 = phi i32 [ %i.be, %bb.m ], [ %i.bm, %bb.o ], [ 0, %bb.q ], [ %i.ch, %bb.u ], [ 0, %bb.s ]
  %i.ci = tail call ptr @_ZN2v88internal7Factory17NewStringFromUtf8ENS0_12DirectHandleINS0_9ByteArrayEEEjjN7unibrow11Utf8VariantENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i, i32 noundef %.0.i4, i32 noundef %.0.i10, i8 noundef zeroext 2, i8 noundef zeroext 0) #18 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.v, label %bb.w, !prof !8

bb.v:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit12
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #19
  unreachable

bb.w:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit12
  %i.ck = load i64, ptr %i.ci, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.cl = load i32, ptr %i.e, align 8
  %i.cm = add nsw i32 %i.cl, -1
  store i32 %i.cm, ptr %i.e, align 8
  %i.cn = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.cn, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.x, !prof !9

bb.x:                                             ; preds = %bb.w
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.x, %bb.w
  ret i64 %i.ck
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Runtime_WasmStringFromCodePointEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.461"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8                ; 3 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.k = lshr i64 %i.h, 32
  %i.l = trunc nuw i64 %i.k to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.m = add nsw i64 %i.h, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.o, align 2 ; 5 uses
  %i.p = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.q = fcmp one double %i.p, +inf
  %i.r = fcmp ole double %.0.copyload.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.r, %i.q
  %i.s = fcmp oge double %.0.copyload.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i = and i1 %i.s, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = fptosi double %.0.copyload.i.i.i.i.i to i32
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.u = bitcast double %.0.copyload.i.i.i.i.i to i64 ; 5 uses
  %i.v = and i64 %i.u, 9218868437227405312
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  %i.x = lshr i64 %i.u, 52
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 2047
  %i.aa = add nsw i32 %i.z, -1075
  %.0.i.i.i.i = select i1 %i.w, i32 -1074, i32 %i.aa ; 5 uses
  %i.ab = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i32 %.0.i.i.i.i, -52
  br i1 %i.ac, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = and i64 %i.u, 4503599627370495          ; 2 uses
  %i.ae = or disjoint i64 %i.ad, 4503599627370496
  %.0.i17.i.i.i = select i1 %i.w, i64 %i.ad, i64 %i.ae
  %i.af = sub nsw i32 0, %.0.i.i.i.i
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 %.0.i17.i.i.i, %i.ag
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ai = icmp samesign ugt i32 %.0.i.i.i.i, 31
  br i1 %i.ai, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext nneg i32 %.0.i.i.i.i to i64
  %i.ak = shl i64 %i.u, %i.aj
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0.i.i.i = phi i64 [ %i.ah, %bb.f ], [ %i.ak, %bb.h ]
  %i.al = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.am = sub i32 0, %i.al
  %i.an = icmp slt i64 %i.u, 0
  %i.ao = select i1 %i.an, i32 %i.am, i32 %i.al
  br label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a, %bb.c, %bb.i
  %.0.i2 = phi i32 [ %i.l, %bb.a ], [ %i.t, %bb.c ], [ %i.ao, %bb.i ] ; 8 uses
  %i.ap = icmp ult i32 %.0.i2, 65536
  br i1 %i.ap, label %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.j

_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.g, %bb.e, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %.0.i229 = phi i32 [ %.0.i2, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit ], [ 0, %bb.e ], [ 0, %bb.g ]
  %i.aq = trunc nuw i32 %.0.i229 to i16
  %i.ar = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE35LookupSingleCharacterStringFromCodeEt(ptr noundef nonnull align 1 dereferenceable(1) %2, i16 noundef zeroext %i.aq) #18
  %i.as = load i64, ptr %i.ar, align 8
  br label %_ZN2v88internalL41__RT_impl_Runtime_WasmStringFromCodePointENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.j:                                             ; preds = %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.at = icmp ugt i32 %.0.i2, 1114111
  br i1 %i.at, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.au = icmp sgt i32 %.0.i2, -1
  br i1 %i.au, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.av = zext nneg i32 %.0.i2 to i64
  %i.aw = shl nuw nsw i64 %i.av, 32
  %i.ax = icmp eq ptr %i.b, %i.d
  br i1 %i.ax, label %bb.m, label %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  br label %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i3 = phi ptr [ %i.ay, %bb.m ], [ %i.b, %bb.l ] ; 3 uses
  %i.az = ptrtoint ptr %.0.i.i.i.i3 to i64
  %i.ba = add i64 %i.az, 8
  %i.bb = inttoptr i64 %i.ba to ptr
  store ptr %i.bb, ptr %i.a, align 8
  store i64 %i.aw, ptr %.0.i.i.i.i3, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit

bb.n:                                             ; preds = %bb.k
  %i.bc = uitofp i32 %.0.i2 to double
  %i.bd = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #18 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store double %i.bc, ptr %i.bh, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit: ; preds = %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, %bb.n
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i.i3, %_ZN2v88internal6handleINS0_3SmiEEENS0_6HandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i ], [ %i.bd, %bb.n ]
  store ptr %.sroa.0.0.i, ptr %3, align 8
  %i.bi = call ptr @_ZN2v88internal7Factory19NewWasmRuntimeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 241, ptr nonnull %3, i64 1) #18 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8136
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 672
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr %i.bi, ptr nonnull %i.bj, ptr nonnull %i.bk, i32 noundef 0) #18
  %i.bl = load i64, ptr %i.bi, align 8
  %i.bm = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bl, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internalL41__RT_impl_Runtime_WasmStringFromCodePointENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

bb.o:                                             ; preds = %bb.j
  %i.bn = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 2, i8 noundef zeroext 0, i8 0) #18 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.p, label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE5CheckEv.exit, !prof !8

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #19
  unreachable

_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE5CheckEv.exit: ; preds = %bb.o
  %i.bp = add nuw nsw i32 %.0.i2, 983040
  %i.bq = lshr i32 %i.bp, 10
  %i.br = and i32 %i.bq, 1023
  %i.bs = load i64, ptr %i.bn, align 8
  %i.bt = add i64 %i.bs, -1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = shl i32 %.0.i2, 16
  %.sroa.413.0.insert.ext = and i32 %i.bw, 67043328
  %.sroa.012.0.insert.ext = or disjoint i32 %.sroa.413.0.insert.ext, %i.br
  %.sroa.012.0.insert.insert = or disjoint i32 %.sroa.012.0.insert.ext, -603924480
  store i32 %.sroa.012.0.insert.insert, ptr %i.bv, align 2
  %i.bx = load i64, ptr %i.bn, align 8
  br label %_ZN2v88internalL41__RT_impl_Runtime_WasmStringFromCodePointENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit

_ZN2v88internalL41__RT_impl_Runtime_WasmStringFromCodePointENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE5CheckEv.exit, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.019.0 = phi i64 [ %i.as, %_ZN2v88internal14NumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.bm, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewNumberFromUintILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEj.exit ], [ %i.bx, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE5CheckEv.exit ]
  store ptr %i.b, ptr %i.a, align 8
  %i.by = load i32, ptr %i.e, align 8
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.e, align 8
  %i.ca = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ca, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.q, !prof !9

bb.q:                                             ; preds = %_ZN2v88internalL41__RT_impl_Runtime_WasmStringFromCodePointENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.q, %_ZN2v88internalL41__RT_impl_Runtime_WasmStringFromCodePointENS0_30RuntimeArgumentsWithoutHandlesEPNS0_7IsolateE.exit
  ret i64 %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 0, 4611686014132420609) i64 @_ZN2v88internal22Runtime_WasmStringHashEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4 ; 4 uses
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN2v88internal4Name10EnsureHashEv.exit, label %bb.a

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.h = and i32 %i.e, 3
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i32 noundef %i.e)
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %i.c) #18
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

_ZN2v88internal4Name10EnsureHashEv.exit:          ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.k, %bb.c ], [ %i.j, %bb.b ], [ %i.e, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ]
  %i.l = lshr i32 %.0.i.i, 2
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 32
  ret i64 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Runtime_WasmAllocateContinuationEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
end_hunk_5
