inline.NumInlined: 4642
inline.NumDeleted: 1995
begin_hunk_0_@_ZN2v812_GLOBAL__N_121WebAssemblyGlobalTypeERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load i64, ptr %i.y, align 8              ; 4 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp eq i16 %i.ag, 2150
  br i1 %i.ah, label %bb.b, label %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9TypeErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.30) #20
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

bb.b:                                             ; preds = %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ai = add i64 %i.z, 63
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp ugt i64 %i.ak, 4294967295
  %i.am = add i64 %i.z, 55
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32              ; 5 uses
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, 1048575                  ; 2 uses
  %i.at = and i32 %i.aq, 3
  switch i32 %i.at, label %bb.d [
    i32 0, label %bb.c
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.au = and i32 %i.aq, -268435201
  %.not.i.i = icmp eq i32 %i.au, 16
  %i.av = add nsw i32 %i.as, -22
  %i.aw = icmp ult i32 %i.av, 8
  %or.cond5.i = select i1 %.not.i.i, i1 %i.aw, i1 false, !prof !27
  br i1 %or.cond5.i, label %_ZNK2v88internal16WasmGlobalObject4typeEv.exit, label %_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i, !prof !27

bb.d:                                             ; preds = %bb.b
  %i.ax = icmp samesign ult i32 %i.as, 22
  %i.ay = and i32 %i.aq, 8
  %i.az = icmp eq i32 %i.ay, 0
  %or.cond.i.not7.i = and i1 %i.az, %i.ax
  %i.ba = icmp ult i64 %i.ao, 1152921504606846976
  %or.cond.i = and i1 %i.ba, %or.cond.i.not7.i
  br i1 %or.cond.i, label %_ZNK2v88internal16WasmGlobalObject4typeEv.exit, label %_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i, !prof !27

bb.e:                                             ; preds = %bb.b
  %.old.i = icmp ult i64 %i.ao, 1152921504606846976
  br i1 %.old.i, label %_ZNK2v88internal16WasmGlobalObject4typeEv.exit, label %_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i, !prof !28

_ZNK2v88internal4wasm13ValueTypeBase8is_validEv.exit.thread.i: ; preds = %bb.e, %bb.d, %bb.c
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.153) #23
  unreachable

_ZNK2v88internal16WasmGlobalObject4typeEv.exit:   ; preds = %bb.c, %bb.d, %bb.e
  %i.bb = call ptr @_ZN2v88internal4wasm16GetTypeForGlobalEPNS0_7IsolateEbNS1_9ValueTypeE(ptr noundef %i.d, i1 noundef zeroext %i.al, i32 %i.aq) #20 ; 2 uses
  %i.bc = load ptr, ptr %0, align 8               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = icmp eq ptr %i.bb, null
  br i1 %i.be, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %_ZNK2v88internal16WasmGlobalObject4typeEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = add i64 %i.bh, 648
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load i64, ptr %i.bj, align 8
  store i64 %i.bk, ptr %i.bd, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

bb.g:                                             ; preds = %_ZNK2v88internal16WasmGlobalObject4typeEv.exit
  %i.bl = load i64, ptr %i.bb, align 8
  store i64 %i.bl, ptr %i.bd, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %bb.g, %bb.f, %_ZN2v88internal18IsWasmGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @_ZN2v88internal4wasm12ErrorThrowerD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.q) #20
  %i.bm = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2v812_GLOBAL__N_112_GLOBAL__N_114WasmJSApiScopeD2Ev.exit, label %bb.h, !prof !17

bb.h:                                             ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = add i64 %i.bo, 560
  %i.bq = inttoptr i64 %i.bp to ptr               ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.j, align 8
  store ptr %i.bs, ptr %i.bq, align 8
  store ptr %i.br, ptr %i.j, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i16, label %_ZN2v812_GLOBAL__N_112_GLOBAL__N_114WasmJSApiScopeD2Ev.exit, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  store ptr %i.by, ptr %i.bw, align 8
  %i.bz = load ptr, ptr %i.e, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.bz) #20
  br label %_ZN2v812_GLOBAL__N_112_GLOBAL__N_114WasmJSApiScopeD2Ev.exit

_ZN2v812_GLOBAL__N_112_GLOBAL__N_114WasmJSApiScopeD2Ev.exit: ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v812_GLOBAL__N_118WebAssemblyTagTypeERKNS_20FunctionCallbackInfoINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 {
bb.a:
  %1 = alloca %"class.v8::(anonymous namespace)::(anonymous namespace)::WasmJSApiScope", align 8 ; 13 uses
  %2 = alloca %"class.v8::internal::Signature", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  store ptr %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = add i64 %i.f, 560
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @.str.269, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %_ZN2v88internal15IsWasmTagObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal15IsWasmTagObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal15IsWasmTagObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp eq i16 %i.ag, 2157
  br i1 %i.ah, label %bb.b, label %_ZN2v88internal15IsWasmTagObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal15IsWasmTagObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal15IsWasmTagObjectENS0_6TaggedINS0_6ObjectEEE.exit
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9TypeErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.34) #20
  br label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit

bb.b:                                             ; preds = %_ZN2v88internal15IsWasmTagObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ai = add i64 %i.z, 23
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = ashr i32 %i.aq, 2                       ; 5 uses
  %i.as = sext i32 %i.ar to i64                   ; 7 uses
  %i.at = icmp slt i32 %i.ar, 0
  br i1 %i.at, label %bb.c, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.241) #23
  unreachable

_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit, label %_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.au = shl nuw nsw i64 %i.as, 2
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #21 ; 14 uses
  %min.iters.check = icmp ult i32 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.i
  %n.vec = and i64 %i.as, 2147483640              ; 3 uses
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.av, i64 %i.aw  ; 2 uses
  %i.ay = and i64 %i.as, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2), ptr %next.gep, align 4
  store <4 x i32> splat (i32 2), ptr %i.ba, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.as
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.i, %middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.av, %_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.i ], [ %i.ax, %middle.block ]
  %.057.i.i.i.i.i.ph = phi i64 [ %i.as, %_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.i ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i32 2, ptr %.08.i.i.i.i.i, align 4
  %i.bc = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !59

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.ax, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.as
  %i.bf = ptrtoint ptr %.lcssa to i64             ; 5 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  switch i32 %i.ar, label %bb.h [
    i32 4, label %bb.g
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %.loopexit
  %i.bi = load i32, ptr %i.bh, align 8
  store i32 %i.bi, ptr %i.av, align 1
  br label %_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit

bb.e:                                             ; preds = %.loopexit
  %i.bj = load i64, ptr %i.bh, align 8
  store i64 %i.bj, ptr %i.av, align 1
  br label %_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit

bb.f:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.av, ptr noundef nonnull align 4 dereferenceable(12) %i.bh, i64 12, i1 false)
  br label %_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit

bb.g:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.bh, i64 16, i1 false)
  br label %_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit

bb.h:                                             ; preds = %.loopexit
  %3 = shl nuw nsw i64 %i.as, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 4 %i.bh, i64 %3, i1 false)
  br label %_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit

_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit: ; preds = %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0.lcssa.i.i.i.i.i70 = phi i64 [ %i.bf, %bb.d ], [ %i.bf, %bb.h ], [ %i.bf, %bb.g ], [ %i.bf, %bb.f ], [ %i.bf, %bb.e ], [ 0, %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.sroa.026.069 = phi ptr [ %i.av, %bb.d ], [ %i.av, %bb.h ], [ %i.av, %bb.g ], [ %i.av, %bb.f ], [ %i.av, %bb.e ], [ null, %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 4 uses
  %.sroa.11.068 = phi i64 [ %i.bg, %bb.d ], [ %i.bg, %bb.h ], [ %i.bg, %bb.g ], [ %i.bg, %bb.f ], [ %i.bg, %bb.e ], [ 0, %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.bk = ptrtoint ptr %.sroa.026.069 to i64      ; 2 uses
  %i.bl = sub i64 %.0.lcssa.i.i.i.i.i70, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  store i64 0, ptr %2, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.026.069, ptr %i.bo, align 8
  %i.bp = call ptr @_ZN2v88internal4wasm18GetTypeForFunctionEPNS0_7IsolateEPKNS0_9SignatureINS1_9ValueTypeEEEb(ptr noundef %i.d, ptr noundef nonnull %2, i1 noundef zeroext true) #20 ; 2 uses
  %i.bq = load ptr, ptr %0, align 8               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = icmp eq ptr %i.bp, null
  br i1 %i.bs, label %bb.i, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, !prof !17

bb.i:                                             ; preds = %_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = add i64 %i.bv, 648
  %i.bx = inttoptr i64 %i.bw to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit, %bb.i
  %storemerge.in = phi ptr [ %i.bx, %bb.i ], [ %i.bp, %_ZN2v88internal12PodArrayBaseINS0_4wasm9ValueTypeENS0_9ByteArrayEE8copy_outEiPS3_i.exit ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not.i.i.i = icmp eq ptr %.sroa.026.069, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit
  %i.by = sub i64 %.sroa.11.068, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.026.069, i64 noundef %i.by) #22
  br label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit: ; preds = %bb.j, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, %_ZN2v88internal15IsWasmTagObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @_ZN2v88internal4wasm12ErrorThrowerD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.q) #20
  %i.bz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN2v812_GLOBAL__N_112_GLOBAL__N_114WasmJSApiScopeD2Ev.exit, label %bb.k, !prof !17

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = add i64 %i.cb, 560
  %i.cd = inttoptr i64 %i.cc to ptr               ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %i.j, align 8
  store ptr %i.cf, ptr %i.cd, align 8
  store ptr %i.ce, ptr %i.j, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.cg, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i, label %_ZN2v812_GLOBAL__N_112_GLOBAL__N_114WasmJSApiScopeD2Ev.exit, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  store ptr %i.cl, ptr %i.cj, align 8
  %i.cm = load ptr, ptr %i.e, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.cm) #20
  br label %_ZN2v812_GLOBAL__N_112_GLOBAL__N_114WasmJSApiScopeD2Ev.exit

_ZN2v812_GLOBAL__N_112_GLOBAL__N_114WasmJSApiScopeD2Ev.exit: ; preds = %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v812_GLOBAL__N_119WebAssemblyFunctionERKNS_20FunctionCallbackInfoINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 {
bb.a:
  %1 = alloca %"class.v8::(anonymous namespace)::(anonymous namespace)::WasmJSApiScope", align 8 ; 13 uses
  %2 = alloca %"class.v8::internal::Zone", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::SignatureBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 17 uses
  store ptr %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = add i64 %i.f, 560
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 14 uses
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @.str.270, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.u, align 8
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = and i64 %i.y, 3
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.b, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.ab = add nsw i64 %i.y, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i16, ptr %i.af, align 2
  %.not.i114 = icmp eq i16 %i.ag, 131
  br i1 %.not.i114, label %_ZNK2v85Value16QuickIsUndefinedEv.exit, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread

_ZNK2v85Value16QuickIsUndefinedEv.exit:           ; preds = %bb.b
  %i.ah = add i64 %i.y, 39
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %.mask = and i64 %i.aj, -4294967296
  %.not239 = icmp eq i64 %.mask, 17179869184
  br i1 %.not239, label %bb.c, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread

bb.c:                                             ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9TypeErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull @.str.271) #20
  br label %bb.ar

_ZNK2v85Value16QuickIsUndefinedEv.exit.thread:    ; preds = %bb.b, %bb.a, %_ZNK2v85Value16QuickIsUndefinedEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = trunc i64 %i.al to i32
  %.not.i112 = icmp sgt i32 %i.am, 0
  br i1 %.not.i112, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 648
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit113

bb.e:                                             ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit113

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit113: ; preds = %bb.d, %bb.e
  %.sroa.0163.0 = phi ptr [ %i.at, %bb.e ], [ %i.ar, %bb.d ]
  %i.au = call noundef zeroext i1 @_ZNK2v85Value8IsObjectEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0163.0) #20
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit113
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9TypeErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull @.str.272) #20
  br label %bb.ar

bb.g:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit113
  %i.av = load i64, ptr %i.ak, align 8
  %i.aw = trunc i64 %i.av to i32
  %.not.i110 = icmp sgt i32 %i.aw, 0
  br i1 %.not.i110, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = add i64 %i.ba, 648
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit111

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit111

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit111: ; preds = %bb.h, %bb.i
  %.sroa.0162.0 = phi ptr [ %i.be, %bb.i ], [ %i.bc, %bb.h ] ; 2 uses
  %i.bf = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #20 ; 7 uses
end_hunk_0
