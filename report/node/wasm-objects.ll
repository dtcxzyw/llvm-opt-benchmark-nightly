Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-objects?download=true
inline.NumInlined: 4819
inline.NumDeleted: 2100
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal15WasmTableObject15JSToWasmElementEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPPKc:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = icmp ugt i64 %i.bc, %i.am
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.am
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.be, align 4
  %i.bf = and i32 %i.ab, 255
  %i.bg = shl i32 %.sroa.02.0.copyload.i.i.i, 8
  %i.bh = or disjoint i32 %i.bg, %i.bf
  br label %_ZN2v88internal4wasm14JSToWasmObjectEPNS0_7IsolateEPKNS1_10WasmModuleENS0_12DirectHandleINS0_6ObjectEEENS1_9ValueTypeEPPKc.exit

_ZN2v88internal4wasm14JSToWasmObjectEPNS0_7IsolateEPKNS1_10WasmModuleENS0_12DirectHandleINS0_6ObjectEEENS1_9ValueTypeEPPKc.exit: ; preds = %bb.e, %bb.d, %_ZNK2v88internal4wasm10WasmModule14canonical_typeENS1_9ValueTypeE.exit.i
  %storemerge.i = phi i32 [ %i.bh, %_ZNK2v88internal4wasm10WasmModule14canonical_typeENS1_9ValueTypeE.exit.i ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ]
  %i.bi = tail call ptr @_ZN2v88internal4wasm14JSToWasmObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_18CanonicalValueTypeEPPKc(ptr noundef %0, ptr %2, i32 %storemerge.i, ptr noundef %3)
  ret ptr %i.bi
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal4wasm14JSToWasmObjectEPNS0_7IsolateEPKNS1_10WasmModuleENS0_12DirectHandleINS0_6ObjectEEENS1_9ValueTypeEPPKc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, i32 %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, 3
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %_ZNK2v88internal4wasm10WasmModule14canonical_typeENS1_9ValueTypeE.exit, label %bb.b

_ZNK2v88internal4wasm10WasmModule14canonical_typeENS1_9ValueTypeE.exit: ; preds = %bb.a
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 1048575
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %i.m = zext nneg i32 %i.d to i64                ; 2 uses
  %i.n = icmp ugt i64 %i.l, %i.m
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.m
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.o, align 4
  %i.p = and i32 %3, -268435201
  %i.q = shl i32 %.sroa.02.0.copyload.i.i, 8
  %i.r = or i32 %i.q, %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK2v88internal4wasm10WasmModule14canonical_typeENS1_9ValueTypeE.exit
  %storemerge = phi i32 [ %i.r, %_ZNK2v88internal4wasm10WasmModule14canonical_typeENS1_9ValueTypeE.exit ], [ %3, %bb.a ]
  %i.s = tail call ptr @_ZN2v88internal4wasm14JSToWasmObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_18CanonicalValueTypeEPPKc(ptr noundef %0, ptr %2, i32 %storemerge, ptr noundef %4)
  ret ptr %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15WasmTableObject21SetFunctionTableEntryEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS4_INS0_6ObjectEEE(ptr noundef %0, ptr nofree readonly captures(none) %1, i32 noundef %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.952", align 8 ; 4 uses
  %i.a = load i64, ptr %3, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 294
  br i1 %i.i, label %bb.b, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  %i.j = load i64, ptr %1, align 8
  %i.k = add i64 %i.j, 55
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i64 %i.m, ptr %4, align 8
  call void @_ZN2v88internal17WasmDispatchTable5ClearEiNS1_18NewOrExistingEntryE(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %2, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.n = load i64, ptr %1, align 8
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, -1                         ; 3 uses
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = sext i32 %2 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  store atomic volatile i64 %i.u, ptr %i.x monotonic, align 8
  %i.y = trunc i64 %i.u to i1
  br i1 %i.y, label %bb.c, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %bb.b
  %i.z = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ab = and i64 %i.r, -262144
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 262144       ; 2 uses
  %i.ae = and i64 %i.ad, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ae, 0
  %i.af = and i64 %i.ad, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not38.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ag = and i64 %i.u, -262144
  %i.ah = inttoptr i64 %i.ag to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.ah, align 262144
  %i.ai = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not39.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.z, i64 noundef %i.aa, i64 %i.u) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.z, i64 %i.aa, i64 %i.u) #22
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %bb.a, %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  %i.aj = add i64 %i.a, 7
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i64, ptr %i.ak acquire, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.h, label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.h:                                             ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %i.ar = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread, %bb.h
  %.0.i.i46 = phi ptr [ %i.ar, %bb.h ], [ %i.an, %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread ] ; 3 uses
  %i.as = ptrtoint ptr %.0.i.i46 to i64
  %i.at = add i64 %i.as, 8
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.am, align 8
  store i64 %i.al, ptr %.0.i.i46, align 8
  %i.av = tail call ptr @_ZN2v88internal20WasmInternalFunction19GetOrCreateExternalENS0_12DirectHandleIS1_EE(ptr nonnull %.0.i.i46) ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 5 uses
  %i.ax = trunc i64 %i.aw to i1
  br i1 %i.ax, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ay = add nsw i64 %i.aw, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = add i64 %i.ba, 11
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i16, ptr %i.bc monotonic, align 2
  %i.be = add i16 %i.bd, -2065
  %i.bf = icmp ult i16 %i.be, 17
  br i1 %i.bf, label %bb.i, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i51

bb.i:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bg = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10688
  %i.bi = add i64 %i.aw, 23
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bl = lshr i32 %i.bk, 8
  %i.bm = load ptr, ptr %i.bh, align 8
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  %i.bp = load atomic i64, ptr %i.bo monotonic, align 8
  %i.bq = icmp ugt i64 %i.bp, -281474976710657
  br i1 %i.bq, label %bb.j, label %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i, !prof !16

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.99) #24
  unreachable

_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i: ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8
  %i.bt = lshr i64 %i.bs, 16
  %i.bu = or i64 %i.bt, 1                         ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, 51
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i32, ptr %i.bw monotonic, align 4
  %i.by = and i32 %i.bx, 15
  %.not.i = icmp eq i32 %i.by, 7
  br i1 %.not.i, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i
  %i.bz = add nuw nsw i64 %i.bu, 89
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load i16, ptr %i.ca, align 2
  %5 = add i16 %i.cb, -1313
  %switch.i = icmp ult i16 %5, 3
  br i1 %switch.i, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i51

_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.k, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i
  %i.cc = add i64 %i.aw, 31
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.cf = add i64 %i.ce, 7
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i64, ptr %i.cj monotonic, align 8
  %i.cl = add i64 %i.ck, 11
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load atomic volatile i16, ptr %i.cm monotonic, align 2
  %i.co = icmp eq i16 %i.cn, 179
  br i1 %i.co, label %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit, label %bb.l, !prof !17

bb.l:                                             ; preds = %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67) #24
  unreachable

_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit: ; preds = %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cp = add i64 %i.ch, 39
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ct = load ptr, ptr %i.ao, align 8
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.m, label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.m:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit
  %i.cv = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit, %bb.m
  %.0.i.i = phi ptr [ %i.cv, %bb.m ], [ %i.cs, %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit ] ; 3 uses
  %i.cw = ptrtoint ptr %.0.i.i to i64
  %i.cx = add i64 %i.cw, 8
  %i.cy = inttoptr i64 %i.cx to ptr
  store ptr %i.cy, ptr %i.am, align 8
  store i64 %i.cr, ptr %.0.i.i, align 8
  %i.cz = add i64 %i.ch, 47
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dc = lshr i64 %i.db, 32
  %i.dd = add i64 %i.cr, 263
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = add i64 %i.df, 7
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 216
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 200
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 208
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 5
  %i.dx = icmp ugt i64 %i.dw, %i.dc
  br i1 %i.dx, label %bb.o, label %bb.n, !prof !17

bb.n:                                             ; preds = %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #24
  unreachable

bb.o:                                             ; preds = %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.dy = ashr i64 %i.db, 32
  %i.dz = getelementptr inbounds [32 x i8], ptr %i.ds, i64 %i.dy
  tail call void @_ZN2v88internal15WasmTableObject19UpdateDispatchTableEPNS0_7IsolateENS0_12DirectHandleIS1_EEiPKNS0_4wasm12WasmFunctionENS4_INS0_23WasmTrustedInstanceDataEEE(ptr noundef nonnull %0, ptr %1, i32 noundef %2, ptr noundef %i.dz, ptr nonnull %.0.i.i)
  br label %bb.r

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i51: ; preds = %bb.k, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ea = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.eb = add i64 %i.ea, 11
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load atomic volatile i16, ptr %i.ec monotonic, align 2
  %i.ee = add i16 %i.ed, -2065
  %i.ef = icmp ult i16 %i.ee, 17
  br i1 %i.ef, label %bb.p, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.p:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i51
  %i.eg = add i64 %i.aw, 31
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ej = add i64 %i.ei, 7
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = trunc i64 %i.el to i1
  br i1 %i.em, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.p
  %i.en = add nsw i64 %i.el, -1
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load atomic volatile i64, ptr %i.eo monotonic, align 8
  %i.eq = add i64 %i.ep, 11
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load atomic volatile i16, ptr %i.er monotonic, align 2
  %i.et = icmp eq i16 %i.es, 180
  br i1 %i.et, label %bb.q, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.q:                                             ; preds = %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void @_ZN2v88internal15WasmTableObject19UpdateDispatchTableEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS4_INS0_14WasmJSFunctionEEE(ptr noundef nonnull %0, ptr %1, i32 noundef %2, ptr nonnull %i.av)
  br label %bb.r

_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.p, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i51, %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void @_ZN2v88internal15WasmTableObject19UpdateDispatchTableEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS4_INS0_16WasmCapiFunctionEEE(ptr noundef nonnull %0, ptr %1, i32 noundef %2, ptr nonnull %i.av)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.o
  %i.eu = load i64, ptr %1, align 8
  %i.ev = add i64 %i.eu, 23
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = add i64 %i.ex, -1                       ; 3 uses
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = load i64, ptr %3, align 8               ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fc = sext i32 %2 to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  store atomic volatile i64 %i.fa, ptr %i.fd monotonic, align 8
  %i.fe = trunc i64 %i.fa to i1
  br i1 %i.fe, label %bb.s, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.s:                                             ; preds = %bb.r
  %i.ff = or disjoint i64 %i.ey, 1                ; 2 uses
  %i.fg = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fh = and i64 %i.ey, -262144
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = load i64, ptr %i.fi, align 262144       ; 2 uses
  %i.fk = and i64 %i.fj, 32
  %.not.i.i.i.i.i53 = icmp eq i64 %i.fk, 0
  %i.fl = and i64 %i.fj, 25
  %.not38.i.i.i.i.i54 = icmp eq i64 %i.fl, 0
  br i1 %.not38.i.i.i.i.i54, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fm = and i64 %i.fa, -262144
  %i.fn = inttoptr i64 %i.fm to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i55 = load i64, ptr %i.fn, align 262144
  %i.fo = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i55, 25
  %.not39.i.i.i.i.i56 = icmp eq i64 %i.fo, 0
  br i1 %.not39.i.i.i.i.i56, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ff, i64 noundef %i.fg, i64 %i.fa) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  br i1 %.not.i.i.i.i.i53, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.w, !prof !17

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ff, i64 %i.fg, i64 %i.fa) #22
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.w, %bb.v, %bb.r, %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15WasmTableObject18ClearDispatchTableEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.952", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i.i, 55
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 %i.c, ptr %2, align 8
  call void @_ZN2v88internal17WasmDispatchTable5ClearEiNS1_18NewOrExistingEntryE(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal20WasmInternalFunction19GetOrCreateExternalENS0_12DirectHandleIS1_EE(ptr %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = add i64 %i.c, 15
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 10624
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load i64, ptr %i.j, align 8
  %.not = icmp eq i64 %i.f, %i.k
  br i1 %.not, label %_ZN2v88internal20WasmInternalFunction16try_get_externalEPNS0_6TaggedINS0_10JSFunctionEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal20WasmInternalFunction19GetOrCreateExternalENS0_12DirectHandleIS1_EE:bb.a
  %i.ad = ptrtoint ptr %.0.i.i30 to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.x, align 8
  store i64 %i.w, ptr %.0.i.i30, align 8
  %i.ag = add i64 %i.w, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = icmp eq i16 %i.al, 190
  br i1 %i.am, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_13TrustedObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.an = add i64 %i.w, 7
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.z, align 8
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.f, label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.at = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #22
  br label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.at, %bb.f ], [ %i.aq, %bb.e ] ; 3 uses
  %i.au = ptrtoint ptr %.0.i.i to i64
  %i.av = add i64 %i.au, 8
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.x, align 8
  store i64 %i.ap, ptr %.0.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6HandleINS0_13TrustedObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ax = phi i64 [ %i.ap, %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.w, %_ZN2v88internal6HandleINS0_13TrustedObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %storemerge = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0.i.i30, %_ZN2v88internal6HandleINS0_13TrustedObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.ay = add i64 %i.ax, 263
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, 7
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  %i.bj = load ptr, ptr %i.bi, align 8            ; 5 uses
  %i.bk = load i64, ptr %0, align 8
  %i.bl = add i64 %i.bk, 23
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.br = ashr i64 %i.bn, 32                      ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %.sroa.08.0.copyload = load i32, ptr %i.bu, align 4
  %i.bv = add i64 %i.ax, 231
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = add i64 %i.bx, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.br
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8
  %i.cd = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ce = load ptr, ptr %i.z, align 8
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.h, label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.cg = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #22
  br label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i31 = phi ptr [ %i.cg, %bb.h ], [ %i.cd, %bb.g ] ; 3 uses
  %i.ch = ptrtoint ptr %.0.i.i31 to i64
  %i.ci = add i64 %i.ch, 8
  %i.cj = inttoptr i64 %i.ci to ptr
  store ptr %i.cj, ptr %i.x, align 8
  store i64 %i.cc, ptr %.0.i.i31, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 184
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  %i.cs = zext i32 %.sroa.08.0.copyload to i64    ; 2 uses
  %i.ct = icmp ugt i64 %i.cr, %i.cs
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cs
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.cu, align 4 ; 3 uses
  %i.cv = tail call noundef ptr @_ZN2v88internal4wasm20GetTypeCanonicalizerEv() #22
  %i.cw = tail call noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer23LookupFunctionSignatureENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(8056) %i.cv, i32 %.sroa.02.0.copyload.i.i) #22 ; 3 uses
  %i.cx = tail call ptr @_ZN2v88internal20WasmExportedFunction10GetWrapperEPNS0_7IsolateEPKNS0_4wasm12CanonicalSigENS4_18CanonicalTypeIndexEbPKNS4_10WasmModuleE(ptr noundef nonnull %i.b, ptr noundef %i.cw, i32 %.sroa.02.0.copyload.i.i, i1 noundef zeroext false, ptr noundef nonnull %i.bj)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = trunc i64 %i.cz to i32
  %i.db = tail call ptr @_ZN2v88internal20WasmExportedFunction3NewEPNS0_7IsolateENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEENS4_INS0_11WasmFuncRefEEENS4_INS0_20WasmInternalFunctionEEEiNS4_INS0_4CodeEEEPKNS0_4wasm10WasmModuleEiNSD_18CanonicalTypeIndexEPKNSD_12CanonicalSigENSD_7PromiseE(ptr noundef %i.b, ptr nonnull %storemerge, ptr nonnull %.0.i.i31, ptr nonnull %0, i32 noundef %i.da, ptr %i.cx, ptr noundef nonnull %i.bj, i32 noundef %i.bp, i32 %.sroa.02.0.copyload.i.i, ptr noundef nonnull %i.cw, i32 noundef 1) ; 4 uses
  %i.dc = load i64, ptr %0, align 8               ; 4 uses
  %i.dd = load i64, ptr %i.db, align 8            ; 5 uses
  %i.de = add i64 %i.dc, 15                       ; 3 uses
  %i.df = inttoptr i64 %i.de to ptr
  store atomic volatile i64 %i.dd, ptr %i.df monotonic, align 8
  %i.dg = trunc i64 %i.dd to i1
  br i1 %i.dg, label %bb.i, label %_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

bb.i:                                             ; preds = %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.dh = and i64 %i.dc, -262144
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load i64, ptr %i.di, align 262144       ; 2 uses
  %i.dk = and i64 %i.dj, 32
  %.not.i.i.i = icmp eq i64 %i.dk, 0
  %i.dl = and i64 %i.dj, 25
  %.not38.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not38.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dm = and i64 %i.dd, -262144
  %i.dn = inttoptr i64 %i.dm to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.dn, align 262144
  %i.do = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not39.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dc, i64 noundef %i.de, i64 %i.dd) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i, label %_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit, label %bb.m, !prof !17

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dc, i64 %i.de, i64 %i.dd) #22
  br label %_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.m, %bb.l, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.060.0 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.db, %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.db, %bb.l ], [ %i.db, %bb.m ]
  ret ptr %.sroa.060.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE(i64 %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.b = add nsw i64 %0, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = add i16 %i.g, -2065
  %i.i = icmp ult i16 %i.h, 17
  br i1 %i.i, label %bb.b, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10688
  %i.l = add i64 %0, 23
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i32, ptr %i.m monotonic, align 4
  %i.o = lshr i32 %i.n, 8
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = zext nneg i32 %i.o to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  %i.t = icmp ugt i64 %i.s, -281474976710657
  br i1 %i.t, label %bb.c, label %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.99) #24
  unreachable

_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = lshr i64 %i.v, 16
  %i.x = or i64 %i.w, 1                           ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 51
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i32, ptr %i.z monotonic, align 4
  %i.ab = and i32 %i.aa, 15
  %.not = icmp eq i32 %i.ab, 7
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit
  %i.ac = add nuw nsw i64 %i.x, 89
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i16, ptr %i.ad, align 2
  %1 = add i16 %i.ae, -1313
  %switch = icmp ult i16 %1, 3
  br i1 %switch, label %.critedge, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

.critedge:                                        ; preds = %bb.d, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit
  br label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.d, %bb.a, %.critedge, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %.1 = phi i1 [ false, %bb.d ], [ false, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit ], [ true, %.critedge ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 179
  br i1 %i.j, label %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataENS0_16PtrComprCageBaseE.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67) #24
  unreachable

_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataENS0_16PtrComprCageBaseE.exit: ; preds = %bb.a
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15WasmTableObject19UpdateDispatchTableEPNS0_7IsolateENS0_12DirectHandleIS1_EEiPKNS0_4wasm12WasmFunctionENS4_INS0_23WasmTrustedInstanceDataEEE(ptr noundef %0, ptr nofree readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.952", align 8 ; 4 uses
  %6 = alloca %"class.std::shared_ptr.975", align 16 ; 3 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.952", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %4, align 8
  %i.e = add i64 %i.d, 15
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = shl i32 %i.i, 4
  %i.k = add i32 %i.j, 48
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %i.g, -1
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal6HandleINS0_13TrustedObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_13TrustedObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13TrustedObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i47 = phi ptr [ %i.v, %bb.c ], [ %i.r, %bb.b ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i47 to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.p, ptr %.0.i.i47, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal6HandleINS0_13TrustedObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.098.0 = phi ptr [ %.0.i.i47, %_ZN2v88internal6HandleINS0_13TrustedObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %4, %bb.a ] ; 4 uses
  %i.z = load i64, ptr %4, align 8
  %i.aa = add i64 %i.z, 263
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, 7
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.019.0.copyload = load i32, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = zext i32 %.sroa.019.0.copyload to i64   ; 2 uses
  %i.aw = icmp ugt i64 %i.au, %i.av
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.av
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.ax, align 4 ; 4 uses
  %i.ay = load i64, ptr %1, align 8
  %i.az = add i64 %i.ay, 55
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.e, label %_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.bh = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.bh, %bb.e ], [ %i.bd, %bb.d ] ; 5 uses
  %i.bi = ptrtoint ptr %.0.i.i to i64
  %i.bj = add i64 %i.bi, 8
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.bk, ptr %i.bc, align 8
  store i64 %i.bb, ptr %.0.i.i, align 8
  %i.bl = add i64 %i.bb, 31
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i32, ptr %i.bm, align 4            ; 3 uses
  %i.bo = and i32 %i.bn, 3
  %i.bp = icmp ne i32 %i.bo, 3
  %i.bq = and i32 %i.bn, 268435427
  %i.br = icmp eq i32 %i.bq, 2337
  %or.cond.i = and i1 %i.bp, %i.br
  br i1 %or.cond.i, label %_ZN2v88internal23FunctionSigMatchesTableENS0_4wasm18CanonicalTypeIndexENS1_18CanonicalValueTypeE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bs = lshr i32 %i.bn, 8
  %i.bt = and i32 %i.bs, 1048575                  ; 2 uses
  %i.bu = icmp eq i32 %.sroa.02.0.copyload.i.i, %i.bt
  br i1 %i.bu, label %_ZN2v88internal23FunctionSigMatchesTableENS0_4wasm18CanonicalTypeIndexENS1_18CanonicalValueTypeE.exit.thread, label %_ZN2v88internal23FunctionSigMatchesTableENS0_4wasm18CanonicalTypeIndexENS1_18CanonicalValueTypeE.exit, !prof !17

_ZN2v88internal23FunctionSigMatchesTableENS0_4wasm18CanonicalTypeIndexENS1_18CanonicalValueTypeE.exit: ; preds = %bb.f
  %i.bv = tail call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = tail call noundef zeroext i1 @_ZN2v88internal4wasm17TypeCanonicalizer18IsCanonicalSubtypeENS1_18CanonicalTypeIndexES3_(ptr noundef nonnull align 8 dereferenceable(8056) %i.bw, i32 %.sroa.02.0.copyload.i.i, i32 %i.bt) #22
  br i1 %i.bx, label %_ZN2v88internal23FunctionSigMatchesTableENS0_4wasm18CanonicalTypeIndexENS1_18CanonicalValueTypeE.exit.thread, label %bb.g, !prof !23

bb.g:                                             ; preds = %_ZN2v88internal23FunctionSigMatchesTableENS0_4wasm18CanonicalTypeIndexENS1_18CanonicalValueTypeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #24
  unreachable

_ZN2v88internal23FunctionSigMatchesTableENS0_4wasm18CanonicalTypeIndexENS1_18CanonicalValueTypeE.exit.thread: ; preds = %bb.f, %_ZN2v88internal6HandleINS0_17WasmDispatchTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal23FunctionSigMatchesTableENS0_4wasm18CanonicalTypeIndexENS1_18CanonicalValueTypeE.exit
  %i.by = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 706), align 2, !range !21, !noundef !22
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZN2v88internal23FunctionSigMatchesTableENS0_4wasm18CanonicalTypeIndexENS1_18CanonicalValueTypeE.exit.thread
  %i.ca = load i64, ptr %.sroa.098.0, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load atomic volatile i64, ptr %i.cc monotonic, align 8
  %i.ce = add i64 %i.cd, 11
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i16, ptr %i.cf monotonic, align 2
  %i.ch = icmp eq i16 %i.cg, 199
  br i1 %i.ch, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ci = tail call ptr @_ZN2v88internal7Factory17NewWasmImportDataENS0_12DirectHandleINS0_14WasmImportDataEEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.sroa.098.0, i1 noundef zeroext false) #22 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8            ; 4 uses
  %i.ck = load i64, ptr %.0.i.i, align 8          ; 4 uses
  %i.cl = add i64 %i.cj, 15                       ; 3 uses
  %i.cm = inttoptr i64 %i.cl to ptr
  store atomic volatile i64 %i.ck, ptr %i.cm monotonic, align 8
  %i.cn = and i64 %i.ck, -262144
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load i64, ptr %i.co, align 262144
  %i.cq = and i64 %i.cp, 1
  %.not.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.cj, i64 %i.cl, i64 %i.ck) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cr = and i64 %i.cj, -262144
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load i64, ptr %i.cs, align 262144
  %i.cu = and i64 %i.ct, 32
  %.not.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal14WasmImportData15set_call_originENS0_6TaggedINS0_13TrustedObjectEEENS0_16WriteBarrierModeE.exit, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
end_hunk_1
begin_hunk_2_@_ZN2v88internal15WasmTableObject27SetFunctionTablePlaceholderEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS4_INS0_23WasmTrustedInstanceDataEEEi:bb.a
_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_18WasmInstanceObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.e
  %.0.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.u, %_ZN2v88internal6HandleINS0_18WasmInstanceObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.j, align 8
  store i64 %i.t, ptr %.0.i.i.i, align 8
  %i.ab = tail call ptr @_ZN2v88internal7Factory9NewTuple2ENS0_12DirectHandleINS0_6ObjectEEES4_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i, ptr nonnull %.0.i.i.i, i8 noundef zeroext 1) #22
  %i.ac = load i64, ptr %1, align 8
  %i.ad = add i64 %i.ac, 23
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.af, -1                       ; 3 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ab, align 8            ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = sext i32 %2 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  store atomic volatile i64 %i.ai, ptr %i.al monotonic, align 8
  %i.am = trunc i64 %i.ai to i1
  br i1 %i.am, label %bb.f, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.f:                                             ; preds = %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.an = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ao = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ap = and i64 %i.ag, -262144
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i64, ptr %i.aq, align 262144       ; 2 uses
  %i.as = and i64 %i.ar, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.as, 0
  %i.at = and i64 %i.ar, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not38.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.au = and i64 %i.ai, -262144
  %i.av = inttoptr i64 %i.au to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.av, align 262144
  %i.aw = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not39.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.an, i64 noundef %i.ao, i64 %i.ai) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.j, !prof !17

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.an, i64 %i.ao, i64 %i.ai) #22
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.i, %bb.j
  ret void
}

declare ptr @_ZN2v88internal7Factory9NewTuple2ENS0_12DirectHandleINS0_6ObjectEEES4_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15WasmTableObject21GetFunctionTableEntryEPNS0_7IsolateENS0_12DirectHandleIS1_EEiPbS6_PNS0_17MaybeDirectHandleINS0_23WasmTrustedInstanceDataEEEPiPNS7_INS0_14WasmJSFunctionEEE(ptr noundef %0, ptr nofree readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  store i8 1, ptr %3, align 1
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 5 uses
  %i.q = ptrtoint ptr %.0.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i, align 8
  %i.t = trunc i64 %i.j to i1
  br i1 %i.t, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, label %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  store i8 0, ptr %4, align 1
  br label %bb.c

_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.u = add nsw i64 %i.j, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 294                   ; 2 uses
  %i.ab = zext i1 %i.aa to i8
  store i8 %i.ab, ptr %4, align 1
  br i1 %i.aa, label %bb.o, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread, %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  %i.ac = load i64, ptr %.0.i.i, align 8          ; 5 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 293
  br i1 %i.ak, label %bb.d, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.d:                                             ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.al = add i64 %i.ac, 7
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am acquire, align 8
  %i.ao = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ap = load ptr, ptr %i.m, align 8
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.e, label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i50 = phi ptr [ %i.ar, %bb.e ], [ %i.ao, %bb.d ] ; 3 uses
  %i.as = ptrtoint ptr %.0.i.i50 to i64
  %i.at = add i64 %i.as, 8
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.k, align 8
  store i64 %i.an, ptr %.0.i.i50, align 8
  %i.av = tail call ptr @_ZN2v88internal20WasmInternalFunction19GetOrCreateExternalENS0_12DirectHandleIS1_EE(ptr nonnull %.0.i.i50) ; 2 uses
  %.pre = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.c, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aw = phi i64 [ %.pre, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.ac, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.ac, %bb.c ] ; 5 uses
  %.sroa.089.0 = phi ptr [ %i.av, %_ZN2v88internal6HandleINS0_20WasmInternalFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0.i.i, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.0.i.i, %bb.c ] ; 3 uses
  %i.ax = trunc i64 %i.aw to i1
  br i1 %i.ax, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ay = add nsw i64 %i.aw, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = add i64 %i.ba, 11
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i16, ptr %i.bc monotonic, align 2
  %i.be = add i16 %i.bd, -2065
  %i.bf = icmp ult i16 %i.be, 17
  br i1 %i.bf, label %bb.f, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i55

bb.f:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bg = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10688
  %i.bi = add i64 %i.aw, 23
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bl = lshr i32 %i.bk, 8
  %i.bm = load ptr, ptr %i.bh, align 8
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  %i.bp = load atomic i64, ptr %i.bo monotonic, align 8
  %i.bq = icmp ugt i64 %i.bp, -281474976710657
  br i1 %i.bq, label %bb.g, label %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.99) #24
  unreachable

_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i: ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8
  %i.bt = lshr i64 %i.bs, 16
  %i.bu = or i64 %i.bt, 1                         ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, 51
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i32, ptr %i.bw monotonic, align 4
  %i.by = and i32 %i.bx, 15
  %.not.i = icmp eq i32 %i.by, 7
  br i1 %.not.i, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i
  %i.bz = add nuw nsw i64 %i.bu, 89
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load i16, ptr %i.ca, align 2
  %8 = add i16 %i.cb, -1313
  %switch.i = icmp ult i16 %8, 3
  br i1 %switch.i, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i55

_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.h, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i
  %i.cc = add i64 %i.aw, 31
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.cf = add i64 %i.ce, 7
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i64, ptr %i.cj monotonic, align 8
  %i.cl = add i64 %i.ck, 11
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load atomic volatile i16, ptr %i.cm monotonic, align 2
  %i.co = icmp eq i16 %i.cn, 179
  br i1 %i.co, label %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit, label %bb.i, !prof !17

bb.i:                                             ; preds = %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67) #24
  unreachable

_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit: ; preds = %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cp = add i64 %i.ch, 39
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ct = load ptr, ptr %i.m, align 8
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.j, label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.j:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit
  %i.cv = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit, %bb.j
  %.0.i.i47 = phi ptr [ %i.cv, %bb.j ], [ %i.cs, %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit ] ; 2 uses
  %i.cw = ptrtoint ptr %.0.i.i47 to i64           ; 2 uses
  %i.cx = add i64 %i.cw, 8
  %i.cy = inttoptr i64 %i.cx to ptr
  store ptr %i.cy, ptr %i.k, align 8
  store i64 %i.cr, ptr %.0.i.i47, align 8
  store i64 %i.cw, ptr %5, align 8
  %i.cz = add i64 %i.ch, 47
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = lshr i64 %i.db, 32
  %i.dd = trunc nuw i64 %i.dc to i32
  store i32 %i.dd, ptr %6, align 4
  store i64 0, ptr %7, align 8
  br label %bb.o

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i55: ; preds = %bb.h, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.de = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.df = add i64 %i.de, 11
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load atomic volatile i16, ptr %i.dg monotonic, align 2
  %i.di = add i16 %i.dh, -2065
  %i.dj = icmp ult i16 %i.di, 17
  br i1 %i.dj, label %bb.k, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.k:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i55
  %i.dk = add i64 %i.aw, 31
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.dn = add i64 %i.dm, 7
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load atomic volatile i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = trunc i64 %i.dp to i1
  br i1 %i.dq, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.k
  %i.dr = add nsw i64 %i.dp, -1
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load atomic volatile i64, ptr %i.ds monotonic, align 8
  %i.du = add i64 %i.dt, 11
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i16, ptr %i.dv monotonic, align 2
  %i.dx = icmp eq i16 %i.dw, 180
  br i1 %i.dx, label %bb.l, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.l:                                             ; preds = %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  store i64 0, ptr %5, align 8
  %i.dy = ptrtoint ptr %.sroa.089.0 to i64
  store i64 %i.dy, ptr %7, align 8
  br label %bb.o

_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.k, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i55, %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dz = load i64, ptr %.sroa.089.0, align 8     ; 2 uses
  %i.ea = trunc i64 %i.dz to i1
  br i1 %i.ea, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.eb = add nsw i64 %i.dz, -1
  %i.ec = inttoptr i64 %i.eb to ptr               ; 2 uses
  %i.ed = load atomic volatile i64, ptr %i.ec monotonic, align 8
  %i.ee = add i64 %i.ed, 11
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load atomic volatile i16, ptr %i.ef monotonic, align 2
  %i.eh = icmp eq i16 %i.eg, 171
  br i1 %i.eh, label %bb.m, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.m:                                             ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = add i64 %i.ej, 23
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = load atomic volatile i64, ptr %i.el acquire, align 8
  %i.en = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.eo = load ptr, ptr %i.m, align 8
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %bb.n, label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit49, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.eq = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit49

_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit49: ; preds = %bb.m, %bb.n
  %.0.i.i48 = phi ptr [ %i.eq, %bb.n ], [ %i.en, %bb.m ] ; 2 uses
  %i.er = ptrtoint ptr %.0.i.i48 to i64           ; 2 uses
  %i.es = add i64 %i.er, 8
  %i.et = inttoptr i64 %i.es to ptr
  store ptr %i.et, ptr %i.k, align 8
  store i64 %i.em, ptr %.0.i.i48, align 8
  store i64 %i.er, ptr %5, align 8
  %i.eu = load i64, ptr %.sroa.089.0, align 8
  %i.ev = add i64 %i.eu, -1
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = lshr i64 %i.ey, 32
  %i.fa = trunc nuw i64 %i.ez to i32
  store i32 %i.fa, ptr %6, align 4
  store i64 0, ptr %7, align 8
  br label %bb.o

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit
  store i8 0, ptr %3, align 1
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal10IsWasmNullENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit49, %bb.l, %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal20WasmSuspendingObject3NewEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #22
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.n = ptrtoint ptr %.0.i.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.g, ptr %.0.i.i.i, align 8
  %i.q = add i64 %i.g, 1983
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit, %bb.c
  %.0.i = phi ptr [ %i.w, %bb.c ], [ %i.t, %_ZN2v88internal7Isolate14native_contextEv.exit ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.h, align 8
  store i64 %i.s, ptr %.0.i, align 8
  %i.aa = tail call ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #22 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ac = load i64, ptr %1, align 8               ; 5 uses
  %i.ad = add i64 %i.ab, 23                       ; 3 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  store atomic volatile i64 %i.ac, ptr %i.ae monotonic, align 8
  %i.af = trunc i64 %i.ac to i1
  br i1 %i.af, label %bb.d, label %_ZN2v88internal35TorqueGeneratedWasmSuspendingObjectINS0_20WasmSuspendingObjectENS0_8JSObjectEE12set_callableENS0_6TaggedINS0_10JSReceiverEEENS0_16WriteBarrierModeE.exit
end_hunk_2
begin_hunk_3_@_ZN2v88internal14WasmJSFunction3NewEPNS0_7IsolateEPKNS0_9SignatureINS0_4wasm9ValueTypeEEENS0_12DirectHandleINS0_10JSReceiverEEENS5_7SuspendE:bb.a
  %i.hr = add i64 %i.hp, 15                       ; 3 uses
  %i.hs = inttoptr i64 %i.hr to ptr
  store atomic volatile i64 %i.hq, ptr %i.hs monotonic, align 8
  %i.ht = trunc i64 %i.hq to i1
  br i1 %i.ht, label %bb.ai, label %_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

bb.ai:                                            ; preds = %_ZN2v88internal7Isolate26wasm_exported_function_mapEv.exit
  %i.hu = and i64 %i.hp, -262144
  %i.hv = inttoptr i64 %i.hu to ptr
  %i.hw = load i64, ptr %i.hv, align 262144       ; 2 uses
  %i.hx = and i64 %i.hw, 32
  %.not.i.i.i98 = icmp eq i64 %i.hx, 0
  %i.hy = and i64 %i.hw, 25
  %.not38.i.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not38.i.i.i, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.hz = and i64 %i.hq, -262144
  %i.ia = inttoptr i64 %i.hz to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.ia, align 262144
  %i.ib = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not39.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.hp, i64 noundef %i.hr, i64 %i.hq) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  br i1 %.not.i.i.i98, label %_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit, label %bb.am, !prof !17

bb.am:                                            ; preds = %bb.al
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.hp, i64 %i.hr, i64 %i.hq) #22
  br label %_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal7Isolate26wasm_exported_function_mapEv.exit, %bb.al, %bb.am
  %i.ic = load ptr, ptr %i.de, align 8            ; 8 uses
  %.not.i.i99 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i99, label %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit103, label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.id, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4
  %i.ii = load ptr, ptr %i.ic, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #22, !inline_history !3
  %i.il = load ptr, ptr %i.ic, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #22, !inline_history !3
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit103

bb.ap:                                            ; preds = %bb.an
  %i.io = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i100 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i100, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101

bb.ar:                                            ; preds = %bb.ap
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i102 = phi i32 [ %i.ig, %bb.aq ], [ %i.iq, %bb.ar ]
  %i.ir = icmp eq i32 %.0.i.i.i.i102, 1
  br i1 %i.ir, label %bb.as, label %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit103, !prof !16

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #22
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit103

_ZNSt12__shared_ptrIN2v88internal4wasm23WasmImportWrapperHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit103: ; preds = %_ZN2v88internal35TorqueGeneratedWasmInternalFunctionINS0_20WasmInternalFunctionENS0_20ExposedTrustedObjectEE12set_externalENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret ptr %i.ho
}

declare i32 @_ZN2v88internal4wasm17TypeCanonicalizer17AddRecursiveGroupEPKNS0_9SignatureINS1_9ValueTypeEEE(ptr noundef nonnull align 8 dereferenceable(8056), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4wasm17TypeCanonicalizer25PrepareForCanonicalTypeIdEPNS0_7IsolateENS1_18CanonicalTypeIndexE(ptr noundef, i32) local_unnamed_addr #2

declare void @_ZN2v88internal4wasm22WasmImportWrapperCache14LazyInitializeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4wasm22WasmImportWrapperCache3GetEPNS0_7IsolateENS1_14ImportCallKindEiNS1_7SuspendEPKNS1_12CanonicalSigE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.975") align 8, ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal4wasm23IsJSCompatibleSignatureEPKNS1_12CanonicalSigE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory21NewWasmJSFunctionDataENS0_4wasm18CanonicalTypeIndexENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_4CodeEEENS4_INS0_3MapEEENS2_7SuspendENS2_7PromiseESt10shared_ptrINS2_23WasmImportWrapperHandleEE(ptr noundef nonnull align 1 dereferenceable(1), i32, ptr, ptr, ptr, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal10JSFunction12GetDebugNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory38NewSharedFunctionInfoForWasmJSFunctionENS0_12DirectHandleINS0_6StringEEENS2_INS0_18WasmJSFunctionDataEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal18WasmJSFunctionData11GetCallableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 31
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal18WasmJSFunctionData12GetSignatureEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.c = add i64 %.sroa.0.0.copyload.i.i, 39
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = tail call noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer23LookupFunctionSignatureENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(8056) %i.b, i32 %i.g) #22
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal18WasmJSFunctionData16MatchesSignatureENS0_4wasm18CanonicalTypeIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 39
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp eq i32 %1, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal20WasmExternalFunction22IsWasmExternalFunctionENS0_6TaggedINS0_6ObjectEEE(i64 %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.b = add nsw i64 %0, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = add i16 %i.g, -2065
  %i.i = icmp ult i16 %i.h, 17
  br i1 %i.i, label %bb.b, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i6

bb.b:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.j = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10688
  %i.l = add i64 %0, 23
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i32, ptr %i.m monotonic, align 4
  %i.o = lshr i32 %i.n, 8
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = zext nneg i32 %i.o to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  %i.t = icmp ugt i64 %i.s, -281474976710657
  br i1 %i.t, label %bb.c, label %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.99) #24
  unreachable

_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = lshr i64 %i.v, 16
  %i.x = or i64 %i.w, 1                           ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 51
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i32, ptr %i.z monotonic, align 4
  %i.ab = and i32 %i.aa, 15
  %.not.i = icmp eq i32 %i.ab, 7
  br i1 %.not.i, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i
  %i.ac = add nuw nsw i64 %i.x, 89
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i16, ptr %i.ad, align 2
  %1 = add i16 %i.ae, -1313
  %switch.i = icmp ult i16 %1, 3
  br i1 %switch.i, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i6

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i6: ; preds = %bb.d, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.af = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = add i16 %i.ai, -2065
  %i.ak = icmp ult i16 %i.aj, 17
  br i1 %i.ak, label %bb.e, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i8

bb.e:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i6
  %i.al = add i64 %0, 31
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 7
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i8

_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.e
  %i.as = add nsw i64 %i.aq, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2
  %i.ay = icmp eq i16 %i.ax, 180
  br i1 %i.ay, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i8

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i8: ; preds = %bb.e, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i6, %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.az = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = add i16 %i.bc, -2065
  %i.be = icmp ult i16 %i.bd, 17
  br i1 %i.be, label %bb.f, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i8
  %i.bf = add i64 %0, 31
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %i.bh, 7
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %bb.g, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit

bb.g:                                             ; preds = %bb.f
  %i.bm = add nsw i64 %i.bk, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = icmp eq i16 %i.br, 178
  br label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.g, %bb.f, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i8, %bb.a, %bb.d, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i, %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bt = phi i1 [ true, %_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit ], [ true, %bb.d ], [ true, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i ], [ %i.bs, %bb.g ], [ false, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i8 ], [ false, %bb.f ], [ false, %bb.a ]
  ret i1 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal16WasmExceptionTag3NewEPNS0_7IsolateEi(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewStructENS0_12InstanceTypeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i16 noundef zeroext 172, i8 noundef zeroext 1) #22 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 32
  %i.e = add i64 %i.b, 7
  %i.f = inttoptr i64 %i.e to ptr
  store atomic volatile i64 %i.d, ptr %i.f monotonic, align 8
  ret ptr %i.a
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewStructENS0_12InstanceTypeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal11AsmWasmData3NewEPNS0_7IsolateESt10shared_ptrINS0_4wasm12NativeModuleEENS0_12DirectHandleINS0_10HeapNumberEEE(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 3 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call noundef i64 @_ZN2v88internal4wasm15WasmCodeManager28EstimateNativeModuleCodeSizeEPKNS1_10WasmModuleE(ptr noundef %i.c) #22
  %i.e = tail call noundef i64 @_ZN2v88internal4wasm15WasmCodeManager32EstimateNativeModuleMetaDataSizeEPKNS1_10WasmModuleE(ptr noundef %i.c) #22
  %i.f = add i64 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load <2 x ptr>, ptr %1, align 8
  store ptr null, ptr %i.h, align 8
  store <2 x ptr> %i.i, ptr %3, align 16
  store ptr null, ptr %1, align 8
  %i.j = call ptr @_ZN2v88internal7ManagedINS0_4wasm12NativeModuleEE4FromEPNS0_7IsolateEmSt10shared_ptrIS3_ENS0_14AllocationTypeE(ptr noundef %0, i64 noundef %i.f, ptr noundef nonnull %3, i8 noundef zeroext 0)
  %i.k = load ptr, ptr %i.g, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22, !inline_history !0
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.w = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.y, %bb.f ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.g, label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.aa = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewStructENS0_12InstanceTypeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i16 noundef zeroext 144, i8 noundef zeroext 1) #22 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ac = load i64, ptr %i.j, align 8             ; 5 uses
  %i.ad = add i64 %i.ab, 7                        ; 3 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  store atomic volatile i64 %i.ac, ptr %i.ae monotonic, align 8
  %i.af = trunc i64 %i.ac to i1
  br i1 %i.af, label %bb.h, label %_ZN2v88internal26TorqueGeneratedAsmWasmDataINS0_11AsmWasmDataENS0_6StructEE25set_managed_native_moduleENS0_6TaggedINS0_7ManagedINS0_4wasm12NativeModuleEEEEENS0_16WriteBarrierModeE.exit

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ag = and i64 %i.ab, -262144
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 262144       ; 2 uses
  %i.aj = and i64 %i.ai, 32
  %.not.i.i.i7 = icmp eq i64 %i.aj, 0
  %i.ak = and i64 %i.ai, 25
  %.not38.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not38.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.al = and i64 %i.ac, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.am, align 262144
  %i.an = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not39.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ab, i64 noundef %i.ad, i64 %i.ac) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i.i7, label %_ZN2v88internal26TorqueGeneratedAsmWasmDataINS0_11AsmWasmDataENS0_6StructEE25set_managed_native_moduleENS0_6TaggedINS0_7ManagedINS0_4wasm12NativeModuleEEEEENS0_16WriteBarrierModeE.exit, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ab, i64 %i.ad, i64 %i.ac) #22
  br label %_ZN2v88internal26TorqueGeneratedAsmWasmDataINS0_11AsmWasmDataENS0_6StructEE25set_managed_native_moduleENS0_6TaggedINS0_7ManagedINS0_4wasm12NativeModuleEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal26TorqueGeneratedAsmWasmDataINS0_11AsmWasmDataENS0_6StructEE25set_managed_native_moduleENS0_6TaggedINS0_7ManagedINS0_4wasm12NativeModuleEEEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.k, %bb.l
  %i.ao = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ap = load i64, ptr %2, align 8               ; 5 uses
  %i.aq = add i64 %i.ao, 15                       ; 3 uses
  %i.ar = inttoptr i64 %i.aq to ptr
  store atomic volatile i64 %i.ap, ptr %i.ar monotonic, align 8
  %i.as = trunc i64 %i.ap to i1
  br i1 %i.as, label %bb.m, label %_ZN2v88internal26TorqueGeneratedAsmWasmDataINS0_11AsmWasmDataENS0_6StructEE15set_uses_bitsetENS0_6TaggedINS0_10HeapNumberEEENS0_16WriteBarrierModeE.exit

bb.m:                                             ; preds = %_ZN2v88internal26TorqueGeneratedAsmWasmDataINS0_11AsmWasmDataENS0_6StructEE25set_managed_native_moduleENS0_6TaggedINS0_7ManagedINS0_4wasm12NativeModuleEEEEENS0_16WriteBarrierModeE.exit
  %i.at = and i64 %i.ao, -262144
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 262144       ; 2 uses
  %i.aw = and i64 %i.av, 32
  %.not.i.i.i10 = icmp eq i64 %i.aw, 0
  %i.ax = and i64 %i.av, 25
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm14JSToWasmObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_18CanonicalValueTypeEPPKc:bb.a
  %i.ea = load i32, ptr %5, align 4
  %i.eb = and i32 %i.ea, 16
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115CanonicalizeSmiENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nonnull %1, ptr noundef %0, i1 noundef zeroext %i.ec) ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = and i64 %i.ee, 1
  %.not416 = icmp eq i64 %i.ef, 0
  br i1 %.not416, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit147.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit143: ; preds = %bb.at
  %i.eg = add nsw i64 %i.dx, -1
  %i.eh = inttoptr i64 %i.eg to ptr               ; 3 uses
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ej = add i64 %i.ei, 11
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i16, ptr %i.ek monotonic, align 2
  %i.em = icmp eq i16 %i.el, 130
  br i1 %i.em, label %bb.av, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit145

bb.av:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit143
  %i.en = load i32, ptr %5, align 4
  %i.eo = and i32 %i.en, 16
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122CanonicalizeHeapNumberENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nonnull %1, ptr noundef %0, i1 noundef zeroext %i.ep) ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = and i64 %i.er, 1
  %.not415 = icmp eq i64 %i.es, 0
  br i1 %.not415, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit147.thread

_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit145: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit143
  %i.et = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.eu = add i64 %i.et, 11
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load atomic volatile i16, ptr %i.ev monotonic, align 2
  %i.ex = icmp eq i16 %i.ew, 301
  br i1 %i.ex, label %bb.aw, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit147

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit147: ; preds = %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit145
  %i.ey = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ez = add i64 %i.ey, 11
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load atomic volatile i16, ptr %i.fa monotonic, align 2
  %i.fc = icmp eq i16 %i.fb, 300
  br i1 %i.fc, label %bb.aw, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit147.thread

bb.aw:                                            ; preds = %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit147, %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit145
  %i.fd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 836), align 4, !range !21, !noundef !22
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ax, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ax:                                            ; preds = %bb.aw
  %.sroa.050.0.copyload = load i32, ptr %5, align 4
  %i.ff = and i32 %.sroa.050.0.copyload, 16
  %i.fg = icmp ne i32 %i.ff, 0                    ; 2 uses
  %i.fh = and i64 %i.dx, -262144
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = load i64, ptr %i.fi, align 262144
  %i.fk = trunc i64 %i.fj to i1
  %i.fl = xor i1 %i.fg, %i.fk
  br i1 %i.fl, label %bb.ay, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.ay:                                            ; preds = %bb.ax
  %.str.116..str.117.i167 = select i1 %i.fg, ptr @.str.116, ptr @.str.117
  store ptr %.str.116..str.117.i167, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit147.thread: ; preds = %bb.av, %bb.au, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit147
  store ptr @.str.57, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.az:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  %i.fm = load i64, ptr %1, align 8               ; 2 uses
  %i.fn = and i64 %i.fm, 1
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ba, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit

bb.ba:                                            ; preds = %bb.az
  %i.fp = load i32, ptr %5, align 4
  %i.fq = and i32 %i.fp, 16
  %i.fr = icmp ne i32 %i.fq, 0
  %i.fs = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115CanonicalizeSmiENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nonnull %1, ptr noundef %0, i1 noundef zeroext %i.fr) ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = and i64 %i.ft, 1
  %.not414 = icmp eq i64 %i.fu, 0
  br i1 %.not414, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.az
  %i.fv = add nsw i64 %i.fm, -1
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load atomic volatile i64, ptr %i.fw monotonic, align 8
  %i.fy = add i64 %i.fx, 11
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = load atomic volatile i16, ptr %i.fz monotonic, align 2
  %i.gb = icmp eq i16 %i.ga, 130
  br i1 %i.gb, label %bb.bb, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.bb:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.gc = load i32, ptr %5, align 4
  %i.gd = and i32 %i.gc, 16
  %i.ge = icmp ne i32 %i.gd, 0
  %i.gf = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122CanonicalizeHeapNumberENS0_12DirectHandleINS0_6ObjectEEEPNS0_7IsolateEb(ptr nonnull %1, ptr noundef %0, i1 noundef zeroext %i.ge) ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = and i64 %i.gg, 1
  %.not = icmp eq i64 %i.gh, 0
  br i1 %.not, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.bb, %bb.ba, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  store ptr @.str.58, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bc:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  %i.gi = load i64, ptr %1, align 8               ; 2 uses
  %i.gj = trunc i64 %i.gi to i1
  br i1 %i.gj, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.bc
  %i.gk = add nsw i64 %i.gi, -1
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = load atomic volatile i64, ptr %i.gl monotonic, align 8
  %i.gn = add i64 %i.gm, 11
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = load atomic volatile i16, ptr %i.go monotonic, align 2
  %i.gq = icmp ult i16 %i.gp, 128
  br i1 %i.gq, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.bc, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  store ptr @.str.59, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bd:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  store ptr @.str.43, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.be:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  store ptr @.str.44, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bf:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  store ptr @.str.45, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bg:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  store ptr @.str.60, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bh:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  %i.gr = load i32, ptr %5, align 4
  %i.gs = lshr i32 %i.gr, 8
  %i.gt = and i32 %i.gs, 1048575                  ; 4 uses
  %i.gu = call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #22
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40 ; 2 uses
  %i.gw = load i64, ptr %1, align 8               ; 5 uses
  %i.gx = trunc i64 %i.gw to i1
  br i1 %i.gx, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.bo

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.bh
  %i.gy = add nsw i64 %i.gw, -1
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = load atomic volatile i64, ptr %i.gz monotonic, align 8
  %i.hb = add i64 %i.ha, 11
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = load atomic volatile i16, ptr %i.hc monotonic, align 2
  %i.he = add i16 %i.hd, -2065
  %i.hf = icmp ult i16 %i.he, 17
  br i1 %i.hf, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.hg = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 10688
  %i.hi = add i64 %i.gw, 23
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = load atomic volatile i32, ptr %i.hj monotonic, align 4
  %i.hl = lshr i32 %i.hk, 8
  %i.hm = load ptr, ptr %i.hh, align 8
  %i.hn = zext nneg i32 %i.hl to i64
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hn ; 2 uses
  %i.hp = load atomic i64, ptr %i.ho monotonic, align 8
  %i.hq = icmp ugt i64 %i.hp, -281474976710657
  br i1 %i.hq, label %bb.bj, label %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i, !prof !16

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.99) #24
  unreachable

_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i: ; preds = %bb.bi
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hs = load atomic i64, ptr %i.hr monotonic, align 8
  %i.ht = lshr i64 %i.hs, 16
  %i.hu = or i64 %i.ht, 1                         ; 2 uses
  %i.hv = add nuw nsw i64 %i.hu, 51
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = load atomic volatile i32, ptr %i.hw monotonic, align 4
  %i.hy = and i32 %i.hx, 15
  %.not.i172 = icmp eq i32 %i.hy, 7
  br i1 %.not.i172, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i
  %i.hz = add nuw nsw i64 %i.hu, 89
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = load i16, ptr %i.ia, align 2
  %9 = add i16 %i.ib, -1313
  %switch.i = icmp ult i16 %9, 3
  br i1 %switch.i, label %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.bo

_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.bk, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ic = add i64 %i.gw, 31
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = load atomic volatile i64, ptr %i.id monotonic, align 8
  store i64 %i.ie, ptr %6, align 8
  %i.if = call i64 @_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.ig = add i64 %i.if, 63
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = load i64, ptr %i.ih, align 8
  %i.ij = lshr i64 %i.ii, 32
  %i.ik = trunc nuw i64 %i.ij to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.il = call noundef zeroext i1 @_ZN2v88internal4wasm17TypeCanonicalizer18IsCanonicalSubtypeENS1_18CanonicalTypeIndexES3_(ptr noundef nonnull align 8 dereferenceable(8056) %i.gv, i32 %i.ik, i32 %i.gt) #22
  br i1 %i.il, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  store ptr @.str.61, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bm:                                            ; preds = %_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.im = load i64, ptr %1, align 8
  %i.in = add i64 %i.im, 31
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = load atomic volatile i64, ptr %i.io monotonic, align 8
  %i.iq = add i64 %i.ip, 7
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = load atomic volatile i64, ptr %i.ir acquire, align 8
  %i.it = add i64 %i.is, 15
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = icmp eq ptr %i.ix, %i.iz
  br i1 %i.ja, label %bb.bn, label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit152, !prof !16

bb.bn:                                            ; preds = %bb.bm
  %i.jb = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit152

_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit152: ; preds = %bb.bm, %bb.bn
  %.0.i.i151 = phi ptr [ %i.jb, %bb.bn ], [ %i.ix, %bb.bm ] ; 3 uses
  %i.jc = ptrtoint ptr %.0.i.i151 to i64
  %i.jd = add i64 %i.jc, 8
  %i.je = inttoptr i64 %i.jd to ptr
  store ptr %i.je, ptr %i.iw, align 8
  store i64 %i.iv, ptr %.0.i.i151, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bo:                                            ; preds = %bb.bk, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.bh
  %i.jf = call noundef zeroext i1 @_ZN2v88internal14WasmJSFunction16IsWasmJSFunctionENS0_6TaggedINS0_6ObjectEEE(i64 %i.gw)
  br i1 %i.jf, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.jg = load i64, ptr %1, align 8
  %i.jh = add i64 %i.jg, 31
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = load atomic volatile i64, ptr %i.ji monotonic, align 8
  store i64 %i.jj, ptr %7, align 8
  %i.jk = call i64 @_ZNK2v88internal18SharedFunctionInfo21wasm_js_function_dataEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.jl = add i64 %i.jk, 39
  %i.jm = inttoptr i64 %i.jl to ptr
  %i.jn = load i64, ptr %i.jm, align 8
  %i.jo = lshr i64 %i.jn, 32
  %i.jp = trunc nuw i64 %i.jo to i32
  %i.jq = icmp eq i32 %i.gt, %i.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.jq, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store ptr @.str.62, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.br:                                            ; preds = %bb.bp
  %i.jr = load i64, ptr %1, align 8
  %i.js = add i64 %i.jr, 31
  %i.jt = inttoptr i64 %i.js to ptr
  %i.ju = load atomic volatile i64, ptr %i.jt monotonic, align 8
  %i.jv = add i64 %i.ju, 7
  %i.jw = inttoptr i64 %i.jv to ptr
  %i.jx = load atomic volatile i64, ptr %i.jw acquire, align 8
  %i.jy = add i64 %i.jx, 15
  %i.jz = inttoptr i64 %i.jy to ptr
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8            ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = icmp eq ptr %i.kc, %i.ke
  br i1 %i.kf, label %bb.bs, label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit150, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.kg = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit150

_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit150: ; preds = %bb.br, %bb.bs
  %.0.i.i149 = phi ptr [ %i.kg, %bb.bs ], [ %i.kc, %bb.br ] ; 3 uses
  %i.kh = ptrtoint ptr %.0.i.i149 to i64
  %i.ki = add i64 %i.kh, 8
  %i.kj = inttoptr i64 %i.ki to ptr
  store ptr %i.kj, ptr %i.kb, align 8
  store i64 %i.ka, ptr %.0.i.i149, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bt:                                            ; preds = %bb.bo
  %i.kk = load i64, ptr %1, align 8
  %i.kl = call noundef zeroext i1 @_ZN2v88internal16WasmCapiFunction18IsWasmCapiFunctionENS0_6TaggedINS0_6ObjectEEE(i64 %i.kk)
  br i1 %i.kl, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.km = load i64, ptr %1, align 8
  store i64 %i.km, ptr %8, align 8
  %i.kn = call noundef zeroext i1 @_ZNK2v88internal16WasmCapiFunction16MatchesSignatureENS0_4wasm18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 %i.gt)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.kn, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr @.str.63, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ko = load i64, ptr %1, align 8
  %i.kp = add i64 %i.ko, 31
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load atomic volatile i64, ptr %i.kq monotonic, align 8
  %i.ks = add i64 %i.kr, 7
  %i.kt = inttoptr i64 %i.ks to ptr
  %i.ku = load atomic volatile i64, ptr %i.kt acquire, align 8
  %i.kv = add i64 %i.ku, 15
  %i.kw = inttoptr i64 %i.kv to ptr
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8            ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = icmp eq ptr %i.kz, %i.lb
  br i1 %i.lc, label %bb.bx, label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.bx:                                            ; preds = %bb.bw
  %i.ld = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_11WasmFuncRefEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.bw, %bb.bx
  %.0.i.i = phi ptr [ %i.ld, %bb.bx ], [ %i.kz, %bb.bw ] ; 3 uses
  %i.le = ptrtoint ptr %.0.i.i to i64
  %i.lf = add i64 %i.le, 8
  %i.lg = inttoptr i64 %i.lf to ptr
  store ptr %i.lg, ptr %i.ky, align 8
  store i64 %i.kx, ptr %.0.i.i, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

bb.by:                                            ; preds = %bb.bt
  %i.lh = load i64, ptr %1, align 8               ; 2 uses
  %i.li = trunc i64 %i.lh to i1
  br i1 %i.li, label %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.by
  %i.lj = add nsw i64 %i.lh, -1
  %i.lk = inttoptr i64 %i.lj to ptr               ; 3 uses
  %i.ll = load atomic volatile i64, ptr %i.lk monotonic, align 8
  %i.lm = add i64 %i.ll, 11
  %i.ln = inttoptr i64 %i.lm to ptr
  %i.lo = load atomic volatile i16, ptr %i.ln monotonic, align 2
  %i.lp = icmp eq i16 %i.lo, 301
  br i1 %i.lp, label %bb.bz, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit
  %i.lq = load atomic volatile i64, ptr %i.lk monotonic, align 8
  %i.lr = add i64 %i.lq, 11
  %i.ls = inttoptr i64 %i.lr to ptr
  %i.lt = load atomic volatile i16, ptr %i.ls monotonic, align 2
  %i.lu = icmp eq i16 %i.lt, 300
  br i1 %i.lu, label %bb.bz, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.bz:                                            ; preds = %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal12IsWasmStructENS0_6TaggedINS0_6ObjectEEE.exit
  %i.lv = load atomic volatile i64, ptr %i.lk monotonic, align 8
  %i.lw = add i64 %i.lv, 31
  %i.lx = inttoptr i64 %i.lw to ptr
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = add i64 %i.ly, 7
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = lshr i32 %i.mb, 8
  %i.md = and i32 %i.mc, 1048575
  %i.me = call noundef zeroext i1 @_ZN2v88internal4wasm17TypeCanonicalizer18IsCanonicalSubtypeENS1_18CanonicalTypeIndexES3_(ptr noundef nonnull align 8 dereferenceable(8056) %i.gv, i32 %i.md, i32 %i.gt) #22
  br i1 %i.me, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store ptr @.str.64, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.by, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEE.exit
  store ptr @.str.65, ptr %3, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
end_hunk_4
