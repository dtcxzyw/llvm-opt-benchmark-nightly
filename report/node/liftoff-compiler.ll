inline.NumInlined: 20842
inline.NumDeleted: 3929
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeLocalTeeEPS8_NS1_10WasmOpcodeE:bb.a
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = and i64 %.sroa.04.0.i.i, 4294967295      ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %0, i64 1512
  %.val = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds i8, ptr %.val, i64 -448
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %i.r, 1
  %.not.i.i.i = icmp ugt i32 %i.ab, %i.aa
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 1)
  %.pre = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i: ; preds = %bb.e, %bb.d
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.u, %bb.d ]
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 2 uses
  store ptr %i.ad, ptr %i.t, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.ad, align 4
  %i.ae = load ptr, ptr %i.t, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.af, ptr %i.t, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.ah = load i8, ptr %i.ag, align 8, !range !5, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8LocalSetEjb(ptr noundef nonnull align 8 dereferenceable(1284) %i.aj, i32 noundef %.sroa.04.0.extract.trunc.i, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1529
  %i.al = load i8, ptr %i.ak, align 1, !range !5, !noundef !6
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20is_local_initializedEj.exit.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeLocalTeeImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20is_local_initializedEj.exit.i: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %.val.i = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.n ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeLocalTeeImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20is_local_initializedEj.exit.i
  store i8 1, ptr %i.ao, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8
  store i32 %.sroa.04.0.extract.trunc.i, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.au, ptr %i.ar, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeLocalTeeImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeLocalTeeImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.h, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20is_local_initializedEj.exit.i, %bb.g
  ret i32 %.sroa.5.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 2, 7) i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15DecodeGlobalGetEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %4 = alloca %"class.v8::internal::wasm::LiftoffRegList", align 4 ; 4 uses
  %5 = alloca %"class.v8::internal::Register", align 1 ; 4 uses
  %6 = alloca %"class.v8::internal::Register", align 1 ; 4 uses
  %7 = alloca %"class.v8::internal::wasm::LiftoffRegList", align 4 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.e, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.e to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.d) ; 4 uses
  %i.h = icmp ult i64 %i.g, 25769803776
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i64 %i.g, 4294967295
  tail call void @llvm.assume(i1 %i.i)
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.5.0.i.i.i = phi i32 [ 2, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %.sroa.04.0.i.i.i to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 24
  %i.w = and i64 %.sroa.04.0.i.i.i, 4294967295    ; 3 uses
  %i.x = icmp ugt i64 %i.v, %i.w
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.w ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ac, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.ae = load i8, ptr %i.ad, align 8, !range !5, !noundef !6
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalGetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.w ; 5 uses
  %i.an = load i32, ptr %i.am, align 4            ; 4 uses
  %i.ao = and i32 %i.an, 3
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aq = and i32 %i.an, 268435440
  %i.ar = add nsw i32 %i.aq, -5648                ; 2 uses
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.ar, i32 24) ; 2 uses
  %i.at = icmp ult i32 %i.as, 8
  br i1 %i.at, label %switch.lookup.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.au = and i32 %i.an, 268435427
  switch i32 %i.au, label %bb.i [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
    i32 514, label %.fold.split.i.i
    i32 2, label %.fold.split1.i.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.av = and i32 %i.an, 5
  %i.aw = icmp eq i32 %i.av, 5
  %i.ax = select i1 %i.aw, i8 10, i8 9
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

.fold.split.i.i:                                  ; preds = %bb.h
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

.fold.split1.i.i:                                 ; preds = %bb.h
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

switch.lookup.i.i:                                ; preds = %bb.f
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.as to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i: ; preds = %switch.lookup.i.i, %.fold.split1.i.i, %.fold.split.i.i, %bb.i, %bb.h
  %.0.i49.i = phi i8 [ %i.ax, %bb.i ], [ 0, %.fold.split1.i.i ], [ 12, %.fold.split.i.i ], [ 11, %bb.h ], [ %switch.offset.i.i, %switch.lookup.i.i ] ; 11 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = zext nneg i8 %.0.i49.i to i32
  %i.bb = shl nuw nsw i32 1, %i.ba
  %i.bc = and i32 %i.bb, %i.az
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i, !prof !7

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.i: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %i.bd = tail call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30MaybeBailoutForUnsupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, ptr noundef nonnull align 8 dereferenceable(1536) %0, i8 noundef zeroext %.0.i49.i, ptr noundef nonnull @.str.135)
  br i1 %i.bd, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalGetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.i, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %i.be = add nsw i8 %.0.i49.i, -9
  %i.bf = icmp ult i8 %i.be, 2
  br i1 %i.bf, label %bb.j, label %bb.ab

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i
  %8 = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %9 = load i8, ptr %8, align 4, !range !5, !noundef !6
  %10 = trunc nuw i8 %9 to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 21
  %i.bh = load i8, ptr %i.bg, align 1, !range !5
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i = select i1 %10, i1 %i.bi, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler49GetBaseAndOffsetForImportedMutableExternRefGlobalEPKNS1_10WasmGlobalEPNS1_14LiftoffRegListEPNS0_8RegisterESA_(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, ptr noundef %i.am, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.sroa.031.0.copyload.i = load i8, ptr %5, align 1 ; 18 uses
  %.sroa.029.0.copyload.i = load i8, ptr %6, align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bj = icmp eq i8 %.sroa.029.0.copyload.i, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 5 uses
  %scevgep83.i.i = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 2 uses
  store i64 0, ptr %2, align 8
  br i1 %i.bj, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.pre = and i8 %.sroa.031.0.copyload.i, 7       ; 3 uses
  switch i8 %.sroa.031.0.copyload.i, label %._crit_edge [
    i8 4, label %bb.m
    i8 12, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bm = or disjoint i8 %.pre, 32
  store i8 %i.bm, ptr %scevgep83.i.i, align 1
  %i.bn = icmp samesign ult i8 %.sroa.031.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = lshr i8 %.sroa.031.0.copyload.i, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %.fca.1.load85.i.i = phi ptr [ inttoptr (i64 2 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ]
  %i.bp = phi i64 [ 2, %bb.m ], [ 1, %bb.l ]      ; 2 uses
  %i.bq = phi i8 [ %i.bo, %bb.m ], [ 0, %bb.l ]   ; 2 uses
  switch i8 %.sroa.031.0.copyload.i, label %bb.n [
    i8 5, label %.thread.i.i
    i8 13, label %.thread.i.i
  ]

bb.n:                                             ; preds = %._crit_edge
  store i8 %.pre, ptr %i.bl, align 2
  %i.br = icmp samesign ult i8 %.sroa.031.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = lshr i8 %.sroa.031.0.copyload.i, 3
  %i.bt = or i8 %i.bq, %i.bs
  store i8 %i.bt, ptr %i.bk, align 1
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i

.thread.i.i:                                      ; preds = %._crit_edge, %._crit_edge
  %i.bu = or disjoint i8 %.pre, 64
  store i8 %i.bu, ptr %i.bl, align 2
  %i.bv = icmp samesign ult i8 %.sroa.031.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = lshr i8 %.sroa.031.0.copyload.i, 3
  %i.bx = or i8 %i.bq, %i.bw
  store i8 %i.bx, ptr %i.bk, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp
  store i8 0, ptr %i.by, align 1
  %i.bz = add nuw nsw i64 %i.bp, 1
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i

bb.o:                                             ; preds = %bb.k
  %i.cb = icmp samesign ult i8 %.sroa.029.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = shl nuw nsw i8 %.sroa.029.0.copyload.i, 3
  %i.cd = and i8 %i.cc, 56
  %i.ce = and i8 %.sroa.031.0.copyload.i, 7
  %i.cf = or disjoint i8 %i.cd, %i.ce
  store i8 %i.cf, ptr %scevgep83.i.i, align 1
  %i.cg = lshr i8 %.sroa.029.0.copyload.i, 2
  %i.ch = and i8 %i.cg, 2
  %i.ci = icmp samesign ult i8 %.sroa.031.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = lshr i8 %.sroa.031.0.copyload.i, 3
  %i.ck = or disjoint i8 %i.ch, %i.cj             ; 2 uses
  switch i8 %.sroa.031.0.copyload.i, label %bb.p [
    i8 5, label %.thread81.i.i
    i8 13, label %.thread81.i.i
  ]

bb.p:                                             ; preds = %bb.o
  store i8 4, ptr %i.bl, align 2
  store i8 %i.ck, ptr %i.bk, align 1
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i

.thread81.i.i:                                    ; preds = %bb.o, %bb.o
  store i8 68, ptr %i.bl, align 2
  store i8 %i.ck, ptr %i.bk, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 0, ptr %i.cl, align 4
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i

_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i: ; preds = %.thread81.i.i, %bb.p, %.thread.i.i, %bb.n
  %.fca.1.load.i.i = phi ptr [ inttoptr (i64 2 to ptr), %bb.p ], [ %.fca.1.load85.i.i, %bb.n ], [ %i.ca, %.thread.i.i ], [ inttoptr (i64 3 to ptr), %.thread81.i.i ]
  %.fca.0.load.i.i = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, i8 %.sroa.031.0.copyload.i, i64 %.fca.0.load.i.i, ptr %.fca.1.load.i.i) #24
  %i.cm = icmp samesign ult i8 %.sroa.031.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.cp = zext nneg i8 %.sroa.031.0.copyload.i to i32
  %i.cq = shl nuw nsw i32 1, %i.cp
  %i.cr = load i32, ptr %i.co, align 8
  %i.cs = or i32 %i.cr, %i.cq
  store i32 %i.cs, ptr %i.co, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.cu = zext nneg i8 %.sroa.031.0.copyload.i to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = icmp eq ptr %i.cz, %i.db
  br i1 %i.dc, label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.de = load i32, ptr %i.dd, align 4            ; 2 uses
  %i.df = icmp sgt i32 %i.de, -1
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = add nuw i32 %i.de, 15
  %i.dh = and i32 %i.dg, -8
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i: ; preds = %bb.q, %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i
  %i.di = phi i32 [ %i.dh, %bb.q ], [ 40, %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp eq ptr %i.cz, %i.dk
  br i1 %i.dl, label %bb.r, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.r:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.cn)
  %.pre.i.i.i = load ptr, ptr %i.cy, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.r, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i
  %i.dm = phi ptr [ %.pre.i.i.i, %bb.r ], [ %i.cz, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i.i ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store ptr %i.dn, ptr %i.cy, align 8
  store i8 1, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store i8 %.0.i49.i, ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i8 %.sroa.031.0.copyload.i, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 %i.di, ptr %i.dq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalGetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.s:                                             ; preds = %bb.j
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.dr, align 8
  %i.ds = and i32 %.sroa.0.0.copyload.i.i.i.i, 37839 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ds, 37839
  br i1 %.not.i.i.i, label %bb.u, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.dt = xor i32 %i.ds, 37839
  %i.du = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i32 %i.du to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

bb.u:                                             ; preds = %bb.s
  %i.dw = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, i32 37839) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi i8 [ %i.dv, %bb.t ], [ %i.dw, %bb.u ] ; 5 uses
  %i.dx = zext nneg i8 %.sroa.06.0.i.i.i to i32
  %i.dy = shl nuw nsw i32 1, %i.dx                ; 2 uses
  %i.dz = icmp samesign ult i8 %.sroa.06.0.i.i.i, 16
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ec = load i8, ptr %i.eb, align 8             ; 2 uses
  %i.ed = icmp eq i8 %i.ec, -1
  br i1 %i.ed, label %bb.v, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i, !prof !7

bb.v:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i
  %i.ee = tail call preserve_mostcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29LoadInstanceIntoRegister_SlowENS1_14LiftoffRegListENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, i32 %i.dy, i8 %.sroa.06.0.i.i.i)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i: ; preds = %bb.v, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i
  %.sroa.09.0.i = phi i8 [ %i.ee, %bb.v ], [ %i.ec, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %3, align 8
  store i64 1, ptr %i.eh, align 8
  switch i8 %.sroa.09.0.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i [
    i8 4, label %bb.w
    i8 12, label %bb.w
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i
  %.pre.i = and i8 %.sroa.09.0.i, 7
  br label %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i

bb.w:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ei = and i8 %.sroa.09.0.i, 7                 ; 2 uses
  %i.ej = or disjoint i8 %i.ei, 32
  store i8 %i.ej, ptr %scevgep.i.i, align 1
  %i.ek = icmp samesign ult i8 %.sroa.09.0.i, 16
  tail call void @llvm.assume(i1 %i.ek)
  store i64 2, ptr %i.eh, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i

_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i: ; preds = %bb.w, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i
  %.pre-phi.i = phi i8 [ %.pre.i, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i ], [ %i.ei, %bb.w ]
  %i.el = phi i64 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i ], [ 2, %bb.w ]
  %i.em = lshr i8 %.sroa.09.0.i, 3
  %i.en = or disjoint i8 %.pre-phi.i, -128
  store i8 %i.en, ptr %i.eg, align 2
  %i.eo = icmp samesign ult i8 %.sroa.09.0.i, 16
  tail call void @llvm.assume(i1 %i.eo)
  store i8 %i.em, ptr %i.ef, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.el
  store i32 191, ptr %i.ep, align 1
  %i.eq = load i64, ptr %i.eh, align 8
  %i.er = add i64 %i.eq, 4
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = load i64, ptr %3, align 8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, i8 %.sroa.06.0.i.i.i, i64 %i.et, ptr %i.es) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.eu = and i32 %i.dy, 37839
  %i.ev = xor i32 %i.eu, 37839                    ; 2 uses
  %.sroa.0.0.copyload.i.i.i50.i = load i32, ptr %i.dr, align 8
  %i.ew = xor i32 %.sroa.0.0.copyload.i.i.i50.i, -1
  %i.ex = and i32 %i.ev, %i.ew                    ; 2 uses
  %.not.i.i51.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i.i51.i, label %bb.y, label %bb.x, !prof !7

bb.x:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i
  %i.ey = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ex, i1 true)
  %i.ez = trunc nuw nsw i32 %i.ey to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit53.i

bb.y:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i
  %i.fa = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, i32 %i.ev) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit53.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit53.i: ; preds = %bb.y, %bb.x
  %.sroa.06.0.i.i52.i = phi i8 [ %i.ez, %bb.x ], [ %i.fa, %bb.y ] ; 5 uses
  %i.fb = zext nneg i8 %.sroa.06.0.i.i52.i to i32
  %i.fc = shl nuw nsw i32 1, %i.fb
  %i.fd = icmp samesign ult i8 %.sroa.06.0.i.i52.i, 16
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = shl nsw i32 %i.ff, 3
  %i.fh = add i32 %i.fg, 15
  %i.fi = zext i32 %i.fh to i64
  %i.fj = tail call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, i8 %.sroa.06.0.i.i.i, i8 -1, i64 noundef %i.fi, i8 noundef signext 0) ; 2 uses
  %i.fk = extractvalue { i64, ptr } %i.fj, 1
  %i.fl = extractvalue { i64, ptr } %i.fj, 0
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, i8 %.sroa.06.0.i.i52.i, i64 %i.fl, ptr %i.fk) #24
  %i.fm = load i32, ptr %i.dr, align 8
  %i.fn = or i32 %i.fm, %i.fc
  store i32 %i.fn, ptr %i.dr, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.fp = zext nneg i8 %.sroa.06.0.i.i52.i to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fq, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8            ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i56.i, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit53.i
  %i.fy = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %i.fz = load i32, ptr %i.fy, align 4            ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, -1
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = add nuw i32 %i.fz, 15
  %i.gc = and i32 %i.gb, -8
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i56.i

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i56.i: ; preds = %bb.z, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit53.i
  %i.gd = phi i32 [ %i.gc, %bb.z ], [ 40, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit53.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = icmp eq ptr %i.fu, %i.gf
  br i1 %i.gg, label %bb.aa, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit60.i, !prof !7

bb.aa:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i56.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.ea)
  %.pre.i.i58.i = load ptr, ptr %i.ft, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit60.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit60.i: ; preds = %bb.aa, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i56.i
  %i.gh = phi ptr [ %.pre.i.i58.i, %bb.aa ], [ %i.fu, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i56.i ] ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store ptr %i.gi, ptr %i.ft, align 8
  store i8 1, ptr %i.gh, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store i8 %.0.i49.i, ptr %i.gj, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i8 %.sroa.06.0.i.i52.i, ptr %i.gk, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 %i.gd, ptr %i.gl, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalGetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.ab:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.gm = call fastcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler22GetGlobalBaseAndOffsetEPKNS1_10WasmGlobalEPNS1_14LiftoffRegListEPj(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, ptr noundef %i.am, ptr noundef %7, ptr noundef %i.a)
  %i.gn = zext nneg i8 %.0.i49.i to i64           ; 2 uses
  %i.go = icmp samesign ult i8 %.0.i49.i, 11
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.gn
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = icmp ne i8 %.0.i49.i, 0
  tail call void @llvm.assume(i1 %i.gr)
  %.sroa.06.0.copyload.i = load i32, ptr %7, align 4
  %i.gs = zext nneg i8 %i.gq to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %i.gs
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.gt, align 4
  %i.gu = xor i32 %.sroa.06.0.copyload.i, -1
  %i.gv = and i32 %.sroa.0.0.copyload.i.i.i, %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %.sroa.0.0.copyload.i.i.i61.i = load i32, ptr %i.gw, align 8
  %i.gx = xor i32 %.sroa.0.0.copyload.i.i.i61.i, -1
  %i.gy = and i32 %i.gv, %i.gx                    ; 2 uses
  %.not.i.i62.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i62.i, label %bb.ad, label %bb.ac, !prof !7

bb.ac:                                            ; preds = %bb.ab
  %i.gz = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gy, i1 true)
  %i.ha = trunc nuw nsw i32 %i.gz to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit64.i

bb.ad:                                            ; preds = %bb.ab
  %i.hb = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, i32 %i.gv) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit64.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit64.i: ; preds = %bb.ad, %bb.ac
  %.sroa.06.0.i.i63.i = phi i8 [ %i.ha, %bb.ac ], [ %i.hb, %bb.ad ] ; 4 uses
  %i.hc = icmp samesign ult i8 %.0.i49.i, 9
  br i1 %i.hc, label %switch.lookup, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit64.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15DecodeGlobalGetEPS8_NS1_10WasmOpcodeE:bb.a
_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i67.i: ; preds = %bb.af, %switch.lookup
  %i.hx = phi i32 [ %i.hv, %bb.af ], [ 32, %switch.lookup ]
  %i.hy = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.gn
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = sext i8 %i.hz to i32
  %i.ib = add nsw i32 %i.hx, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = icmp eq ptr %i.hq, %i.id
  br i1 %i.ie, label %bb.ag, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit71.i, !prof !7

bb.ag:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i67.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.hh)
  %.pre.i.i69.i = load ptr, ptr %i.hp, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit71.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit71.i: ; preds = %bb.ag, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i67.i
  %i.if = phi ptr [ %.pre.i.i69.i, %bb.ag ], [ %i.hq, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i67.i ] ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store ptr %i.ig, ptr %i.hp, align 8
  store i8 1, ptr %i.if, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store i8 %.0.i49.i, ptr %i.ih, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i8 %.sroa.06.0.i.i63.i, ptr %i.ii, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i32 %i.ib, ptr %i.ij, align 4
  %i.ik = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 787), align 1, !range !5, !noundef !6
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.ah, label %bb.ai, !prof !7

bb.ah:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit71.i
  %i.im = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.im, align 8
  %.val48.i = load ptr, ptr %i.b, align 8
  %i.in = ptrtoint ptr %.val48.i to i64
  %i.io = ptrtoint ptr %.val.i to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = trunc i64 %i.ip to i32
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler20TraceGlobalOperationEjbi(ptr noundef nonnull align 8 dereferenceable(1284) %i.ag, i32 noundef %.sroa.04.0.extract.trunc.i.i, i1 noundef zeroext false, i32 noundef %i.iq)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalGetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalGetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.d, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.i, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit60.i, %bb.ai
  ret i32 %.sroa.5.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 2, 7) i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15DecodeGlobalSetEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Operand", align 8 ; 9 uses
  %3 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  %6 = alloca %"class.v8::internal::wasm::LiftoffRegList", align 4 ; 4 uses
  %7 = alloca %"class.v8::internal::Register", align 1 ; 4 uses
  %8 = alloca %"class.v8::internal::Register", align 1 ; 4 uses
  %9 = alloca %"class.v8::internal::wasm::LiftoffRegList", align 4 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.e, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.e to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.d) ; 4 uses
  %i.h = icmp ult i64 %i.g, 25769803776
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i64 %i.g, 4294967295
  tail call void @llvm.assume(i1 %i.i)
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.5.0.i.i.i = phi i32 [ 2, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %.sroa.04.0.i.i.i to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 24
  %i.w = and i64 %.sroa.04.0.i.i.i, 4294967295    ; 3 uses
  %i.x = icmp ugt i64 %i.v, %i.w
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.w
  %i.z = getelementptr i8, ptr %0, i64 1512
  %.val = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr inbounds i8, ptr %.val, i64 -448
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add i32 %i.ab, 1
  %.not.i.i.i = icmp ugt i32 %i.al, %i.ak
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 1)
  %.pre = load ptr, ptr %i.ad, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i: ; preds = %bb.e, %bb.d
  %i.am = phi ptr [ %.pre, %bb.e ], [ %i.ae, %bb.d ]
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  store ptr %i.an, ptr %i.ad, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.ap = load i8, ptr %i.ao, align 8, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalSetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !16

bb.f:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 26 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.w ; 5 uses
  %i.ay = load i32, ptr %i.ax, align 4            ; 4 uses
  %i.az = and i32 %i.ay, 3
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bb = and i32 %i.ay, 268435440
  %i.bc = add nsw i32 %i.bb, -5648                ; 2 uses
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 24) ; 2 uses
  %i.be = icmp ult i32 %i.bd, 8
  br i1 %i.be, label %switch.lookup.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.bf = and i32 %i.ay, 268435427
  switch i32 %i.bf, label %bb.j [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
    i32 514, label %.fold.split.i.i
    i32 2, label %.fold.split1.i.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.bg = and i32 %i.ay, 5
  %i.bh = icmp eq i32 %i.bg, 5
  %i.bi = select i1 %i.bh, i8 10, i8 9
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

.fold.split.i.i:                                  ; preds = %bb.i
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

.fold.split1.i.i:                                 ; preds = %bb.i
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

switch.lookup.i.i:                                ; preds = %bb.g
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.bd to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i: ; preds = %switch.lookup.i.i, %.fold.split1.i.i, %.fold.split.i.i, %bb.j, %bb.i
  %.0.i71.i = phi i8 [ %i.bi, %bb.j ], [ 0, %.fold.split1.i.i ], [ 12, %.fold.split.i.i ], [ 11, %bb.i ], [ %switch.offset.i.i, %switch.lookup.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = zext nneg i8 %.0.i71.i to i32
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = and i32 %i.bm, %i.bk
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i, !prof !7

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.i: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %i.bo = tail call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30MaybeBailoutForUnsupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, ptr noundef nonnull align 8 dereferenceable(1536) %0, i8 noundef zeroext %.0.i71.i, ptr noundef nonnull @.str.135)
  br i1 %i.bo, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalSetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.i, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %i.bp = add nsw i8 %.0.i71.i, -9
  %i.bq = icmp ult i8 %i.bp, 2
  br i1 %i.bq, label %bb.k, label %bb.ad

bb.k:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i
  %10 = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %11 = load i8, ptr %10, align 4, !range !5, !noundef !6
  %12 = trunc nuw i8 %11 to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 21
  %i.bs = load i8, ptr %i.br, align 1, !range !5
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond.i = select i1 %12, i1 %i.bt, i1 false
  br i1 %or.cond.i, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -12 ; 2 uses
  %.sroa.012.0.copyload.i = load i64, ptr %i.bw, align 4 ; 3 uses
  %.sroa.012.sroa.513.0.extract.shift.i = lshr i64 %.sroa.012.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.bw, ptr %i.bu, align 8
  %i.bx = and i64 %.sroa.012.0.copyload.i, 255
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.m, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ca = and i64 %.sroa.012.sroa.513.0.extract.shift.i, 255
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = trunc nuw i64 %.sroa.012.sroa.513.0.extract.shift.i to i32
  %i.cg = and i32 %i.cf, 255
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.ci = shl nuw i32 1, %i.cg
  %i.cj = xor i32 %i.ci, -1
  %i.ck = load i32, ptr %i.ch, align 8
  %i.cl = and i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.ch, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.020.4.extract.trunc.i = trunc i64 %.sroa.012.sroa.513.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.l
  %i.cm = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i64 %.sroa.012.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.o
  %.sroa.07.0.i.i = phi i8 [ %.sroa.020.4.extract.trunc.i, %bb.o ], [ %i.cm, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 5 uses
  %i.cn = zext nneg i8 %.sroa.07.0.i.i to i32
  %i.co = shl nuw nsw i32 1, %i.cn
  store i32 %i.co, ptr %6, align 4
  %i.cp = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler49GetBaseAndOffsetForImportedMutableExternRefGlobalEPKNS1_10WasmGlobalEPNS1_14LiftoffRegListEPNS0_8RegisterESA_(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, ptr noundef %i.ax, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %.sroa.028.0.copyload.i = load i8, ptr %7, align 1 ; 16 uses
  %.sroa.027.0.copyload.i = load i8, ptr %8, align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cq = icmp eq i8 %.sroa.027.0.copyload.i, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 5 uses
  %scevgep83.i.i = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 2 uses
  store i64 0, ptr %2, align 8
  br i1 %i.cq, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  switch i8 %.sroa.028.0.copyload.i, label %._crit_edge [
    i8 4, label %bb.q
    i8 12, label %bb.q
  ]

._crit_edge:                                      ; preds = %bb.p
  %.pre9 = and i8 %.sroa.028.0.copyload.i, 7
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = and i8 %.sroa.028.0.copyload.i, 7       ; 2 uses
  %i.cv = or disjoint i8 %i.cu, 32
  store i8 %i.cv, ptr %scevgep83.i.i, align 1
  %i.cw = icmp samesign ult i8 %.sroa.028.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = lshr i8 %.sroa.028.0.copyload.i, 3
  store i64 2, ptr %i.ct, align 8
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %.pre-phi = phi i8 [ %.pre9, %._crit_edge ], [ %i.cu, %bb.q ] ; 2 uses
  %.fca.1.load85.i.i = phi ptr [ inttoptr (i64 1 to ptr), %._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.q ]
  %i.cy = phi i64 [ 1, %._crit_edge ], [ 2, %bb.q ] ; 2 uses
  %i.cz = phi i8 [ 0, %._crit_edge ], [ %i.cx, %bb.q ] ; 2 uses
  switch i8 %.sroa.028.0.copyload.i, label %bb.s [
    i8 5, label %.thread.i.i
    i8 13, label %.thread.i.i
  ]

bb.s:                                             ; preds = %bb.r
  store i8 %.pre-phi, ptr %i.cs, align 2
  %i.da = icmp samesign ult i8 %.sroa.028.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.da)
  %i.db = lshr i8 %.sroa.028.0.copyload.i, 3
  %i.dc = or i8 %i.cz, %i.db
  store i8 %i.dc, ptr %i.cr, align 1
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i

.thread.i.i:                                      ; preds = %bb.r, %bb.r
  %i.dd = or disjoint i8 %.pre-phi, 64
  store i8 %i.dd, ptr %i.cs, align 2
  %i.de = icmp samesign ult i8 %.sroa.028.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.de)
  %i.df = lshr i8 %.sroa.028.0.copyload.i, 3
  %i.dg = or i8 %i.cz, %i.df
  store i8 %i.dg, ptr %i.cr, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy
  store i8 0, ptr %i.dh, align 1
  %i.di = add nuw nsw i64 %i.cy, 1
  %i.dj = inttoptr i64 %i.di to ptr
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i

bb.t:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.dk = icmp samesign ult i8 %.sroa.027.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = shl nuw nsw i8 %.sroa.027.0.copyload.i, 3
  %i.dm = and i8 %i.dl, 56
  %i.dn = and i8 %.sroa.028.0.copyload.i, 7
  %i.do = or disjoint i8 %i.dm, %i.dn
  store i8 %i.do, ptr %scevgep83.i.i, align 1
  %i.dp = lshr i8 %.sroa.027.0.copyload.i, 2
  %i.dq = and i8 %i.dp, 2
  %i.dr = icmp samesign ult i8 %.sroa.028.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = lshr i8 %.sroa.028.0.copyload.i, 3
  %i.dt = or disjoint i8 %i.dq, %i.ds             ; 2 uses
  switch i8 %.sroa.028.0.copyload.i, label %bb.u [
    i8 5, label %.thread81.i.i
    i8 13, label %.thread81.i.i
  ]

bb.u:                                             ; preds = %bb.t
  store i8 4, ptr %i.cs, align 2
  store i8 %i.dt, ptr %i.cr, align 1
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i

.thread81.i.i:                                    ; preds = %bb.t, %bb.t
  store i8 68, ptr %i.cs, align 2
  store i8 %i.dt, ptr %i.cr, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 0, ptr %i.du, align 4
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i

_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit.i: ; preds = %.thread81.i.i, %bb.u, %.thread.i.i, %bb.s
  %.fca.1.load.i.i = phi ptr [ inttoptr (i64 2 to ptr), %bb.u ], [ %.fca.1.load85.i.i, %bb.s ], [ %i.dj, %.thread.i.i ], [ inttoptr (i64 3 to ptr), %.thread81.i.i ] ; 2 uses
  %.fca.0.load.i.i = load i64, ptr %2, align 8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  tail call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i64 %.fca.0.load.i.i, ptr %.fca.1.load.i.i, i8 %.sroa.07.0.i.i) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 0, ptr %5, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.dv, align 4
  call void @_ZN2v88internal14MacroAssembler13CheckPageFlagENS0_8RegisterES2_iNS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.028.0.copyload.i, i8 10, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 0) #24
  call void @_ZN2v88internal14MacroAssembler9JumpIfSmiENS0_8RegisterEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.07.0.i.i, ptr noundef nonnull %5, i32 noundef 0) #24
  call void @_ZN2v88internal14MacroAssembler13CheckPageFlagENS0_8RegisterES2_iNS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.07.0.i.i, i8 10, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 0) #24
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 10, i64 %.fca.0.load.i.i, ptr %.fca.1.load.i.i, i32 noundef 8) #24
  call void @_ZN2v88internal14MacroAssembler32CallRecordWriteStubSaveRegistersENS0_8RegisterES2_NS0_14SaveFPRegsModeENS0_12StubCallModeE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.028.0.copyload.i, i8 10, i32 noundef 1, i32 noundef 1) #24
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalSetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.v:                                             ; preds = %bb.k
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.dw, align 8
  %i.dx = and i32 %.sroa.0.0.copyload.i.i.i.i, 37839 ; 2 uses
  %.not.i.i.i2 = icmp eq i32 %i.dx, 37839
  br i1 %.not.i.i.i2, label %bb.x, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.dy = xor i32 %i.dx, 37839
  %i.dz = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i32 %i.dz to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

bb.x:                                             ; preds = %bb.v
  %i.eb = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i32 37839) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i: ; preds = %bb.x, %bb.w
  %.sroa.06.0.i.i.i = phi i8 [ %i.ea, %bb.w ], [ %i.eb, %bb.x ] ; 7 uses
  %i.ec = zext nneg i8 %.sroa.06.0.i.i.i to i32
  %i.ed = shl nuw nsw i32 1, %i.ec                ; 2 uses
  %i.ee = icmp samesign ult i8 %.sroa.06.0.i.i.i, 16
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.eg = load i8, ptr %i.ef, align 8             ; 2 uses
  %i.eh = icmp eq i8 %i.eg, -1
  br i1 %i.eh, label %bb.y, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i, !prof !7

bb.y:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i
  %i.ei = tail call preserve_mostcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29LoadInstanceIntoRegister_SlowENS1_14LiftoffRegListENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i32 %i.ed, i8 %.sroa.06.0.i.i.i)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i: ; preds = %bb.y, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i
  %.sroa.010.0.i = phi i8 [ %i.ei, %bb.y ], [ %i.eg, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %4, align 8
  store i64 1, ptr %i.el, align 8
  switch i8 %.sroa.010.0.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i [
    i8 4, label %bb.z
    i8 12, label %bb.z
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i
  %.pre.i = and i8 %.sroa.010.0.i, 7
  br label %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i

bb.z:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit.i
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.em = and i8 %.sroa.010.0.i, 7                ; 2 uses
  %i.en = or disjoint i8 %i.em, 32
  store i8 %i.en, ptr %scevgep.i.i, align 1
  %i.eo = icmp samesign ult i8 %.sroa.010.0.i, 16
  tail call void @llvm.assume(i1 %i.eo)
  store i64 2, ptr %i.el, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i

_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i: ; preds = %bb.z, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i
  %.pre-phi.i = phi i8 [ %.pre.i, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i ], [ %i.em, %bb.z ]
  %i.ep = phi i64 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge.i ], [ 2, %bb.z ]
  %i.eq = lshr i8 %.sroa.010.0.i, 3
  %i.er = or disjoint i8 %.pre-phi.i, -128
  store i8 %i.er, ptr %i.ek, align 2
  %i.es = icmp samesign ult i8 %.sroa.010.0.i, 16
  tail call void @llvm.assume(i1 %i.es)
  store i8 %i.eq, ptr %i.ej, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ep
  store i32 191, ptr %i.et, align 1
  %i.eu = load i64, ptr %i.el, align 8
  %i.ev = add i64 %i.eu, 4
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = load i64, ptr %4, align 8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.06.0.i.i.i, i64 %i.ex, ptr %i.ew) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -12 ; 2 uses
  %.sroa.014.0.copyload.i = load i64, ptr %i.fa, align 4 ; 3 uses
  %.sroa.014.sroa.516.0.extract.shift.i = lshr i64 %.sroa.014.0.copyload.i, 32 ; 3 uses
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ez, i64 -4
  %.sroa.615.0.copyload.i = load i32, ptr %.sroa.615.0..sroa_idx.i, align 4
  store ptr %i.fa, ptr %i.ey, align 8
  %i.fb = and i64 %.sroa.014.0.copyload.i, 255
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.aa, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit53.i, !prof !16

bb.aa:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.fe = and i64 %.sroa.014.sroa.516.0.extract.shift.i, 255
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = add i32 %i.fg, -1                       ; 2 uses
  store i32 %i.fh, ptr %i.ff, align 4
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fj = trunc nuw i64 %.sroa.014.sroa.516.0.extract.shift.i to i32
  %i.fk = and i32 %i.fj, 255
  %i.fl = shl nuw i32 1, %i.fk
  %i.fm = xor i32 %i.fl, -1
  %i.fn = load i32, ptr %i.dw, align 8
  %i.fo = and i32 %i.fn, %i.fm
  store i32 %i.fo, ptr %i.dw, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.023.4.extract.trunc.i = trunc i64 %.sroa.014.sroa.516.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit64.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit53.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit.i
  %i.fp = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i64 %.sroa.014.0.copyload.i, i32 %.sroa.615.0.copyload.i, i32 %i.ed) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit64.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit64.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit53.i, %bb.ac
  %.sroa.07.0.i63.i = phi i8 [ %.sroa.023.4.extract.trunc.i, %bb.ac ], [ %i.fp, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit53.i ] ; 4 uses
  %i.fq = icmp samesign ult i8 %.sroa.07.0.i63.i, 16
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = shl nsw i32 %i.fs, 3
  %i.fu = add i32 %i.ft, 15
  %i.fv = zext i32 %i.fu to i64
  %i.fw = tail call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.06.0.i.i.i, i8 -1, i64 noundef %i.fv, i8 noundef signext 0) ; 2 uses
  %i.fx = extractvalue { i64, ptr } %i.fw, 0      ; 2 uses
  %i.fy = extractvalue { i64, ptr } %i.fw, 1      ; 2 uses
  tail call void @_ZN2v88internal14MacroAssembler16StoreTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i64 %i.fx, ptr %i.fy, i8 %.sroa.07.0.i63.i) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 0, ptr %3, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.fz, align 4
  call void @_ZN2v88internal14MacroAssembler13CheckPageFlagENS0_8RegisterES2_iNS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.06.0.i.i.i, i8 10, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %3, i32 noundef 0) #24
  call void @_ZN2v88internal14MacroAssembler9JumpIfSmiENS0_8RegisterEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.07.0.i63.i, ptr noundef nonnull %3, i32 noundef 0) #24
  call void @_ZN2v88internal14MacroAssembler13CheckPageFlagENS0_8RegisterES2_iNS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.07.0.i63.i, i8 10, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %3, i32 noundef 0) #24
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 10, i64 %i.fx, ptr %i.fy, i32 noundef 8) #24
  call void @_ZN2v88internal14MacroAssembler32CallRecordWriteStubSaveRegistersENS0_8RegisterES2_NS0_14SaveFPRegsModeENS0_12StubCallModeE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i8 %.sroa.06.0.i.i.i, i8 10, i32 noundef 1, i32 noundef 1) #24
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeGlobalSetImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.ad:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store i32 0, ptr %9, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ga = call fastcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler22GetGlobalBaseAndOffsetEPKNS1_10WasmGlobalEPNS1_14LiftoffRegListEPj(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, ptr noundef %i.ax, ptr noundef %9, ptr noundef %i.a)
  %.sroa.05.0.copyload.i = load i32, ptr %9, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -12 ; 2 uses
  %.sroa.017.0.copyload.i = load i64, ptr %i.gd, align 4 ; 3 uses
  %.sroa.017.sroa.519.0.extract.shift.i = lshr i64 %.sroa.017.0.copyload.i, 32 ; 3 uses
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gc, i64 -4
  %.sroa.618.0.copyload.i = load i32, ptr %.sroa.618.0..sroa_idx.i, align 4
  store ptr %i.gd, ptr %i.gb, align 8
  %i.ge = and i64 %.sroa.017.0.copyload.i, 255
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.ae, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit59.i, !prof !16

bb.ae:                                            ; preds = %bb.ad
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.gh = and i64 %.sroa.017.sroa.519.0.extract.shift.i, 255
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = add i32 %i.gj, -1                       ; 2 uses
  store i32 %i.gk, ptr %i.gi, align 4
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gm = trunc nuw i64 %.sroa.017.sroa.519.0.extract.shift.i to i32
  %i.gn = and i32 %i.gm, 255
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.gp = shl nuw i32 1, %i.gn
  %i.gq = xor i32 %i.gp, -1
  %i.gr = load i32, ptr %i.go, align 8
  %i.gs = and i32 %i.gr, %i.gq
  store i32 %i.gs, ptr %i.go, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.026.4.extract.trunc.i = trunc i64 %.sroa.017.sroa.519.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit69.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit59.i: ; preds = %bb.ad
  %i.gt = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ar, i64 %.sroa.017.0.copyload.i, i32 %.sroa.618.0.copyload.i, i32 %.sroa.05.0.copyload.i) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit69.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit69.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit59.i, %bb.ag
  %.sroa.07.0.i68.i = phi i8 [ %.sroa.026.4.extract.trunc.i, %bb.ag ], [ %i.gt, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit59.i ]
  %switch.tableidx = add i8 %.0.i71.i, -1         ; 2 uses
  %i.gu = icmp ult i8 %switch.tableidx, 8
  br i1 %i.gu, label %switch.lookup, label %bb.ah

bb.ah:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit69.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

switch.lookup:                                    ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit69.i
  %i.gv = shl nuw nsw i8 %switch.tableidx, 3
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE10PopControlEv:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.br, ptr noundef nonnull align 8 dereferenceable(337) %i.bt) #24
  call void @_ZN2v88internal4wasm16LiftoffAssembler18MergeFullStackWithERNS2_10CacheStateE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull align 8 dereferenceable(337) %i.al) #24
  call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.br, ptr noundef nonnull align 8 dereferenceable(337) %i.al) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.q:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds i8, ptr %.val12, i64 -376 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull %i.bv) #24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bx = load ptr, ptr %i.bu, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.bw, ptr noundef nonnull align 8 dereferenceable(337) %i.by) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.r:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.bz = getelementptr inbounds i8, ptr %.val12, i64 -392
  %i.ca = load i8, ptr %i.bz, align 8, !range !5, !noundef !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds i8, ptr %.val12, i64 -16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  %i.cf = load i8, ptr %i.ce, align 8, !range !5, !noundef !6
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = icmp ne i8 %i.n, 5
  %or.cond.not.i = and i1 %i.ch, %i.cg
  br i1 %or.cond.not.i, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds i8, ptr %.val12, i64 -448
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = add i32 %i.cl, %i.cj
  %i.cn = getelementptr inbounds i8, ptr %.val12, i64 -8
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = add i32 %i.cm, %i.co
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler26DropExceptionValueAtOffsetEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, i32 noundef %i.cp) #24
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds i8, ptr %.val12, i64 -471
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds i8, ptr %.val12, i64 -368
  %i.cu = getelementptr inbounds i8, ptr %.val12, i64 -408
  %i.cv = load i32, ptr %i.cu, align 8
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler14MergeStackWithERNS2_10CacheStateEjNS2_13JumpDirectionE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull align 8 dereferenceable(337) %i.ct, i32 noundef %i.cv, i32 noundef 0) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cx = getelementptr inbounds i8, ptr %.val12, i64 -368
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.cw, ptr noundef nonnull align 8 dereferenceable(337) %i.cx) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t, %bb.s
  %i.cy = getelementptr inbounds i8, ptr %.val12, i64 -16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 352
  %i.db = load i8, ptr %i.da, align 8, !range !5, !noundef !6
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.y, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dd = load i8, ptr %i.c, align 8
  %i.de = icmp eq i8 %i.dd, 5
  br i1 %i.de, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.df, align 4
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.aa:                                            ; preds = %bb.c
  %i.di = getelementptr inbounds i8, ptr %.val12, i64 -392
  %i.dj = load i8, ptr %i.di, align 8, !range !5, !noundef !6
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.ab, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds i8, ptr %.val12, i64 -471
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds i8, ptr %.val12, i64 -368
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler18MergeFullStackWithERNS2_10CacheStateE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull align 8 dereferenceable(337) %i.do) #24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dq = getelementptr inbounds i8, ptr %.val12, i64 -368
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.dp, ptr noundef nonnull align 8 dereferenceable(337) %i.dq) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i: ; preds = %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.q, %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i.i, %bb.g
  %i.dr = getelementptr inbounds i8, ptr %.val12, i64 -24 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.m, ptr noundef nonnull %i.dr) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit: ; preds = %bb.ae, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16FinishOneArmedIfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.i, %bb.b
  %.pr = load i8, ptr %i.c, align 8
  %i.du = icmp eq i8 %.pr, 3
  br i1 %i.du, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.thread, label %bb.af

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.thread: ; preds = %bb.c, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit
  %i.dv = getelementptr inbounds i8, ptr %.val12, i64 -471
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = icmp eq i8 %i.dw, 2
  br i1 %i.dx, label %bb.af, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit

bb.af:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.thread, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit
  %i.dy = getelementptr inbounds i8, ptr %.val12, i64 -408 ; 3 uses
  %i.dz = getelementptr i8, ptr %.val12, i64 -448
  %.val15 = load i32, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = zext i32 %.val15 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ec ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 6 uses
  store ptr %i.ed, ptr %i.ee, align 8
  %i.ef = load i32, ptr %i.dy, align 8            ; 4 uses
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds i8, ptr %.val12, i64 -400
  %.sroa.03.0.copyload.i = load i32, ptr %i.eh, align 8
  store i32 %.sroa.03.0.copyload.i, ptr %i.ed, align 4
  %i.ei = load ptr, ptr %i.ee, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store ptr %i.ej, ptr %i.ee, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit

bb.ah:                                            ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ed to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 2
  %i.eq = sext i32 %i.ef to i64
  %.not.i.i = icmp slt i64 %i.ep, %i.eq
  br i1 %.not.i.i, label %bb.ai, label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, !prof !7

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.es = load ptr, ptr %i.er, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i32 noundef %i.ef, ptr noundef %i.es)
  %.pre.i = load i32, ptr %i.dy, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i: ; preds = %bb.ai, %bb.ah
  %i.et = phi i32 [ %i.ef, %bb.ah ], [ %.pre.i, %bb.ai ]
  %.not.i = icmp eq i32 %i.et, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i
  %i.eu = getelementptr inbounds i8, ptr %.val12, i64 -400
  %.pre3.i = load ptr, ptr %i.ee, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i
  %i.ev = phi ptr [ %.pre3.i, %.lr.ph.i ], [ %i.ez, %bb.aj ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aj ] ; 2 uses
  %i.ew = load ptr, ptr %i.eu, align 8
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.ex, align 4
  store i32 %.sroa.0.0.copyload.i, ptr %i.ev, align 4
  %i.ey = load ptr, ptr %i.ee, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  store ptr %i.ez, ptr %i.ee, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fa = load i32, ptr %i.dy, align 8
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv.next.i, %i.fb
  br i1 %i.fc, label %bb.aj, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit, !llvm.loop !218

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit: ; preds = %bb.aj, %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, %bb.ag, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit.thread
  %i.fd = getelementptr i8, ptr %.val12, i64 -444
  %.val14 = load i32, ptr %i.fd, align 4          ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1529
  %i.ff = load i8, ptr %i.fe, align 1, !range !5, !noundef !6
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %.preheader.i, label %bb.al

.preheader.i:                                     ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fk = load ptr, ptr %i.fh, align 8
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = lshr exact i64 %i.fn, 2
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = icmp ult i32 %.val14, %i.fp
  br i1 %i.fq, label %.lr.ph.i16, label %bb.al

.lr.ph.i16:                                       ; preds = %.preheader.i
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1472
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i16
  %i.fs = phi ptr [ %i.fj, %.lr.ph.i16 ], [ %i.fy, %bb.ak ]
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -4 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4
  store ptr %i.ft, ptr %i.fi, align 8
  %i.fv = load ptr, ptr %i.fr, align 8
  %i.fw = zext i32 %i.fu to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  store i8 0, ptr %i.fx, align 1
  %i.fy = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fz = load ptr, ptr %i.fh, align 8
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = lshr exact i64 %i.gc, 2
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = icmp ult i32 %.val14, %i.ge
  br i1 %i.gf, label %bb.ak, label %bb.al, !llvm.loop !219

bb.al:                                            ; preds = %bb.ak, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE15PushMergeValuesEPNS6_7ControlEPNS1_5MergeINS1_9ValueBaseIS4_EEEE.exit, %.preheader.i
  %2 = getelementptr inbounds i8, ptr %.val12, i64 -471
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  %i.gg = getelementptr inbounds i8, ptr %.val12, i64 -392
  %i.gh = load i8, ptr %i.gg, align 8, !range !5
  %i.gi = trunc nuw i8 %i.gh to i1
  %or.cond = select i1 %4, i1 true, i1 %i.gi
  br i1 %or.cond, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gj = load i8, ptr %i.c, align 8
  %5 = load ptr, ptr %i.b, align 8                ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %5, i64 -472
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17, %bb.am
  %i.gl = phi ptr [ %i.go, %.lr.ph.i17 ], [ %5, %bb.am ] ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -472
  store ptr %i.gm, ptr %i.b, align 8
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -368
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.gn)
  %i.go = load ptr, ptr %i.b, align 8             ; 5 uses
  %.not.i18 = icmp eq ptr %i.go, %i.gk
  br i1 %.not.i18, label %_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit, label %.lr.ph.i17, !llvm.loop !251

_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit: ; preds = %.lr.ph.i17
  %i.gp = icmp eq i8 %i.gj, 0
  br i1 %i.gp, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit, label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 -471 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %bb.ao, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

bb.ao:                                            ; preds = %bb.an
  store i8 1, ptr %i.gq, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i8 0, ptr %i.gt, align 8
  %.val11.pre = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

.critedge:                                        ; preds = %bb.al
  %6 = load ptr, ptr %i.b, align 8                ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %6, i64 -472
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.lr.ph.i19, %.critedge
  %i.gv = phi ptr [ %i.gy, %.lr.ph.i19 ], [ %6, %.critedge ] ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -472
  store ptr %i.gw, ptr %i.b, align 8
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -368
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.gx)
  %i.gy = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i20 = icmp eq ptr %i.gy, %i.gu
  br i1 %.not.i20, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit, label %.lr.ph.i19, !llvm.loop !251

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit: ; preds = %.lr.ph.i19, %bb.ao, %bb.an, %_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit
  %.val11 = phi ptr [ %i.go, %_ZN2v88internal4wasm14FastZoneVectorINS1_12_GLOBAL__N_115LiftoffCompiler7ControlEE3popEj.exit ], [ %.val11.pre, %bb.ao ], [ %i.go, %bb.an ], [ %i.gy, %.lr.ph.i19 ]
  %i.gz = getelementptr inbounds i8, ptr %.val11, i64 -471
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = icmp eq i8 %i.ha, 0
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.hd = zext i1 %i.hb to i8
  store i8 %i.hd, ptr %i.hc, align 8
  ret void
}

declare void @_ZN2v88internal4wasm16LiftoffAssembler26DropExceptionValueAtOffsetEi(ptr noundef nonnull align 8 dereferenceable(824), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEj(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::wasm::LiftoffAssembler::CacheState", align 8 ; 14 uses
  %i.a = getelementptr i8, ptr %1, i64 1504
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 1512
  %.val6 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = ptrtoint ptr %.val6 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 472
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, -1
  %i.i = icmp eq i32 %2, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10ReturnImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %.val6, i64 -472
  %i.k = zext i32 %2 to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [472 x i8], ptr %i.j, i64 %i.l ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.val15.i = load i8, ptr %i.n, align 8
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 737), align 1, !range !5, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = icmp eq i8 %.val15.i, 0
  %or.cond.i.i = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 892
  %.val16.i = load i32, ptr %i.r, align 4
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 768), align 256 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  %i.u = icmp eq i32 %i.s, %.val16.i
  %spec.select.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %spec.select.i.i, label %bb.d, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i

bb.d:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i
  %i.v = load i8, ptr %i.m, align 8
  %i.w = icmp eq i8 %i.v, 3
  br i1 %i.w, label %bb.e, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  %i.ag = load i32, ptr %i.af, align 8            ; 4 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = xor i32 %i.ag, -1
  br label %_ZNK2v88internal5Label3posEv.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.ag, -1
  br label %_ZNK2v88internal5Label3posEv.exit.i

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

_ZNK2v88internal5Label3posEv.exit.i:              ; preds = %bb.h, %bb.f
  %.0.i.i = phi i32 [ %i.ai, %bb.f ], [ %i.aj, %bb.h ]
  %i.ak = sub nsw i32 %i.ae, %.0.i.i
  %i.al = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %1, i64 16
  %.val14.i = load ptr, ptr %i.am, align 8
  %i.an = ptrtoint ptr %.val14.i to i64
  %i.ao = ptrtoint ptr %.val.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11TierupCheckEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEii(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull readonly %1, i32 noundef %i.aq, i32 noundef %i.ak)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i: ; preds = %_ZNK2v88internal5Label3posEv.exit.i, %bb.d, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i, %bb.c
  %i.ar = load i8, ptr %i.m, align 8
  %i.as = icmp eq i8 %i.ar, 3                     ; 2 uses
  %.v.i.i = select i1 %i.as, i64 40, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %.v.i.i ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i8, ptr %i.au, align 8, !range !5, !noundef !6
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ay = load i32, ptr %i.at, align 8
  %i.az = zext i1 %i.as to i32
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler14MergeStackWithERNS2_10CacheStateEjNS2_13JumpDirectionE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull align 8 dereferenceable(337) %i.ax, i32 noundef %i.ay, i32 noundef %i.az) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler6BrImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS3_7ControlE.exit

bb.k:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = load i32, ptr %i.at, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = add i32 %i.bg, %i.be
  call void @_ZN2v88internal4wasm16LiftoffAssembler17MergeIntoNewStateEjjj(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::LiftoffAssembler::CacheState") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.bh) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, %3
  br i1 %i.bj, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.bi)
  %i.bn = load ptr, ptr %i.bk, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store ptr %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bl to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp sgt i64 %i.by, 12
  br i1 %i.cb, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bl, i64 %i.by, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cc = icmp eq i64 %i.by, 12
  br i1 %i.cc, label %bb.q, label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i64 12, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.cd = load ptr, ptr %i.bz, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.by
  br label %bb.r

bb.r:                                             ; preds = %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i, %bb.m
  %.sink16.i.i.i.i = phi i64 [ 16, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i ], [ 24, %bb.m ]
  %.sink.i.i.i.i = phi ptr [ %i.ce, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i ], [ %i.bt, %bb.m ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink16.i.i.i.i
  store ptr %.sink.i.i.i.i, ptr %i.cf, align 8
  store ptr %i.bm, ptr %i.bk, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector21ExpectArrayNewSegmentENS1_10WasmOpcodeENS1_18CanonicalTypeIndexEjjRj:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 424
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 40
  %.not28 = icmp ugt i64 %i.cf, %i.bx
  br i1 %.not28, label %bb.l, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.thread

bb.k:                                             ; preds = %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit42
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 248
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 24
  %.not27 = icmp ugt i64 %i.cn, %i.bx
  br i1 %.not27, label %.thread, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %i.bx
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = icmp ugt i32 %3, %i.cq
  %i.cs = sub nuw i32 %i.cq, %3
  %i.ct = icmp ugt i32 %4, %i.cs
  %or.cond = select i1 %i.cr, i1 true, i1 %i.ct
  br i1 %or.cond, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.thread, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit

.thread:                                          ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.bx
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %i.cw = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.cx = icmp ugt i32 %3, %i.cw
  %i.cy = sub nuw i32 %i.cw, %3
  %i.cz = icmp ugt i32 %4, %i.cy
  %or.cond49 = select i1 %i.cx, i1 true, i1 %i.cz
  br i1 %or.cond49, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.thread, label %.thread50

.thread50:                                        ; preds = %.thread
  %i.da = lshr i32 %.sroa.0.0.copyload.i, 8
  %i.db = add nuw nsw i32 %i.da, 2
  %i.dc = and i32 %i.db, 7
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit: ; preds = %bb.l, %.thread50
  %.0.i = phi i32 [ %i.dg, %.thread50 ], [ 8, %bb.l ]
  %i.dh = udiv i32 1073741799, %.0.i
  %i.di = icmp ugt i32 %4, %i.dh
  br i1 %i.di, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit
  store i32 %.sroa.0.0.extract.trunc.i40, ptr %5, align 4
  br label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.thread

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.thread: ; preds = %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit34.thread, %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit, %bb.m, %bb.j, %bb.k, %bb.l, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit, %.thread, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit, %bb.f, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit34, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit
  %.2 = phi i1 [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit34 ], [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit ], [ false, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit ], [ false, %.thread ], [ false, %bb.f ], [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit ], [ true, %bb.m ], [ false, %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit ], [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit34.thread ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14ExpectI32ConstERj(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = and i64 %i.g, 4294967295
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread, label %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit, !prof !7

_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread: ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.d, ptr noundef nonnull @.str.51, i32 noundef 1)
  %i.i = load ptr, ptr %i.a, align 8
  store ptr %i.i, ptr %i.c, align 8
  br label %bb.e

_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit: ; preds = %bb.a
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.d, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store ptr %i.j, ptr %i.c, align 8
  %.not = icmp eq i8 %.0.copyload.i.i.i.i.i, 65
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit
  %i.k = icmp ult ptr %i.j, %i.b
  br i1 %i.k, label %bb.c, label %.critedge.i.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.j, align 1               ; 2 uses
  %.not.i.i3 = icmp sgt i8 %i.l, -1
  br i1 %.not.i.i3, label %bb.d, label %.critedge.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw i32 %i.m, 25
  %i.o = ashr exact i32 %i.n, 25
  br label %_ZN2v88internal4wasm7Decoder12consume_i32vEPKc.exit

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %i.p = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.j, ptr noundef null) ; 3 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %i.p to i32
  %i.q = icmp ult i64 %i.p, 25769803776
  tail call void @llvm.assume(i1 %i.q)
  %i.r = lshr i64 %i.p, 32
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal4wasm7Decoder12consume_i32vEPKc.exit

_ZN2v88internal4wasm7Decoder12consume_i32vEPKc.exit: ; preds = %bb.d, %.critedge.i.i
  %i.s = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %.critedge.i.i ]
  %.sroa.09.0.i = phi i32 [ %i.o, %bb.d ], [ %.sroa.04.0.extract.trunc.i, %.critedge.i.i ]
  %.sroa.5.0.i = phi i64 [ 1, %bb.d ], [ %i.r, %.critedge.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.5.0.i
  store ptr %i.t, ptr %i.c, align 8
  store i32 %.sroa.09.0.i, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit, %_ZN2v88internal4wasm7Decoder12consume_i32vEPKc.exit
  %.not7 = phi i1 [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread ], [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit ], [ true, %_ZN2v88internal4wasm7Decoder12consume_i32vEPKc.exit ]
  ret i1 %.not7
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector41ExpectGlobalGetImportedImmutableExternrefEv(ptr noundef nonnull align 8 dereferenceable(148) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = and i64 %i.g, 4294967295
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread, label %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit, !prof !7

_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread: ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.d, ptr noundef nonnull @.str.51, i32 noundef 1)
  %i.i = load ptr, ptr %i.a, align 8
  store ptr %i.i, ptr %i.c, align 8
  br label %bb.g

_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit: ; preds = %bb.a
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.d, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store ptr %i.j, ptr %i.c, align 8
  %.not = icmp eq i8 %.0.copyload.i.i.i.i.i, 35
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit
  %i.k = icmp ult ptr %i.j, %i.b
  br i1 %i.k, label %bb.c, label %.critedge.i.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.j, align 1               ; 2 uses
  %.not.i.i8 = icmp sgt i8 %i.l, -1
  br i1 %.not.i.i8, label %bb.d, label %.critedge.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i8 %i.l to i64
  br label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %i.n = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.j, ptr noundef null) ; 3 uses
  %i.o = icmp ult i64 %i.n, 25769803776
  tail call void @llvm.assume(i1 %i.o)
  %i.p = lshr i64 %i.n, 32
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit

_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit: ; preds = %bb.d, %.critedge.i.i
  %i.q = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %.critedge.i.i ]
  %.sroa.09.0.i = phi i64 [ %i.m, %bb.d ], [ %i.n, %.critedge.i.i ] ; 2 uses
  %.sroa.5.0.i = phi i64 [ 1, %bb.d ], [ %i.p, %.critedge.i.i ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.09.0.i to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.5.0.i
  store ptr %i.r, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 76
  %i.v = load i32, ptr %i.u, align 4
  %.not7 = icmp ugt i32 %i.v, %.sroa.0.0.extract.trunc.i
  br i1 %.not7, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.x = and i64 %.sroa.09.0.i, 4294967295
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.x ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.z, align 8
  %1 = icmp ne i32 %.sroa.0.0.copyload, 3845
  %2 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %3 = load i8, ptr %2, align 4, !range !5
  %4 = trunc nuw i8 %3 to i1
  %or.cond = select i1 %1, i1 true, i1 %4
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ab, ptr %i.ac, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread, %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit, %bb.e, %bb.f, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit
  %.2 = phi i1 [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit ], [ false, %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit ], [ true, %bb.f ], [ false, %bb.e ], [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector25ExpectCallWellKnownImportENS1_15WellKnownImportE(ptr noundef nonnull align 8 dereferenceable(148) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = and i64 %i.g, 4294967295
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread, label %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit, !prof !7

_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread: ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.d, ptr noundef nonnull @.str.51, i32 noundef 1)
  %i.i = load ptr, ptr %i.a, align 8
  store ptr %i.i, ptr %i.c, align 8
  br label %bb.f

_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit: ; preds = %bb.a
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.d, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store ptr %i.j, ptr %i.c, align 8
  %.not = icmp eq i8 %.0.copyload.i.i.i.i.i, 16
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit
  %i.k = icmp ult ptr %i.j, %i.b
  br i1 %i.k, label %bb.c, label %.critedge.i.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.j, align 1               ; 2 uses
  %.not.i.i9 = icmp sgt i8 %i.l, -1
  br i1 %.not.i.i9, label %bb.d, label %.critedge.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i8 %i.l to i64
  br label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %i.n = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.j, ptr noundef null) ; 3 uses
  %i.o = icmp ult i64 %i.n, 25769803776
  tail call void @llvm.assume(i1 %i.o)
  %i.p = lshr i64 %i.n, 32
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit

_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit: ; preds = %bb.d, %.critedge.i.i
  %i.q = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %.critedge.i.i ]
  %.sroa.09.0.i = phi i64 [ %i.m, %bb.d ], [ %i.n, %.critedge.i.i ] ; 2 uses
  %.sroa.5.0.i = phi i64 [ 1, %bb.d ], [ %i.p, %.critedge.i.i ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.09.0.i to i32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.5.0.i
  store ptr %i.r, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 84
  %i.w = load i32, ptr %i.v, align 4
  %.not6 = icmp ugt i32 %i.w, %.sroa.0.0.extract.trunc.i
  br i1 %.not6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 696
  %sext = shl i64 %.sroa.09.0.i, 32
  %i.y = ashr exact i64 %sext, 32
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  %i.ab = load atomic i8, ptr %i.aa monotonic, align 1 ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.ab, 0
  %switch.selectcmp.case2 = icmp eq i8 %i.ab, 20
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread, %bb.e, %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit
  %.1 = phi i1 [ false, %_ZN2v88internal4wasm7Decoder12consume_u32vEPKc.exit ], [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit ], [ %switch.selectcmp, %bb.e ], [ false, %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not.i = icmp ult ptr %1, %i.b
  br i1 %.not.i, label %bb.b, label %.critedge17.i, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  %i.d = and i8 %i.c, 127
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = icmp sgt i8 %i.c, -1
  br i1 %i.f, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not.i3 = icmp ult ptr %i.g, %i.b
  br i1 %.not.i3, label %bb.d, label %.critedge17.i4, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 127
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = or disjoint i32 %i.k, %i.e               ; 2 uses
  %i.m = icmp sgt i8 %i.h, -1
  br i1 %i.m, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.not.i6 = icmp ult ptr %i.n, %i.b
  br i1 %.not.i6, label %bb.f, label %.critedge17.i7, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = or disjoint i32 %i.r, %i.l               ; 2 uses
  %i.t = icmp sgt i8 %i.o, -1
  br i1 %i.t, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %.not.i9 = icmp ult ptr %i.u, %i.b
  br i1 %.not.i9, label %bb.h, label %.critedge17.i10, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = and i8 %i.v, 127
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = or disjoint i32 %i.y, %i.s               ; 2 uses
  %i.aa = icmp sgt i8 %i.v, -1
  br i1 %i.aa, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not = icmp ult ptr %i.ab, %i.b
  br i1 %.not, label %bb.j, label %.thread, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.ab, align 1             ; 3 uses
  %i.ad = icmp slt i8 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.k, !prof !67

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ae = phi ptr [ @.str.879, %bb.i ], [ @.str.880, %bb.j ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.878, ptr noundef nonnull %i.ae, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = zext nneg i8 %i.ac to i32
  %i.ag = shl nuw i32 %i.af, 28
  %i.ah = or disjoint i32 %i.ag, %i.z
  %i.ai = icmp samesign ult i8 %i.ac, 16
  br i1 %i.ai, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.881)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge17.i10:                                  ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.u, ptr noundef nonnull @.str.878, ptr noundef nonnull @.str.879, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge17.i7:                                   ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.n, ptr noundef nonnull @.str.878, ptr noundef nonnull @.str.879, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge17.i4:                                   ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.878, ptr noundef nonnull @.str.879, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge17.i:                                    ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.878, ptr noundef nonnull @.str.879, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %.critedge17.i4, %bb.d, %bb.f, %.critedge17.i7, %bb.l, %.thread, %bb.k, %bb.h, %.critedge17.i10, %bb.b, %.critedge17.i
  %.sroa.6.0 = phi i64 [ 4294967296, %bb.b ], [ 0, %.critedge17.i ], [ 8589934592, %bb.d ], [ 0, %.critedge17.i4 ], [ 12884901888, %bb.f ], [ 0, %.critedge17.i7 ], [ 17179869184, %bb.h ], [ 0, %.critedge17.i10 ], [ 0, %.thread ], [ 0, %bb.l ], [ 21474836480, %bb.k ]
  %.sroa.0.0 = phi i32 [ %i.e, %bb.b ], [ 0, %.critedge17.i ], [ %i.l, %bb.d ], [ 0, %.critedge17.i4 ], [ %i.s, %bb.f ], [ 0, %.critedge17.i7 ], [ %i.z, %bb.h ], [ 0, %.critedge17.i10 ], [ 0, %.thread ], [ 0, %bb.l ], [ %i.ah, %bb.k ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not.i = icmp ult ptr %1, %i.b
  br i1 %.not.i, label %bb.b, label %.critedge17.i, !prof !16

bb.b:                                             ; preds = %bb.a
end_hunk_3
