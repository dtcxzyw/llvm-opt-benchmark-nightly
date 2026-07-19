inline.NumInlined: 2477
inline.NumDeleted: 1488
begin_hunk_0_@_ZN2v88internal10WasmScript13SetBreakPointENS0_12DirectHandleINS0_6ScriptEEEPiNS2_INS0_10BreakPointEEE:bb.a
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.ar, 7
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 216
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = add i32 %i.bf, %i.aj
  tail call void @_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE(ptr nonnull readonly %0, i32 noundef %i.bg, ptr %2)
  %i.bh = tail call noundef ptr @_ZN2v88internal4wasm12NativeModule12GetDebugInfoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ay) #18
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void @_ZN2v88internal4wasm13DebugInfoImpl13SetBreakpointEiiPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(160) %i.bi, i32 noundef %i.o, i32 noundef %i.aj, ptr noundef %i.an)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.1
}

declare noundef i32 @_ZN2v88internal4wasm25GetContainingWasmFunctionEPKNS1_10WasmModuleEj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_125FindNextBreakablePositionEPNS0_4wasm12NativeModuleEii(ptr noundef %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::Zone", align 8 ; 5 uses
  %4 = alloca %"struct.v8::internal::wasm::BodyLocalDecls", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::wasm::BytecodeIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = tail call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #18
  call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.a, ptr noundef nonnull @__func__._ZN2v88internal12_GLOBAL__N_125FindNextBreakablePositionEPNS0_4wasm12NativeModuleEii) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.b = call { ptr, i64 } @_ZNK2v88internal4wasm12NativeModule10wire_bytesEv(ptr noundef nonnull align 8 dereferenceable(552) %0)
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = zext nneg i32 %1 to i64
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, %i.k
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q
  call void @_ZN2v88internal4wasm16BytecodeIteratorC1EPKhS4_PNS1_14BodyLocalDeclsEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %i.m, ptr noundef %i.r, ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %i.s = icmp slt i32 %2, 0
  br i1 %i.s, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.x = icmp ult ptr %i.v, %i.w
  br i1 %i.x, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit
  %i.aa = phi ptr [ %i.w, %.lr.ph ], [ %i.ao, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit ]
  %i.ab = phi ptr [ %i.v, %.lr.ph ], [ %i.an, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit ] ; 3 uses
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load i32, ptr %i.z, align 8
  %i.ai = add i32 %i.ah, %i.ag                    ; 2 uses
  %i.aj = icmp ult i32 %i.ai, %2
  br i1 %i.aj, label %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.ab, align 1
  switch i8 %.0.copyload.i.i.i.i.i, label %.loopexit [
    i8 2, label %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit
    i8 6, label %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit
    i8 7, label %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit
    i8 3, label %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit
    i8 5, label %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit
  ]

_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit: ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.b
  %i.ak = call noundef i32 @_ZN2v88internal4wasm12OpcodeLengthEPKhS3_(ptr noundef %i.ab, ptr noundef nonnull %i.aa) #18
  %i.al = load ptr, ptr %i.t, align 8
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.u, align 8             ; 3 uses
  %.not.i = icmp ult ptr %i.an, %i.ao             ; 2 uses
  %spec.store.select.i = select i1 %.not.i, ptr %i.an, ptr %i.ao
  store ptr %spec.store.select.i, ptr %i.t, align 8
  br i1 %.not.i, label %bb.b, label %.loopexit, !llvm.loop !33

.loopexit:                                        ; preds = %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit, %bb.c, %.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit ], [ %i.ai, %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal4wasm7DecoderE, i64 16), ptr %5, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN2v88internal4wasm7DecoderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #19, !inline_history !34
  br label %_ZN2v88internal4wasm7DecoderD2Ev.exit

_ZN2v88internal4wasm7DecoderD2Ev.exit:            ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10WasmScript24SetBreakPointForFunctionENS0_12DirectHandleINS0_6ScriptEEEiiNS2_INS0_10BreakPointEEE(ptr nofree readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, 79
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 7
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.q = sext i32 %1 to i64
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 4
  %i.v = add i32 %i.u, %2
  tail call void @_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE(ptr nonnull %0, i32 noundef %i.v, ptr %3)
  %i.w = tail call noundef ptr @_ZN2v88internal4wasm12NativeModule12GetDebugInfoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.m) #18
  %i.x = load ptr, ptr %i.w, align 8
  tail call void @_ZN2v88internal4wasm13DebugInfoImpl13SetBreakpointEiiPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(160) %i.x, i32 noundef %1, i32 noundef %2, ptr noundef %i.b)
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10WasmScript28SetInstrumentationBreakpointENS0_12DirectHandleINS0_6ScriptEEENS2_INS0_10BreakPointEEE(ptr nofree readonly captures(none) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE(ptr %0, i32 noundef -1, ptr %1)
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = add i64 %i.a, 103
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = and i64 %i.d, 549755813888
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.g = and i64 %i.f, -554050781184
  %i.h = or disjoint i64 %i.g, 549755813888
  store atomic volatile i64 %i.h, ptr %i.c monotonic, align 8
  %i.i = add i64 %i.a, 87
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, 15
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %invariant.op.i = add i64 %i.k, 23
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %i.r = phi i64 [ %i.n, %.lr.ph.preheader.i ], [ %i.ae, %bb.d ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.s = shl nuw nsw i64 %indvars.iv.i, 3
  %.reass.i = add i64 %invariant.op.i, %i.s
  %i.t = inttoptr i64 %.reass.i to ptr            ; 2 uses
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 3
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.y = and i64 %i.x, -3
  %i.z = add i64 %i.y, 23
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa acquire, align 8
  %i.ac = add i64 %i.ab, 271
  %i.ad = inttoptr i64 %i.ac to ptr
  store i8 1, ptr %i.ad, align 1
  %.pre.i = load i64, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ae = phi i64 [ %i.r, %.lr.ph.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = ashr i64 %i.ae, 32
  %i.ag = icmp slt i64 %indvars.iv.next.i, %i.af
  br i1 %i.ag, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit, !llvm.loop !35

_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit: ; preds = %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 13 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = add i64 %i.c, 47
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %.mask.i = and i64 %i.f, -4294967296
  %i.g = icmp eq i64 %.mask.i, 12884901888
  br i1 %i.g, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread

_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit: ; preds = %bb.a
  %i.h = add i64 %i.c, 71
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread

bb.b:                                             ; preds = %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.c, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #18
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.w, %bb.c ], [ %i.s, %bb.b ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.j, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit
  %i.aa = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i32 noundef 4, i8 noundef zeroext 1, i8 0) #18 ; 4 uses
  %i.ab = load i64, ptr %0, align 8               ; 4 uses
  %i.ac = load i64, ptr %i.aa, align 8            ; 5 uses
  %i.ad = add i64 %i.ab, 71                       ; 3 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  store atomic volatile i64 %i.ac, ptr %i.ae monotonic, align 8
  %i.af = trunc i64 %i.ac to i1
  br i1 %i.af, label %bb.d, label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

bb.d:                                             ; preds = %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread
  %i.ag = and i64 %i.ab, -262144
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 262144       ; 2 uses
  %i.aj = and i64 %i.ai, 32
  %.not.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = and i64 %i.ai, 25
  %.not38.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not38.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.al = and i64 %i.ac, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.am, align 262144
  %i.an = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not39.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ab, i64 noundef %i.ad, i64 %i.ac) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i, label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.h, !prof !24

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ab, i64 %i.ad, i64 %i.ac) #18
  br label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.h, %bb.g, %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.0133.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.aa, %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ] ; 5 uses
  %i.ao = load i64, ptr %.sroa.0133.0, align 8
  %i.ap = add i64 %i.ao, -1
  %i.aq = inttoptr i64 %i.ap to ptr               ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = lshr i64 %i.as, 32
  %i.au = trunc nuw i64 %i.at to i32              ; 5 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %.lr.ph.i
  %i.ay = phi i32 [ %i.au, %.lr.ph.i ], [ %i.bl, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %.034.i = phi i32 [ 0, %.lr.ph.i ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %.01733.i = phi i32 [ %i.au, %.lr.ph.i ], [ %..017.i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.az = lshr i32 %i.ay, 1
  %i.ba = add nsw i32 %i.az, %.034.i              ; 3 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8 ; 2 uses
  %i.be = load i64, ptr %i.ax, align 8
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = add i64 %i.bd, 7
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  br label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i70 = phi i32 [ %i.bk, %bb.j ], [ 2147483647, %bb.i ]
  %.not.i = icmp sgt i32 %.0.i.i70, %1            ; 2 uses
  %..017.i = select i1 %.not.i, i32 %i.ba, i32 %.01733.i ; 2 uses
  %.0..i = select i1 %.not.i, i32 %.034.i, i32 %i.ba ; 3 uses
  %i.bl = sub nsw i32 %..017.i, %.0..i            ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.i, label %._crit_edge.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %i.bo = sext i32 %.0.lcssa.i to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 648 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = icmp eq i64 %i.bq, %i.bs
  br i1 %i.bt, label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.bu = add i64 %i.bq, 7
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = icmp sgt i32 %1, %i.by
  %i.ca = zext i1 %i.bz to i32
  br label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit

_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit: ; preds = %._crit_edge.i, %bb.k
  %.0.i22.i = phi i32 [ %i.ca, %bb.k ], [ 0, %._crit_edge.i ]
  %i.cb = add nsw i32 %.0.i22.i, %.0.lcssa.i      ; 7 uses
  %i.cc = icmp slt i32 %i.cb, %i.au
  br i1 %i.cc, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.cd ; 2 uses
  %i.cf = load atomic volatile i64, ptr %i.ce monotonic, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.bs
  br i1 %i.cg, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = add i64 %i.cf, 7
  %i.ci = inttoptr i64 %i.ch to ptr
end_hunk_0
begin_hunk_1_@_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = add i64 %i.al, 7
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32
  br label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i52 = phi i32 [ %i.as, %bb.e ], [ 2147483647, %bb.d ]
  %.not.i = icmp sgt i32 %.0.i.i52, %1            ; 2 uses
  %..017.i = select i1 %.not.i, i32 %i.ai, i32 %.01733.i ; 2 uses
  %.0..i = select i1 %.not.i, i32 %.034.i, i32 %i.ai ; 3 uses
  %i.at = sub nsw i32 %..017.i, %.0..i            ; 2 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.d, label %._crit_edge.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.aw = sext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 648 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.bc = add i64 %i.ay, 7
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = icmp sgt i32 %1, %i.bg
  %i.bi = zext i1 %i.bh to i32
  br label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit

_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit: ; preds = %._crit_edge.i, %bb.f
  %.0.i22.i = phi i32 [ %i.bi, %bb.f ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.bj = add nsw i32 %.0.i22.i, %.0.lcssa.i      ; 2 uses
  %.not = icmp eq i32 %i.bj, %i.ac
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bk
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.bo = load ptr, ptr %i.t, align 8
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.bq = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #18
  br label %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i50 = phi ptr [ %i.bq, %bb.h ], [ %i.bn, %bb.g ] ; 4 uses
  %i.br = ptrtoint ptr %.0.i.i50 to i64
  %i.bs = add i64 %i.br, 8
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bt, ptr %i.r, align 8
  store i64 %i.bm, ptr %.0.i.i50, align 8
  tail call void @_ZN2v88internal14BreakPointInfo15ClearBreakPointEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10BreakPointEEE(ptr noundef nonnull %i.q, ptr nonnull %.0.i.i50, ptr %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bu = load i64, ptr %.0.i.i50, align 8
  store i64 %i.bu, ptr %3, align 8
  %i.bv = call noundef i32 @_ZN2v88internal14BreakPointInfo18GetBreakPointCountEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.q) #18
  %i.bw = icmp eq i32 %i.bv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %i.bw, label %.preheader.preheader, label %bb.p

.preheader.preheader:                             ; preds = %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bx = zext nneg i32 %.0.i22.i to i64
  %i.by = add nsw i64 %i.aw, %i.bx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ %i.by, %.preheader.preheader ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.bz = load i64, ptr %.0.i.i, align 8
  %i.ca = add i64 %i.bz, -1                       ; 3 uses
  %i.cb = inttoptr i64 %i.ca to ptr               ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = add i64 %i.cd, -4294967296
  %i.cf = ashr i64 %i.ce, 32
  %i.cg = icmp slt i64 %indvars.iv, %i.cf
  br i1 %i.cg, label %bb.i, label %split

bb.i:                                             ; preds = %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv.next
  %i.cj = load atomic volatile i64, ptr %i.ci monotonic, align 8 ; 7 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.cj, ptr %i.ck monotonic, align 8
  %i.cl = trunc i64 %i.cj to i1
  br i1 %i.cl, label %bb.j, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %bb.i
  %i.cm = or disjoint i64 %i.ca, 1                ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.co = and i64 %i.ca, -262144
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load i64, ptr %i.cp, align 262144       ; 2 uses
  %i.cr = and i64 %i.cq, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.cr, 0
  %i.cs = and i64 %i.cq, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not38.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ct = and i64 %i.cj, -262144
  %i.cu = inttoptr i64 %i.ct to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.cu, align 262144
  %i.cv = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not39.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cm, i64 noundef %i.cn, i64 %i.cj) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !24

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cm, i64 %i.cn, i64 %i.cj) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.i, %bb.m, %bb.n
  %i.cw = load i64, ptr %i.az, align 8
  %i.cx = icmp eq i64 %i.cj, %i.cw
  br i1 %i.cx, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit._crit_edge, label %.preheader, !llvm.loop !39

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit._crit_edge: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %.pre = load i64, ptr %.0.i.i, align 8
  %.pre128 = add i64 %.pre, -1
  %.pre129 = inttoptr i64 %.pre128 to ptr
  br label %bb.o, !llvm.loop !39

split:                                            ; preds = %.preheader
  %.pre127 = load i64, ptr %i.az, align 8
  br label %bb.o

bb.o:                                             ; preds = %split, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit._crit_edge
  %.pre-phi130 = phi ptr [ %i.cb, %split ], [ %.pre129, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit._crit_edge ] ; 2 uses
  %i.cy = phi i64 [ %.pre127, %split ], [ %i.cj, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit._crit_edge ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre-phi130, i64 8
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = add i64 %i.da, -4294967296
  %i.dc = getelementptr inbounds nuw i8, ptr %.pre-phi130, i64 16
  %i.dd = ashr i64 %i.db, 32
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  store atomic volatile i64 %i.cy, ptr %i.de monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.df = load i64, ptr %2, align 8
  %i.dg = add i64 %i.df, 7
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = icmp ugt i64 %i.di, -4294967297
  %i.dk = load i64, ptr %0, align 8               ; 3 uses
  br i1 %i.dj, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.dl = add i64 %i.dk, 103
  %i.dm = inttoptr i64 %i.dl to ptr               ; 3 uses
  %i.dn = load atomic volatile i64, ptr %i.dm monotonic, align 8
  %i.do = and i64 %i.dn, 549755813888
  %.not125 = icmp eq i64 %i.do, 0
  br i1 %.not125, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load atomic volatile i64, ptr %i.dm monotonic, align 8
  %i.dq = and i64 %i.dp, -554050781184
  store atomic volatile i64 %i.dq, ptr %i.dm monotonic, align 8
  %i.dr = add i64 %i.dk, 87
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = add i64 %i.dt, 15
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = lshr i64 %i.dw, 32
  %i.dy = trunc nuw i64 %i.dx to i32
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.preheader.i, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %invariant.op.i = add i64 %i.dt, 23
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %bb.t, %.lr.ph.preheader.i
  %i.ea = phi i64 [ %i.dw, %.lr.ph.preheader.i ], [ %i.en, %bb.t ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %i.eb = shl nuw nsw i64 %indvars.iv.i, 3
  %.reass.i = add i64 %invariant.op.i, %i.eb
  %i.ec = inttoptr i64 %.reass.i to ptr           ; 2 uses
  %i.ed = load atomic volatile i64, ptr %i.ec monotonic, align 8
  %i.ee = and i64 %i.ed, 4294967295
  %i.ef = icmp eq i64 %i.ee, 3
  br i1 %i.ef, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i58
  %i.eg = load atomic volatile i64, ptr %i.ec monotonic, align 8
  %i.eh = and i64 %i.eg, -3
  %i.ei = add i64 %i.eh, 23
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load atomic volatile i64, ptr %i.ej acquire, align 8
  %i.el = add i64 %i.ek, 271
  %i.em = inttoptr i64 %i.el to ptr
  store i8 0, ptr %i.em, align 1
  %.pre.i = load i64, ptr %i.dv, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i58
  %i.en = phi i64 [ %i.ea, %.lr.ph.i58 ], [ %.pre.i, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eo = ashr i64 %i.en, 32
  %i.ep = icmp slt i64 %indvars.iv.next.i, %i.eo
  br i1 %i.ep, label %.lr.ph.i58, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit, !llvm.loop !35

bb.u:                                             ; preds = %bb.p
  %i.eq = add i64 %i.dk, 79
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load i64, ptr %i.er, align 8
  %i.et = add i64 %i.es, 7
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 216
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef i32 @_ZN2v88internal4wasm25GetContainingWasmFunctionEPKNS1_10WasmModuleEj(ptr noundef %i.fb, i32 noundef %1) #18
  %i.fd = call noundef ptr @_ZN2v88internal4wasm12NativeModule12GetDebugInfoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ez) #18
  %i.fe = load ptr, ptr %i.fd, align 8
  call void @_ZN2v88internal4wasm13DebugInfoImpl16RemoveBreakpointEiiPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(160) %i.fe, i32 noundef %i.fc, i32 noundef %1, ptr noundef nonnull %i.q)
  br label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit

_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit: ; preds = %bb.t, %bb.a, %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, %bb.r, %bb.q, %bb.u, %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit
  %.1 = phi i1 [ false, %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit ], [ false, %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit ], [ true, %bb.u ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.a ], [ true, %bb.t ]
  ret i1 %.1
}

declare void @_ZN2v88internal14BreakPointInfo15ClearBreakPointEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10BreakPointEEE(ptr noundef, ptr, ptr) local_unnamed_addr #1

declare noundef i32 @_ZN2v88internal14BreakPointInfo18GetBreakPointCountEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  store atomic volatile i64 %2, ptr %i.c monotonic, align 8
  %i.d = icmp sgt i32 %3, 1
  %i.e = trunc i64 %2 to i1
  %or.cond.i.i.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN2v88internal12TaggedMemberINS0_6ObjectENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE13Relaxed_StoreEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.h = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.i = and i64 %i.f, -262144
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 262144         ; 2 uses
  %i.l = and i64 %i.k, 32
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  %i.m = and i64 %i.k, 25
  %.not38.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not38.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %2, -262144
  %i.o = inttoptr i64 %i.n to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.o, align 262144
  %i.p = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not39.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.g, i64 noundef %i.h, i64 %2) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12TaggedMemberINS0_6ObjectENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE13Relaxed_StoreEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !24

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.g, i64 %i.h, i64 %2) #18
  br label %_ZN2v88internal12TaggedMemberINS0_6ObjectENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE13Relaxed_StoreEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12TaggedMemberINS0_6ObjectENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE13Relaxed_StoreEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10WasmScript19ClearBreakPointByIdENS0_12DirectHandleINS0_6ScriptEEEi(ptr nofree readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = add i64 %i.a, 47
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %.mask.i = and i64 %i.d, -4294967296
  %i.e = icmp eq i64 %.mask.i, 12884901888
  br i1 %i.e, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread

_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit: ; preds = %bb.a
  %i.f = add i64 %i.a, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread

bb.b:                                             ; preds = %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.q = load ptr, ptr %i.p, align 8              ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 560 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 568 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.c, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #18
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i26 = phi ptr [ %i.w, %bb.c ], [ %i.s, %bb.b ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i.i26 to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.h, ptr %.0.i.i26, align 8
  %i.aa = load i64, ptr %i.k, align 8
  %i.ab = lshr i64 %i.aa, 32                      ; 2 uses
  %i.ac = trunc nuw i64 %i.ab to i32
  %.not77 = icmp sgt i32 %i.ac, 0
  br i1 %.not77, label %.lr.ph, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 648
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.ae = load i64, ptr %.0.i.i26, align 8
  %i.af = add i64 %i.ae, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8 ; 2 uses
  %i.ak = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.al = load ptr, ptr %i.t, align 8
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.an = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #18
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.an, %bb.e ], [ %i.ak, %bb.d ] ; 4 uses
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = add i64 %i.ao, 8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %i.r, align 8
  store i64 %i.aj, ptr %.0.i.i, align 8
  %i.ar = load i64, ptr %i.ad, align 8
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.at = tail call ptr @_ZN2v88internal14BreakPointInfo17GetBreakPointByIdEPNS0_7IsolateENS0_12DirectHandleIS1_EEi(ptr noundef nonnull %i.q, ptr nonnull %.0.i.i, i32 noundef %1) #18 ; 2 uses
  %.not76 = icmp eq ptr %i.at, null
  br i1 %.not76, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_10BreakPointEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_10BreakPointEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.f
  %i.au = load i64, ptr %.0.i.i, align 8
  %i.av = add i64 %i.au, 7
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = tail call noundef zeroext i1 @_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE(ptr nonnull %0, i32 noundef %i.az, ptr nonnull %i.at)
  br label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %exitcond.not, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread, label %bb.d, !llvm.loop !40

_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread: ; preds = %bb.g, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal11MaybeHandleINS0_10BreakPointEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.a, %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit
  %.5 = phi i1 [ false, %bb.a ], [ false, %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit ], [ %i.ba, %_ZNK2v88internal11MaybeHandleINS0_10BreakPointEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ false, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ false, %bb.g ]
  ret i1 %.5
}

declare ptr @_ZN2v88internal14BreakPointInfo17GetBreakPointByIdEPNS0_7IsolateENS0_12DirectHandleIS1_EEi(ptr noundef, ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10WasmScript19ClearAllBreakpointsENS0_6TaggedINS0_6ScriptEEE(i64 %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = add i64 %0, 71                           ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr
  store atomic volatile i64 %i.d, ptr %i.f monotonic, align 8
  %i.g = trunc i64 %i.d to i1
  br i1 %i.g, label %bb.b, label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %0, -262144
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 262144         ; 2 uses
  %i.k = and i64 %i.j, 32
  %.not.i.i.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %i.j, 25
  %.not38.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not38.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %i.d, -262144
  %i.n = inttoptr i64 %i.m to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.n, align 262144
  %i.o = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not39.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %0, i64 noundef %i.e, i64 %i.d) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i, label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !24

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %0, i64 %i.e, i64 %i.d) #18
  br label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.p = add i64 %0, 103
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = and i64 %i.r, 549755813888
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.t = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.u = and i64 %i.t, -554050781184
  store atomic volatile i64 %i.u, ptr %i.q monotonic, align 8
  %i.v = add i64 %0, 87
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = add i64 %i.x, 15
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %invariant.op.i = add i64 %i.x, 23
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %i.ae = phi i64 [ %i.aa, %.lr.ph.preheader.i ], [ %i.ar, %bb.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.af = shl nuw nsw i64 %indvars.iv.i, 3
  %.reass.i = add i64 %invariant.op.i, %i.af
  %i.ag = inttoptr i64 %.reass.i to ptr           ; 2 uses
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 3
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ak = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.al = and i64 %i.ak, -3
  %i.am = add i64 %i.al, 23
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an acquire, align 8
  %i.ap = add i64 %i.ao, 271
  %i.aq = inttoptr i64 %i.ap to ptr
  store i8 0, ptr %i.aq, align 1
  %.pre.i = load i64, ptr %i.z, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.ar = phi i64 [ %i.ae, %.lr.ph.i ], [ %.pre.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = ashr i64 %i.ar, 32
  %i.at = icmp slt i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit, !llvm.loop !35

_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit: ; preds = %bb.i, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, %bb.g
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN2v88internal14BreakPointInfo13SetBreakPointEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10BreakPointEEE(ptr noundef, ptr, ptr) local_unnamed_addr #1

declare ptr @_ZN2v88internal7Factory17NewBreakPointInfoEi(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10WasmScript22GetPossibleBreakpointsEPNS0_4wasm12NativeModuleERKNS_5debug8LocationES8_PSt6vectorINS5_13BreakLocationESaISA_EE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(9) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Zone", align 8 ; 5 uses
  %5 = alloca %"struct.v8::internal::wasm::BodyLocalDecls", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::wasm::BytecodeIterator", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 3 uses
  %i.g = tail call noundef i32 @_ZNK2v85debug8Location13GetLineNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZNK2v85debug8Location7IsEmptyEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZNK2v85debug8Location13GetLineNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  %.not48 = icmp eq i32 %i.k, 0
  br i1 %.not48, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  %i.o = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.q = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18
  %i.r = tail call noundef i32 @_ZN2v88internal4wasm22GetNearestWasmFunctionEPKNS1_10WasmModuleEj(ptr noundef %i.e, i32 noundef %i.q) #18 ; 5 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18 ; 2 uses
  %i.u = tail call noundef zeroext i1 @_ZNK2v85debug8Location7IsEmptyEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 5
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add i32 %i.aj, %i.ah
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.al = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18 ; 2 uses
  %i.am = tail call noundef i32 @_ZN2v88internal4wasm22GetNearestWasmFunctionEPKNS1_10WasmModuleEj(ptr noundef %i.e, i32 noundef %i.al) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.045 = phi i32 [ %i.ad, %bb.i ], [ %i.am, %bb.j ] ; 3 uses
  %.044 = phi i32 [ %i.ak, %bb.i ], [ %i.al, %bb.j ]
  %i.an = icmp eq i32 %i.r, %.045
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = zext nneg i32 %i.r to i64
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add i32 %i.au, %i.as
  %i.aw = icmp ugt i32 %i.t, %i.av
  br i1 %i.aw, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ax = tail call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #18
  call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.ax, ptr noundef nonnull @__func__._ZN2v88internal10WasmScript22GetPossibleBreakpointsEPNS0_4wasm12NativeModuleERKNS_5debug8LocationES8_PSt6vectorINS5_13BreakLocationESaISA_EE) #18
  %i.ay = call { ptr, i64 } @_ZNK2v88internal4wasm12NativeModule10wire_bytesEv(ptr noundef nonnull align 8 dereferenceable(552) %0)
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 2 uses
  %.not4956 = icmp sgt i32 %i.r, %.045
  br i1 %.not4956, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.bi = zext nneg i32 %i.r to i64
  br label %bb.n

._crit_edge:                                      ; preds = %bb.w, %bb.m
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.x

bb.n:                                             ; preds = %.lr.ph58, %bb.w
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph58 ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.bj = load ptr, ptr %i.f, align 8
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 20 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bp = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bq
  %i.bs = load i32, ptr %i.bm, align 4
  %i.bt = add i32 %i.bs, %i.bp
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bu
  call void @_ZN2v88internal4wasm16BytecodeIteratorC1EPKhS4_PNS1_14BodyLocalDeclsEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef %i.br, ptr noundef %i.bv, ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %i.bw = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bx = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.by = icmp ult ptr %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit
  %i.bz = phi ptr [ %i.cy, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit ], [ %i.bx, %bb.o ] ; 6 uses
  %i.ca = phi ptr [ %i.cz, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit ], [ %i.bw, %bb.o ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cb = load i32, ptr %i.bl, align 4
  %i.cc = load ptr, ptr %i.bc, align 8
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = load i32, ptr %i.bd, align 8
  %i.ci = add i32 %i.ch, %i.cb
  %i.cj = add i32 %i.ci, %i.cg                    ; 4 uses
  store i32 %i.cj, ptr %i.a, align 4
end_hunk_1
