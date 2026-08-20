inline.NumInlined: 20842
inline.NumDeleted: 3929
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE19DecodeReturnCallRefEPS8_NS1_10WasmOpcodeE:bb.a
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = sub i64 %i.bc, %.pre-phi
  %i.be = lshr exact i64 %i.bd, 2
  %i.bf = trunc i64 %i.be to i32
  %i.bg = add i32 %i.bb, %i.az
  %.not.i.i.i = icmp ugt i32 %i.bg, %i.bf
  br i1 %.not.i.i.i, label %bb.g, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i, !prof !7

bb.g:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef %i.az)
  %.pre18 = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i: ; preds = %bb.g, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i
  %i.bh = phi ptr [ %.pre18, %bb.g ], [ %i.aw, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i ]
  %i.bi = icmp sgt i32 %i.az, 0
  br i1 %i.bi, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %i.bj = load i64, ptr %i.ax, align 8
  %i.bk = add i64 %i.ay, 4294967295
  %i.bl = and i64 %i.bk, 4294967295
  %.not.not = icmp ugt i64 %i.bj, %i.bl
  br i1 %.not.not, label %.lr.ph.preheader.i, label %bb.h, !prof !16

bb.h:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.79) #27
  unreachable

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %.not2.i = icmp eq i32 %i.az, 0
  br i1 %.not2.i, label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.bm = and i64 %i.ay, 4294967295
  %.neg.i = mul nsw i64 %i.bm, -4
  %i.bn = getelementptr i8, ptr %i.bh, i64 %.neg.i
  store ptr %i.bn, ptr %i.am, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i, %.lr.ph.preheader.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 8, !range !5, !noundef !6
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE23DecodeReturnCallRefImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !16

bb.i:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %.val4.i.i = load i8, ptr %i.bs, align 8
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 737), align 1, !range !5, !noundef !6
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = icmp eq i8 %.val4.i.i, 0
  %or.cond.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.i.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler13ReturnCallRefEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EEPKNS0_9SignatureINS1_9ValueTypeEEEPSC_.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i.i: ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %.val5.i.i = load i32, ptr %i.bw, align 4
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 768), align 256 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -1
  %i.bz = icmp eq i32 %i.bx, %.val5.i.i
  %spec.select.i.i.i = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %spec.select.i.i.i, label %bb.j, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler13ReturnCallRefEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EEPKNS0_9SignatureINS1_9ValueTypeEEEPSC_.exit

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i.i
  %i.ca = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.ca, align 8
  %.val3.i.i = load ptr, ptr %i.h, align 8
  %i.cb = ptrtoint ptr %.val3.i.i to i64
  %i.cc = ptrtoint ptr %.val.i.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, 40
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11TierupCheckEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEii(ptr noundef nonnull align 8 dereferenceable(1284) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(1536) %0, i32 noundef %i.ce, i32 noundef %i.cn)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler13ReturnCallRefEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EEPKNS0_9SignatureINS1_9ValueTypeEEEPSC_.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler13ReturnCallRefEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EEPKNS0_9SignatureINS1_9ValueTypeEEEPSC_.exit: ; preds = %bb.i, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.i.i, %bb.j
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11CallRefImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueTypeEPKNS0_9SignatureISA_EENS0_12CallJumpModeE(ptr noundef nonnull align 8 dereferenceable(1284) %i.br, ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 %.sroa.03.0.copyload.i, ptr noundef nonnull %i.af, i32 noundef 1)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE23DecodeReturnCallRefImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE23DecodeReturnCallRefImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler13ReturnCallRefEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EEPKNS0_9SignatureINS1_9ValueTypeEEEPSC_.exit
  %.val.i = load ptr, ptr %i.ai, align 8          ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.val.i, i64 -448
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.al, align 8
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  store ptr %i.cs, ptr %i.am, align 8
  %i.ct = getelementptr inbounds i8, ptr %.val.i, i64 -471
  store i8 2, ptr %i.ct, align 1
  store i8 0, ptr %i.bo, align 8
  ret i32 %.sroa.5.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE39DecodeNopForTestingUnsupportedInLiftoffEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE43DecodeNopForTestingUnsupportedInLiftoffImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1049 ; 2 uses
  %.val.i.i = load i8, ptr %i.d, align 1
  %.not.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE43DecodeNopForTestingUnsupportedInLiftoffImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.c:                                             ; preds = %bb.b
  store i8 20, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, %i.l
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef %i.o, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.75)
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 785), align 1, !range !5, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 1023
  %.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE43DecodeNopForTestingUnsupportedInLiftoffImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75) #27
  unreachable

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE43DecodeNopForTestingUnsupportedInLiftoffImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.e, %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %.not = icmp eq i32 %i.x, -1
  %..i = zext i1 %.not to i32
  ret i32 %..i
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS8_NS1_10WasmOpcodeE(ptr nofree readnone captures(none) %0, i32 %1) #19 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 2, 7) i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE14DecodeDelegateEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::FixedSizeSignature.788", align 8 ; 7 uses
  %3 = alloca [1 x %"class.v8::internal::wasm::LiftoffVarState"], align 4 ; 4 uses
  %4 = alloca %"struct.v8::internal::wasm::LiftoffAssembler::CacheState", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8192
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.h, -1
  br i1 %.not.i.i.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.g) ; 4 uses
  %i.k = icmp ult i64 %i.j, 25769803776
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i64 %i.j, 4294967295
  tail call void @llvm.assume(i1 %i.l)
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.03.0.extract.trunc.i = trunc i64 %.sroa.04.0.i.i to i32
  %i.p = getelementptr i8, ptr %0, i64 1504       ; 4 uses
  %.val8 = load ptr, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 1512       ; 5 uses
  %.val9 = load ptr, ptr %i.q, align 8            ; 5 uses
  %i.r = ptrtoint ptr %.val9 to i64
  %i.s = ptrtoint ptr %.val8 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 472
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, -1                         ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.val9, i64 -472
  %5 = and i64 %.sroa.04.0.i.i, 4294967295        ; 2 uses
  %i.y = add i32 %.sroa.03.0.extract.trunc.i, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.w, i32 %i.y) ; 3 uses
  %i.z = add i32 %umax, -1                        ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %5, 1      ; 2 uses
  %indvars31 = trunc i64 %indvars.iv.next30 to i32 ; 2 uses
  %6 = icmp ugt i32 %i.w, %indvars31
  br i1 %6, label %.lr.ph, label %.critedge.i

.critedge2.i:                                     ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next33, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %7 = icmp ugt i32 %i.w, %indvars
  br i1 %7, label %.lr.ph, label %.critedge.i, !llvm.loop !256

.lr.ph:                                           ; preds = %bb.d, %.critedge2.i
  %.0.i26 = phi i32 [ %indvars, %.critedge2.i ], [ %indvars31, %bb.d ]
  %indvars.iv.next33 = phi i64 [ %indvars.iv.next, %.critedge2.i ], [ %indvars.iv.next30, %bb.d ] ; 3 uses
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.critedge2.i ], [ %5, %bb.d ]
  %8 = and i64 %indvars.iv.next33, 4294967295
  %i.aa = sub nsw i64 0, %8
  %i.ab = getelementptr inbounds [472 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 8
  %cond = icmp eq i8 %i.ac, 4
  br i1 %cond, label %..critedge.i_crit_edge, label %.critedge2.i, !llvm.loop !256

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  %9 = trunc nuw i64 %indvars.iv32 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge2.i, %bb.d, %..critedge.i_crit_edge
  %.0.in.i.lcssa = phi i32 [ %9, %..critedge.i_crit_edge ], [ %i.z, %bb.d ], [ %i.z, %.critedge2.i ] ; 2 uses
  %.0.i.lcssa = phi i32 [ %.0.i26, %..critedge.i_crit_edge ], [ %umax, %bb.d ], [ %umax, %.critedge2.i ] ; 2 uses
  tail call fastcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11FallThroughEv(ptr noundef nonnull align 8 dereferenceable(1536) %0)
  %i.ad = getelementptr inbounds i8, ptr %.val9, i64 -384
  %i.ae = load i8, ptr %i.ad, align 8, !range !5, !noundef !6
  %i.af = trunc nuw i8 %i.ae to i1
  %.val.i16.pre18 = load ptr, ptr %i.q, align 8   ; 4 uses
  br i1 %i.af, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeDelegateImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.e:                                             ; preds = %.critedge.i
  %.val = load ptr, ptr %i.p, align 8
  %i.ag = ptrtoint ptr %.val.i16.pre18 to i64
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 472
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds i8, ptr %.val.i16.pre18, i64 -943
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.aq = getelementptr inbounds i8, ptr %.val.i16.pre18, i64 -472
  %i.ar = zext i32 %.0.i.lcssa to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [472 x i8], ptr %i.aq, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.val9, i64 -16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 344
  tail call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ap, ptr noundef nonnull %i.aw) #24
  %i.ax = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 352
  %i.az = load i8, ptr %i.ay, align 8, !range !5, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.bb, ptr noundef nonnull align 8 dereferenceable(337) %i.ax) #24
  %.val.i = load ptr, ptr %i.p, align 8
  %.val15.i = load ptr, ptr %i.q, align 8
  %i.bc = ptrtoint ptr %.val15.i to i64
  %i.bd = ptrtoint ptr %.val.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 472
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add i32 %i.bg, -2
  %i.bi = icmp eq i32 %.0.in.i.lcssa, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -12
  %i.bm = getelementptr i8, ptr %0, i64 8
  %.val17.i = load ptr, ptr %i.bm, align 8
  %.val18.i = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 0, ptr %2, align 8, !alias.scope !257
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.bo, align 8, !alias.scope !257
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bn, ptr %i.bp, align 8, !alias.scope !257
  store i8 9, ptr %i.bn, align 8, !alias.scope !257
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bl, i64 12, i1 false)
  %i.bq = ptrtoint ptr %.val18.i to i64
  %i.br = ptrtoint ptr %.val17.i to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11CallBuiltinENS0_7BuiltinERKNS0_9SignatureINS1_9ValueKindEEESt16initializer_listINS1_15LiftoffVarStateEEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.ap, i32 noundef 1339, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %3, i64 1, i32 noundef %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.bv = load i8, ptr %i.bu, align 8
  %.not.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal4wasm16LiftoffAssembler8MaybeOSREv(ptr noundef nonnull align 8 dereferenceable(1284) %i.ap)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit

bb.k:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 456 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 352
  %i.bz = load i8, ptr %i.by, align 8, !range !5, !noundef !6
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler14MergeStackWithERNS2_10CacheStateEjNS2_13JumpDirectionE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ap, ptr noundef nonnull align 8 dereferenceable(337) %i.bx, i32 noundef 1, i32 noundef 0) #24
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 464
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = add i32 %i.cg, %i.ce
  call void @_ZN2v88internal4wasm16LiftoffAssembler17MergeIntoNewStateEjjj(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::LiftoffAssembler::CacheState") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1284) %i.ap, i32 noundef %i.cc, i32 noundef 1, i32 noundef %i.ch) #24
  %i.ci = load ptr, ptr %i.bw, align 8            ; 7 uses
  %i.cj = icmp eq ptr %i.ci, %4
  br i1 %i.cj, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.ci)
  %i.cn = load ptr, ptr %i.ck, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.cq, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cl to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = icmp sgt i64 %i.cy, 12
  br i1 %i.db, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %bb.p
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.da, ptr align 4 %i.cl, i64 %i.cy, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.dc = icmp eq i64 %i.cy, 12
  br i1 %i.dc, label %bb.s, label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull align 4 dereferenceable(12) %i.cl, i64 12, i1 false)
  br label %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i

_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.dd = load ptr, ptr %i.cz, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cy
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i, %bb.o
  %.sink16.i.i.i.i = phi i64 [ 16, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i ], [ 24, %bb.o ]
  %.sink.i.i.i.i = phi ptr [ %i.de, %_ZSt4moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit.i.i.i.i ], [ %i.ct, %bb.o ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink16.i.i.i.i
  store ptr %.sink.i.i.i.i, ptr %i.df, align 8
  store ptr %i.cm, ptr %i.ck, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cm, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.dh, ptr %i.di, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i

_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i: ; preds = %bb.t, %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 224
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(113) %i.dj, ptr noundef nonnull align 8 dereferenceable(113) %i.dk, i64 113, i1 false)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.dl = load ptr, ptr %i.bw, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 352
  store i8 1, ptr %i.dm, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheStateaSEOS3_.exit.i, %bb.l
  %i.dn = load ptr, ptr %i.bw, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 344
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(1284) %i.ap, ptr noundef nonnull %i.do, i32 noundef 1) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit: ; preds = %bb.u, %bb.j, %bb.i, %bb.g, %bb.f
  %.val14 = load ptr, ptr %i.q, align 8           ; 5 uses
  %i.dp = getelementptr inbounds i8, ptr %.val14, i64 -943
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %bb.v, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE18DecodeDelegateImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.v:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8DelegateEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS3_7ControlE.exit
  %.val4 = load ptr, ptr %i.p, align 8
end_hunk_0
