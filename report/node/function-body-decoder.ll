Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/function-body-decoder?download=true
inline.NumInlined: 6125
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bai, i64 160
  %i.bam = load ptr, ptr %i.bal, align 8
  %i.ban = load ptr, ptr %i.bak, align 8          ; 2 uses
  %i.bao = ptrtoint ptr %i.bam to i64
  %i.bap = ptrtoint ptr %i.ban to i64
  %i.baq = sub i64 %i.bao, %i.bap
  %i.bar = sdiv exact i64 %i.baq, 24
  %i.bas = icmp ugt i64 %i.bar, %i.baj
  br i1 %i.bas, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1325, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1326, !prof !1131

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1325: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1322
  %i.bat = getelementptr inbounds nuw [24 x i8], ptr %i.ban, i64 %i.baj ; 3 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 20
  %i.bav = load i8, ptr %i.bau, align 4
  %i.baw = icmp eq i8 %i.bav, 3
  br i1 %i.baw, label %bb.gj, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1326, !prof !1132

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1326: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1322, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1325
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.bag, ptr noundef nonnull @.str.1017, i32 noundef %.sroa.04.0.extract.trunc.i.i1320)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.gj:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1325
  %i.bax = load ptr, ptr %i.bat, align 8          ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bat, i64 22
  %i.baz = load i8, ptr %i.bay, align 2, !range !1116, !noundef !1117
  %i.bba = load i8, ptr %i.bax, align 1, !range !1116, !noundef !1117
  %i.bbb = trunc nuw i8 %i.bba to i1
  br i1 %i.bbb, label %bb.gl, label %bb.gk, !prof !1114

bb.gk:                                            ; preds = %bb.gj
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1000, i32 noundef %.sroa.04.0.extract.trunc.i.i1320)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.gl:                                            ; preds = %bb.gj
  %i.bbc = icmp ult i32 %.sroa.04.0.extract.trunc.i.i1320, 1048576
  br i1 %i.bbc, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1328, label %bb.gm, !prof !1114

bb.gm:                                            ; preds = %bb.gl
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28) #19
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1328: ; preds = %bb.gl
  %i.bbd = shl nuw nsw i8 %i.baz, 4
  %i.bbe = or disjoint i8 %i.bbd, 99
  %i.bbf = zext nneg i8 %i.bbe to i32
  %i.bbg = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i1320, 8
  %i.bbh = or disjoint i32 %i.bbg, %i.bbf
  %i.bbi = or disjoint i32 %i.bbh, 4
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bax, i64 4
  %.sroa.0.0.copyload.i1329 = load i32, ptr %i.bbj, align 4 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i1329, label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1331 [
    i32 6928, label %bb.gn
    i32 7184, label %bb.gn
    i32 7440, label %bb.go
  ]

bb.gn:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1328, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1328
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1331

bb.go:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1328
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1331

_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1331: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1328, %bb.gn, %bb.go
  %.sroa.0.0.i1330 = phi i32 [ 5648, %bb.gn ], [ 6160, %bb.go ], [ %.sroa.0.0.copyload.i1329, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1328 ]
  %i.bbk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bbl = load ptr, ptr %i.bbk, align 8, !noalias !1642
  %i.bbm = getelementptr inbounds i8, ptr %i.bbl, i64 -88
  %i.bbn = load i32, ptr %i.bbm, align 8, !noalias !1642
  %i.bbo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bbp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bbq = load ptr, ptr %i.bbp, align 8, !noalias !1642 ; 2 uses
  %i.bbr = load ptr, ptr %i.bbo, align 8, !noalias !1642
  %i.bbs = ptrtoint ptr %i.bbq to i64
  %i.bbt = ptrtoint ptr %i.bbr to i64
  %i.bbu = sub i64 %i.bbs, %i.bbt
  %i.bbv = lshr exact i64 %i.bbu, 4
  %i.bbw = trunc i64 %i.bbv to i32
  %i.bbx = add i32 %i.bbn, 4
  %.not.i.i949 = icmp ugt i32 %i.bbx, %i.bbw
  br i1 %.not.i.i949, label %bb.gp, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeES9_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit, !prof !1119

bb.gp:                                            ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1331
  %i.bby = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 4), !noalias !1642 ; 0 uses
  %.pre2529 = load ptr, ptr %i.bbp, align 8, !noalias !1642
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeES9_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeES9_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit: ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1331, %bb.gp
  %i.bbz = phi ptr [ %i.bbq, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1331 ], [ %.pre2529, %bb.gp ]
  %i.bca = getelementptr i8, ptr %i.bbz, i64 -64
  store ptr %i.bca, ptr %i.bbp, align 8, !noalias !1642
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !1642
  store ptr %0, ptr %3, align 8, !noalias !1642
  %i.bcb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.bcb, align 8, !noalias !1642
  %i.bcc = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeES9_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 %i.bbi), !noalias !1642 ; 0 uses
  %i.bcd = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeES9_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 5648), !noalias !1642 ; 0 uses
  %i.bce = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeES9_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 %.sroa.0.0.i1330), !noalias !1642 ; 0 uses
  %i.bcf = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeES9_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 5648), !noalias !1642 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !1642
  %i.bcg = add i32 %.sroa.5.0.i.i.i1319, %2
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.gq:                                            ; preds = %bb.a
  %i.bch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bci = load ptr, ptr %i.bch, align 8          ; 2 uses
  %i.bcj = zext i32 %2 to i64                     ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bci, i64 %i.bcj ; 3 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bcm = load ptr, ptr %i.bcl, align 8
  %i.bcn = icmp ult ptr %i.bck, %i.bcm
  br i1 %i.bcn, label %bb.gr, label %.critedge.i.i.i.i1335, !prof !1114

bb.gr:                                            ; preds = %bb.gq
  %i.bco = load i8, ptr %i.bck, align 1           ; 2 uses
  %.not.i.i.i.i1339 = icmp sgt i8 %i.bco, -1
  br i1 %.not.i.i.i.i1339, label %bb.gs, label %.critedge.i.i.i.i1335, !prof !1114

bb.gs:                                            ; preds = %bb.gr
  %i.bcp = zext nneg i8 %i.bco to i64
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1340

.critedge.i.i.i.i1335:                            ; preds = %bb.gr, %bb.gq
  %i.bcq = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.bck, ptr noundef nonnull @.str.1016) ; 3 uses
  %i.bcr = icmp ult i64 %i.bcq, 25769803776
  tail call void @llvm.assume(i1 %i.bcr)
  %i.bcs = lshr i64 %i.bcq, 32
  %i.bct = trunc nuw nsw i64 %i.bcs to i32
  %.pre2526 = load ptr, ptr %i.bch, align 8
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1340

_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1340: ; preds = %bb.gs, %.critedge.i.i.i.i1335
  %i.bcu = phi ptr [ %i.bci, %bb.gs ], [ %.pre2526, %.critedge.i.i.i.i1335 ]
  %.sroa.05.0.i.i.i1336 = phi i64 [ %i.bcp, %bb.gs ], [ %i.bcq, %.critedge.i.i.i.i1335 ] ; 2 uses
  %.sroa.5.0.i.i.i1337 = phi i32 [ 1, %bb.gs ], [ %i.bct, %.critedge.i.i.i.i1335 ] ; 2 uses
  %.sroa.04.0.extract.trunc.i.i1338 = trunc i64 %.sroa.05.0.i.i.i1336 to i32 ; 3 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 %i.bcj ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bcx = load ptr, ptr %i.bcw, align 8          ; 2 uses
  %i.bcy = and i64 %.sroa.05.0.i.i.i1336, 4294967295 ; 2 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcx, i64 152
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcx, i64 160
  %i.bdb = load ptr, ptr %i.bda, align 8
  %i.bdc = load ptr, ptr %i.bcz, align 8          ; 2 uses
  %i.bdd = ptrtoint ptr %i.bdb to i64
  %i.bde = ptrtoint ptr %i.bdc to i64
  %i.bdf = sub i64 %i.bdd, %i.bde
  %i.bdg = sdiv exact i64 %i.bdf, 24
  %i.bdh = icmp ugt i64 %i.bdg, %i.bcy
  br i1 %i.bdh, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1343, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1344, !prof !1131

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1343: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1340
  %i.bdi = getelementptr inbounds nuw [24 x i8], ptr %i.bdc, i64 %i.bcy ; 3 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 20
  %i.bdk = load i8, ptr %i.bdj, align 4
  %i.bdl = icmp eq i8 %i.bdk, 3
  br i1 %i.bdl, label %bb.gt, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1344, !prof !1132

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1344: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1340, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1343
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.bcv, ptr noundef nonnull @.str.1017, i32 noundef %.sroa.04.0.extract.trunc.i.i1338)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.gt:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1343
  %i.bdm = load ptr, ptr %i.bdi, align 8
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdi, i64 22
  %i.bdo = load i8, ptr %i.bdn, align 2, !range !1116, !noundef !1117
  %i.bdp = zext nneg i32 %.sroa.5.0.i.i.i1337 to i64
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bcv, i64 %i.bdp ; 3 uses
  %i.bdr = load ptr, ptr %i.bcl, align 8
  %i.bds = icmp ult ptr %i.bdq, %i.bdr
  br i1 %i.bds, label %bb.gu, label %.critedge.i.i.i1345, !prof !1114

bb.gu:                                            ; preds = %bb.gt
  %i.bdt = load i8, ptr %i.bdq, align 1           ; 2 uses
  %.not.i.i.i1349 = icmp sgt i8 %i.bdt, -1
  br i1 %.not.i.i.i1349, label %bb.gv, label %.critedge.i.i.i1345, !prof !1114

bb.gv:                                            ; preds = %bb.gu
  %i.bdu = zext nneg i8 %i.bdt to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1350

.critedge.i.i.i1345:                              ; preds = %bb.gu, %bb.gt
  %i.bdv = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.bdq, ptr noundef nonnull @.str.1001) ; 3 uses
  %i.bdw = icmp ult i64 %i.bdv, 25769803776
  tail call void @llvm.assume(i1 %i.bdw)
  %i.bdx = lshr i64 %i.bdv, 32
  %i.bdy = trunc nuw nsw i64 %i.bdx to i32
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1350

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1350: ; preds = %bb.gv, %.critedge.i.i.i1345
  %.sroa.05.0.i.i1346 = phi i64 [ %i.bdu, %bb.gv ], [ %i.bdv, %.critedge.i.i.i1345 ] ; 3 uses
  %.sroa.5.0.i.i1347 = phi i32 [ 1, %bb.gv ], [ %i.bdy, %.critedge.i.i.i1345 ]
  %.sroa.04.0.extract.trunc.i1348 = trunc i64 %.sroa.05.0.i.i1346 to i32 ; 5 uses
  %i.bdz = icmp ult i32 %.sroa.04.0.extract.trunc.i1348, 10001
  br i1 %i.bdz, label %bb.gx, label %bb.gw, !prof !1114

bb.gw:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1350
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1002, i32 noundef %.sroa.04.0.extract.trunc.i1348, i64 noundef 10000)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.gx:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1350
  %i.bea = and i64 %.sroa.05.0.i.i1346, 16383     ; 3 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdm, i64 4
  %.sroa.0.0.copyload.i1351 = load i32, ptr %i.beb, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #17
  switch i32 %.sroa.0.0.copyload.i1351, label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1353 [
    i32 6928, label %bb.gy
    i32 7184, label %bb.gy
    i32 7440, label %bb.gz
  ]

bb.gy:                                            ; preds = %bb.gx, %bb.gx
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1353

bb.gz:                                            ; preds = %bb.gx
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1353

_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1353: ; preds = %bb.gx, %bb.gy, %bb.gz
  %.sroa.0.0.i1352 = phi i32 [ 5648, %bb.gy ], [ 6160, %bb.gz ], [ %.sroa.0.0.copyload.i1351, %bb.gx ]
  store i32 %.sroa.0.0.i1352, ptr %43, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #17
  call void @_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %42, i64 noundef %i.bea, ptr noundef nonnull align 4 dereferenceable(4) %43, ptr noundef nonnull align 1 dereferenceable(1) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #17
  %i.bec = load ptr, ptr %42, align 8
  %i.bed = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bee = load ptr, ptr %i.bed, align 8
  %i.bef = getelementptr inbounds i8, ptr %i.bee, i64 -88
  %i.beg = load i32, ptr %i.bef, align 8
  %i.beh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bei = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  %i.bej = load ptr, ptr %i.bei, align 8          ; 2 uses
  %i.bek = load ptr, ptr %i.beh, align 8
  %i.bel = ptrtoint ptr %i.bej to i64
  %i.bem = ptrtoint ptr %i.bek to i64
  %i.ben = sub i64 %i.bel, %i.bem
  %i.beo = lshr exact i64 %i.ben, 4
  %i.bep = trunc i64 %i.beo to i32
  %i.beq = add i32 %i.beg, %.sroa.04.0.extract.trunc.i1348
  %.not.i.i773 = icmp ugt i32 %i.beq, %i.bep
  br i1 %.not.i.i773, label %bb.ha, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i, !prof !1119

bb.ha:                                            ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1353
  %i.ber = call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %.sroa.04.0.extract.trunc.i1348) ; 0 uses
  %.pre2527 = load ptr, ptr %i.bei, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i: ; preds = %bb.ha, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1353
  %i.bes = phi ptr [ %.pre2527, %bb.ha ], [ %i.bej, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit1353 ]
  %i.bet = sub nsw i64 0, %i.bea
  %i.beu = getelementptr inbounds [16 x i8], ptr %i.bes, i64 %i.bet
  %.not = icmp eq i32 %.sroa.04.0.extract.trunc.i1348, 0
  br i1 %.not, label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder17FullValidationTagEEEE3popEj.exit1358, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i
  %wide.trip.count = and i64 %.sroa.05.0.i.i1346, 16383
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i ] ; 4 uses
  %i.bev = getelementptr inbounds nuw [16 x i8], ptr %i.beu, i64 %indvars.iv ; 2 uses
  %.sroa.01.0.copyload.i776 = load ptr, ptr %i.bev, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bev, i64 8
  %.sroa.2.0.copyload.i777 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 4 uses
  %62 = getelementptr [4 x i8], ptr %i.bec, i64 %indvars.iv
  %.sroa.2.0.copyload.i777.a = load i32, ptr %62, align 4 ; 4 uses
  %exitcond.not.a = icmp eq i32 %.sroa.2.0.copyload.i777, %.sroa.2.0.copyload.i777.a
  br i1 %exitcond.not.a, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, !prof !1114

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i: ; preds = %.lr.ph
  %i.bew = load ptr, ptr %i.bcw, align 8          ; 2 uses
  %i.bex = call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i777, i32 %.sroa.2.0.copyload.i777.a, ptr noundef %i.bew, ptr noundef %i.bew) #17
  %i.bey = icmp eq i32 %.sroa.2.0.copyload.i777, 514
  %or.cond2404 = or i1 %i.bey, %i.bex
  %i.bez = icmp eq i32 %.sroa.2.0.copyload.i777.a, 514
  %or.cond2405 = or i1 %i.bez, %or.cond2404
  br i1 %or.cond2405, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i, label %bb.hb, !prof !1123

bb.hb:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i
  %i.bfa = trunc nuw nsw i64 %indvars.iv to i32
  call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE12PopTypeErrorEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %i.bfa, ptr %.sroa.01.0.copyload.i776, i32 %.sroa.2.0.copyload.i777, i32 %.sroa.2.0.copyload.i777.a)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i: ; preds = %.lr.ph, %bb.hb, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond2484.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond2484.not, label %.lr.ph.preheader.i1356, label %.lr.ph, !llvm.loop !1

.lr.ph.preheader.i1356:                           ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i
  %i.bfb = load ptr, ptr %i.bei, align 8
  %.neg.i1357 = mul nsw i64 %i.bea, -16
  %i.bfc = getelementptr i8, ptr %i.bfb, i64 %.neg.i1357
  store ptr %i.bfc, ptr %i.bei, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder17FullValidationTagEEEE3popEj.exit1358

_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder17FullValidationTagEEEE3popEj.exit1358: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i, %.lr.ph.preheader.i1356
  %i.bfd = icmp ult i32 %.sroa.04.0.extract.trunc.i.i1338, 1048576
  br i1 %i.bfd, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1362, label %bb.hc, !prof !1114

bb.hc:                                            ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder17FullValidationTagEEEE3popEj.exit1358
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28) #19
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1362: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder17FullValidationTagEEEE3popEj.exit1358
  %i.bfe = shl nuw nsw i8 %i.bdo, 4
  %i.bff = or disjoint i8 %i.bfe, 99
  %i.bfg = zext nneg i8 %i.bff to i32
  %i.bfh = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i1338, 8
  %i.bfi = or disjoint i32 %i.bfh, %i.bfg         ; 2 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0169.0.copyload = load i32, ptr %i.bfj, align 8
  %i.bfk = and i32 %.sroa.0169.0.copyload, 8
  %.not.i1363 = icmp eq i32 %i.bfk, 0
  br i1 %.not.i1363, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1366, label %bb.hd, !prof !1114

bb.hd:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1362
  %i.bfl = or disjoint i32 %i.bfi, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1366

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1366: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1362, %bb.hd
  %.sroa.0.0.i1365 = phi i32 [ %i.bfl, %bb.hd ], [ %i.bfi, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1362 ] ; 2 uses
  %i.bfm = load ptr, ptr %i.bch, align 8          ; 3 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bfo = load i8, ptr %i.bfn, align 8, !range !1116, !noundef !1117
  %i.bfp = trunc nuw i8 %i.bfo to i1
  %i.bfq = and i32 %.sroa.0.0.i1365, 16
  %i.bfr = icmp eq i32 %i.bfq, 0
  %or.cond2408.not = select i1 %i.bfp, i1 %i.bfr, i1 false, !prof !1122
  br i1 %or.cond2408.not, label %bb.he, label %.critedge.i566, !prof !1122

bb.he:                                            ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1366
  %i.bfs = call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.bfm)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.bfm, ptr noundef nonnull @.str.82, ptr noundef %i.bfs)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit570

.critedge.i566:                                   ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1366
  %i.bft = load ptr, ptr %i.bei, align 8          ; 2 uses
  store ptr %i.bfm, ptr %i.bft, align 8
  %.sroa.2.0..sroa_idx.i1367 = getelementptr inbounds nuw i8, ptr %i.bft, i64 8
  store i32 %.sroa.0.0.i1365, ptr %.sroa.2.0..sroa_idx.i1367, align 8
  %i.bfu = load ptr, ptr %i.bei, align 8
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 16
  store ptr %i.bfv, ptr %i.bei, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit570

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit570: ; preds = %.critedge.i566, %bb.he
  %i.bfw = add i32 %.sroa.5.0.i.i.i1337, %2
  %i.bfx = add i32 %i.bfw, %.sroa.5.0.i.i1347
  %i.bfy = load ptr, ptr %42, align 8             ; 3 uses
  %.not.i.i.i1368 = icmp eq ptr %i.bfy, null
  br i1 %.not.i.i.i1368, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit, label %bb.hf

bb.hf:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit570
  %i.bfz = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.bga = load ptr, ptr %i.bfz, align 8
  %i.bgb = ptrtoint ptr %i.bga to i64
  %i.bgc = ptrtoint ptr %i.bfy to i64
  %i.bgd = sub i64 %i.bgb, %i.bgc
  call void @_ZdlPvm(ptr noundef nonnull %i.bfy, i64 noundef %i.bgd) #18
  br label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit570, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.hg:                                            ; preds = %bb.a
  %i.bge = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bgf = load ptr, ptr %i.bge, align 8
  %i.bgg = getelementptr inbounds i8, ptr %i.bgf, i64 -88
  %i.bgh = load i32, ptr %i.bgg, align 8
  %i.bgi = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bgj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.bgk = load ptr, ptr %i.bgj, align 8          ; 2 uses
  %i.bgl = load ptr, ptr %i.bgi, align 8
  %i.bgm = ptrtoint ptr %i.bgk to i64
  %i.bgn = ptrtoint ptr %i.bgl to i64
  %i.bgo = sub i64 %i.bgm, %i.bgn
  %i.bgp = lshr exact i64 %i.bgo, 4
  %i.bgq = trunc i64 %i.bgp to i32
  %i.bgr = add i32 %i.bgh, 1
  %.not.i.i743 = icmp ugt i32 %i.bgr, %i.bgq
  br i1 %.not.i.i743, label %bb.hh, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit745, !prof !1119

bb.hh:                                            ; preds = %bb.hg
  %i.bgs = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 1) ; 0 uses
  %.pre2525 = load ptr, ptr %i.bgj, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit745

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit745: ; preds = %bb.hg, %bb.hh
  %i.bgt = phi ptr [ %i.bgk, %bb.hg ], [ %.pre2525, %bb.hh ] ; 2 uses
  %i.bgu = getelementptr i8, ptr %i.bgt, i64 -16  ; 2 uses
  store ptr %i.bgu, ptr %i.bgj, align 8
  %.sroa.01.0.copyload.i1371 = load ptr, ptr %i.bgu, align 8
  %.sroa.2.0..sroa_idx.i1372 = getelementptr i8, ptr %i.bgt, i64 -8
  %.sroa.2.0.copyload.i1373 = load i32, ptr %.sroa.2.0..sroa_idx.i1372, align 8 ; 4 uses
  %i.bgv = icmp eq i32 %.sroa.2.0.copyload.i1373, 5648
  br i1 %i.bgv, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1374, !prof !1114

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1374: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit745
  %i.bgw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bgx = load ptr, ptr %i.bgw, align 8          ; 2 uses
  %i.bgy = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i1373, i32 5648, ptr noundef %i.bgx, ptr noundef %i.bgx) #17
  %i.bgz = icmp eq i32 %.sroa.2.0.copyload.i1373, 514
  %or.cond.i1375 = or i1 %i.bgz, %i.bgy
  br i1 %or.cond.i1375, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit, label %bb.hi, !prof !1123

bb.hi:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1374
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE12PopTypeErrorEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 0, ptr %.sroa.01.0.copyload.i1371, i32 %.sroa.2.0.copyload.i1373, i32 5648)
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit745, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1374, %bb.hi
  %i.bha = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bhb = load ptr, ptr %i.bha, align 8          ; 3 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bhd = load i8, ptr %i.bhc, align 8, !range !1116, !noundef !1117
  %i.bhe = trunc nuw i8 %i.bhd to i1
  br i1 %i.bhe, label %bb.hj, label %.critedge.i571

bb.hj:                                            ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit
  %i.bhf = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.bhb)
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.bhb, ptr noundef nonnull @.str.82, ptr noundef %i.bhf)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

.critedge.i571:                                   ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit
  %i.bhg = load ptr, ptr %i.bgj, align 8          ; 2 uses
  store ptr %i.bhb, ptr %i.bhg, align 8
  %.sroa.2.0..sroa_idx.i1383 = getelementptr inbounds nuw i8, ptr %i.bhg, i64 8
  store i32 3073, ptr %.sroa.2.0..sroa_idx.i1383, align 8
  %i.bhh = load ptr, ptr %i.bgj, align 8
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 16
  store ptr %i.bhi, ptr %i.bgj, align 8
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.hk:                                            ; preds = %bb.a
  %i.bhj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bhk = load i32, ptr %i.bhj, align 8
  %i.bhl = and i32 %i.bhk, 16
  %.not2458 = icmp eq i32 %i.bhl, 0
  br i1 %.not2458, label %bb.hl, label %bb.hm, !prof !1119

bb.hl:                                            ; preds = %bb.hk
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_10WasmOpcodeEEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1003, i32 noundef 64287)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.hm:                                            ; preds = %bb.hk
  %i.bhm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bhn = load ptr, ptr %i.bhm, align 8          ; 2 uses
  %i.bho = load i64, ptr %i.bhn, align 8
  %i.bhp = or i64 %i.bho, 16
  store i64 %i.bhp, ptr %i.bhn, align 8
  %i.bhq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bhr = load ptr, ptr %i.bhq, align 8
  %i.bhs = getelementptr inbounds i8, ptr %i.bhr, i64 -88
  %i.bht = load i32, ptr %i.bhs, align 8
  %i.bhu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bhv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.bhw = load ptr, ptr %i.bhv, align 8          ; 2 uses
  %i.bhx = load ptr, ptr %i.bhu, align 8
  %i.bhy = ptrtoint ptr %i.bhw to i64
  %i.bhz = ptrtoint ptr %i.bhx to i64
  %i.bia = sub i64 %i.bhy, %i.bhz
  %i.bib = lshr exact i64 %i.bia, 4
  %i.bic = trunc i64 %i.bib to i32
  %i.bid = add i32 %i.bht, 1
  %.not.i.i = icmp ugt i32 %i.bid, %i.bic
  br i1 %.not.i.i, label %bb.hn, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit, !prof !1119

bb.hn:                                            ; preds = %bb.hm
  %i.bie = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 1) ; 0 uses
  %.pre2524 = load ptr, ptr %i.bhv, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit: ; preds = %bb.hm, %bb.hn
  %i.bif = phi ptr [ %i.bhw, %bb.hm ], [ %.pre2524, %bb.hn ] ; 2 uses
  %i.big = getelementptr i8, ptr %i.bif, i64 -16  ; 2 uses
  store ptr %i.big, ptr %i.bhv, align 8
  %.sroa.01.0.copyload.i1386 = load ptr, ptr %i.big, align 8
  %.sroa.2.0..sroa_idx.i1387 = getelementptr i8, ptr %i.bif, i64 -8
  %.sroa.2.0.copyload.i1388 = load i32, ptr %.sroa.2.0..sroa_idx.i1387, align 8 ; 4 uses
  %i.bih = icmp eq i32 %.sroa.2.0.copyload.i1388, 5648
  br i1 %i.bih, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1398, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1389, !prof !1114

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1389: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit
  %i.bii = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_0
