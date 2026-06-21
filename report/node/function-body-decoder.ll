inline.NumInlined: 6125
inline.NumDeleted: 1092
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE21DecodeStringRefOpcodeENS1_10WasmOpcodeEj:bb.a
  %or.cond.i1143 = or i1 %i.aku, %i.akt
  br i1 %or.cond.i1143, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1150, label %bb.eh, !prof !39

bb.eh:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1142
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE12PopTypeErrorEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 0, ptr %.sroa.01.0.copyload.i1139, i32 %.sroa.2.0.copyload.i1141, i32 4613), !noalias !181
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1150

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1150: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1142, %bb.eh
  %i.akv = load ptr, ptr %i.ake, align 8, !noalias !181 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 16
  %.sroa.01.0.copyload.i1152 = load ptr, ptr %i.akw, align 8, !noalias !181
  %.sroa.2.0..sroa_idx.i1153 = getelementptr inbounds nuw i8, ptr %i.akv, i64 24
  %.sroa.2.0.copyload.i1154 = load i32, ptr %.sroa.2.0..sroa_idx.i1153, align 8, !noalias !181 ; 4 uses
  %i.akx = icmp eq i32 %.sroa.2.0.copyload.i1154, 4613
  br i1 %i.akx, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1163, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1155, !prof !6

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1155: ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1150
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.akz = load ptr, ptr %i.aky, align 8, !noalias !181 ; 2 uses
  %i.ala = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i1154, i32 4613, ptr noundef %i.akz, ptr noundef %i.akz) #17, !noalias !181
  %i.alb = icmp eq i32 %.sroa.2.0.copyload.i1154, 514
  %or.cond.i1156 = or i1 %i.alb, %i.ala
  br i1 %or.cond.i1156, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1163, label %bb.ei, !prof !39

bb.ei:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1155
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE12PopTypeErrorEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 1, ptr %.sroa.01.0.copyload.i1152, i32 %.sroa.2.0.copyload.i1154, i32 4613), !noalias !181
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1163

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1163: ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1150, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1155, %bb.ei
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ald = load ptr, ptr %i.alc, align 8
  %i.ale = load ptr, ptr %i.ake, align 8          ; 2 uses
  store ptr %i.ald, ptr %i.ale, align 8
  %.sroa.2.0..sroa_idx.i1164 = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store i32 5648, ptr %.sroa.2.0..sroa_idx.i1164, align 8
  %i.alf = load ptr, ptr %i.ake, align 8
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  store ptr %i.alg, ptr %i.ake, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit310

bb.ej:                                            ; preds = %bb.c
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ali = load ptr, ptr %i.alh, align 8
  %i.alj = getelementptr inbounds i8, ptr %i.ali, i64 -88
  %i.alk = load i32, ptr %i.alj, align 8
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.alm = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.aln = load ptr, ptr %i.alm, align 8          ; 2 uses
  %i.alo = load ptr, ptr %i.all, align 8
  %i.alp = ptrtoint ptr %i.aln to i64
  %i.alq = ptrtoint ptr %i.alo to i64
  %i.alr = sub i64 %i.alp, %i.alq
  %i.als = lshr exact i64 %i.alr, 4
  %i.alt = trunc i64 %i.als to i32
  %i.alu = add i32 %i.alk, 1
  %.not.i.i = icmp ugt i32 %i.alu, %i.alt
  br i1 %.not.i.i, label %bb.ek, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit, !prof !12

bb.ek:                                            ; preds = %bb.ej
  %i.alv = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 1) ; 0 uses
  %.pre1726 = load ptr, ptr %i.alm, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit: ; preds = %bb.ej, %bb.ek
  %i.alw = phi ptr [ %i.aln, %bb.ej ], [ %.pre1726, %bb.ek ] ; 2 uses
  %i.alx = getelementptr i8, ptr %i.alw, i64 -16  ; 2 uses
  store ptr %i.alx, ptr %i.alm, align 8
  %.sroa.01.0.copyload.i1166 = load ptr, ptr %i.alx, align 8
  %.sroa.2.0..sroa_idx.i1167 = getelementptr i8, ptr %i.alw, i64 -8
  %.sroa.2.0.copyload.i1168 = load i32, ptr %.sroa.2.0..sroa_idx.i1167, align 8 ; 4 uses
  %i.aly = icmp eq i32 %.sroa.2.0.copyload.i1168, 5648
  br i1 %i.aly, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1169, !prof !6

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1169: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit
  %i.alz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ama = load ptr, ptr %i.alz, align 8          ; 2 uses
  %i.amb = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i1168, i32 5648, ptr noundef %i.ama, ptr noundef %i.ama) #17
  %i.amc = icmp eq i32 %.sroa.2.0.copyload.i1168, 514
  %or.cond.i1170 = or i1 %i.amc, %i.amb
  br i1 %or.cond.i1170, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit, label %bb.el, !prof !39

bb.el:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1169
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE12PopTypeErrorEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 0, ptr %.sroa.01.0.copyload.i1166, i32 %.sroa.2.0.copyload.i1168, i32 5648)
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1169, %bb.el
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ame = load ptr, ptr %i.amd, align 8          ; 3 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.amg = load i8, ptr %i.amf, align 8, !range !8, !noundef !9
  %i.amh = trunc nuw i8 %i.amg to i1
  br i1 %i.amh, label %bb.em, label %.critedge.i401

bb.em:                                            ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit
  %i.ami = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.ame)
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.ame, ptr noundef nonnull @.str.82, ptr noundef %i.ami)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit310

.critedge.i401:                                   ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit
  %i.amj = load ptr, ptr %i.alm, align 8          ; 2 uses
  store ptr %i.ame, ptr %i.amj, align 8
  %.sroa.2.0..sroa_idx.i1177 = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  store i32 4609, ptr %.sroa.2.0..sroa_idx.i1177, align 8
  %i.amk = load ptr, ptr %i.alm, align 8
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 16
  store ptr %i.aml, ptr %i.alm, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit310

bb.en:                                            ; preds = %bb.c
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.amn = load ptr, ptr %i.amm, align 8
  %i.amo = getelementptr inbounds i8, ptr %i.amn, i64 -88
  %i.amp = load i32, ptr %i.amo, align 8
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.ams = load ptr, ptr %i.amr, align 8          ; 2 uses
  %i.amt = load ptr, ptr %i.amq, align 8
  %i.amu = ptrtoint ptr %i.ams to i64
  %i.amv = ptrtoint ptr %i.amt to i64
  %i.amw = sub i64 %i.amu, %i.amv
  %i.amx = lshr exact i64 %i.amw, 4
  %i.amy = trunc i64 %i.amx to i32
  %i.amz = add i32 %i.amp, 1
  %.not.i.i531 = icmp ugt i32 %i.amz, %i.amy
  br i1 %.not.i.i531, label %bb.eo, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit, !prof !12

bb.eo:                                            ; preds = %bb.en
  %i.ana = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %i.amr, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit: ; preds = %bb.en, %bb.eo
  %i.anb = phi ptr [ %i.ams, %bb.en ], [ %.pre, %bb.eo ] ; 2 uses
  %i.anc = getelementptr i8, ptr %i.anb, i64 -16  ; 2 uses
  store ptr %i.anc, ptr %i.amr, align 8
  %.sroa.01.0.copyload.i1179 = load ptr, ptr %i.anc, align 8
  %.sroa.2.0..sroa_idx.i1180 = getelementptr i8, ptr %i.anb, i64 -8
  %.sroa.2.0.copyload.i1181 = load i32, ptr %.sroa.2.0..sroa_idx.i1180, align 8 ; 4 uses
  %i.and = icmp eq i32 %.sroa.2.0.copyload.i1181, 4613
  br i1 %i.and, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1190, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1182, !prof !6

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1182: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.anf = load ptr, ptr %i.ane, align 8          ; 2 uses
  %i.ang = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i1181, i32 4613, ptr noundef %i.anf, ptr noundef %i.anf) #17
  %i.anh = icmp eq i32 %.sroa.2.0.copyload.i1181, 514
  %or.cond.i1183 = or i1 %i.anh, %i.ang
  br i1 %or.cond.i1183, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1190, label %bb.ep, !prof !39

bb.ep:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1182
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE12PopTypeErrorEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 0, ptr %.sroa.01.0.copyload.i1179, i32 %.sroa.2.0.copyload.i1181, i32 4613)
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1190

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1190: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i1182, %bb.ep
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.anj = load ptr, ptr %i.ani, align 8
  %i.ank = load ptr, ptr %i.amr, align 8          ; 2 uses
  store ptr %i.anj, ptr %i.ank, align 8
  %.sroa.2.0..sroa_idx.i1191 = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  store i32 5648, ptr %.sroa.2.0..sroa_idx.i1191, align 8
  %i.anl = load ptr, ptr %i.amr, align 8
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 16
  store ptr %i.anm, ptr %i.amr, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit310

bb.eq:                                            ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_10WasmOpcodeEEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.967, i32 noundef %1)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit310

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit310: ; preds = %.critedge.i401, %bb.em, %.critedge.i386, %bb.du, %.critedge.i381, %bb.di, %.critedge.i361, %bb.cs, %.critedge.i356, %bb.co, %.critedge.i336, %bb.bu, %.critedge.i331, %bb.bq, %.critedge.i321, %bb.bc, %.critedge.i306, %bb.ar, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit801, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit815, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_20IndependentValueTypeESA_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSB_E_clESB_.exit868, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit936, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSB_E_clESB_.exit962, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1045, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSB_E_clESB_.exit1072, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSB_E_clESB_.exit1099, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopEiNS1_9ValueTypeE.exit, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1163, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1190, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_9ValueTypeENS1_20IndependentValueTypeESB_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vISB_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20MemoryIndexImmediateE.exit973, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20MemoryIndexImmediateE.exit746, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit295, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20StringConstImmediateE.exit, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20MemoryIndexImmediateE.exit, %bb.eq, %bb.dx, %bb.dw, %bb.dv, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.bk, %bb.bj, %bb.bi, %bb.af, %bb.ae, %bb.ad, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE23DecodeStringMeasureWtf8EN7unibrow11Utf8VariantEj.exit728, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE23DecodeStringMeasureWtf8EN7unibrow11Utf8VariantEj.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.4 = phi i32 [ 0, %bb.eq ], [ %i.b, %bb.d ], [ %i.c, %bb.e ], [ %i.d, %bb.f ], [ %i.e, %bb.g ], [ 0, %bb.b ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20MemoryIndexImmediateE.exit ], [ %2, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE23DecodeStringMeasureWtf8EN7unibrow11Utf8VariantEj.exit ], [ %2, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE23DecodeStringMeasureWtf8EN7unibrow11Utf8VariantEj.exit728 ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20StringConstImmediateE.exit ], [ %i.gj, %bb.ad ], [ %i.gk, %bb.ae ], [ %i.gl, %bb.af ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit801 ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20MemoryIndexImmediateE.exit746 ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit815 ], [ %2, %.critedge.i306 ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_20IndependentValueTypeESA_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSB_E_clESB_.exit868 ], [ %2, %.critedge.i321 ], [ %i.pn, %bb.bi ], [ %i.po, %bb.bj ], [ %i.pp, %bb.bk ], [ %2, %.critedge.i331 ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit936 ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSB_E_clESB_.exit962 ], [ %i.xk, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_9ValueTypeENS1_20IndependentValueTypeESB_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vISB_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit ], [ %2, %.critedge.i336 ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20MemoryIndexImmediateE.exit973 ], [ %2, %.critedge.i356 ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1045 ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSB_E_clESB_.exit1072 ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSB_E_clESB_.exit1099 ], [ %2, %.critedge.i361 ], [ %i.afm, %bb.dj ], [ %i.afn, %bb.dk ], [ %i.afo, %bb.dl ], [ %i.afp, %bb.dm ], [ %2, %.critedge.i381 ], [ %i.ahv, %bb.dv ], [ %i.ahw, %bb.dw ], [ %i.ahx, %bb.dx ], [ %2, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopEiNS1_9ValueTypeE.exit ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1163 ], [ %2, %.critedge.i386 ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1190 ], [ %i.bu, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit ], [ %i.df, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit295 ], [ %2, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit ], [ %i.ix, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeENS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit ], [ %2, %bb.ar ], [ %2, %bb.bc ], [ %2, %bb.bq ], [ %2, %bb.bu ], [ %2, %bb.co ], [ %2, %bb.cs ], [ %2, %bb.di ], [ %2, %bb.du ], [ %2, %bb.em ], [ %2, %.critedge.i401 ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.265, align 8            ; 8 uses
  %4 = alloca %class.anon.263, align 8            ; 9 uses
  %5 = alloca %class.anon.261, align 8            ; 7 uses
  %6 = alloca %class.anon.259, align 8            ; 8 uses
  %7 = alloca %class.anon.259, align 8            ; 8 uses
  %8 = alloca %class.anon.257, align 8            ; 6 uses
  %9 = alloca %class.anon.257, align 8            ; 6 uses
  %10 = alloca %class.anon.239, align 8           ; 6 uses
  %11 = alloca %class.anon.239, align 8           ; 6 uses
  %12 = alloca %class.anon.239, align 8           ; 6 uses
  %13 = alloca %class.anon.225, align 8           ; 6 uses
  %14 = alloca %class.anon.213, align 8           ; 5 uses
  %15 = alloca %class.anon.213, align 8           ; 5 uses
  %16 = alloca %class.anon.203, align 8           ; 5 uses
  %17 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %25 = alloca %"struct.v8::internal::wasm::IndexImmediate", align 4 ; 5 uses
  %26 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 5 uses
  %27 = alloca %"struct.v8::internal::wasm::IndexImmediate", align 4 ; 6 uses
  %28 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"struct.v8::internal::wasm::IndexImmediate", align 4 ; 5 uses
  %32 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 5 uses
  %33 = alloca %"struct.v8::internal::wasm::IndexImmediate", align 4 ; 6 uses
  %34 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %41 = alloca %"struct.v8::internal::wasm::ArrayIndexImmediate", align 8 ; 9 uses
  %42 = alloca %"class.std::vector.252", align 8  ; 6 uses
  %43 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %44 = alloca %"class.std::allocator.254", align 1 ; 3 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %46 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %47 = alloca %"struct.v8::internal::wasm::HeapTypeImmediate", align 4 ; 5 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %50 = alloca %"struct.v8::internal::wasm::ValueBase", align 8 ; 4 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %53 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %54 = alloca %"struct.v8::internal::wasm::ValueBase", align 8 ; 4 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %57 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %58 = alloca %"struct.v8::internal::wasm::ValueBase", align 8 ; 4 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %61 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %.mask = and i32 %1, -256
  %i.a = icmp eq i32 %.mask, 64256
  tail call void @llvm.assume(i1 %i.a)
  %trunc = trunc nuw i32 %1 to i16
  switch i16 %trunc, label %bb.lq [
    i16 -1280, label %bb.b
    i16 -1279, label %bb.n
    i16 -1278, label %bb.u
    i16 -1276, label %bb.ag
    i16 -1277, label %bb.ag
    i16 -1275, label %bb.au
    i16 -1274, label %bb.bh
    i16 -1273, label %bb.br
    i16 -1271, label %bb.cb
    i16 -1270, label %bb.cp
    i16 -1262, label %bb.dg
    i16 -1261, label %bb.du
    i16 -1268, label %bb.el
    i16 -1267, label %bb.el
    i16 -1269, label %bb.eu
    i16 -1266, label %bb.fc
    i16 -1265, label %bb.fm
    i16 -1263, label %bb.fs
    i16 -1264, label %bb.gg
    i16 -1272, label %bb.gq
    i16 -1252, label %bb.hh
    i16 -1249, label %bb.hl
    i16 -1251, label %bb.hq
    i16 -1250, label %bb.hw
    i16 -1246, label %bb.ic
    i16 -1245, label %bb.io
    i16 -1244, label %bb.io
    i16 -1258, label %bb.jg
    i16 -1257, label %bb.jg
    i16 -1259, label %bb.jy
    i16 -1260, label %bb.jy
    i16 -1204, label %bb.km
    i16 -1256, label %bb.la
    i16 -1255, label %bb.la
    i16 -1243, label %bb.lb
    i16 -1242, label %bb.lb
    i16 -1254, label %bb.le
    i16 -1253, label %bb.lk
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %.critedge.i.i.i.i, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.e, align 1               ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %.critedge.i.i.i.i, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i8 %i.i to i64
  br label %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

.critedge.i.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.k = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.e, ptr noundef nonnull @.str.1012) ; 3 uses
  %i.l = icmp ult i64 %i.k, 25769803776
  tail call void @llvm.assume(i1 %i.l)
  %i.m = lshr i64 %i.k, 32
  %i.n = trunc nuw nsw i64 %i.m to i32
  %.pre2565 = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.d, %.critedge.i.i.i.i
  %i.o = phi ptr [ %i.c, %bb.d ], [ %.pre2565, %.critedge.i.i.i.i ]
  %.sroa.05.0.i.i.i = phi i64 [ %i.j, %bb.d ], [ %i.k, %.critedge.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i = phi i32 [ 1, %bb.d ], [ %i.n, %.critedge.i.i.i.i ]
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %.sroa.05.0.i.i.i to i32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = and i64 %.sroa.05.0.i.i.i, 4294967295    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 24
  %i.ab = icmp ugt i64 %i.aa, %i.s
  br i1 %i.ab, label %_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit, !prof !73

_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i: ; preds = %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.s ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = icmp eq i8 %i.ae, 2
  br i1 %i.af, label %bb.e, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit, !prof !74

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit: ; preds = %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit, %_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.p, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.04.0.extract.trunc.i.i)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.e:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i
  %i.ag = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 22
  %i.ai = load i8, ptr %i.ah, align 2, !range !8, !noundef !9
  %i.aj = tail call { ptr, i32 } @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE13PopDescriptorENS1_15ModuleTypeIndexE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 %.sroa.04.0.extract.trunc.i.i) ; 0 uses
  %i.ak = load i16, ptr %i.ag, align 8            ; 4 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -88
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 4
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %i.ap, %i.al
  %.not.i.i868 = icmp ugt i32 %i.az, %i.ay
  br i1 %.not.i.i868, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i869, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.ba = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %i.al) ; 0 uses
  %.pre2566 = load ptr, ptr %i.ar, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i869

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i869: ; preds = %bb.f, %bb.e
  %i.bb = phi ptr [ %.pre2566, %bb.f ], [ %i.as, %bb.e ]
  %i.bc = zext i16 %i.ak to i64                   ; 2 uses
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.bd
  %.not2481 = icmp eq i16 %i.ak, 0
  br i1 %.not2481, label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder17FullValidationTagEEEE3popEj.exit, label %.lr.ph2480

.lr.ph2480:                                       ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i869
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.trip.count2491 = zext i16 %i.ak to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph2480, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i877
  %indvars.iv2488 = phi i64 [ 0, %.lr.ph2480 ], [ %indvars.iv.next2489, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i877 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv2488 ; 2 uses
  %.sroa.01.0.copyload.i872 = load ptr, ptr %i.bg, align 8
  %.sroa.2.0..sroa_idx.i873 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i874 = load i32, ptr %.sroa.2.0..sroa_idx.i873, align 8 ; 4 uses
  %i.bh = load ptr, ptr %i.bf, align 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv2488
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bi, align 4 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i.i, label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit [
    i32 6928, label %bb.h
    i32 7184, label %bb.h
    i32 7440, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit

bb.i:                                             ; preds = %bb.g
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit

_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit:  ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i32 [ 5648, %bb.h ], [ 6160, %bb.i ], [ %.sroa.0.0.copyload.i.i, %bb.g ] ; 4 uses
  %i.bj = icmp eq i32 %.sroa.2.0.copyload.i874, %.sroa.0.0.i
  br i1 %i.bj, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE18ValidateStackValueEiNS1_9ValueBaseIS4_EENS1_9ValueTypeE.exit.i877, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i876, !prof !6
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  br i1 %i.yc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.985, i32 noundef %.sroa.04.0.extract.trunc.i.i1109)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.cg:                                            ; preds = %bb.ce
  %i.yd = zext nneg i32 %.sroa.5.0.i.i.i1108 to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.yd ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  %i.yf = load ptr, ptr %i.wx, align 8
  %i.yg = icmp ult ptr %i.ye, %i.yf
  br i1 %i.yg, label %bb.ch, label %.critedge.i.i.i, !prof !6

bb.ch:                                            ; preds = %bb.cg
  %i.yh = load i8, ptr %i.ye, align 1             ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.yh, -1
  br i1 %.not.i.i.i, label %bb.ci, label %.critedge.i.i.i, !prof !6

bb.ci:                                            ; preds = %bb.ch
  %i.yi = zext nneg i8 %i.yh to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit

.critedge.i.i.i:                                  ; preds = %bb.ch, %bb.cg
  %i.yj = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ye, ptr noundef nonnull @.str.986) ; 3 uses
  %i.yk = icmp ult i64 %i.yj, 25769803776
  tail call void @llvm.assume(i1 %i.yk)
  %i.yl = lshr i64 %i.yj, 32
  %i.ym = trunc nuw nsw i64 %i.yl to i32
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit: ; preds = %bb.ci, %.critedge.i.i.i
  %.sroa.05.0.i.i = phi i64 [ %i.yi, %bb.ci ], [ %i.yj, %.critedge.i.i.i ]
  %.sroa.5.0.i.i = phi i32 [ 1, %bb.ci ], [ %i.ym, %.critedge.i.i.i ]
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32
  %i.yn = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 2 uses
  store i32 %.sroa.04.0.extract.trunc.i, ptr %25, align 4
  store i32 %.sroa.5.0.i.i, ptr %i.yn, align 4
  %i.yo = call noundef zeroext i1 @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE19ValidateDataSegmentEPKhRNS1_14IndexImmediateE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.ye, ptr noundef nonnull align 4 dereferenceable(8) %25)
  br i1 %i.yo, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.yq = load ptr, ptr %i.yp, align 8, !noalias !193
  %i.yr = getelementptr inbounds i8, ptr %i.yq, i64 -88
  %i.ys = load i32, ptr %i.yr, align 8, !noalias !193
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.yv = load ptr, ptr %i.yu, align 8, !noalias !193 ; 2 uses
  %i.yw = load ptr, ptr %i.yt, align 8, !noalias !193
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = sub i64 %i.yx, %i.yy
  %i.za = lshr exact i64 %i.yz, 4
  %i.zb = trunc i64 %i.za to i32
  %i.zc = add i32 %i.ys, 2
  %.not.i.i887 = icmp ugt i32 %i.zc, %i.zb
  br i1 %.not.i.i887, label %bb.ck, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit896, !prof !12

bb.ck:                                            ; preds = %bb.cj
  %i.zd = call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 2), !noalias !193 ; 0 uses
  %.pre2552 = load ptr, ptr %i.yu, align 8, !noalias !193
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit896

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit896: ; preds = %bb.cj, %bb.ck
  %i.ze = phi ptr [ %i.yv, %bb.cj ], [ %.pre2552, %bb.ck ]
  %i.zf = getelementptr i8, ptr %i.ze, i64 -32
  store ptr %i.zf, ptr %i.yu, align 8, !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17, !noalias !193
  store ptr %0, ptr %8, align 8, !noalias !193
  %i.zg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.zg, align 8, !noalias !193
  %i.zh = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_(ptr noundef nonnull align 8 dereferenceable(12) %8, i32 5648), !noalias !193 ; 0 uses
  %i.zi = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_(ptr noundef nonnull align 8 dereferenceable(12) %8, i32 5648), !noalias !193 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !193
  %i.zj = icmp ult i32 %.sroa.04.0.extract.trunc.i.i1109, 1048576
  br i1 %i.zj, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1121, label %bb.cl, !prof !6

bb.cl:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit896
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28) #19
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1121: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit896
  %i.zk = shl nuw nsw i8 %i.ya, 4
  %i.zl = or disjoint i8 %i.zk, 99
  %i.zm = zext nneg i8 %i.zl to i32
  %i.zn = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i1109, 8
  %i.zo = or disjoint i32 %i.zn, %i.zm            ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0267.0.copyload = load i32, ptr %i.zp, align 8
  %i.zq = and i32 %.sroa.0267.0.copyload, 8
  %.not.i1122 = icmp eq i32 %i.zq, 0
  br i1 %.not.i1122, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1125, label %bb.cm, !prof !6

bb.cm:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1121
  %i.zr = or disjoint i32 %i.zo, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1125

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1125: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1121, %bb.cm
  %.sroa.0.0.i1124 = phi i32 [ %i.zr, %bb.cm ], [ %i.zo, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1121 ] ; 2 uses
  %i.zs = load ptr, ptr %i.wt, align 8            ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.zu = load i8, ptr %i.zt, align 8, !range !8, !noundef !9
  %i.zv = trunc nuw i8 %i.zu to i1
  %i.zw = and i32 %.sroa.0.0.i1124, 16
  %i.zx = icmp eq i32 %i.zw, 0
  %or.cond2394.not = select i1 %i.zv, i1 %i.zx, i1 false
  br i1 %or.cond2394.not, label %bb.cn, label %.critedge.i541, !prof !35

bb.cn:                                            ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1125
  %i.zy = call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.zs)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.zs, ptr noundef nonnull @.str.82, ptr noundef %i.zy)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit545

.critedge.i541:                                   ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1125
  %i.zz = load ptr, ptr %i.yu, align 8            ; 2 uses
  store ptr %i.zs, ptr %i.zz, align 8
  %.sroa.2.0..sroa_idx.i1126 = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  store i32 %.sroa.0.0.i1124, ptr %.sroa.2.0..sroa_idx.i1126, align 8
  %i.aaa = load ptr, ptr %i.yu, align 8
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  store ptr %i.aab, ptr %i.yu, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit545

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit545: ; preds = %.critedge.i541, %bb.cn
  %i.aac = add i32 %.sroa.5.0.i.i.i1108, %2
  %i.aad = load i32, ptr %i.yn, align 4
  %i.aae = add i32 %i.aac, %i.aad
  br label %bb.co

bb.co:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit545
  %.13 = phi i32 [ %i.aae, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit545 ], [ 0, %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.cp:                                            ; preds = %bb.a
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aag = load ptr, ptr %i.aaf, align 8          ; 2 uses
  %i.aah = zext i32 %2 to i64                     ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aah ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aak = load ptr, ptr %i.aaj, align 8
  %i.aal = icmp ult ptr %i.aai, %i.aak
  br i1 %i.aal, label %bb.cq, label %.critedge.i.i.i.i1127, !prof !6

bb.cq:                                            ; preds = %bb.cp
  %i.aam = load i8, ptr %i.aai, align 1           ; 2 uses
  %.not.i.i.i.i1131 = icmp sgt i8 %i.aam, -1
  br i1 %.not.i.i.i.i1131, label %bb.cr, label %.critedge.i.i.i.i1127, !prof !6

bb.cr:                                            ; preds = %bb.cq
  %i.aan = zext nneg i8 %i.aam to i64
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1132

.critedge.i.i.i.i1127:                            ; preds = %bb.cq, %bb.cp
  %i.aao = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.aai, ptr noundef nonnull @.str.1016) ; 3 uses
  %i.aap = icmp ult i64 %i.aao, 25769803776
  tail call void @llvm.assume(i1 %i.aap)
  %i.aaq = lshr i64 %i.aao, 32
  %i.aar = trunc nuw nsw i64 %i.aaq to i32
  %.pre2549 = load ptr, ptr %i.aaf, align 8
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1132

_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1132: ; preds = %bb.cr, %.critedge.i.i.i.i1127
  %i.aas = phi ptr [ %i.aag, %bb.cr ], [ %.pre2549, %.critedge.i.i.i.i1127 ]
  %.sroa.05.0.i.i.i1128 = phi i64 [ %i.aan, %bb.cr ], [ %i.aao, %.critedge.i.i.i.i1127 ] ; 2 uses
  %.sroa.5.0.i.i.i1129 = phi i32 [ 1, %bb.cr ], [ %i.aar, %.critedge.i.i.i.i1127 ] ; 2 uses
  %.sroa.04.0.extract.trunc.i.i1130 = trunc i64 %.sroa.05.0.i.i.i1128 to i32 ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aah ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aav = load ptr, ptr %i.aau, align 8          ; 2 uses
  %i.aaw = and i64 %.sroa.05.0.i.i.i1128, 4294967295 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 152
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 160
  %i.aaz = load ptr, ptr %i.aay, align 8
  %i.aba = load ptr, ptr %i.aax, align 8          ; 2 uses
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = sub i64 %i.abb, %i.abc
  %i.abe = sdiv exact i64 %i.abd, 24
  %i.abf = icmp ugt i64 %i.abe, %i.aaw
  br i1 %i.abf, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1135, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1136, !prof !73

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1135: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1132
  %i.abg = getelementptr inbounds nuw [24 x i8], ptr %i.aba, i64 %i.aaw ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 20
  %i.abi = load i8, ptr %i.abh, align 4
  %i.abj = icmp eq i8 %i.abi, 3
  br i1 %i.abj, label %bb.cs, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1136, !prof !74

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1136: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1132, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1135
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.aat, ptr noundef nonnull @.str.1017, i32 noundef %.sroa.04.0.extract.trunc.i.i1130)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.cs:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1135
  %i.abk = load ptr, ptr %i.abg, align 8
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abg, i64 22
  %i.abm = load i8, ptr %i.abl, align 2, !range !8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  %.sroa.0.0.copyload.i1137 = load i32, ptr %i.abn, align 4 ; 2 uses
  store i32 %.sroa.0.0.copyload.i1137, ptr %26, align 4
  %i.abo = and i32 %.sroa.0.0.copyload.i1137, 3
  %i.abp = icmp eq i32 %i.abo, 0
  br i1 %i.abp, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.987, i32 noundef %.sroa.04.0.extract.trunc.i.i1130)
  br label %bb.df

bb.cu:                                            ; preds = %bb.cs
  %i.abq = zext nneg i32 %.sroa.5.0.i.i.i1129 to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.abq ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  %i.abs = load ptr, ptr %i.aaj, align 8
  %i.abt = icmp ult ptr %i.abr, %i.abs
  br i1 %i.abt, label %bb.cv, label %.critedge.i.i.i1138, !prof !6

bb.cv:                                            ; preds = %bb.cu
  %i.abu = load i8, ptr %i.abr, align 1           ; 2 uses
  %.not.i.i.i1142 = icmp sgt i8 %i.abu, -1
  br i1 %.not.i.i.i1142, label %bb.cw, label %.critedge.i.i.i1138, !prof !6

bb.cw:                                            ; preds = %bb.cv
  %i.abv = zext nneg i8 %i.abu to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1143

.critedge.i.i.i1138:                              ; preds = %bb.cv, %bb.cu
  %i.abw = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.abr, ptr noundef nonnull @.str.988) ; 3 uses
  %i.abx = icmp ult i64 %i.abw, 25769803776
  tail call void @llvm.assume(i1 %i.abx)
  %i.aby = lshr i64 %i.abw, 32
  %i.abz = trunc nuw nsw i64 %i.aby to i32
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1143

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1143: ; preds = %bb.cw, %.critedge.i.i.i1138
  %.sroa.05.0.i.i1139 = phi i64 [ %i.abv, %bb.cw ], [ %i.abw, %.critedge.i.i.i1138 ]
  %.sroa.5.0.i.i1140 = phi i32 [ 1, %bb.cw ], [ %i.abz, %.critedge.i.i.i1138 ]
  %.sroa.04.0.extract.trunc.i1141 = trunc i64 %.sroa.05.0.i.i1139 to i32
  %i.aca = getelementptr inbounds nuw i8, ptr %27, i64 4 ; 2 uses
  store i32 %.sroa.04.0.extract.trunc.i1141, ptr %27, align 4
  store i32 %.sroa.5.0.i.i1140, ptr %i.aca, align 4
  %i.acb = call noundef zeroext i1 @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE22ValidateElementSegmentEPKhRNS1_14IndexImmediateE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.abr, ptr noundef nonnull align 4 dereferenceable(8) %27)
  br i1 %i.acb, label %bb.cx, label %bb.de

bb.cx:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1143
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  %i.acc = load ptr, ptr %i.aau, align 8          ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 416
  %i.ace = load i32, ptr %27, align 4
  %i.acf = zext i32 %i.ace to i64
  %i.acg = load ptr, ptr %i.acd, align 8
  %i.ach = getelementptr inbounds nuw [40 x i8], ptr %i.acg, i64 %i.acf
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acj = load i32, ptr %i.aci, align 8          ; 3 uses
  store i32 %i.acj, ptr %28, align 4
  %.sroa.0263.0.copyload = load i32, ptr %26, align 4 ; 2 uses
  %i.ack = icmp eq i32 %i.acj, %.sroa.0263.0.copyload
  br i1 %i.ack, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742.thread, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742, !prof !6

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742: ; preds = %bb.cx
  %i.acl = call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %i.acj, i32 %.sroa.0263.0.copyload, ptr noundef nonnull %i.acc, ptr noundef nonnull %i.acc) #17
  br i1 %i.acl, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742.thread, label %bb.cy, !prof !41

bb.cy:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 4 dereferenceable(4) %28) #17
  %i.acm = load ptr, ptr %29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 4 dereferenceable(4) %26) #17
  %i.acn = load ptr, ptr %30, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.989, ptr noundef %i.acm, ptr noundef %i.acn)
  %i.aco = load ptr, ptr %30, align 8             ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.acq = icmp eq ptr %i.aco, %i.acp
  br i1 %i.acq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1144: ; preds = %bb.cy
  %i.acr = load i64, ptr %i.acp, align 8
  %i.acs = add i64 %i.acr, 1
  call void @_ZdlPvm(ptr noundef %i.aco, i64 noundef %i.acs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1144
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  %i.act = load ptr, ptr %29, align 8             ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.acv = icmp eq ptr %i.act, %i.acu
  br i1 %i.acv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146
  %i.acw = load i64, ptr %i.acu, align 8
  %i.acx = add i64 %i.acw, 1
  call void @_ZdlPvm(ptr noundef %i.act, i64 noundef %i.acx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1147
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  br label %bb.dd

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742.thread: ; preds = %bb.cx, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.acz = load ptr, ptr %i.acy, align 8, !noalias !196
  %i.ada = getelementptr inbounds i8, ptr %i.acz, i64 -88
  %i.adb = load i32, ptr %i.ada, align 8, !noalias !196
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.ade = load ptr, ptr %i.add, align 8, !noalias !196 ; 2 uses
  %i.adf = load ptr, ptr %i.adc, align 8, !noalias !196
  %i.adg = ptrtoint ptr %i.ade to i64
  %i.adh = ptrtoint ptr %i.adf to i64
  %i.adi = sub i64 %i.adg, %i.adh
  %i.adj = lshr exact i64 %i.adi, 4
  %i.adk = trunc i64 %i.adj to i32
  %i.adl = add i32 %i.adb, 2
  %.not.i.i878 = icmp ugt i32 %i.adl, %i.adk
  br i1 %.not.i.i878, label %bb.cz, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit, !prof !12

bb.cz:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742.thread
  %i.adm = call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 2), !noalias !196 ; 0 uses
  %.pre2550 = load ptr, ptr %i.add, align 8, !noalias !196
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742.thread, %bb.cz
  %i.adn = phi ptr [ %i.ade, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit742.thread ], [ %.pre2550, %bb.cz ]
  %i.ado = getelementptr i8, ptr %i.adn, i64 -32
  store ptr %i.ado, ptr %i.add, align 8, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17, !noalias !196
  store ptr %0, ptr %9, align 8, !noalias !196
  %i.adp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.adp, align 8, !noalias !196
  %i.adq = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 5648), !noalias !196 ; 0 uses
  %i.adr = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 5648), !noalias !196 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17, !noalias !196
  %i.ads = icmp ult i32 %.sroa.04.0.extract.trunc.i.i1130, 1048576
  br i1 %i.ads, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1154, label %bb.da, !prof !6

bb.da:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28) #19
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1154: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeES9_EQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit
  %i.adt = shl nuw nsw i8 %i.abm, 4
  %i.adu = or disjoint i8 %i.adt, 99
  %i.adv = zext nneg i8 %i.adu to i32
  %i.adw = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i1130, 8
  %i.adx = or disjoint i32 %i.adw, %i.adv         ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0255.0.copyload = load i32, ptr %i.ady, align 8
  %i.adz = and i32 %.sroa.0255.0.copyload, 8
  %.not.i1155 = icmp eq i32 %i.adz, 0
  br i1 %.not.i1155, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1158, label %bb.db, !prof !6

bb.db:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1154
  %i.aea = or disjoint i32 %i.adx, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1158

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1158: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1154, %bb.db
  %.sroa.0.0.i1157 = phi i32 [ %i.aea, %bb.db ], [ %i.adx, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1154 ] ; 2 uses
  %i.aeb = load ptr, ptr %i.aaf, align 8          ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aed = load i8, ptr %i.aec, align 8, !range !8, !noundef !9
  %i.aee = trunc nuw i8 %i.aed to i1
  %i.aef = and i32 %.sroa.0.0.i1157, 16
  %i.aeg = icmp eq i32 %i.aef, 0
  %or.cond2397.not = select i1 %i.aee, i1 %i.aeg, i1 false
  br i1 %or.cond2397.not, label %bb.dc, label %.critedge.i546, !prof !35

bb.dc:                                            ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1158
  %i.aeh = call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.aeb)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.aeb, ptr noundef nonnull @.str.82, ptr noundef %i.aeh)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit550

.critedge.i546:                                   ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit1158
  %i.aei = load ptr, ptr %i.add, align 8          ; 2 uses
  store ptr %i.aeb, ptr %i.aei, align 8
  %.sroa.2.0..sroa_idx.i1159 = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  store i32 %.sroa.0.0.i1157, ptr %.sroa.2.0..sroa_idx.i1159, align 8
  %i.aej = load ptr, ptr %i.add, align 8
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  store ptr %i.aek, ptr %i.add, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit550

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit550: ; preds = %.critedge.i546, %bb.dc
  %i.ael = add i32 %.sroa.5.0.i.i.i1129, %2
  %i.aem = load i32, ptr %i.aca, align 4
  %i.aen = add i32 %i.ael, %i.aem
  br label %bb.dd

bb.dd:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit550, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149
  %.16 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149 ], [ %i.aen, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PushENS1_9ValueBaseIS4_EE.exit550 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %bb.de

bb.de:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1143, %bb.dd
  %.17 = phi i32 [ %.16, %bb.dd ], [ 0, %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.ct
  %.18 = phi i32 [ 0, %bb.ct ], [ %.17, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.dg:                                            ; preds = %bb.a
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aep = load ptr, ptr %i.aeo, align 8          ; 2 uses
  %i.aeq = zext i32 %2 to i64                     ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aeq ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aet = load ptr, ptr %i.aes, align 8
  %i.aeu = icmp ult ptr %i.aer, %i.aet
  br i1 %i.aeu, label %bb.dh, label %.critedge.i.i.i.i1160, !prof !6

bb.dh:                                            ; preds = %bb.dg
  %i.aev = load i8, ptr %i.aer, align 1           ; 2 uses
  %.not.i.i.i.i1164 = icmp sgt i8 %i.aev, -1
  br i1 %.not.i.i.i.i1164, label %bb.di, label %.critedge.i.i.i.i1160, !prof !6

bb.di:                                            ; preds = %bb.dh
  %i.aew = zext nneg i8 %i.aev to i64
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1165

.critedge.i.i.i.i1160:                            ; preds = %bb.dh, %bb.dg
  %i.aex = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.aer, ptr noundef nonnull @.str.1016) ; 3 uses
  %i.aey = icmp ult i64 %i.aex, 25769803776
  tail call void @llvm.assume(i1 %i.aey)
  %i.aez = lshr i64 %i.aex, 32
  %i.afa = trunc nuw nsw i64 %i.aez to i32
  %.pre2547 = load ptr, ptr %i.aeo, align 8
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1165

_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1165: ; preds = %bb.di, %.critedge.i.i.i.i1160
  %i.afb = phi ptr [ %i.aep, %bb.di ], [ %.pre2547, %.critedge.i.i.i.i1160 ]
  %.sroa.05.0.i.i.i1161 = phi i64 [ %i.aew, %bb.di ], [ %i.aex, %.critedge.i.i.i.i1160 ] ; 2 uses
  %.sroa.5.0.i.i.i1162 = phi i32 [ 1, %bb.di ], [ %i.afa, %.critedge.i.i.i.i1160 ] ; 2 uses
  %.sroa.04.0.extract.trunc.i.i1163 = trunc i64 %.sroa.05.0.i.i.i1161 to i32 ; 5 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.aeq ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.afe = load ptr, ptr %i.afd, align 8          ; 2 uses
  %i.aff = and i64 %.sroa.05.0.i.i.i1161, 4294967295 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afe, i64 152
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afe, i64 160
  %i.afi = load ptr, ptr %i.afh, align 8
  %i.afj = load ptr, ptr %i.afg, align 8          ; 2 uses
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = sub i64 %i.afk, %i.afl
  %i.afn = sdiv exact i64 %i.afm, 24
  %i.afo = icmp ugt i64 %i.afn, %i.aff
  br i1 %i.afo, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1168, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1169, !prof !73

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1168: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1165
  %i.afp = getelementptr inbounds nuw [24 x i8], ptr %i.afj, i64 %i.aff ; 3 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 20
  %i.afr = load i8, ptr %i.afq, align 4
  %i.afs = icmp eq i8 %i.afr, 3
  br i1 %i.afs, label %bb.dj, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1169, !prof !74

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1169: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1165, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1168
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.afc, ptr noundef nonnull @.str.1017, i32 noundef %.sroa.04.0.extract.trunc.i.i1163)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.dj:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1168
  %i.aft = load ptr, ptr %i.afp, align 8          ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afp, i64 22
  %i.afv = load i8, ptr %i.afu, align 2, !range !8, !noundef !9
  %i.afw = load i8, ptr %i.aft, align 1, !range !8, !noundef !9
  %i.afx = trunc nuw i8 %i.afw to i1
  br i1 %i.afx, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.990, i32 noundef %.sroa.04.0.extract.trunc.i.i1163)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.dl:                                            ; preds = %bb.dj
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aft, i64 4
  %.sroa.0.0.copyload.i1170 = load i32, ptr %i.afy, align 4
  %i.afz = trunc i32 %.sroa.0.0.copyload.i1170 to i1
  br i1 %i.afz, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.991, i32 noundef %.sroa.04.0.extract.trunc.i.i1163)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.dn:                                            ; preds = %bb.dl
  %i.aga = zext nneg i32 %.sroa.5.0.i.i.i1162 to i64
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.aga ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  %i.agc = load ptr, ptr %i.aes, align 8
  %i.agd = icmp ult ptr %i.agb, %i.agc
  br i1 %i.agd, label %bb.do, label %.critedge.i.i.i1171, !prof !6

bb.do:                                            ; preds = %bb.dn
  %i.age = load i8, ptr %i.agb, align 1           ; 2 uses
  %.not.i.i.i1175 = icmp sgt i8 %i.age, -1
  br i1 %.not.i.i.i1175, label %bb.dp, label %.critedge.i.i.i1171, !prof !6

bb.dp:                                            ; preds = %bb.do
  %i.agf = zext nneg i8 %i.age to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1176

.critedge.i.i.i1171:                              ; preds = %bb.do, %bb.dn
  %i.agg = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.agb, ptr noundef nonnull @.str.986) ; 3 uses
  %i.agh = icmp ult i64 %i.agg, 25769803776
  tail call void @llvm.assume(i1 %i.agh)
  %i.agi = lshr i64 %i.agg, 32
  %i.agj = trunc nuw nsw i64 %i.agi to i32
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1176

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1176: ; preds = %bb.dp, %.critedge.i.i.i1171
  %.sroa.05.0.i.i1172 = phi i64 [ %i.agf, %bb.dp ], [ %i.agg, %.critedge.i.i.i1171 ]
  %.sroa.5.0.i.i1173 = phi i32 [ 1, %bb.dp ], [ %i.agj, %.critedge.i.i.i1171 ]
  %.sroa.04.0.extract.trunc.i1174 = trunc i64 %.sroa.05.0.i.i1172 to i32
  %i.agk = getelementptr inbounds nuw i8, ptr %31, i64 4 ; 2 uses
  store i32 %.sroa.04.0.extract.trunc.i1174, ptr %31, align 4
  store i32 %.sroa.5.0.i.i1173, ptr %i.agk, align 4
  %i.agl = call noundef zeroext i1 @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE19ValidateDataSegmentEPKhRNS1_14IndexImmediateE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.agb, ptr noundef nonnull align 4 dereferenceable(8) %31)
  br i1 %i.agl, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1176
  %i.agm = icmp ult i32 %.sroa.04.0.extract.trunc.i.i1163, 1048576
  br i1 %i.agm, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1178, label %bb.dr, !prof !6

bb.dr:                                            ; preds = %bb.dq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28) #19
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1178: ; preds = %bb.dq
  %i.agn = shl nuw nsw i8 %i.afv, 4
  %i.ago = or disjoint i8 %i.agn, 99
  %i.agp = zext nneg i8 %i.ago to i32
  %i.agq = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i1163, 8
  %i.agr = or disjoint i32 %i.agq, %i.agp
  %i.ags = or disjoint i32 %i.agr, 4
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.agu = load ptr, ptr %i.agt, align 8, !noalias !199
  %i.agv = getelementptr inbounds i8, ptr %i.agu, i64 -88
  %i.agw = load i32, ptr %i.agv, align 8, !noalias !199
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.agy = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.agz = load ptr, ptr %i.agy, align 8, !noalias !199 ; 2 uses
  %i.aha = load ptr, ptr %i.agx, align 8, !noalias !199
  %i.ahb = ptrtoint ptr %i.agz to i64
  %i.ahc = ptrtoint ptr %i.aha to i64
  %i.ahd = sub i64 %i.ahb, %i.ahc
  %i.ahe = lshr exact i64 %i.ahd, 4
  %i.ahf = trunc i64 %i.ahe to i32
  %i.ahg = add i32 %i.agw, 4
  %.not.i.i906 = icmp ugt i32 %i.ahg, %i.ahf
  br i1 %.not.i.i906, label %bb.ds, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit921, !prof !12

bb.ds:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1178
  %i.ahh = call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 4), !noalias !199 ; 0 uses
  %.pre2548 = load ptr, ptr %i.agy, align 8, !noalias !199
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit921

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit921: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1178, %bb.ds
  %i.ahi = phi ptr [ %i.agz, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1178 ], [ %.pre2548, %bb.ds ]
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 -64
  store ptr %i.ahj, ptr %i.agy, align 8, !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !199
  store ptr %0, ptr %6, align 8, !noalias !199
  %i.ahk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ahk, align 8, !noalias !199
  %i.ahl = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 %i.ags), !noalias !199 ; 0 uses
  %i.ahm = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 5648), !noalias !199 ; 0 uses
  %i.ahn = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 5648), !noalias !199 ; 0 uses
  %i.aho = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 5648), !noalias !199 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !199
  %i.ahp = add i32 %.sroa.5.0.i.i.i1162, %2
  %i.ahq = load i32, ptr %i.agk, align 4
  %i.ahr = add i32 %i.ahp, %i.ahq
  br label %bb.dt

bb.dt:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1176, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit921
  %.20 = phi i32 [ %i.ahr, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit921 ], [ 0, %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.du:                                            ; preds = %bb.a
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aht = load ptr, ptr %i.ahs, align 8          ; 2 uses
  %i.ahu = zext i32 %2 to i64                     ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.ahu ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8
  %i.ahy = icmp ult ptr %i.ahv, %i.ahx
  br i1 %i.ahy, label %bb.dv, label %.critedge.i.i.i.i1183, !prof !6

bb.dv:                                            ; preds = %bb.du
  %i.ahz = load i8, ptr %i.ahv, align 1           ; 2 uses
  %.not.i.i.i.i1187 = icmp sgt i8 %i.ahz, -1
  br i1 %.not.i.i.i.i1187, label %bb.dw, label %.critedge.i.i.i.i1183, !prof !6

bb.dw:                                            ; preds = %bb.dv
  %i.aia = zext nneg i8 %i.ahz to i64
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1188

.critedge.i.i.i.i1183:                            ; preds = %bb.dv, %bb.du
  %i.aib = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ahv, ptr noundef nonnull @.str.1016) ; 3 uses
  %i.aic = icmp ult i64 %i.aib, 25769803776
  tail call void @llvm.assume(i1 %i.aic)
  %i.aid = lshr i64 %i.aib, 32
  %i.aie = trunc nuw nsw i64 %i.aid to i32
  %.pre2545 = load ptr, ptr %i.ahs, align 8
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1188

_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1188: ; preds = %bb.dw, %.critedge.i.i.i.i1183
  %i.aif = phi ptr [ %i.aht, %bb.dw ], [ %.pre2545, %.critedge.i.i.i.i1183 ]
  %.sroa.05.0.i.i.i1184 = phi i64 [ %i.aia, %bb.dw ], [ %i.aib, %.critedge.i.i.i.i1183 ] ; 2 uses
  %.sroa.5.0.i.i.i1185 = phi i32 [ 1, %bb.dw ], [ %i.aie, %.critedge.i.i.i.i1183 ] ; 2 uses
  %.sroa.04.0.extract.trunc.i.i1186 = trunc i64 %.sroa.05.0.i.i.i1184 to i32 ; 5 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 %i.ahu ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aii = load ptr, ptr %i.aih, align 8          ; 2 uses
  %i.aij = and i64 %.sroa.05.0.i.i.i1184, 4294967295 ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aii, i64 152
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aii, i64 160
  %i.aim = load ptr, ptr %i.ail, align 8
  %i.ain = load ptr, ptr %i.aik, align 8          ; 2 uses
  %i.aio = ptrtoint ptr %i.aim to i64
  %i.aip = ptrtoint ptr %i.ain to i64
  %i.aiq = sub i64 %i.aio, %i.aip
  %i.air = sdiv exact i64 %i.aiq, 24
  %i.ais = icmp ugt i64 %i.air, %i.aij
  br i1 %i.ais, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1191, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1192, !prof !73

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1191: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1188
  %i.ait = getelementptr inbounds nuw [24 x i8], ptr %i.ain, i64 %i.aij ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 20
  %i.aiv = load i8, ptr %i.aiu, align 4
  %i.aiw = icmp eq i8 %i.aiv, 3
  br i1 %i.aiw, label %bb.dx, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1192, !prof !74

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1192: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1188, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1191
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.aig, ptr noundef nonnull @.str.1017, i32 noundef %.sroa.04.0.extract.trunc.i.i1186)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.dx:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1191
  %i.aix = load ptr, ptr %i.ait, align 8          ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ait, i64 22
  %i.aiz = load i8, ptr %i.aiy, align 2, !range !8, !noundef !9
  %i.aja = load i8, ptr %i.aix, align 1, !range !8, !noundef !9
  %i.ajb = trunc nuw i8 %i.aja to i1
  br i1 %i.ajb, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.992, i32 noundef %.sroa.04.0.extract.trunc.i.i1186)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aix, i64 4
  %.sroa.0.0.copyload.i1193 = load i32, ptr %i.ajc, align 4 ; 2 uses
  store i32 %.sroa.0.0.copyload.i1193, ptr %32, align 4
  %i.ajd = and i32 %.sroa.0.0.copyload.i1193, 3
  %i.aje = icmp eq i32 %i.ajd, 0
  br i1 %i.aje, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.993, i32 noundef %.sroa.04.0.extract.trunc.i.i1186)
  br label %bb.ek

bb.eb:                                            ; preds = %bb.dz
  %i.ajf = zext nneg i32 %.sroa.5.0.i.i.i1185 to i64
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.ajf ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  %i.ajh = load ptr, ptr %i.ahw, align 8
  %i.aji = icmp ult ptr %i.ajg, %i.ajh
  br i1 %i.aji, label %bb.ec, label %.critedge.i.i.i1194, !prof !6

bb.ec:                                            ; preds = %bb.eb
  %i.ajj = load i8, ptr %i.ajg, align 1           ; 2 uses
  %.not.i.i.i1198 = icmp sgt i8 %i.ajj, -1
  br i1 %.not.i.i.i1198, label %bb.ed, label %.critedge.i.i.i1194, !prof !6

bb.ed:                                            ; preds = %bb.ec
  %i.ajk = zext nneg i8 %i.ajj to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1199

.critedge.i.i.i1194:                              ; preds = %bb.ec, %bb.eb
  %i.ajl = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ajg, ptr noundef nonnull @.str.988) ; 3 uses
  %i.ajm = icmp ult i64 %i.ajl, 25769803776
  tail call void @llvm.assume(i1 %i.ajm)
  %i.ajn = lshr i64 %i.ajl, 32
  %i.ajo = trunc nuw nsw i64 %i.ajn to i32
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1199

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1199: ; preds = %bb.ed, %.critedge.i.i.i1194
  %.sroa.05.0.i.i1195 = phi i64 [ %i.ajk, %bb.ed ], [ %i.ajl, %.critedge.i.i.i1194 ]
  %.sroa.5.0.i.i1196 = phi i32 [ 1, %bb.ed ], [ %i.ajo, %.critedge.i.i.i1194 ]
  %.sroa.04.0.extract.trunc.i1197 = trunc i64 %.sroa.05.0.i.i1195 to i32
  %i.ajp = getelementptr inbounds nuw i8, ptr %33, i64 4 ; 2 uses
  store i32 %.sroa.04.0.extract.trunc.i1197, ptr %33, align 4
  store i32 %.sroa.5.0.i.i1196, ptr %i.ajp, align 4
  %i.ajq = call noundef zeroext i1 @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE22ValidateElementSegmentEPKhRNS1_14IndexImmediateE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.ajg, ptr noundef nonnull align 4 dereferenceable(8) %33)
  br i1 %i.ajq, label %bb.ee, label %bb.ej

bb.ee:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1199
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  %i.ajr = load ptr, ptr %i.aih, align 8          ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 416
  %i.ajt = load i32, ptr %33, align 4
  %i.aju = zext i32 %i.ajt to i64
  %i.ajv = load ptr, ptr %i.ajs, align 8
  %i.ajw = getelementptr inbounds nuw [40 x i8], ptr %i.ajv, i64 %i.aju
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8
  %i.ajy = load i32, ptr %i.ajx, align 8          ; 3 uses
  store i32 %i.ajy, ptr %34, align 4
  %.sroa.0240.0.copyload = load i32, ptr %32, align 4 ; 2 uses
  %i.ajz = icmp eq i32 %i.ajy, %.sroa.0240.0.copyload
  br i1 %i.ajz, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit739.thread, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit739, !prof !6

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit739: ; preds = %bb.ee
  %i.aka = call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %i.ajy, i32 %.sroa.0240.0.copyload, ptr noundef nonnull %i.ajr, ptr noundef nonnull %i.ajr) #17
  br i1 %i.aka, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit739.thread, label %bb.ef, !prof !41

bb.ef:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit739
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #17
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 4 dereferenceable(4) %34) #17
  %i.akb = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #17
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 4 dereferenceable(4) %32) #17
  %i.akc = load ptr, ptr %36, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.994, ptr noundef %i.akb, ptr noundef %i.akc)
  %i.akd = load ptr, ptr %36, align 8             ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.akf = icmp eq ptr %i.akd, %i.ake
  br i1 %i.akf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1200: ; preds = %bb.ef
  %i.akg = load i64, ptr %i.ake, align 8
  %i.akh = add i64 %i.akg, 1
  call void @_ZdlPvm(ptr noundef %i.akd, i64 noundef %i.akh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1200
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  %i.aki = load ptr, ptr %35, align 8             ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.akk = icmp eq ptr %i.aki, %i.akj
  br i1 %i.akk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202
  %i.akl = load i64, ptr %i.akj, align 8
  %i.akm = add i64 %i.akl, 1
  call void @_ZdlPvm(ptr noundef %i.aki, i64 noundef %i.akm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1203
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  br label %bb.ei

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit739.thread: ; preds = %bb.ee, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit739
  %i.akn = icmp ult i32 %.sroa.04.0.extract.trunc.i.i1186, 1048576
  br i1 %i.akn, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1207, label %bb.eg, !prof !6

bb.eg:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit739.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28) #19
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1207: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit739.thread
  %i.ako = shl nuw nsw i8 %i.aiz, 4
  %i.akp = or disjoint i8 %i.ako, 99
  %i.akq = zext nneg i8 %i.akp to i32
  %i.akr = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i1186, 8
  %i.aks = or disjoint i32 %i.akr, %i.akq
  %i.akt = or disjoint i32 %i.aks, 4
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.akv = load ptr, ptr %i.aku, align 8, !noalias !202
  %i.akw = getelementptr inbounds i8, ptr %i.akv, i64 -88
  %i.akx = load i32, ptr %i.akw, align 8, !noalias !202
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ala = load ptr, ptr %i.akz, align 8, !noalias !202 ; 2 uses
  %i.alb = load ptr, ptr %i.aky, align 8, !noalias !202
  %i.alc = ptrtoint ptr %i.ala to i64
  %i.ald = ptrtoint ptr %i.alb to i64
  %i.ale = sub i64 %i.alc, %i.ald
  %i.alf = lshr exact i64 %i.ale, 4
  %i.alg = trunc i64 %i.alf to i32
  %i.alh = add i32 %i.akx, 4
  %.not.i.i897 = icmp ugt i32 %i.alh, %i.alg
  br i1 %.not.i.i897, label %bb.eh, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit, !prof !12

bb.eh:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1207
  %i.ali = call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef 4), !noalias !202 ; 0 uses
  %.pre2546 = load ptr, ptr %i.akz, align 8, !noalias !202
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1207, %bb.eh
  %i.alj = phi ptr [ %i.ala, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit1207 ], [ %.pre2546, %bb.eh ]
  %i.alk = getelementptr i8, ptr %i.alj, i64 -64
  store ptr %i.alk, ptr %i.akz, align 8, !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !202
  store ptr %0, ptr %7, align 8, !noalias !202
  %i.all = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.all, align 8, !noalias !202
  %i.alm = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 %i.akt), !noalias !202 ; 0 uses
  %i.aln = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 5648), !noalias !202 ; 0 uses
  %i.alo = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 5648), !noalias !202 ; 0 uses
  %i.alp = call { ptr, i32 } @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 5648), !noalias !202 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !202
  %i.alq = add i32 %.sroa.5.0.i.i.i1185, %2
  %i.alr = load i32, ptr %i.ajp, align 4
  %i.als = add i32 %i.alq, %i.alr
  br label %bb.ei

bb.ei:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1205
  %.23 = phi i32 [ %i.als, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SA_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISE_XsZT_EEE4typeEDpT_.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1205 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1199, %bb.ei
  %.24 = phi i32 [ %.23, %bb.ei ], [ 0, %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit1199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ea
  %.25 = phi i32 [ 0, %bb.ea ], [ %.24, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.el:                                            ; preds = %bb.a, %bb.a
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.alu = load ptr, ptr %i.alt, align 8          ; 2 uses
  %i.alv = zext i32 %2 to i64                     ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alu, i64 %i.alv ; 3 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aly = load ptr, ptr %i.alx, align 8
  %i.alz = icmp ult ptr %i.alw, %i.aly
  br i1 %i.alz, label %bb.em, label %.critedge.i.i.i.i1212, !prof !6

bb.em:                                            ; preds = %bb.el
  %i.ama = load i8, ptr %i.alw, align 1           ; 2 uses
  %.not.i.i.i.i1216 = icmp sgt i8 %i.ama, -1
  br i1 %.not.i.i.i.i1216, label %bb.en, label %.critedge.i.i.i.i1212, !prof !6

bb.en:                                            ; preds = %bb.em
  %i.amb = zext nneg i8 %i.ama to i64
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1217

.critedge.i.i.i.i1212:                            ; preds = %bb.em, %bb.el
  %i.amc = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.alw, ptr noundef nonnull @.str.1016) ; 3 uses
  %i.amd = icmp ult i64 %i.amc, 25769803776
  tail call void @llvm.assume(i1 %i.amd)
  %i.ame = lshr i64 %i.amc, 32
  %i.amf = trunc nuw nsw i64 %i.ame to i32
  %.pre2543 = load ptr, ptr %i.alt, align 8
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1217

_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1217: ; preds = %bb.en, %.critedge.i.i.i.i1212
  %i.amg = phi ptr [ %i.alu, %bb.en ], [ %.pre2543, %.critedge.i.i.i.i1212 ]
  %.sroa.05.0.i.i.i1213 = phi i64 [ %i.amb, %bb.en ], [ %i.amc, %.critedge.i.i.i.i1212 ] ; 2 uses
  %.sroa.5.0.i.i.i1214 = phi i32 [ 1, %bb.en ], [ %i.amf, %.critedge.i.i.i.i1212 ]
  %.sroa.04.0.extract.trunc.i.i1215 = trunc i64 %.sroa.05.0.i.i.i1213 to i32 ; 4 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 %i.alv
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.amj = load ptr, ptr %i.ami, align 8          ; 2 uses
  %i.amk = and i64 %.sroa.05.0.i.i.i1213, 4294967295 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amj, i64 152
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 160
  %i.amn = load ptr, ptr %i.amm, align 8
  %i.amo = load ptr, ptr %i.aml, align 8          ; 2 uses
  %i.amp = ptrtoint ptr %i.amn to i64
  %i.amq = ptrtoint ptr %i.amo to i64
  %i.amr = sub i64 %i.amp, %i.amq
  %i.ams = sdiv exact i64 %i.amr, 24
  %i.amt = icmp ugt i64 %i.ams, %i.amk
  br i1 %i.amt, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1220, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1221, !prof !73

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1220: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1217
  %i.amu = getelementptr inbounds nuw [24 x i8], ptr %i.amo, i64 %i.amk ; 3 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 20
  %i.amw = load i8, ptr %i.amv, align 4
  %i.amx = icmp eq i8 %i.amw, 3
  br i1 %i.amx, label %bb.eo, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1221, !prof !74

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit1221: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit1217, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1220
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.amh, ptr noundef nonnull @.str.1017, i32 noundef %.sroa.04.0.extract.trunc.i.i1215)
  br label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhRNS1_17HeapTypeImmediateE.exit1499

bb.eo:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i1220
  %i.amy = load ptr, ptr %i.amu, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amu, i64 22
  %i.ana = load i8, ptr %i.amz, align 2, !range !8, !noundef !9
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amy, i64 4 ; 3 uses
  %.sroa.0.0.copyload.i1222 = load i32, ptr %i.anb, align 4
  switch i32 %.sroa.0.0.copyload.i1222, label %_ZNK2v88internal4wasm13ValueTypeBase9is_packedEv.exit1223 [
    i32 6928, label %bb.ep
    i32 7184, label %bb.ep
    i32 7440, label %bb.ep
  ]

_ZNK2v88internal4wasm13ValueTypeBase9is_packedEv.exit1223: ; preds = %bb.eo
  %i.anc = tail call noundef ptr @_ZN2v88internal4wasm11WasmOpcodes10OpcodeNameENS1_10WasmOpcodeE(i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #17
  %.sroa.0.0.copyload.i1224 = load i32, ptr %i.anb, align 4
  store i32 %.sroa.0.0.copyload.i1224, ptr %38, align 4
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 4 dereferenceable(4) %38) #17
  %i.and = load ptr, ptr %37, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.995, ptr noundef %i.anc, i32 noundef %.sroa.04.0.extract.trunc.i.i1215, ptr noundef %i.and)
  %i.ane = load ptr, ptr %37, align 8             ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.ang = icmp eq ptr %i.ane, %i.anf
  br i1 %i.ang, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1225: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase9is_packedEv.exit1223
  %i.anh = load i64, ptr %i.anf, align 8
  %i.ani = add i64 %i.anh, 1
  call void @_ZdlPvm(ptr noundef %i.ane, i64 noundef %i.ani) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1227: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase9is_packedEv.exit1223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1225
end_hunk_1
