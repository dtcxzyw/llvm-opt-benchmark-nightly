inline.NumInlined: 6065
inline.NumDeleted: 2754
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %29 = alloca %"class.v8::base::SmallVector.1293", align 8 ; 17 uses
  %30 = alloca %"struct.v8::internal::wasm::ConstantExpressionInterface::Value", align 8 ; 4 uses
  %31 = alloca %"struct.v8::internal::wasm::ConstantExpressionInterface::Value", align 8 ; 4 uses
  %32 = alloca %"struct.v8::internal::wasm::ConstantExpressionInterface::Value", align 8 ; 6 uses
  %33 = alloca %"struct.v8::internal::wasm::ConstantExpressionInterface::Value", align 8 ; 6 uses
  %.mask = and i32 %1, -256
  %i.a = icmp eq i32 %.mask, 64256
  tail call void @llvm.assume(i1 %i.a)
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.aob = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !noalias !239
  %i.aod = getelementptr inbounds i8, ptr %i.aoc, i64 -152
  %i.aoe = load i32, ptr %i.aod, align 8, !noalias !239 ; 4 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.aoh = load ptr, ptr %i.aog, align 8, !noalias !239 ; 4 uses
  %i.aoi = load ptr, ptr %i.aof, align 8, !noalias !239
  %i.aoj = ptrtoint ptr %i.aoh to i64
  %i.aok = ptrtoint ptr %i.aoi to i64
  %i.aol = sub i64 %i.aoj, %i.aok
  %i.aom = sdiv exact i64 %i.aol, 48
  %i.aon = trunc i64 %i.aom to i32                ; 4 uses
  %.not.i128 = icmp ult i32 %i.aoe, %i.aon
  br i1 %.not.i128, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129.thread, !prof !6

end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %.pre1120 = sub i64 %.pre1117, %.pre1118
  %.pre1122 = sdiv exact i64 %.pre1120, 48
  %.pre1124 = trunc i64 %.pre1122 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  br label %bb.lt

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129: ; preds = %bb.ls
  %.sroa.4646.0..sroa_idx = getelementptr inbounds i8, ptr %i.aoh, i64 -40
  %.sroa.4646.0.copyload = load i32, ptr %.sroa.4646.0..sroa_idx, align 8
  %.sroa.4646.0.copyload.fr = freeze i32 %.sroa.4646.0.copyload
  %i.aop = and i32 %.sroa.4646.0.copyload.fr, 16
  %.not1292 = icmp eq i32 %i.aop, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  br i1 %.not1292, label %34, label %bb.lt

34:                                               ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129
  br label %bb.lt

bb.lt:                                            ; preds = %34, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129.thread
  %35 = phi i32 [ 0, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129.thread ], [ 0, %34 ], [ 16, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129 ]
  %.pre-phi112512631269 = phi i32 [ %.pre1124, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129.thread ], [ %i.aon, %34 ], [ %i.aon, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129 ]
  %36 = phi ptr [ %.pre1092, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129.thread ], [ %i.aoh, %34 ], [ %i.aoh, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129 ]
  %37 = phi i32 [ %.pre1091, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129.thread ], [ %i.aoe, %34 ], [ %i.aoe, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129 ]
  %.sroa.4646.012641268.not = phi i1 [ true, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129.thread ], [ true, %34 ], [ false, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129 ]
  %38 = phi i32 [ 3845, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129.thread ], [ 3845, %34 ], [ 3861, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit129 ] ; 3 uses
  %i.aoq = add i32 %37, 1
  %.not.i.i133 = icmp ugt i32 %i.aoq, %.pre-phi112512631269
  br i1 %.not.i.i133, label %bb.lu, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISE_XsZT_EEE4typeEDpT_.exit136, !prof !5

bb.lu:                                            ; preds = %bb.lt
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.apb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.apc = load i8, ptr %i.apb, align 8, !range !7, !noundef !8
  %i.apd = trunc nuw i8 %i.apc to i1
  %brmerge.not = and i1 %.sroa.4646.012641268.not, %i.apd
  br i1 %brmerge.not, label %bb.lw, label %.critedge.i107, !prof !174

bb.lw:                                            ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit
  %i.ape = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.apa)
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.aph = and i32 %i.apg, 5
  %i.api = icmp eq i32 %i.aph, 5
  %i.apj = select i1 %i.api, i32 2565, i32 2561
  %i.apk = or disjoint i32 %i.apj, %35
  store ptr %i.apa, ptr %i.aoy, align 8
  %.sroa.41018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  store i32 %i.apk, ptr %.sroa.41018.0..sroa_idx, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.apr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.aps = load ptr, ptr %i.apr, align 8, !noalias !248
  %i.apt = getelementptr inbounds i8, ptr %i.aps, i64 -152
  %i.apu = load i32, ptr %i.apt, align 8, !noalias !248 ; 4 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.apx = load ptr, ptr %i.apw, align 8, !noalias !248 ; 4 uses
  %i.apy = load ptr, ptr %i.apv, align 8, !noalias !248
  %i.apz = ptrtoint ptr %i.apx to i64
  %i.aqa = ptrtoint ptr %i.apy to i64
  %i.aqb = sub i64 %i.apz, %i.aqa
  %i.aqc = sdiv exact i64 %i.aqb, 48
  %i.aqd = trunc i64 %i.aqc to i32                ; 4 uses
  %.not.i = icmp ult i32 %i.apu, %i.aqd
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit.thread, !prof !6

end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %.pre1130 = sub i64 %.pre1126, %.pre1128
  %.pre1132 = sdiv exact i64 %.pre1130, 48
  %.pre1134 = trunc i64 %.pre1132 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  br label %bb.ma

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit: ; preds = %bb.lz
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.apx, i64 -40
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0.copyload.fr = freeze i32 %.sroa.4.0.copyload
  %i.aqf = and i32 %.sroa.4.0.copyload.fr, 16
  %.not1291 = icmp eq i32 %i.aqf, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  br i1 %.not1291, label %39, label %bb.ma

39:                                               ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit
  br label %bb.ma

bb.ma:                                            ; preds = %39, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit.thread
  %40 = phi i32 [ 0, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit.thread ], [ 0, %39 ], [ 16, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit ]
  %.pre-phi113512781285 = phi i32 [ %.pre1134, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit.thread ], [ %i.aqd, %39 ], [ %i.aqd, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit ]
  %41 = phi ptr [ %.pre1086, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit.thread ], [ %i.apx, %39 ], [ %i.apx, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit ]
  %42 = phi i32 [ %.pre1085, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit.thread ], [ %i.apu, %39 ], [ %i.apu, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit ]
  %.sroa.4.012791284.not = phi i1 [ true, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit.thread ], [ true, %39 ], [ false, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit ]
  %43 = phi i32 [ 2565, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit.thread ], [ 2565, %39 ], [ 2581, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PeekEi.exit ] ; 3 uses
  %i.aqg = add i32 %42, 1
  %.not.i.i130 = icmp ugt i32 %i.aqg, %.pre-phi113512781285
  br i1 %.not.i.i130, label %bb.mb, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISE_XsZT_EEE4typeEDpT_.exit, !prof !5

bb.mb:                                            ; preds = %bb.ma
end_hunk_6
begin_hunk_7_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aqs = load i8, ptr %i.aqr, align 8, !range !7, !noundef !8
  %i.aqt = trunc nuw i8 %i.aqs to i1
  %brmerge1057.not = and i1 %.sroa.4.012791284.not, %i.aqt
  br i1 %brmerge1057.not, label %bb.md, label %.critedge.i110, !prof !174

bb.md:                                            ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISE_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit635
  %i.aqu = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.aqq)
end_hunk_7
begin_hunk_8_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.aqx = and i32 %i.aqw, 5
  %i.aqy = icmp eq i32 %i.aqx, 5
  %i.aqz = select i1 %i.aqy, i32 3845, i32 3841
  %i.ara = or disjoint i32 %i.aqz, %40
  store ptr %i.aqq, ptr %i.aqo, align 8
  %.sroa.41025.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqo, i64 8
  store i32 %i.ara, ptr %.sroa.41025.0..sroa_idx, align 8
end_hunk_8
